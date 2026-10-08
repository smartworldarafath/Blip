package io.sentry;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RequestDetailsResolver {
    public final Dsn a;
    public final String b;

    public RequestDetailsResolver(SentryOptions sentryOptions) {
        this.a = sentryOptions.retrieveParsedDsn();
        this.b = sentryOptions.getSentryClientName();
    }
}
