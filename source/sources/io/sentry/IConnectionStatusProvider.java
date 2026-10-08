package io.sentry;

import java.io.Closeable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface IConnectionStatusProvider extends Closeable {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public enum ConnectionStatus {
        UNKNOWN,
        CONNECTED,
        DISCONNECTED,
        NO_PERMISSION
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface IConnectionStatusObserver {
        void q(ConnectionStatus connectionStatus);
    }

    String B();

    void L0(IConnectionStatusObserver iConnectionStatusObserver);

    ConnectionStatus p0();

    boolean s0(IConnectionStatusObserver iConnectionStatusObserver);
}
