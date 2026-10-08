package androidx.media3.exoplayer.drm;

import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.io.IOException;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface DrmSession {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class DrmSessionException extends IOException {
        public final int j;

        public DrmSessionException(Throwable th, int i) {
            super(th);
            this.j = i;
        }
    }

    void a(DrmSessionEventListener.EventDispatcher eventDispatcher);

    UUID b();

    boolean c();

    void d(DrmSessionEventListener.EventDispatcher eventDispatcher);

    boolean e(String str);

    DrmSessionException f();

    CryptoConfig g();

    int getState();
}
