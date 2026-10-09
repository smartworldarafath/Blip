package androidx.media3.extractor.metadata;

import androidx.media3.common.Metadata;
import com.google.common.primitives.Longs;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ThumbnailMetadata implements Metadata.Entry {
    public final long a;

    public ThumbnailMetadata(long j) {
        this.a = j;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ThumbnailMetadata.class == obj.getClass() && this.a == ((ThumbnailMetadata) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Longs.b(this.a) + 527;
    }

    public final String toString() {
        return "ThumbnailMetadata: presentationTimeUs=" + this.a;
    }
}
