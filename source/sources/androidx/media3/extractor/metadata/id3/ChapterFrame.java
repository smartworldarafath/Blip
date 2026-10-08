package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.Label;
import androidx.media3.extractor.metadata.Chapter;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ChapterFrame extends Id3Frame implements Chapter {
    public final String b;
    public final int c;
    public final int d;
    public final long e;
    public final long f;
    public final Id3Frame[] g;

    /* JADX WARN: Multi-variable type inference failed */
    public ChapterFrame(String str, int i, int i2, long j, long j2, Id3Frame[] id3FrameArr) {
        super("CHAP");
        boolean z;
        String str2;
        if (i <= i2) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.b = str;
        this.c = i;
        this.d = i2;
        int length = id3FrameArr.length;
        int i3 = 0;
        while (true) {
            if (i3 < length) {
                Id3Frame id3Frame = id3FrameArr[i3];
                if (id3Frame instanceof TextInformationFrame) {
                    TextInformationFrame textInformationFrame = (TextInformationFrame) id3Frame;
                    ImmutableList immutableList = textInformationFrame.c;
                    if (textInformationFrame.a.equals("TIT2") && !immutableList.isEmpty()) {
                        str2 = (String) immutableList.get(0);
                        break;
                    }
                }
                i3++;
            } else {
                str2 = null;
                break;
            }
        }
        if (str2 != null) {
            new Label(null, str2);
        }
        this.e = j;
        this.f = j2;
        this.g = id3FrameArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && ChapterFrame.class == obj.getClass()) {
            ChapterFrame chapterFrame = (ChapterFrame) obj;
            if (this.c == chapterFrame.c && this.d == chapterFrame.d && this.e == chapterFrame.e && this.f == chapterFrame.f && Objects.equals(this.b, chapterFrame.b) && Arrays.equals(this.g, chapterFrame.g)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i;
        int i2 = (((((((527 + this.c) * 31) + this.d) * 31) + ((int) this.e)) * 31) + ((int) this.f)) * 31;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return i2 + i;
    }
}
