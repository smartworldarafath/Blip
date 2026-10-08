package androidx.media3.extractor.metadata.id3;

import defpackage.jb;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CommentFrame extends Id3Frame {
    public final String b;
    public final String c;
    public final String d;

    public CommentFrame(String str, String str2, String str3) {
        super("COMM");
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && CommentFrame.class == obj.getClass()) {
                CommentFrame commentFrame = (CommentFrame) obj;
                if (this.c.equals(commentFrame.c) && this.b.equals(commentFrame.b) && Objects.equals(this.d, commentFrame.d)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        int c = jb.c(this.c, jb.c(this.b, 527, 31), 31);
        String str = this.d;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return c + i;
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.a + ": language=" + this.b + ", description=" + this.c + ", text=" + this.d;
    }
}
