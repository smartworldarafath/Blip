package io.sentry.transport;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransportResult {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ErrorTransportResult extends TransportResult {
        public final int a;

        public ErrorTransportResult(int i) {
            this.a = i;
        }

        @Override // io.sentry.transport.TransportResult
        public final int a() {
            return this.a;
        }

        @Override // io.sentry.transport.TransportResult
        public final boolean b() {
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SuccessTransportResult extends TransportResult {
        public static final SuccessTransportResult a = new Object();

        @Override // io.sentry.transport.TransportResult
        public final int a() {
            return -1;
        }

        @Override // io.sentry.transport.TransportResult
        public final boolean b() {
            return true;
        }
    }

    public abstract int a();

    public abstract boolean b();
}
