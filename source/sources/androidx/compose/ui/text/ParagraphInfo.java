package androidx.compose.ui.text;

import androidx.compose.ui.geometry.Rect;
import defpackage.q;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParagraphInfo {
    public final AndroidParagraph a;
    public final int b;
    public final int c;
    public final int d;
    public final int e;
    public final float f;
    public final float g;

    public ParagraphInfo(AndroidParagraph androidParagraph, int i, int i2, int i3, int i4, float f, float f2) {
        this.a = androidParagraph;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = i4;
        this.f = f;
        this.g = f2;
    }

    public final Rect a(Rect rect) {
        return rect.i((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(this.f) & 4294967295L));
    }

    public final long b(long j, boolean z) {
        if (z) {
            long j2 = TextRange.b;
            if (TextRange.b(j, j2)) {
                return j2;
            }
        }
        int i = TextRange.c;
        int i2 = this.b;
        return TextRangeKt.a(((int) (j >> 32)) + i2, ((int) (j & 4294967295L)) + i2);
    }

    public final Rect c(Rect rect) {
        float f = -this.f;
        return rect.i((Float.floatToRawIntBits(0.0f) << 32) | (Float.floatToRawIntBits(f) & 4294967295L));
    }

    public final int d(int i) {
        int i2 = this.c;
        int i3 = this.b;
        return RangesKt.d(i, i3, i2) - i3;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ParagraphInfo) {
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                if (this.a == paragraphInfo.a && this.b == paragraphInfo.b && this.c == paragraphInfo.c && this.d == paragraphInfo.d && this.e == paragraphInfo.e && Float.compare(this.f, paragraphInfo.f) == 0 && Float.compare(this.g, paragraphInfo.g) == 0) {
                    return true;
                }
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Float.hashCode(this.g) + q.a(this.f, q.b(this.e, q.b(this.d, q.b(this.c, q.b(this.b, this.a.hashCode() * 31, 31), 31), 31), 31), 31);
    }

    public final String toString() {
        return "ParagraphInfo(paragraph=" + this.a + ", startIndex=" + this.b + ", endIndex=" + this.c + ", startLineIndex=" + this.d + ", endLineIndex=" + this.e + ", top=" + this.f + ", bottom=" + this.g + ")";
    }
}
