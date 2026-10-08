package io.sentry.transport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CurrentDateProvider implements ICurrentDateProvider {
    public static final CurrentDateProvider j = new Object();

    @Override // io.sentry.transport.ICurrentDateProvider
    public final long b() {
        return System.currentTimeMillis();
    }
}
