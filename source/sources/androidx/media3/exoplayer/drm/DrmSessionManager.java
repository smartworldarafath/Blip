package androidx.media3.exoplayer.drm;

import androidx.media3.common.Format;
import androidx.media3.exoplayer.drm.DrmSession;
import androidx.media3.exoplayer.drm.DrmSessionEventListener;
import defpackage.f7;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface DrmSessionManager {
    public static final DrmSessionManager a = new Object();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.media3.exoplayer.drm.DrmSessionManager$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements DrmSessionManager {
        @Override // androidx.media3.exoplayer.drm.DrmSessionManager
        public final DrmSession a(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format) {
            if (format.t == null) {
                return null;
            }
            return new ErrorStateDrmSession(new DrmSession.DrmSessionException(new Exception(), 6001));
        }

        @Override // androidx.media3.exoplayer.drm.DrmSessionManager
        public final int b(Format format) {
            if (format.t != null) {
                return 1;
            }
            return 0;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface DrmSessionReference {
        public static final f7 c = new f7(14);

        void a();
    }

    DrmSession a(DrmSessionEventListener.EventDispatcher eventDispatcher, Format format);

    int b(Format format);
}
