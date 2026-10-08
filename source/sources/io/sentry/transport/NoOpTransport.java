package io.sentry.transport;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpTransport implements ITransport {
    public static final NoOpTransport j = new Object();

    @Override // io.sentry.transport.ITransport
    public final RateLimiter d() {
        return null;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // io.sentry.transport.ITransport
    public final void b(boolean z) {
    }

    @Override // io.sentry.transport.ITransport
    public final void c(long j2) {
    }

    @Override // io.sentry.transport.ITransport
    public final void N(SentryEnvelope sentryEnvelope, Hint hint) {
    }
}
