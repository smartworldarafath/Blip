package androidx.compose.ui.text.android;

import android.graphics.Paint;
import android.graphics.Rect;
import android.os.Build;
import android.os.Trace;
import android.text.BoringLayout;
import android.text.Layout;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristic;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.compose.ui.text.android.selection.WordIterator;
import androidx.compose.ui.text.android.style.BaselineShiftSpan;
import androidx.compose.ui.text.android.style.IndentationFixSpan_androidKt;
import androidx.compose.ui.text.android.style.LineHeightStyleSpan;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import defpackage.fe;
import defpackage.l;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextLayout {
    public final TextPaint a;
    public final TextUtils.TruncateAt b;
    public final boolean c;
    public final boolean d;
    public WordIterator e;
    public final Layout f;
    public final int g;
    public final int h;
    public final int i;
    public final float j;
    public final float k;
    public final boolean l;
    public final Paint.FontMetricsInt m;
    public final int n;
    public final LineHeightStyleSpan[] o;
    public final Rect p = new Rect();
    public LayoutHelper q;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:106:0x018f  */
    /* JADX WARN: Removed duplicated region for block: B:114:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:116:0x0228  */
    /* JADX WARN: Removed duplicated region for block: B:118:0x022a  */
    /* JADX WARN: Removed duplicated region for block: B:119:0x0223  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0233  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x0320  */
    /* JADX WARN: Removed duplicated region for block: B:97:0x032a  */
    /* JADX WARN: Type inference failed for: r15v9, types: [boolean] */
    /* JADX WARN: Type inference failed for: r25v1, types: [boolean] */
    /* JADX WARN: Type inference failed for: r6v17 */
    /* JADX WARN: Type inference failed for: r6v18, types: [android.graphics.Paint$FontMetricsInt] */
    /* JADX WARN: Type inference failed for: r6v24 */
    /* JADX WARN: Type inference failed for: r8v11, types: [boolean] */
    /* JADX WARN: Type inference failed for: r8v17, types: [boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TextLayout(CharSequence charSequence, float f, TextPaint textPaint, int i, TextUtils.TruncateAt truncateAt, int i2, boolean z, int i3, int i4, int i5, int i6, int i7, int i8, LayoutIntrinsics layoutIntrinsics) {
        Layout.Alignment alignment;
        int i9;
        TextDirectionHeuristic textDirectionHeuristic;
        Layout a;
        LineHeightStyleSpan[] lineHeightStyleSpanArr;
        int i10;
        int i11;
        int i12;
        int i13;
        Throwable th;
        char c;
        long j;
        int i14;
        int i15;
        long a2;
        int i16;
        long j2;
        int i17;
        Layout layout;
        int i18;
        ?? r6;
        LineHeightStyleSpan lineHeightStyleSpan;
        LineHeightStyleSpan lineHeightStyleSpan2;
        int i19;
        this.a = textPaint;
        this.b = truncateAt;
        this.c = z;
        int length = charSequence.length();
        TextDirectionHeuristic b = TextLayout_androidKt.b(i2);
        Layout.Alignment alignment2 = TextAlignmentAdapter.a;
        if (i == 0) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else if (i == 1) {
            alignment = Layout.Alignment.ALIGN_OPPOSITE;
        } else if (i == 2) {
            alignment = Layout.Alignment.ALIGN_CENTER;
        } else if (i == 3) {
            alignment = TextAlignmentAdapter.a;
        } else if (i != 4) {
            alignment = Layout.Alignment.ALIGN_NORMAL;
        } else {
            alignment = TextAlignmentAdapter.b;
        }
        boolean z2 = (charSequence instanceof Spanned) && ((Spanned) charSequence).nextSpanTransition(-1, length, BaselineShiftSpan.class) < length;
        Trace.beginSection("TextLayout:initLayout");
        try {
            BoringLayout.Metrics a3 = layoutIntrinsics.a();
            double d = f;
            int ceil = (int) Math.ceil(d);
            if (a3 != null && layoutIntrinsics.c() <= f && !z2) {
                this.l = true;
                if (ceil < 0) {
                    InlineClassHelperKt.a("negative width");
                }
                if (ceil < 0) {
                    InlineClassHelperKt.a("negative ellipsized width");
                }
                if (Build.VERSION.SDK_INT >= 33) {
                    a = l.j(charSequence, textPaint, ceil, alignment, a3, z, truncateAt, ceil);
                } else {
                    a = new BoringLayout(charSequence, textPaint, ceil, alignment, 1.0f, 0.0f, a3, z, truncateAt, ceil);
                }
                i9 = i3;
                textDirectionHeuristic = b;
            } else {
                this.l = false;
                i9 = i3;
                textDirectionHeuristic = b;
                a = StaticLayoutFactory.a(charSequence, textPaint, ceil, charSequence.length(), textDirectionHeuristic, alignment, i9, truncateAt, (int) Math.ceil(d), i8, z, i4, i5, i6, i7);
            }
            this.f = a;
            Trace.endSection();
            int min = Math.min(a.getLineCount(), i9);
            this.g = min;
            int i20 = min - 1;
            this.d = min >= i9 && (a.getEllipsisCount(i20) > 0 || a.getLineEnd(i20) != charSequence.length());
            if (a.getText() instanceof Spanned) {
                CharSequence text = a.getText();
                text.getClass();
                if (SpannedExtensions_androidKt.a((Spanned) text, LineHeightStyleSpan.class) || a.getText().length() <= 0) {
                    CharSequence text2 = a.getText();
                    text2.getClass();
                    i10 = 0;
                    lineHeightStyleSpanArr = (LineHeightStyleSpan[]) ((Spanned) text2).getSpans(0, a.getText().length(), LineHeightStyleSpan.class);
                    this.o = lineHeightStyleSpanArr;
                    if (lineHeightStyleSpanArr != null || (lineHeightStyleSpan2 = (LineHeightStyleSpan) ArraysKt.q(lineHeightStyleSpanArr)) == null) {
                        i11 = 2;
                        i12 = i10;
                    } else {
                        if (lineHeightStyleSpan2.l) {
                            i11 = 2;
                            if (lineHeightStyleSpan2.o == 2) {
                                i19 = 1;
                                i12 = i19;
                            }
                        } else {
                            i11 = 2;
                        }
                        i19 = i10;
                        i12 = i19;
                    }
                    i13 = (lineHeightStyleSpanArr == null && (lineHeightStyleSpan = (LineHeightStyleSpan) ArraysKt.q(lineHeightStyleSpanArr)) != null && lineHeightStyleSpan.m && lineHeightStyleSpan.o == i11) ? 1 : i10;
                    if (i12 == 0 && i13 != 0) {
                        a2 = TextLayout_androidKt.b;
                        th = null;
                        c = ' ';
                        j = 4294967295L;
                        i14 = 1;
                        i15 = 33;
                    } else {
                        long j3 = TextLayout_androidKt.b;
                        if (z) {
                            if (this.l) {
                                i15 = 33;
                                i16 = Build.VERSION.SDK_INT >= 33 ? l.x((BoringLayout) a) : i10;
                            } else {
                                i15 = 33;
                                i16 = Build.VERSION.SDK_INT >= 33 ? l.y((StaticLayout) a) : 1;
                            }
                            if (i16 != 0) {
                                th = null;
                                c = ' ';
                                j = 4294967295L;
                                i14 = 1;
                            } else {
                                TextPaint paint = a.getPaint();
                                CharSequence text3 = a.getText();
                                th = null;
                                c = ' ';
                                Rect a4 = PaintExtensions_androidKt.a(paint, text3, a.getLineStart(i10), a.getLineEnd(i10));
                                int lineAscent = a.getLineAscent(i10);
                                j = 4294967295L;
                                int i21 = a4.top;
                                int topPadding = i21 < lineAscent ? lineAscent - i21 : a.getTopPadding();
                                i14 = 1;
                                a4 = min != 1 ? PaintExtensions_androidKt.a(paint, text3, a.getLineStart(i20), a.getLineEnd(i20)) : a4;
                                int lineDescent = a.getLineDescent(i20);
                                int i22 = a4.bottom;
                                int bottomPadding = i22 > lineDescent ? i22 - lineDescent : a.getBottomPadding();
                                if (topPadding != 0 || bottomPadding != 0) {
                                    j3 = TextLayout_androidKt.a(topPadding, bottomPadding);
                                }
                            }
                        } else {
                            th = null;
                            c = ' ';
                            j = 4294967295L;
                            i14 = 1;
                            i15 = 33;
                        }
                        a2 = TextLayout_androidKt.a(i12 == 0 ? i10 : (int) (j3 >> c), i13 == 0 ? i10 : (int) (j3 & j));
                    }
                    if (lineHeightStyleSpanArr == null) {
                        int length2 = lineHeightStyleSpanArr.length;
                        int i23 = i10;
                        int i24 = i23;
                        for (int i25 = i24; i25 < length2; i25++) {
                            LineHeightStyleSpan lineHeightStyleSpan3 = lineHeightStyleSpanArr[i25];
                            int i26 = lineHeightStyleSpan3.t;
                            i23 = i26 < 0 ? Math.max(i23, Math.abs(i26)) : i23;
                            int i27 = lineHeightStyleSpan3.u;
                            if (i27 < 0) {
                                i24 = Math.max(i23, Math.abs(i27));
                            }
                        }
                        if (i23 == 0 && i24 == 0) {
                            j2 = TextLayout_androidKt.b;
                        } else {
                            j2 = TextLayout_androidKt.a(i23, i24);
                        }
                    } else {
                        j2 = TextLayout_androidKt.b;
                    }
                    this.h = Math.max((int) (a2 >> c), (int) (j2 >> c));
                    this.i = Math.max((int) (a2 & j), (int) (j2 & j));
                    TextPaint textPaint2 = this.a;
                    LineHeightStyleSpan[] lineHeightStyleSpanArr2 = this.o;
                    i17 = this.g - i14;
                    layout = this.f;
                    if (layout.getLineStart(i17) == layout.getLineEnd(i17) || lineHeightStyleSpanArr2 == null || lineHeightStyleSpanArr2.length == 0) {
                        i18 = i10;
                        r6 = th;
                    } else {
                        SpannableString spannableString = new SpannableString("\u200b");
                        if (lineHeightStyleSpanArr2.length != 0) {
                            LineHeightStyleSpan lineHeightStyleSpan4 = lineHeightStyleSpanArr2[i10];
                            spannableString.setSpan(new LineHeightStyleSpan(lineHeightStyleSpan4.j, spannableString.length(), (i17 == 0 || !lineHeightStyleSpan4.m) ? lineHeightStyleSpan4.m : i10, lineHeightStyleSpan4.m, lineHeightStyleSpan4.n, lineHeightStyleSpan4.o), i10, spannableString.length(), i15);
                            i18 = i10;
                            StaticLayout a5 = StaticLayoutFactory.a(spannableString, textPaint2, Integer.MAX_VALUE, spannableString.length(), textDirectionHeuristic, LayoutCompat.a, Integer.MAX_VALUE, null, Integer.MAX_VALUE, 0, this.c, 0, 0, 0, 0);
                            Paint.FontMetricsInt fontMetricsInt = new Paint.FontMetricsInt();
                            fontMetricsInt.ascent = a5.getLineAscent(i18);
                            fontMetricsInt.descent = a5.getLineDescent(i18);
                            fontMetricsInt.top = a5.getLineTop(i18);
                            fontMetricsInt.bottom = a5.getLineBottom(i18);
                            r6 = fontMetricsInt;
                        } else {
                            fe.o("Array is empty.");
                            throw th;
                        }
                    }
                    this.n = r6 == 0 ? ((Paint.FontMetricsInt) r6).bottom - ((int) i(i20)) : i18;
                    this.m = r6;
                    Layout layout2 = this.f;
                    this.j = IndentationFixSpan_androidKt.a(layout2, i20, layout2.getPaint());
                    Layout layout3 = this.f;
                    this.k = IndentationFixSpan_androidKt.b(layout3, i20, layout3.getPaint());
                }
            }
            lineHeightStyleSpanArr = null;
            i10 = 0;
            this.o = lineHeightStyleSpanArr;
            if (lineHeightStyleSpanArr != null) {
            }
            i11 = 2;
            i12 = i10;
            if (lineHeightStyleSpanArr == null) {
            }
            if (i12 == 0) {
            }
            long j32 = TextLayout_androidKt.b;
            if (z) {
            }
            a2 = TextLayout_androidKt.a(i12 == 0 ? i10 : (int) (j32 >> c), i13 == 0 ? i10 : (int) (j32 & j));
            if (lineHeightStyleSpanArr == null) {
            }
            this.h = Math.max((int) (a2 >> c), (int) (j2 >> c));
            this.i = Math.max((int) (a2 & j), (int) (j2 & j));
            TextPaint textPaint22 = this.a;
            LineHeightStyleSpan[] lineHeightStyleSpanArr22 = this.o;
            i17 = this.g - i14;
            layout = this.f;
            if (layout.getLineStart(i17) == layout.getLineEnd(i17)) {
            }
            i18 = i10;
            r6 = th;
            this.n = r6 == 0 ? ((Paint.FontMetricsInt) r6).bottom - ((int) i(i20)) : i18;
            this.m = r6;
            Layout layout22 = this.f;
            this.j = IndentationFixSpan_androidKt.a(layout22, i20, layout22.getPaint());
            Layout layout32 = this.f;
            this.k = IndentationFixSpan_androidKt.b(layout32, i20, layout32.getPaint());
        } catch (Throwable th2) {
            Trace.endSection();
            throw th2;
        }
    }

    public final void a(int i, int i2, int i3, float[] fArr) {
        boolean z;
        float a;
        float a2;
        TextLayout textLayout = this;
        Layout layout = textLayout.f;
        int length = layout.getText().length();
        if (i < 0) {
            InlineClassHelperKt.a("startOffset must be > 0");
        }
        if (i >= length) {
            InlineClassHelperKt.a("startOffset must be less than text length");
        }
        if (i2 <= i) {
            InlineClassHelperKt.a("endOffset must be greater than startOffset");
        }
        if (i2 > length) {
            InlineClassHelperKt.a("endOffset must be smaller or equal to text length");
        }
        if (fArr.length - i3 < (i2 - i) * 4) {
            InlineClassHelperKt.a("array.size - arrayStart must be greater or equal than (endOffset - startOffset) * 4");
        }
        int h = h(i);
        int h2 = textLayout.h(i2 - 1);
        HorizontalPositionCache horizontalPositionCache = new HorizontalPositionCache(textLayout);
        if (h <= h2) {
            int i4 = h;
            int i5 = i3;
            while (true) {
                int lineStart = layout.getLineStart(i4);
                int g = textLayout.g(i4);
                int min = Math.min(i2, g);
                float j = textLayout.j(i4);
                float f = textLayout.f(i4);
                boolean z2 = false;
                if (layout.getParagraphDirection(i4) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                for (int max = Math.max(i, lineStart); max < min; max++) {
                    boolean isRtlCharAt = layout.isRtlCharAt(max);
                    if (z && !isRtlCharAt) {
                        a = horizontalPositionCache.a(max, z2, z2, true);
                        a2 = horizontalPositionCache.a(max + 1, true, true, true);
                    } else {
                        if (z && isRtlCharAt) {
                            z2 = false;
                            float a3 = horizontalPositionCache.a(max, false, false, false);
                            a = horizontalPositionCache.a(max + 1, true, true, false);
                            a2 = a3;
                        } else {
                            z2 = false;
                            if (!z && isRtlCharAt) {
                                a2 = horizontalPositionCache.a(max, false, false, true);
                                a = horizontalPositionCache.a(max + 1, true, true, true);
                            } else {
                                a = horizontalPositionCache.a(max, false, false, false);
                                a2 = horizontalPositionCache.a(max + 1, true, true, false);
                            }
                        }
                        fArr[i5] = a;
                        fArr[i5 + 1] = j;
                        fArr[i5 + 2] = a2;
                        fArr[i5 + 3] = f;
                        i5 += 4;
                    }
                    z2 = false;
                    fArr[i5] = a;
                    fArr[i5 + 1] = j;
                    fArr[i5 + 2] = a2;
                    fArr[i5 + 3] = f;
                    i5 += 4;
                }
                if (i4 != h2) {
                    i4++;
                    textLayout = this;
                } else {
                    return;
                }
            }
        }
    }

    public final int b() {
        int height;
        boolean z = this.d;
        Layout layout = this.f;
        if (z) {
            height = layout.getLineBottom(this.g - 1);
        } else {
            height = layout.getHeight();
        }
        return height + this.h + this.i + this.n;
    }

    public final float c(int i) {
        if (i == this.g - 1) {
            return this.j + this.k;
        }
        return 0.0f;
    }

    public final LayoutHelper d() {
        LayoutHelper layoutHelper = this.q;
        if (layoutHelper == null) {
            LayoutHelper layoutHelper2 = new LayoutHelper(this.f);
            this.q = layoutHelper2;
            return layoutHelper2;
        }
        return layoutHelper;
    }

    public final float e(int i) {
        float lineBaseline;
        Paint.FontMetricsInt fontMetricsInt;
        float f = this.h;
        if (i == this.g - 1 && (fontMetricsInt = this.m) != null) {
            lineBaseline = j(i) - fontMetricsInt.ascent;
        } else {
            lineBaseline = this.f.getLineBaseline(i);
        }
        return f + lineBaseline;
    }

    public final float f(int i) {
        int i2;
        Paint.FontMetricsInt fontMetricsInt;
        int i3 = this.g;
        int i4 = i3 - 1;
        Layout layout = this.f;
        if (i == i4 && (fontMetricsInt = this.m) != null) {
            return layout.getLineBottom(i - 1) + fontMetricsInt.bottom;
        }
        float lineBottom = this.h + layout.getLineBottom(i);
        if (i == i3 - 1) {
            i2 = this.i;
        } else {
            i2 = 0;
        }
        return lineBottom + i2;
    }

    public final int g(int i) {
        ThreadLocal threadLocal = TextLayout_androidKt.a;
        Layout layout = this.f;
        if (layout.getEllipsisCount(i) > 0 && this.b == TextUtils.TruncateAt.END) {
            return layout.getText().length();
        }
        return layout.getLineEnd(i);
    }

    public final int h(int i) {
        int i2 = this.g;
        if (i2 <= 0) {
            return 0;
        }
        int lineForOffset = this.f.getLineForOffset(i);
        int i3 = i2 - 1;
        if (lineForOffset > i3) {
            return i3;
        }
        return lineForOffset;
    }

    public final float i(int i) {
        return f(i) - j(i);
    }

    public final float j(int i) {
        int i2;
        float lineTop = this.f.getLineTop(i);
        if (i == 0) {
            i2 = 0;
        } else {
            i2 = this.h;
        }
        return lineTop + i2;
    }

    public final float k(int i, boolean z) {
        return c(h(i)) + d().c(i, true, z);
    }

    public final float l(int i, boolean z) {
        return c(h(i)) + d().c(i, false, z);
    }

    public final WordIterator m() {
        WordIterator wordIterator = this.e;
        if (wordIterator != null) {
            return wordIterator;
        }
        Layout layout = this.f;
        WordIterator wordIterator2 = new WordIterator(layout.getText(), layout.getText().length(), this.a.getTextLocale());
        this.e = wordIterator2;
        return wordIterator2;
    }
}
