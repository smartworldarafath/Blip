package io.sentry.android.core;

import android.content.Context;
import android.net.ConnectivityManager;
import android.net.Network;
import android.net.NetworkCapabilities;
import android.os.Build;
import io.sentry.Breadcrumb;
import io.sentry.Hint;
import io.sentry.ILogger;
import io.sentry.ISentryLifecycleToken;
import io.sentry.Integration;
import io.sentry.ScopesAdapter;
import io.sentry.SentryDateProvider;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.android.core.internal.util.AndroidConnectionStatusProvider;
import io.sentry.util.AutoClosableReentrantLock;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;
import java.util.concurrent.locks.ReentrantLock;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NetworkBreadcrumbsIntegration implements Integration, Closeable {
    public final Context j;
    public final BuildInfoProvider k;
    public final AutoClosableReentrantLock l = new ReentrantLock();
    public volatile NetworkBreadcrumbsNetworkCallback m;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class NetworkBreadcrumbConnectionDetail {
        public final int a;
        public final int b;
        public final int c;
        public final long d;
        public final boolean e;
        public final String f;

        public NetworkBreadcrumbConnectionDetail(NetworkCapabilities networkCapabilities, BuildInfoProvider buildInfoProvider, long j) {
            int i;
            Objects.b(networkCapabilities, "NetworkCapabilities is required");
            Objects.b(buildInfoProvider, "BuildInfoProvider is required");
            this.a = networkCapabilities.getLinkDownstreamBandwidthKbps();
            this.b = networkCapabilities.getLinkUpstreamBandwidthKbps();
            if (Build.VERSION.SDK_INT >= 29) {
                i = networkCapabilities.getSignalStrength();
            } else {
                i = 0;
            }
            this.c = i > -100 ? i : 0;
            this.e = networkCapabilities.hasTransport(4);
            String w = AndroidConnectionStatusProvider.w(networkCapabilities);
            this.f = w == null ? "" : w;
            this.d = j;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class NetworkBreadcrumbsNetworkCallback extends ConnectivityManager.NetworkCallback {
        public final BuildInfoProvider b;
        public final SentryDateProvider e;
        public NetworkCapabilities c = null;
        public long d = 0;
        public final ScopesAdapter a = ScopesAdapter.a;

        public NetworkBreadcrumbsNetworkCallback(BuildInfoProvider buildInfoProvider, SentryDateProvider sentryDateProvider) {
            Objects.b(buildInfoProvider, "BuildInfoProvider is required");
            this.b = buildInfoProvider;
            Objects.b(sentryDateProvider, "SentryDateProvider is required");
            this.e = sentryDateProvider;
        }

        public static Breadcrumb a(String str) {
            Breadcrumb breadcrumb = new Breadcrumb();
            breadcrumb.n = "system";
            breadcrumb.p = "network.event";
            breadcrumb.c(str, "action");
            breadcrumb.r = SentryLevel.INFO;
            return breadcrumb;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onAvailable(Network network) {
            this.a.e(a("NETWORK_AVAILABLE"));
            this.c = null;
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onCapabilitiesChanged(Network network, NetworkCapabilities networkCapabilities) {
            NetworkBreadcrumbConnectionDetail networkBreadcrumbConnectionDetail;
            boolean z;
            boolean z2;
            boolean z3;
            boolean z4;
            long d = this.e.a().d();
            NetworkCapabilities networkCapabilities2 = this.c;
            long j = this.d;
            BuildInfoProvider buildInfoProvider = this.b;
            if (networkCapabilities2 == null) {
                networkBreadcrumbConnectionDetail = new NetworkBreadcrumbConnectionDetail(networkCapabilities, buildInfoProvider, d);
            } else {
                NetworkBreadcrumbConnectionDetail networkBreadcrumbConnectionDetail2 = new NetworkBreadcrumbConnectionDetail(networkCapabilities2, buildInfoProvider, j);
                networkBreadcrumbConnectionDetail = new NetworkBreadcrumbConnectionDetail(networkCapabilities, buildInfoProvider, d);
                int abs = Math.abs(networkBreadcrumbConnectionDetail2.c - networkBreadcrumbConnectionDetail.c);
                int i = networkBreadcrumbConnectionDetail.a;
                int abs2 = Math.abs(networkBreadcrumbConnectionDetail2.a - i);
                int i2 = networkBreadcrumbConnectionDetail.b;
                int abs3 = Math.abs(networkBreadcrumbConnectionDetail2.b - i2);
                if (Math.abs(networkBreadcrumbConnectionDetail2.d - networkBreadcrumbConnectionDetail.d) / 1000000.0d < 5000.0d) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z && abs > 5) {
                    z2 = false;
                } else {
                    z2 = true;
                }
                if (!z && abs2 > Math.max(1000.0d, Math.abs(r7) * 0.1d)) {
                    z3 = false;
                } else {
                    z3 = true;
                }
                if (!z && abs3 > Math.max(1000.0d, Math.abs(r10) * 0.1d)) {
                    z4 = false;
                } else {
                    z4 = true;
                }
                if (networkBreadcrumbConnectionDetail2.e == networkBreadcrumbConnectionDetail.e && networkBreadcrumbConnectionDetail2.f.equals(networkBreadcrumbConnectionDetail.f) && z2 && z3 && z4) {
                    networkBreadcrumbConnectionDetail = null;
                }
            }
            if (networkBreadcrumbConnectionDetail == null) {
                return;
            }
            this.c = networkCapabilities;
            this.d = d;
            Breadcrumb a = a("NETWORK_CAPABILITIES_CHANGED");
            a.c(Integer.valueOf(networkBreadcrumbConnectionDetail.a), "download_bandwidth");
            a.c(Integer.valueOf(networkBreadcrumbConnectionDetail.b), "upload_bandwidth");
            a.c(Boolean.valueOf(networkBreadcrumbConnectionDetail.e), "vpn_active");
            a.c(networkBreadcrumbConnectionDetail.f, "network_type");
            int i3 = networkBreadcrumbConnectionDetail.c;
            if (i3 != 0) {
                a.c(Integer.valueOf(i3), "signal_strength");
            }
            Hint hint = new Hint();
            hint.d(networkBreadcrumbConnectionDetail, "android:networkCapabilities");
            this.a.a(a, hint);
        }

        @Override // android.net.ConnectivityManager.NetworkCallback
        public final void onLost(Network network) {
            this.a.e(a("NETWORK_LOST"));
            this.c = null;
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.concurrent.locks.ReentrantLock, io.sentry.util.AutoClosableReentrantLock] */
    public NetworkBreadcrumbsIntegration(Context context, BuildInfoProvider buildInfoProvider) {
        Context applicationContext = context.getApplicationContext();
        this.j = applicationContext != null ? applicationContext : context;
        this.k = buildInfoProvider;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        ILogger logger = sentryOptions.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "NetworkBreadcrumbsIntegration enabled: %s", Boolean.valueOf(sentryAndroidOptions.isEnableNetworkEventBreadcrumbs()));
        if (sentryAndroidOptions.isEnableNetworkEventBreadcrumbs()) {
            this.k.getClass();
            ISentryLifecycleToken a = this.l.a();
            try {
                this.m = new NetworkBreadcrumbsNetworkCallback(this.k, sentryOptions.getDateProvider());
                if (AndroidConnectionStatusProvider.n(this.j, sentryOptions.getLogger(), this.k, this.m)) {
                    sentryOptions.getLogger().c(sentryLevel, "NetworkBreadcrumbsIntegration installed.", new Object[0]);
                    IntegrationUtils.a("NetworkBreadcrumbs");
                } else {
                    sentryOptions.getLogger().c(sentryLevel, "NetworkBreadcrumbsIntegration not installed.", new Object[0]);
                }
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
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ISentryLifecycleToken a = this.l.a();
        try {
            NetworkBreadcrumbsNetworkCallback networkBreadcrumbsNetworkCallback = this.m;
            this.m = null;
            a.close();
            if (networkBreadcrumbsNetworkCallback != null) {
                ISentryLifecycleToken a2 = AndroidConnectionStatusProvider.w.a();
                try {
                    AndroidConnectionStatusProvider.x.remove(networkBreadcrumbsNetworkCallback);
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
        } catch (Throwable th3) {
            try {
                a.close();
            } catch (Throwable th4) {
                th3.addSuppressed(th4);
            }
            throw th3;
        }
    }
}
