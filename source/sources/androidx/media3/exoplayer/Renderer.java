package androidx.media3.exoplayer;

import androidx.media3.exoplayer.PlayerMessage;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Renderer extends PlayerMessage.Target {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface WakeupListener {
        void a();

        void b();
    }

    boolean a();

    boolean b();

    void d(long j, long j2);

    default long g(long j, long j2) {
        if (((BaseRenderer) this).q == 1) {
            if (a() || b()) {
                return 1000000L;
            }
            return 10000L;
        }
        return 10000L;
    }

    String getName();

    default boolean p(long j) {
        return false;
    }

    MediaClock q();

    default void i() {
    }

    default void l(float f, float f2) {
    }
}
