package io.sentry.android.core.internal.util;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.net.NetworkInfo;
import android.os.SystemClock;
import io.sentry.IConnectionStatusProvider;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.AppState;
import io.sentry.android.core.BuildInfoProvider;
import io.sentry.android.core.ContextUtils;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.util.AutoClosableReentrantLock;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidConnectionStatusProvider implements IConnectionStatusProvider, AppState.AppStateListener {
    public static volatile ConnectivityManager v;
    public final Context j;
    public final SentryOptions k;
    public final BuildInfoProvider l;
    public final AndroidCurrentDateProvider m;
    public final ArrayList n;
    public final AutoClosableReentrantLock o;
    public volatile ConnectivityManager.NetworkCallback p;
    public volatile NetworkCapabilities q;
    public volatile Network r;
    public volatile long s;
    public final AtomicBoolean t;
    public static final AutoClosableReentrantLock u = new ReentrantLock();
    public static final AutoClosableReentrantLock w = new ReentrantLock();
    public static final ArrayList x = new ArrayList();
    public static final int[] y = {1, 0, 3, 2};
    public static final int[] z = new int[2];

    /* JADX WARN: Type inference failed for: r1v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public AndroidConnectionStatusProvider(Context context, BuildInfoProvider buildInfoProvider, SentryAndroidOptions sentryAndroidOptions) {
        AndroidCurrentDateProvider androidCurrentDateProvider = AndroidCurrentDateProvider.j;
        this.o = new ReentrantLock();
        this.s = 0L;
        this.t = new AtomicBoolean(false);
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
        this.k = sentryAndroidOptions;
        this.l = buildInfoProvider;
        this.m = androidCurrentDateProvider;
        this.n = new ArrayList();
        int[] iArr = z;
        iArr[0] = 12;
        iArr[1] = 16;
        O(new a(this, 1));
        AppState.n.a(this);
    }

    public static ConnectivityManager E(Context context, ILogger iLogger) {
        if (v != null) {
            return v;
        }
        ISentryLifecycleToken a = u.a();
        try {
            if (v != null) {
                ConnectivityManager connectivityManager = v;
                a.close();
                return connectivityManager;
            }
            v = (ConnectivityManager) context.getSystemService("connectivity");
            if (v == null) {
                iLogger.c(SentryLevel.INFO, "ConnectivityManager is null and cannot check network status", new Object[0]);
            }
            ConnectivityManager connectivityManager2 = v;
            a.close();
            return connectivityManager2;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static boolean n(Context context, ILogger iLogger, BuildInfoProvider buildInfoProvider, ConnectivityManager.NetworkCallback networkCallback) {
        buildInfoProvider.getClass();
        if (!Permissions.a(context)) {
            iLogger.c(SentryLevel.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
            return false;
        }
        ISentryLifecycleToken a = w.a();
        try {
            x.add(networkCallback);
            a.close();
            return true;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public static String w(NetworkCapabilities networkCapabilities) {
        if (networkCapabilities.hasTransport(3)) {
            return "ethernet";
        }
        if (networkCapabilities.hasTransport(1)) {
            return "wifi";
        }
        if (networkCapabilities.hasTransport(0)) {
            return "cellular";
        }
        return null;
    }

    public final String A() {
        NetworkCapabilities networkCapabilities = this.q;
        if (networkCapabilities != null) {
            return w(networkCapabilities);
        }
        Context context = this.j;
        ILogger logger = this.k.getLogger();
        BuildInfoProvider buildInfoProvider = this.l;
        ConnectivityManager E = E(context, logger);
        if (E != null) {
            if (!Permissions.a(context)) {
                logger.c(SentryLevel.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
                return null;
            }
            try {
                buildInfoProvider.getClass();
                Network activeNetwork = E.getActiveNetwork();
                if (activeNetwork == null) {
                    logger.c(SentryLevel.INFO, "Network is null and cannot check network status", new Object[0]);
                    return null;
                }
                NetworkCapabilities networkCapabilities2 = E.getNetworkCapabilities(activeNetwork);
                if (networkCapabilities2 == null) {
                    logger.c(SentryLevel.INFO, "NetworkCapabilities is null and cannot check network type", new Object[0]);
                    return null;
                }
                boolean hasTransport = networkCapabilities2.hasTransport(3);
                boolean hasTransport2 = networkCapabilities2.hasTransport(1);
                boolean hasTransport3 = networkCapabilities2.hasTransport(0);
                if (hasTransport) {
                    return "ethernet";
                }
                if (hasTransport2) {
                    return "wifi";
                }
                if (hasTransport3) {
                    return "cellular";
                }
            } catch (Throwable th) {
                logger.b(SentryLevel.ERROR, "Failed to retrieve network info", th);
                return null;
            }
        }
        return null;
    }

    @Override // io.sentry.IConnectionStatusProvider
    public final String B() {
        this.m.getClass();
        if (SystemClock.uptimeMillis() - this.s >= 120000) {
            R(null);
        }
        return A();
    }

    @Override // io.sentry.IConnectionStatusProvider
    public final void L0(IConnectionStatusProvider.IConnectionStatusObserver iConnectionStatusObserver) {
        ISentryLifecycleToken a = this.o.a();
        try {
            this.n.remove(iConnectionStatusObserver);
            a.close();
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final void O(Runnable runnable) {
        SentryOptions sentryOptions = this.k;
        try {
            sentryOptions.getExecutorService().submit(runnable);
        } catch (Throwable th) {
            sentryOptions.getLogger().b(SentryLevel.ERROR, "AndroidConnectionStatusProvider submit failed", th);
        }
    }

    public final void P(boolean z2) {
        ISentryLifecycleToken a = this.o.a();
        if (z2) {
            try {
                this.n.clear();
            } catch (Throwable th) {
                try {
                    a.close();
                } catch (Throwable th2) {
                    th.addSuppressed(th2);
                }
                throw th;
            }
        }
        ConnectivityManager.NetworkCallback networkCallback = this.p;
        this.p = null;
        if (networkCallback != null) {
            Context context = this.j;
            ILogger logger = this.k.getLogger();
            ConnectivityManager E = E(context, logger);
            if (E != null) {
                try {
                    E.unregisterNetworkCallback(networkCallback);
                } catch (Throwable th3) {
                    logger.b(SentryLevel.WARNING, "unregisterNetworkCallback failed", th3);
                }
            }
        }
        this.q = null;
        this.r = null;
        this.s = 0L;
        a.close();
        this.k.getLogger().c(SentryLevel.DEBUG, "Network callback unregistered", new Object[0]);
    }

    public final void R(NetworkCapabilities networkCapabilities) {
        NetworkCapabilities networkCapabilities2;
        ISentryLifecycleToken a = this.o.a();
        try {
            if (networkCapabilities != null) {
                this.q = networkCapabilities;
            } else {
                if (!Permissions.a(this.j)) {
                    this.k.getLogger().c(SentryLevel.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
                    this.q = null;
                    this.m.getClass();
                    this.s = SystemClock.uptimeMillis();
                    a.close();
                    return;
                }
                this.l.getClass();
                ConnectivityManager E = E(this.j, this.k.getLogger());
                if (E != null) {
                    Network activeNetwork = E.getActiveNetwork();
                    if (activeNetwork != null) {
                        networkCapabilities2 = E.getNetworkCapabilities(activeNetwork);
                    } else {
                        networkCapabilities2 = null;
                    }
                    this.q = networkCapabilities2;
                } else {
                    this.q = null;
                }
            }
            this.m.getClass();
            this.s = SystemClock.uptimeMillis();
            this.k.getLogger().c(SentryLevel.DEBUG, "Cache updated - Status: " + v() + ", Type: " + A(), new Object[0]);
        } catch (Throwable th) {
            try {
                this.k.getLogger().b(SentryLevel.WARNING, "Failed to update connection status cache", th);
                this.q = null;
                this.m.getClass();
                this.s = SystemClock.uptimeMillis();
            } catch (Throwable th2) {
                try {
                    a.close();
                } catch (Throwable th3) {
                    th2.addSuppressed(th3);
                }
                throw th2;
            }
        }
        a.close();
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void a() {
        if (this.p != null) {
            return;
        }
        O(new a(this, 3));
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        O(new a(this, 0));
    }

    @Override // io.sentry.android.core.AppState.AppStateListener
    public final void h() {
        if (this.p == null) {
            return;
        }
        O(new a(this, 2));
    }

    @Override // io.sentry.IConnectionStatusProvider
    public final IConnectionStatusProvider.ConnectionStatus p0() {
        this.m.getClass();
        if (SystemClock.uptimeMillis() - this.s >= 120000) {
            R(null);
        }
        return v();
    }

    public final void q() {
        if (!ContextUtils.d() || this.p != null) {
            return;
        }
        ISentryLifecycleToken a = this.o.a();
        try {
            if (this.p != null) {
                a.close();
                return;
            }
            ConnectivityManager.NetworkCallback networkCallback = new ConnectivityManager.NetworkCallback() { // from class: io.sentry.android.core.internal.util.AndroidConnectionStatusProvider.1
                public final void a() {
                    AndroidConnectionStatusProvider.this.t.set(false);
                    ISentryLifecycleToken a2 = AndroidConnectionStatusProvider.this.o.a();
                    try {
                        AndroidConnectionStatusProvider.this.q = null;
                        AndroidConnectionStatusProvider.this.r = null;
                        AndroidConnectionStatusProvider androidConnectionStatusProvider = AndroidConnectionStatusProvider.this;
                        androidConnectionStatusProvider.m.getClass();
                        androidConnectionStatusProvider.s = SystemClock.uptimeMillis();
                        AndroidConnectionStatusProvider.this.k.getLogger().c(SentryLevel.DEBUG, "Cache cleared - network lost/unavailable", new Object[0]);
                        Iterator it = AndroidConnectionStatusProvider.this.n.iterator();
                        while (it.hasNext()) {
                            ((IConnectionStatusProvider.IConnectionStatusObserver) it.next()).q(IConnectionStatusProvider.ConnectionStatus.DISCONNECTED);
                        }
                        a2.close();
                    } catch (Throwable th) {
                        try {
                            a2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onAvailable(Network network) {
                    AndroidConnectionStatusProvider.this.r = network;
                    if (!AndroidConnectionStatusProvider.this.t.getAndSet(true)) {
                        ISentryLifecycleToken a2 = AndroidConnectionStatusProvider.w.a();
                        try {
                            Iterator it = AndroidConnectionStatusProvider.x.iterator();
                            while (it.hasNext()) {
                                ((ConnectivityManager.NetworkCallback) it.next()).onAvailable(network);
                            }
                            a2.close();
                        } catch (Throwable th) {
                            try {
                                a2.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                    }
                }

                /* JADX WARN: Removed duplicated region for block: B:18:0x009a A[Catch: all -> 0x00a4, LOOP:0: B:16:0x0094->B:18:0x009a, LOOP_END, TRY_LEAVE, TryCatch #1 {all -> 0x00a4, blocks: (B:15:0x008e, B:16:0x0094, B:18:0x009a), top: B:14:0x008e }] */
                @Override // android.net.ConnectivityManager.NetworkCallback
                /*
                    Code decompiled incorrectly, please refer to instructions dump.
                */
                public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
                    boolean z2;
                    IConnectionStatusProvider.ConnectionStatus v2;
                    ISentryLifecycleToken a2;
                    ISentryLifecycleToken a3;
                    Iterator it;
                    if (!network.equals(AndroidConnectionStatusProvider.this.r)) {
                        return;
                    }
                    NetworkCapabilities networkCapabilities2 = AndroidConnectionStatusProvider.this.q;
                    boolean z3 = true;
                    if (networkCapabilities2 == null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    if (networkCapabilities != null) {
                        z3 = false;
                    }
                    try {
                        try {
                            if (z2 == z3) {
                                if (networkCapabilities2 != null || networkCapabilities != null) {
                                    int[] iArr = AndroidConnectionStatusProvider.z;
                                    int length = iArr.length;
                                    int i = 0;
                                    while (true) {
                                        if (i < length) {
                                            int i2 = iArr[i];
                                            if (i2 != 0 && networkCapabilities2.hasCapability(i2) != networkCapabilities.hasCapability(i2)) {
                                                break;
                                            } else {
                                                i++;
                                            }
                                        } else {
                                            for (int i3 : AndroidConnectionStatusProvider.y) {
                                                if (networkCapabilities2.hasTransport(i3) == networkCapabilities.hasTransport(i3)) {
                                                }
                                            }
                                        }
                                    }
                                }
                                a3 = AndroidConnectionStatusProvider.w.a();
                                it = AndroidConnectionStatusProvider.x.iterator();
                                while (it.hasNext()) {
                                    ((ConnectivityManager.NetworkCallback) it.next()).onCapabilitiesChanged(network, networkCapabilities);
                                }
                                a3.close();
                                return;
                            }
                            it = AndroidConnectionStatusProvider.x.iterator();
                            while (it.hasNext()) {
                            }
                            a3.close();
                            return;
                        } catch (Throwable th) {
                            try {
                                a3.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                            throw th;
                        }
                        Iterator it2 = AndroidConnectionStatusProvider.this.n.iterator();
                        while (it2.hasNext()) {
                            ((IConnectionStatusProvider.IConnectionStatusObserver) it2.next()).q(v2);
                        }
                        a2.close();
                        a3 = AndroidConnectionStatusProvider.w.a();
                    } catch (Throwable th3) {
                        try {
                            a2.close();
                        } catch (Throwable th4) {
                            th3.addSuppressed(th4);
                        }
                        throw th3;
                    }
                    AndroidConnectionStatusProvider.this.R(networkCapabilities);
                    v2 = AndroidConnectionStatusProvider.this.v();
                    a2 = AndroidConnectionStatusProvider.this.o.a();
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onLost(Network network) {
                    if (!network.equals(AndroidConnectionStatusProvider.this.r)) {
                        return;
                    }
                    a();
                    ISentryLifecycleToken a2 = AndroidConnectionStatusProvider.w.a();
                    try {
                        Iterator it = AndroidConnectionStatusProvider.x.iterator();
                        while (it.hasNext()) {
                            ((ConnectivityManager.NetworkCallback) it.next()).onLost(network);
                        }
                        a2.close();
                    } catch (Throwable th) {
                        try {
                            a2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }

                @Override // android.net.ConnectivityManager.NetworkCallback
                public final void onUnavailable() {
                    a();
                    ISentryLifecycleToken a2 = AndroidConnectionStatusProvider.w.a();
                    try {
                        Iterator it = AndroidConnectionStatusProvider.x.iterator();
                        while (it.hasNext()) {
                            ((ConnectivityManager.NetworkCallback) it.next()).onUnavailable();
                        }
                        a2.close();
                    } catch (Throwable th) {
                        try {
                            a2.close();
                        } catch (Throwable th2) {
                            th.addSuppressed(th2);
                        }
                        throw th;
                    }
                }
            };
            Context context = this.j;
            ILogger logger = this.k.getLogger();
            this.l.getClass();
            ConnectivityManager E = E(context, logger);
            if (E != null) {
                if (!Permissions.a(context)) {
                    logger.c(SentryLevel.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
                } else {
                    try {
                        E.registerDefaultNetworkCallback(networkCallback);
                        this.p = networkCallback;
                        this.k.getLogger().c(SentryLevel.DEBUG, "Network callback registered successfully", new Object[0]);
                    } catch (Throwable th) {
                        logger.b(SentryLevel.WARNING, "registerDefaultNetworkCallback failed", th);
                    }
                    a.close();
                }
            }
            this.k.getLogger().c(SentryLevel.WARNING, "Failed to register network callback", new Object[0]);
            a.close();
        } catch (Throwable th2) {
            try {
                a.close();
            } catch (Throwable th3) {
                th2.addSuppressed(th3);
            }
            throw th2;
        }
    }

    @Override // io.sentry.IConnectionStatusProvider
    public final boolean s0(IConnectionStatusProvider.IConnectionStatusObserver iConnectionStatusObserver) {
        ISentryLifecycleToken a = this.o.a();
        try {
            this.n.add(iConnectionStatusObserver);
            a.close();
            q();
            if (this.p != null) {
                return true;
            }
            return false;
        } catch (Throwable th) {
            try {
                a.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    public final IConnectionStatusProvider.ConnectionStatus v() {
        if (this.q != null) {
            NetworkCapabilities networkCapabilities = this.q;
            if (networkCapabilities != null) {
                boolean hasCapability = networkCapabilities.hasCapability(12);
                this.l.getClass();
                if (hasCapability && networkCapabilities.hasCapability(16)) {
                    for (int i : y) {
                        if (networkCapabilities.hasTransport(i)) {
                            return IConnectionStatusProvider.ConnectionStatus.CONNECTED;
                        }
                    }
                }
            }
            return IConnectionStatusProvider.ConnectionStatus.DISCONNECTED;
        }
        ConnectivityManager E = E(this.j, this.k.getLogger());
        if (E != null) {
            Context context = this.j;
            ILogger logger = this.k.getLogger();
            if (!Permissions.a(context)) {
                logger.c(SentryLevel.INFO, "No permission (ACCESS_NETWORK_STATE) to check network status.", new Object[0]);
                return IConnectionStatusProvider.ConnectionStatus.NO_PERMISSION;
            }
            try {
                NetworkInfo activeNetworkInfo = E.getActiveNetworkInfo();
                if (activeNetworkInfo == null) {
                    logger.c(SentryLevel.INFO, "NetworkInfo is null, there's no active network.", new Object[0]);
                    return IConnectionStatusProvider.ConnectionStatus.DISCONNECTED;
                }
                if (activeNetworkInfo.isConnected()) {
                    return IConnectionStatusProvider.ConnectionStatus.CONNECTED;
                }
                return IConnectionStatusProvider.ConnectionStatus.DISCONNECTED;
            } catch (Throwable th) {
                logger.b(SentryLevel.WARNING, "Could not retrieve Connection Status", th);
                return IConnectionStatusProvider.ConnectionStatus.UNKNOWN;
            }
        }
        return IConnectionStatusProvider.ConnectionStatus.UNKNOWN;
    }
}
