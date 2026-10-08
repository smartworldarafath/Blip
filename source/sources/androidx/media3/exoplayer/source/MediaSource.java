package androidx.media3.exoplayer.source;

import androidx.media3.common.MediaItem;
import androidx.media3.common.Timeline;
import androidx.media3.exoplayer.upstream.Allocator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MediaSource {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface MediaSourceCaller {
        void a(Timeline timeline);
    }

    void a(MediaItem mediaItem);

    MediaPeriod b(MediaPeriodId mediaPeriodId, Allocator allocator, long j);

    MediaItem c();

    void d();

    default boolean e() {
        return true;
    }

    default Timeline f() {
        return null;
    }

    void g(MediaPeriod mediaPeriod);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaPeriodId {
        public final Object a;
        public final int b;
        public final int c;
        public final long d;
        public final int e;

        public MediaPeriodId(Object obj, int i, int i2, long j, int i3) {
            this.a = obj;
            this.b = i;
            this.c = i2;
            this.d = j;
            this.e = i3;
        }

        public final MediaPeriodId a(Object obj) {
            if (this.a.equals(obj)) {
                return this;
            }
            return new MediaPeriodId(obj, this.b, this.c, this.d, this.e);
        }

        public final boolean b(MediaPeriodId mediaPeriodId) {
            if (mediaPeriodId == null) {
                return false;
            }
            if (this == mediaPeriodId) {
                return true;
            }
            if (!this.a.equals(mediaPeriodId.a) || this.b != mediaPeriodId.b || this.c != mediaPeriodId.c || this.d != mediaPeriodId.d) {
                return false;
            }
            return true;
        }

        public final boolean c() {
            if (this.b != -1) {
                return true;
            }
            return false;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof MediaPeriodId)) {
                return false;
            }
            MediaPeriodId mediaPeriodId = (MediaPeriodId) obj;
            if (b(mediaPeriodId) && this.e == mediaPeriodId.e) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return ((((((((this.a.hashCode() + 527) * 31) + this.b) * 31) + this.c) * 31) + ((int) this.d)) * 31) + this.e;
        }

        public MediaPeriodId(long j, Object obj) {
            this(obj, -1, -1, j, -1);
        }

        public MediaPeriodId(int i, long j, Object obj) {
            this(obj, -1, -1, j, i);
        }

        public MediaPeriodId(Object obj) {
            this(-1L, obj);
        }
    }
}
