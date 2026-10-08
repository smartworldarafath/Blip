package io.sentry.transport;

import io.sentry.Hint;
import io.sentry.SentryEnvelope;
import java.io.Closeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ITransport extends Closeable {
    void N(SentryEnvelope sentryEnvelope, Hint hint);

    void b(boolean z);

    void c(long j);

    RateLimiter d();

    default boolean f() {
        return true;
    }
}
