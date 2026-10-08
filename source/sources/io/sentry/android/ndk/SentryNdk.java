package io.sentry.android.ndk;

import defpackage.r;
import io.sentry.SentryIntegrationPackageStorage;
import io.sentry.android.core.NdkHandlerStrategy;
import io.sentry.android.core.SentryAndroidOptions;
import io.sentry.ndk.NdkOptions;
import io.sentry.protocol.SdkVersion;
import io.sentry.util.Objects;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SentryNdk {
    private static final CountDownLatch loadLibraryLatch = new CountDownLatch(1);

    static {
        new Thread(new r(4), "SentryNdkLoadLibs").start();
    }

    private SentryNdk() {
    }

    public static void close() {
        try {
            if (loadLibraryLatch.await(2000L, TimeUnit.MILLISECONDS)) {
                io.sentry.ndk.SentryNdk.close();
                return;
            }
            throw new IllegalStateException("Timeout waiting for Sentry NDK library to load");
        } catch (InterruptedException e) {
            throw new IllegalStateException("Thread interrupted while waiting for NDK libs to be loaded", e);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v13, types: [io.sentry.android.core.IDebugImagesLoader, java.lang.Object] */
    public static void init(SentryAndroidOptions sentryAndroidOptions) {
        SdkVersion sdkVersion = sentryAndroidOptions.getSdkVersion();
        int i = SentryNdkUtil.a;
        if (sdkVersion != null) {
            SentryIntegrationPackageStorage.d().b("maven:io.sentry:sentry-android-ndk", "8.41.0");
        }
        try {
            if (loadLibraryLatch.await(2000L, TimeUnit.MILLISECONDS)) {
                String dsn = sentryAndroidOptions.getDsn();
                Objects.b(dsn, "DSN is required for sentry-ndk");
                boolean isDebug = sentryAndroidOptions.isDebug();
                String outboxPath = sentryAndroidOptions.getOutboxPath();
                Objects.b(outboxPath, "outbox path is required for sentry-ndk");
                NdkOptions ndkOptions = new NdkOptions(dsn, isDebug, outboxPath, sentryAndroidOptions.getRelease(), sentryAndroidOptions.getEnvironment(), sentryAndroidOptions.getDist(), sentryAndroidOptions.getMaxBreadcrumbs(), sentryAndroidOptions.getNativeSdkName());
                int ndkHandlerStrategy = sentryAndroidOptions.getNdkHandlerStrategy();
                if (ndkHandlerStrategy == NdkHandlerStrategy.SENTRY_HANDLER_STRATEGY_DEFAULT.getValue()) {
                    ndkOptions.setNdkHandlerStrategy(io.sentry.ndk.NdkHandlerStrategy.SENTRY_HANDLER_STRATEGY_DEFAULT);
                } else if (ndkHandlerStrategy == NdkHandlerStrategy.SENTRY_HANDLER_STRATEGY_CHAIN_AT_START.getValue()) {
                    ndkOptions.setNdkHandlerStrategy(io.sentry.ndk.NdkHandlerStrategy.SENTRY_HANDLER_STRATEGY_CHAIN_AT_START);
                }
                Double tracesSampleRate = sentryAndroidOptions.getTracesSampleRate();
                if (tracesSampleRate == null) {
                    ndkOptions.setTracesSampleRate(0.0f);
                } else {
                    ndkOptions.setTracesSampleRate(tracesSampleRate.floatValue());
                }
                io.sentry.ndk.SentryNdk.init(ndkOptions);
                if (sentryAndroidOptions.isEnableScopeSync()) {
                    sentryAndroidOptions.addScopeObserver(new NdkScopeObserver(sentryAndroidOptions));
                }
                sentryAndroidOptions.setDebugImagesLoader(new Object());
                return;
            }
            throw new IllegalStateException("Timeout waiting for Sentry NDK library to load");
        } catch (InterruptedException e) {
            throw new IllegalStateException("Thread interrupted while waiting for NDK libs to be loaded", e);
        }
    }

    public static /* synthetic */ void lambda$static$0() {
        try {
            io.sentry.ndk.SentryNdk.loadNativeLibraries();
        } catch (Throwable unused) {
        }
        loadLibraryLatch.countDown();
    }
}
