package androidx.media3.exoplayer.drm;

import androidx.media3.common.C;
import androidx.media3.decoder.CryptoConfig;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ErrorStateDrmSession implements DrmSession {
    public final DrmSession.DrmSessionException a;

    public ErrorStateDrmSession(DrmSession.DrmSessionException drmSessionException) {
        this.a = drmSessionException;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final UUID b() {
        return C.a;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final boolean c() {
        return false;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final boolean e(String str) {
        return false;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final DrmSession.DrmSessionException f() {
        return this.a;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final CryptoConfig g() {
        return null;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final int getState() {
        return 1;
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final void a(DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }

    @Override // androidx.media3.exoplayer.drm.DrmSession
    public final void d(DrmSessionEventListener.EventDispatcher eventDispatcher) {
    }
}
