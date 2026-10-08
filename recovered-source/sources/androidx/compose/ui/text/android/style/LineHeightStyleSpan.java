package androidx.compose.ui.text.android.style;

import android.graphics.Paint;
import androidx.compose.ui.text.internal.InlineClassHelperKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LineHeightStyleSpan implements android.text.style.LineHeightSpan {
    public final float j;
    public final int k;
    public final boolean l;
    public final boolean m;
    public final float n;
    public final int o;
    public int p = Integer.MIN_VALUE;
    public int q = Integer.MIN_VALUE;
    public int r = Integer.MIN_VALUE;
    public int s = Integer.MIN_VALUE;
    public int t;
    public int u;

    public LineHeightStyleSpan(float f, int i, boolean z, boolean z2, float f2, int i2) {
        this.j = f;
        this.k = i;
        this.l = z;
        this.m = z2;
        this.n = f2;
        this.o = i2;
        if ((0.0f <= f2 && f2 <= 1.0f) || f2 == -1.0f) {
            return;
        }
        InlineClassHelperKt.c("topRatio should be in [0..1] range or -1");
    }

    @Override // android.text.style.LineHeightSpan
    public final void chooseHeight(CharSequence charSequence, int i, int i2, int i3, int i4, Paint.FontMetricsInt fontMetricsInt) {
        boolean z;
        boolean z2;
        int i5;
        int i6;
        double ceil;
        int min;
        int max;
        int i7 = fontMetricsInt.descent;
        int i8 = fontMetricsInt.ascent;
        if (i7 - i8 > 0) {
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            if (i2 == this.k) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i9 = this.o;
            boolean z3 = this.m;
            boolean z4 = this.l;
            if (z && z2 && z4 && z3 && i9 != 2) {
                return;
            }
            if (this.p == Integer.MIN_VALUE) {
                int i10 = i7 - i8;
                int ceil2 = (int) Math.ceil(this.j);
                int i11 = ceil2 - i10;
                if (i9 == 1 && i11 <= 0) {
                    int i12 = fontMetricsInt.ascent;
                    this.q = i12;
                    int i13 = fontMetricsInt.descent;
                    this.r = i13;
                    this.p = i12;
                    this.s = i13;
                    this.t = 0;
                    this.u = 0;
                } else {
                    float f = this.n;
                    if (f == -1.0f) {
                        f = Math.abs(fontMetricsInt.ascent) / (fontMetricsInt.descent - fontMetricsInt.ascent);
                    }
                    if (i11 <= 0) {
                        ceil = Math.ceil(i11 * f);
                    } else {
                        ceil = Math.ceil((1.0f - f) * i11);
                    }
                    int i14 = (int) ceil;
                    int i15 = fontMetricsInt.descent;
                    int i16 = i14 + i15;
                    this.r = i16;
                    int i17 = i16 - ceil2;
                    this.q = i17;
                    if (i9 == 0 || i11 >= 0) {
                        if (z4) {
                            i17 = fontMetricsInt.ascent;
                        }
                        this.p = i17;
                        if (z3) {
                            i16 = i15;
                        }
                        this.s = i16;
                        this.t = fontMetricsInt.ascent - i17;
                        this.u = i16 - i15;
                    } else if (i9 == 2) {
                        int i18 = fontMetricsInt.ascent;
                        if (z4) {
                            min = Math.max(i18, i17);
                        } else {
                            min = Math.min(i18, i17);
                        }
                        this.p = min;
                        int i19 = fontMetricsInt.descent;
                        int i20 = this.r;
                        if (z3) {
                            max = Math.min(i19, i20);
                        } else {
                            max = Math.max(i19, i20);
                        }
                        this.s = max;
                        this.t = 0;
                        this.u = 0;
                    }
                }
            }
            if (z) {
                i5 = this.p;
            } else {
                i5 = this.q;
            }
            fontMetricsInt.ascent = i5;
            if (z2) {
                i6 = this.s;
            } else {
                i6 = this.r;
            }
            fontMetricsInt.descent = i6;
        }
    }
}
