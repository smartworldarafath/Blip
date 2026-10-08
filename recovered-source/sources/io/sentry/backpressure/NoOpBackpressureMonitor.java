package io.sentry.backpressure;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NoOpBackpressureMonitor implements IBackpressureMonitor {
    public static final NoOpBackpressureMonitor j = new Object();

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public final int a() {
        return 0;
    }

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public final void close() {
    }

    @Override // io.sentry.backpressure.IBackpressureMonitor
    public final void start() {
    }
}
