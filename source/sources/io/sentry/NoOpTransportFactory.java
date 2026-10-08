package io.sentry;

import io.sentry.transport.ITransport;
import io.sentry.transport.NoOpTransport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpTransportFactory implements ITransportFactory {
    public static final NoOpTransportFactory a = new Object();

    @Override // io.sentry.ITransportFactory
    public final ITransport a(SentryOptions sentryOptions, RequestDetails requestDetails) {
        return NoOpTransport.j;
    }
}
