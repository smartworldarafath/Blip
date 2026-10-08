package io.sentry;

import defpackage.f3;
import io.sentry.util.Objects;
import java.io.Closeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ShutdownHookIntegration implements Integration, Closeable {
    public final Runtime j;
    public Thread k;

    public ShutdownHookIntegration() {
        Runtime runtime = Runtime.getRuntime();
        Objects.b(runtime, "Runtime is required");
        this.j = runtime;
    }

    @Override // io.sentry.Integration
    public final void E(SentryOptions sentryOptions) {
        if (sentryOptions.isEnableShutdownHook()) {
            this.k = new Thread(new f(sentryOptions, 3), "sentry-shutdownhook");
            try {
                new f3(29, this, sentryOptions).run();
                return;
            } catch (IllegalStateException e) {
                String message = e.getMessage();
                if (message != null && (message.equals("Shutdown in progress") || message.equals("VM already shutting down"))) {
                    return;
                } else {
                    throw e;
                }
            }
        }
        sentryOptions.getLogger().c(SentryLevel.INFO, "enableShutdownHook is disabled.", new Object[0]);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.k != null) {
            try {
                this.j.removeShutdownHook(this.k);
            } catch (IllegalStateException e) {
                String message = e.getMessage();
                if (message == null || (!message.equals("Shutdown in progress") && !message.equals("VM already shutting down"))) {
                    throw e;
                }
            }
        }
    }
}
