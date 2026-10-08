package androidx.emoji2.text;

import android.graphics.Paint;
import android.text.style.ReplacementSpan;
import androidx.core.util.Preconditions;
import androidx.emoji2.text.flatbuffer.MetadataItem;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EmojiSpan extends ReplacementSpan {
    public final TypefaceEmojiRasterizer k;
    public final Paint.FontMetricsInt j = new Paint.FontMetricsInt();
    public short l = -1;
    public float m = 1.0f;

    public EmojiSpan(TypefaceEmojiRasterizer typefaceEmojiRasterizer) {
        Preconditions.c(typefaceEmojiRasterizer, "rasterizer cannot be null");
        this.k = typefaceEmojiRasterizer;
    }

    @Override // android.text.style.ReplacementSpan
    public final int getSize(Paint paint, CharSequence charSequence, int i, int i2, Paint.FontMetricsInt fontMetricsInt) {
        short s;
        Paint.FontMetricsInt fontMetricsInt2 = this.j;
        paint.getFontMetricsInt(fontMetricsInt2);
        float abs = Math.abs(fontMetricsInt2.descent - fontMetricsInt2.ascent) * 1.0f;
        TypefaceEmojiRasterizer typefaceEmojiRasterizer = this.k;
        MetadataItem b = typefaceEmojiRasterizer.b();
        int a = b.a(14);
        short s2 = 0;
        if (a != 0) {
            s = b.b.getShort(a + b.a);
        } else {
            s = 0;
        }
        this.m = abs / s;
        MetadataItem b2 = typefaceEmojiRasterizer.b();
        int a2 = b2.a(14);
        if (a2 != 0) {
            b2.b.getShort(a2 + b2.a);
        }
        MetadataItem b3 = typefaceEmojiRasterizer.b();
        int a3 = b3.a(12);
        if (a3 != 0) {
            s2 = b3.b.getShort(a3 + b3.a);
        }
        short s3 = (short) (s2 * this.m);
        this.l = s3;
        if (fontMetricsInt != null) {
            fontMetricsInt.ascent = fontMetricsInt2.ascent;
            fontMetricsInt.descent = fontMetricsInt2.descent;
            fontMetricsInt.top = fontMetricsInt2.top;
            fontMetricsInt.bottom = fontMetricsInt2.bottom;
        }
        return s3;
    }
}
