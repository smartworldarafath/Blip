package io.sentry.transport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpTransportGate implements ITransportGate {
    public static final NoOpTransportGate a = new Object();

    @Override // io.sentry.transport.ITransportGate
    public final boolean a() {
        return true;
    }
}
