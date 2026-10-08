package io.sentry.android.core.internal.util;

import android.net.ConnectivityManager;
import androidx.datastore.preferences.PreferencesProto$Value;
import io.sentry.IConnectionStatusProvider;
import io.sentry.ISentryLifecycleToken;
import io.sentry.android.core.AppState;
import io.sentry.util.AutoClosableReentrantLock;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Runnable {
    public final /* synthetic */ int j;
    public final /* synthetic */ AndroidConnectionStatusProvider k;

    public /* synthetic */ a(AndroidConnectionStatusProvider androidConnectionStatusProvider, int i) {
        this.j = i;
        this.k = androidConnectionStatusProvider;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ISentryLifecycleToken a;
        int i = this.j;
        AndroidConnectionStatusProvider androidConnectionStatusProvider = this.k;
        switch (i) {
            case 0:
                AutoClosableReentrantLock autoClosableReentrantLock = AndroidConnectionStatusProvider.u;
                androidConnectionStatusProvider.P(true);
                a = AndroidConnectionStatusProvider.w.a();
                try {
                    AndroidConnectionStatusProvider.x.clear();
                    a.close();
                    ISentryLifecycleToken a2 = AndroidConnectionStatusProvider.u.a();
                    try {
                        AndroidConnectionStatusProvider.v = null;
                        a2.close();
                        AppState.n.q(androidConnectionStatusProvider);
                        return;
                    } finally {
                        try {
                            a2.close();
                        } catch (Throwable th) {
                            th.addSuppressed(th);
                        }
                    }
                } finally {
                    try {
                        a.close();
                    } catch (Throwable th2) {
                        th.addSuppressed(th2);
                    }
                }
            case 1:
                AutoClosableReentrantLock autoClosableReentrantLock2 = AndroidConnectionStatusProvider.u;
                androidConnectionStatusProvider.q();
                return;
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                AutoClosableReentrantLock autoClosableReentrantLock3 = AndroidConnectionStatusProvider.u;
                androidConnectionStatusProvider.P(false);
                return;
            default:
                AutoClosableReentrantLock autoClosableReentrantLock4 = AndroidConnectionStatusProvider.u;
                androidConnectionStatusProvider.R(null);
                IConnectionStatusProvider.ConnectionStatus v = androidConnectionStatusProvider.v();
                if (v == IConnectionStatusProvider.ConnectionStatus.DISCONNECTED) {
                    androidConnectionStatusProvider.t.set(false);
                    a = AndroidConnectionStatusProvider.w.a();
                    try {
                        Iterator it = AndroidConnectionStatusProvider.x.iterator();
                        while (it.hasNext()) {
                            ((ConnectivityManager.NetworkCallback) it.next()).onLost(null);
                        }
                        a.close();
                    } catch (Throwable th3) {
                        throw th3;
                    }
                }
                ISentryLifecycleToken a3 = androidConnectionStatusProvider.o.a();
                try {
                    Iterator it2 = androidConnectionStatusProvider.n.iterator();
                    while (it2.hasNext()) {
                        ((IConnectionStatusProvider.IConnectionStatusObserver) it2.next()).q(v);
                    }
                    a3.close();
                    androidConnectionStatusProvider.q();
                    return;
                } catch (Throwable th4) {
                    try {
                        a3.close();
                    } catch (Throwable th5) {
                        th4.addSuppressed(th5);
                    }
                    throw th4;
                }
        }
    }
}
