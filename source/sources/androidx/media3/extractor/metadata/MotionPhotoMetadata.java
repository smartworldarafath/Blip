package androidx.media3.extractor.metadata;

import androidx.media3.common.Metadata;
import com.google.common.primitives.Longs;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MotionPhotoMetadata implements Metadata.Entry {
    public final long a;
    public final long b;
    public final long c;
    public final long d;
    public final long e;

    public MotionPhotoMetadata(long j, long j2, long j3, long j4, long j5) {
        this.a = j;
        this.b = j2;
        this.c = j3;
        this.d = j4;
        this.e = j5;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && MotionPhotoMetadata.class == obj.getClass()) {
            MotionPhotoMetadata motionPhotoMetadata = (MotionPhotoMetadata) obj;
            if (this.a == motionPhotoMetadata.a && this.b == motionPhotoMetadata.b && this.c == motionPhotoMetadata.c && this.d == motionPhotoMetadata.d && this.e == motionPhotoMetadata.e) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Longs.b(this.e) + ((Longs.b(this.d) + ((Longs.b(this.c) + ((Longs.b(this.b) + ((Longs.b(this.a) + 527) * 31)) * 31)) * 31)) * 31);
    }

    public final String toString() {
        return "Motion photo metadata: photoStartPosition=" + this.a + ", photoSize=" + this.b + ", photoPresentationTimestampUs=" + this.c + ", videoStartPosition=" + this.d + ", videoSize=" + this.e;
    }
}
