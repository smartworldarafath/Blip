package androidx.media3.extractor.metadata;

import androidx.media3.common.Label;
import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ChapterImpl implements Chapter {
    public final long a;
    public final long b;
    public final boolean c;
    public final Label d;

    public ChapterImpl(long j, long j2, boolean z, Label label) {
        boolean z2;
        if (j != -9223372036854775807L && j2 != -9223372036854775807L && j > j2) {
            z2 = false;
        } else {
            z2 = true;
        }
        Preconditions.e(z2);
        this.a = j;
        this.b = j2;
        this.c = z;
        this.d = label;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ChapterImpl.class == obj.getClass()) {
            ChapterImpl chapterImpl = (ChapterImpl) obj;
            if (this.a == chapterImpl.a && this.b == chapterImpl.b && this.c == chapterImpl.c && Objects.equals(this.d, chapterImpl.d)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int b = (((Longs.b(this.b) + ((Longs.b(this.a) + 527) * 31)) * 31) + (this.c ? 1 : 0)) * 31;
        Label label = this.d;
        if (label != null) {
            i = label.hashCode();
        } else {
            i = 0;
        }
        return b + i;
    }

    public final String toString() {
        Object valueOf;
        String str;
        String str2;
        StringBuilder sb = new StringBuilder("Chapter: startTimeMs=");
        long j = this.a;
        if (j == -9223372036854775807L) {
            valueOf = "UNSET";
        } else {
            valueOf = Long.valueOf(j);
        }
        sb.append(valueOf);
        long j2 = this.b;
        String str3 = "";
        if (j2 == -9223372036854775807L) {
            str = "";
        } else {
            str = ", endTimeMs=" + j2;
        }
        sb.append(str);
        if (!this.c) {
            str2 = "";
        } else {
            str2 = ", hidden";
        }
        sb.append(str2);
        Label label = this.d;
        if (label != null) {
            str3 = ", title=" + label;
        }
        sb.append(str3);
        return sb.toString();
    }
}
