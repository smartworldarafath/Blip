package io.sentry.android.core;

import io.sentry.ILogger;
import io.sentry.Integration;
import io.sentry.SentryLevel;
import io.sentry.SentryOptions;
import io.sentry.util.IntegrationUtils;
import io.sentry.util.Objects;
import java.io.Closeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NdkIntegration implements Integration, Closeable {
    public final Class j;
    public SentryAndroidOptions k;

    public NdkIntegration(Class cls) {
        this.j = cls;
    }

    public static void a(SentryAndroidOptions sentryAndroidOptions) {
        sentryAndroidOptions.setEnableNdk(false);
        sentryAndroidOptions.setEnableScopeSync(false);
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        SentryAndroidOptions sentryAndroidOptions;
        Class cls;
        if (sentryOptions instanceof SentryAndroidOptions) {
            sentryAndroidOptions = (SentryAndroidOptions) sentryOptions;
        } else {
            sentryAndroidOptions = null;
        }
        Objects.b(sentryAndroidOptions, "SentryAndroidOptions is required");
        this.k = sentryAndroidOptions;
        boolean isEnableNdk = sentryAndroidOptions.isEnableNdk();
        ILogger logger = this.k.getLogger();
        SentryLevel sentryLevel = SentryLevel.DEBUG;
        logger.c(sentryLevel, "NdkIntegration enabled: %s", Boolean.valueOf(isEnableNdk));
        if (isEnableNdk && (cls = this.j) != null) {
            if (this.k.getCacheDirPath() == null) {
                this.k.getLogger().c(SentryLevel.ERROR, "No cache dir path is defined in options.", new Object[0]);
                a(this.k);
                return;
            }
            try {
                cls.getMethod("init", SentryAndroidOptions.class).invoke(null, this.k);
                this.k.getLogger().c(sentryLevel, "NdkIntegration installed.", new Object[0]);
                IntegrationUtils.a("Ndk");
                return;
            } catch (NoSuchMethodException e) {
                a(this.k);
                this.k.getLogger().b(SentryLevel.ERROR, "Failed to invoke the SentryNdk.init method.", e);
                return;
            } catch (Throwable th) {
                a(this.k);
                this.k.getLogger().b(SentryLevel.ERROR, "Failed to initialize SentryNdk.", th);
                return;
            }
        }
        a(this.k);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        SentryAndroidOptions sentryAndroidOptions = this.k;
        if (sentryAndroidOptions != null && sentryAndroidOptions.isEnableNdk()) {
            Class cls = this.j;
            try {
                if (cls != null) {
                    try {
                        try {
                            cls.getMethod("close", null).invoke(null, null);
                            this.k.getLogger().c(SentryLevel.DEBUG, "NdkIntegration removed.", new Object[0]);
                            a(this.k);
                        } catch (NoSuchMethodException e) {
                            this.k.getLogger().b(SentryLevel.ERROR, "Failed to invoke the SentryNdk.close method.", e);
                            a(this.k);
                        }
                    } catch (Throwable th) {
                        this.k.getLogger().b(SentryLevel.ERROR, "Failed to close SentryNdk.", th);
                        a(this.k);
                    }
                }
            } catch (Throwable th2) {
                a(this.k);
                throw th2;
            }
        }
    }
}
