package androidx.media3.container;

import androidx.media3.common.Metadata;
import com.google.common.primitives.Longs;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Mp4TimestampData implements Metadata.Entry {
    public final long a;
    public final long b;
    public final long c;

    public Mp4TimestampData(long j, long j2, long j3) {
        this.a = j;
        this.b = j2;
        this.c = j3;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Mp4TimestampData)) {
            return false;
        }
        Mp4TimestampData mp4TimestampData = (Mp4TimestampData) obj;
        if (this.a == mp4TimestampData.a && this.b == mp4TimestampData.b && this.c == mp4TimestampData.c) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Longs.b(this.c) + ((Longs.b(this.b) + ((Longs.b(this.a) + 527) * 31)) * 31);
    }

    public final String toString() {
        return "Mp4Timestamp: creation time=" + this.a + ", modification time=" + this.b + ", timescale=" + this.c;
    }
}
