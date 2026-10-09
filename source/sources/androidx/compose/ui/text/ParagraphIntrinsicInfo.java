package androidx.compose.ui.text;

import defpackage.jb;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParagraphIntrinsicInfo {
    public final AndroidParagraphIntrinsics a;
    public final int b;
    public final int c;

    public ParagraphIntrinsicInfo(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i, int i2) {
        this.a = androidParagraphIntrinsics;
        this.b = i;
        this.c = i2;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ParagraphIntrinsicInfo) {
                ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) obj;
                if (this.a == paragraphIntrinsicInfo.a && this.b == paragraphIntrinsicInfo.b && this.c == paragraphIntrinsicInfo.c) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Integer.hashCode(this.c) + q.b(this.b, this.a.hashCode() * 31, 31);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("ParagraphIntrinsicInfo(intrinsics=");
        sb.append(this.a);
        sb.append(", startIndex=");
        sb.append(this.b);
        sb.append(", endIndex=");
        return jb.i(sb, this.c, ")");
    }
}
