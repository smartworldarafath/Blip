package androidx.media3.common.util;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import defpackage.i7;
import java.lang.ref.WeakReference;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;
import java.util.concurrent.Executor;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkTypeObserver {
    public static NetworkTypeObserver f;
    public final Executor a;
    public final CopyOnWriteArrayList b;
    public final Object c;
    public int d;
    public boolean e;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Listener {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ListenerHolder {
        public final WeakReference a;
        public final Executor b;

        public ListenerHolder(i7 i7Var, Executor executor) {
            this.a = new WeakReference(i7Var);
            this.b = executor;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class Receiver extends BroadcastReceiver {
        public Receiver() {
        }

        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            NetworkTypeObserver.this.a.execute(new a(2, this, context));
        }
    }

    public NetworkTypeObserver(Context context) {
        Executor a = BackgroundExecutor.a();
        this.a = a;
        this.b = new CopyOnWriteArrayList();
        this.c = new Object();
        this.d = 0;
        a.execute(new a(1, this, context));
    }

    public static synchronized NetworkTypeObserver a(Context context) {
        NetworkTypeObserver networkTypeObserver;
        synchronized (NetworkTypeObserver.class) {
            try {
                if (f == null) {
                    f = new NetworkTypeObserver(context);
                }
                networkTypeObserver = f;
            } catch (Throwable th) {
                throw th;
            }
        }
        return networkTypeObserver;
    }

    public final int b() {
        int i;
        synchronized (this.c) {
            i = this.d;
        }
        return i;
    }

    public final void c(i7 i7Var, Executor executor) {
        boolean z;
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            ListenerHolder listenerHolder = (ListenerHolder) it.next();
            if (listenerHolder.a.get() == null) {
                copyOnWriteArrayList.remove(listenerHolder);
            }
        }
        ListenerHolder listenerHolder2 = new ListenerHolder(i7Var, executor);
        synchronized (this.c) {
            this.b.add(listenerHolder2);
            z = this.e;
        }
        if (z) {
            listenerHolder2.b.execute(new d(listenerHolder2));
        }
    }

    public final void d(int i) {
        CopyOnWriteArrayList copyOnWriteArrayList = this.b;
        Iterator it = copyOnWriteArrayList.iterator();
        while (it.hasNext()) {
            ListenerHolder listenerHolder = (ListenerHolder) it.next();
            if (listenerHolder.a.get() == null) {
                copyOnWriteArrayList.remove(listenerHolder);
            }
        }
        synchronized (this.c) {
            try {
                if (this.e && this.d == i) {
                    return;
                }
                this.e = true;
                this.d = i;
                Iterator it2 = this.b.iterator();
                while (it2.hasNext()) {
                    ListenerHolder listenerHolder2 = (ListenerHolder) it2.next();
                    listenerHolder2.b.execute(new d(listenerHolder2));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
