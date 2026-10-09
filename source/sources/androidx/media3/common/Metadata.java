package androidx.media3.common;

import androidx.media3.common.MediaMetadata;
import androidx.media3.common.util.Util;
import com.google.common.primitives.Longs;
import java.util.Arrays;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Metadata {
    public final Entry[] a;
    public final long b;

    public Metadata(List list) {
        this((Entry[]) list.toArray(new Entry[0]));
    }

    public final Metadata a(Entry... entryArr) {
        if (entryArr.length == 0) {
            return this;
        }
        String str = Util.a;
        Entry[] entryArr2 = this.a;
        Object[] copyOf = Arrays.copyOf(entryArr2, entryArr2.length + entryArr.length);
        System.arraycopy(entryArr, 0, copyOf, entryArr2.length, entryArr.length);
        return new Metadata(this.b, (Entry[]) copyOf);
    }

    public final Metadata b(Metadata metadata) {
        if (metadata == null) {
            return this;
        }
        return a(metadata.a);
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && Metadata.class == obj.getClass()) {
            Metadata metadata = (Metadata) obj;
            if (Arrays.equals(this.a, metadata.a) && this.b == metadata.b) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Longs.b(this.b) + (Arrays.hashCode(this.a) * 31);
    }

    public final String toString() {
        String str;
        StringBuilder sb = new StringBuilder("entries=");
        sb.append(Arrays.toString(this.a));
        long j = this.b;
        if (j == -9223372036854775807L) {
            str = "";
        } else {
            str = ", presentationTimeUs=" + j;
        }
        sb.append(str);
        return sb.toString();
    }

    public Metadata(long j, Entry... entryArr) {
        this.b = j;
        this.a = entryArr;
    }

    public Metadata(Entry... entryArr) {
        this(-9223372036854775807L, entryArr);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Entry {
        default Format a() {
            return null;
        }

        default byte[] c() {
            return null;
        }

        default void b(MediaMetadata.Builder builder) {
        }
    }
}
