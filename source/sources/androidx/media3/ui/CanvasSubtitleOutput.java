package androidx.media3.ui;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Color;
import android.graphics.Rect;
import android.text.BidiFormatter;
import android.text.Layout;
import android.text.SpannableStringBuilder;
import android.text.Spanned;
import android.text.StaticLayout;
import android.text.TextDirectionHeuristics;
import android.text.TextPaint;
import android.text.TextUtils;
import android.text.style.AbsoluteSizeSpan;
import android.text.style.BackgroundColorSpan;
import android.text.style.ForegroundColorSpan;
import android.view.View;
import androidx.media3.common.text.Cue;
import androidx.media3.common.util.Log;
import androidx.media3.ui.SubtitleView;
import com.google.common.base.Joiner;
import com.google.common.base.Splitter;
import defpackage.jb;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class CanvasSubtitleOutput extends View implements SubtitleView.Output {
    public final ArrayList j;
    public List k;
    public float l;
    public CaptionStyleCompat m;
    public float n;

    public CanvasSubtitleOutput(Context context, int i) {
        super(context, null);
        this.j = new ArrayList();
        this.k = Collections.EMPTY_LIST;
        this.l = 0.0533f;
        this.m = CaptionStyleCompat.g;
        this.n = 0.08f;
    }

    @Override // androidx.media3.ui.SubtitleView.Output
    public final void a(List list, CaptionStyleCompat captionStyleCompat, float f, float f2) {
        this.k = list;
        this.m = captionStyleCompat;
        this.l = f;
        this.n = f2;
        while (true) {
            ArrayList arrayList = this.j;
            if (arrayList.size() < list.size()) {
                arrayList.add(new SubtitlePainter(getContext()));
            } else {
                invalidate();
                return;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:128:0x05a8  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x0607  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x060a  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x03a0  */
    /* JADX WARN: Type inference failed for: r12v21, types: [java.lang.CharSequence] */
    /* JADX WARN: Type inference failed for: r12v4, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v8, types: [android.text.SpannableStringBuilder] */
    /* JADX WARN: Type inference failed for: r14v3, types: [java.lang.CharSequence, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r7v20, types: [com.google.common.base.Splitter] */
    /* JADX WARN: Type inference failed for: r7v6, types: [com.google.common.base.Splitter] */
    @Override // android.view.View
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void dispatchDraw(Canvas canvas) {
        boolean z;
        float f;
        int i;
        int i2;
        int i3;
        boolean z2;
        Object[] objArr;
        int[] iArr;
        Spanned spanned;
        int[] iArr2;
        List c;
        int i4;
        int i5;
        int i6;
        BidiFormatter bidiFormatter;
        int i7;
        int i8;
        boolean z3;
        int round;
        float f2;
        int i9;
        float f3;
        SpannableStringBuilder spannableStringBuilder;
        int i10;
        TextPaint textPaint;
        int i11;
        int i12;
        int i13;
        int i14;
        int i15;
        CanvasSubtitleOutput canvasSubtitleOutput = this;
        Canvas canvas2 = canvas;
        List list = canvasSubtitleOutput.k;
        if (!list.isEmpty()) {
            int height = canvasSubtitleOutput.getHeight();
            int paddingLeft = canvasSubtitleOutput.getPaddingLeft();
            int paddingTop = canvasSubtitleOutput.getPaddingTop();
            int width = canvasSubtitleOutput.getWidth() - canvasSubtitleOutput.getPaddingRight();
            int paddingBottom = height - canvasSubtitleOutput.getPaddingBottom();
            if (paddingBottom > paddingTop && width > paddingLeft) {
                int i16 = paddingBottom - paddingTop;
                float b = SubtitleViewUtils.b(0, canvasSubtitleOutput.l, height, i16);
                float f4 = 0.0f;
                if (b > 0.0f) {
                    int size = list.size();
                    int i17 = 0;
                    while (i17 < size) {
                        Cue cue = (Cue) list.get(i17);
                        float f5 = f4;
                        if (cue.p != Integer.MIN_VALUE) {
                            Cue.Builder a = cue.a();
                            a.h = -3.4028235E38f;
                            a.i = Integer.MIN_VALUE;
                            a.c = null;
                            int i18 = cue.f;
                            float f6 = cue.e;
                            if (i18 == 0) {
                                a.e = 1.0f - f6;
                                i15 = 0;
                                a.f = 0;
                            } else {
                                i15 = 0;
                                a.e = (-f6) - 1.0f;
                                a.f = 1;
                            }
                            int i19 = cue.g;
                            if (i19 != 0) {
                                if (i19 == 2) {
                                    a.g = i15;
                                }
                            } else {
                                a.g = 2;
                            }
                            cue = a.a();
                        }
                        float b2 = SubtitleViewUtils.b(cue.n, cue.o, height, i16);
                        SubtitlePainter subtitlePainter = (SubtitlePainter) canvasSubtitleOutput.j.get(i17);
                        CaptionStyleCompat captionStyleCompat = canvasSubtitleOutput.m;
                        List list2 = list;
                        float f7 = canvasSubtitleOutput.n;
                        TextPaint textPaint2 = subtitlePainter.f;
                        int i20 = height;
                        Bitmap bitmap = cue.d;
                        int i21 = i16;
                        float f8 = cue.k;
                        int i22 = size;
                        float f9 = cue.j;
                        int i23 = i17;
                        int i24 = cue.i;
                        float f10 = cue.h;
                        int i25 = cue.g;
                        float f11 = b;
                        int i26 = cue.f;
                        float f12 = cue.e;
                        Layout.Alignment alignment = cue.b;
                        ?? r12 = cue.a;
                        if (bitmap == null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        if (z) {
                            if (!TextUtils.isEmpty(r12)) {
                                f = f10;
                                if (cue.l) {
                                    i = cue.m;
                                } else {
                                    i = captionStyleCompat.c;
                                }
                            }
                            i8 = paddingBottom;
                            z3 = false;
                            i17 = i23 + 1;
                            canvasSubtitleOutput = this;
                            paddingBottom = i8;
                            f4 = f5;
                            list = list2;
                            height = i20;
                            i16 = i21;
                            size = i22;
                            b = f11;
                        } else {
                            f = f10;
                            i = -16777216;
                        }
                        ?? r14 = subtitlePainter.i;
                        if ((r14 != r12 && (r14 == 0 || !r14.equals(r12))) || !Objects.equals(subtitlePainter.j, alignment) || subtitlePainter.k != bitmap || subtitlePainter.l != f12 || subtitlePainter.m != i26) {
                            i2 = i25;
                        } else {
                            i2 = i25;
                            if (Integer.valueOf(subtitlePainter.n).equals(Integer.valueOf(i2)) && subtitlePainter.o == f && Integer.valueOf(subtitlePainter.p).equals(Integer.valueOf(i24)) && subtitlePainter.q == f9 && subtitlePainter.r == f8 && subtitlePainter.s == captionStyleCompat.a && subtitlePainter.t == captionStyleCompat.b && subtitlePainter.u == i && subtitlePainter.w == captionStyleCompat.d && subtitlePainter.v == captionStyleCompat.e && Objects.equals(textPaint2.getTypeface(), captionStyleCompat.f) && subtitlePainter.x == f11 && subtitlePainter.y == b2 && subtitlePainter.z == f7 && subtitlePainter.A == paddingLeft && subtitlePainter.B == paddingTop && subtitlePainter.C == width && subtitlePainter.D == paddingBottom) {
                                subtitlePainter.a(canvas2, z);
                                i8 = paddingBottom;
                                z3 = false;
                                i17 = i23 + 1;
                                canvasSubtitleOutput = this;
                                paddingBottom = i8;
                                f4 = f5;
                                list = list2;
                                height = i20;
                                i16 = i21;
                                size = i22;
                                b = f11;
                            }
                        }
                        Splitter splitter = BidiUtils.a;
                        if (r12 != 0) {
                            int length = r12.length();
                            int i27 = 0;
                            while (i27 < length) {
                                int codePointAt = Character.codePointAt((CharSequence) r12, i27);
                                int i28 = length;
                                byte directionality = Character.getDirectionality(codePointAt);
                                int i29 = i27;
                                if (directionality != 1 && directionality != 2 && directionality != 16 && directionality != 17) {
                                    i27 = Character.charCount(codePointAt) + i29;
                                    length = i28;
                                } else {
                                    BidiFormatter bidiFormatter2 = BidiFormatter.getInstance();
                                    if (r12 instanceof Spanned) {
                                        spanned = (Spanned) r12;
                                        z2 = z;
                                        i3 = paddingBottom;
                                        Object[] spans = spanned.getSpans(0, r12.length(), Object.class);
                                        int[] iArr3 = new int[spans.length];
                                        iArr = new int[spans.length];
                                        Arrays.fill(iArr3, -1);
                                        Arrays.fill(iArr, -1);
                                        objArr = spans;
                                        iArr2 = iArr3;
                                    } else {
                                        i3 = paddingBottom;
                                        z2 = z;
                                        objArr = null;
                                        iArr = null;
                                        spanned = null;
                                        iArr2 = null;
                                    }
                                    int[] iArr4 = iArr;
                                    if (r12.toString().contains("\r\n")) {
                                        c = BidiUtils.b.c(r12);
                                        i4 = 2;
                                    } else {
                                        c = BidiUtils.a.c(r12);
                                        i4 = 1;
                                    }
                                    List<String> list3 = c;
                                    ArrayList arrayList = new ArrayList(list3.size());
                                    int i30 = 0;
                                    int i31 = 0;
                                    for (String str : list3) {
                                        int i32 = i4;
                                        int i33 = width;
                                        String unicodeWrap = bidiFormatter2.unicodeWrap(str, TextDirectionHeuristics.LTR);
                                        if (objArr != null) {
                                            spanned.getClass();
                                            iArr2.getClass();
                                            iArr4.getClass();
                                            int length2 = unicodeWrap.length() - str.length();
                                            if (length2 > 0) {
                                                i31++;
                                            }
                                            bidiFormatter = bidiFormatter2;
                                            for (int i34 = 0; i34 < objArr.length; i34 = i7 + 1) {
                                                if (iArr2[i34] < 0 && spanned.getSpanStart(objArr[i34]) >= i30) {
                                                    i7 = i34;
                                                    if (spanned.getSpanStart(objArr[i34]) < str.length() + i30) {
                                                        iArr2[i7] = i31;
                                                    }
                                                } else {
                                                    i7 = i34;
                                                }
                                                if (iArr4[i7] < 0 && spanned.getSpanEnd(objArr[i7]) - 1 >= i30 && spanned.getSpanEnd(objArr[i7]) - 1 < str.length() + i30) {
                                                    iArr4[i7] = i31;
                                                }
                                            }
                                            int length3 = str.length() + i32 + i30;
                                            if (length2 > 0) {
                                                i31++;
                                            }
                                            i30 = length3;
                                        } else {
                                            bidiFormatter = bidiFormatter2;
                                        }
                                        arrayList.add(unicodeWrap);
                                        width = i33;
                                        i4 = i32;
                                        bidiFormatter2 = bidiFormatter;
                                    }
                                    i5 = width;
                                    Joiner joiner = BidiUtils.c;
                                    joiner.getClass();
                                    Iterator it = arrayList.iterator();
                                    StringBuilder sb = new StringBuilder();
                                    joiner.a(sb, it);
                                    r12 = new SpannableStringBuilder(sb.toString());
                                    if (objArr != null) {
                                        spanned.getClass();
                                        iArr2.getClass();
                                        iArr4.getClass();
                                        int i35 = 0;
                                        while (i35 < objArr.length) {
                                            int spanStart = spanned.getSpanStart(objArr[i35]) + iArr2[i35];
                                            int spanEnd = spanned.getSpanEnd(objArr[i35]) + iArr4[i35];
                                            int spanFlags = spanned.getSpanFlags(objArr[i35]);
                                            Object[] objArr2 = objArr;
                                            if (spanStart >= 0 && spanStart < r12.length() && spanEnd >= 0 && spanEnd <= r12.length()) {
                                                r12.setSpan(objArr2[i35], spanStart, spanEnd, spanFlags);
                                                i6 = i35;
                                            } else {
                                                i6 = i35;
                                                StringBuilder k = jb.k("Span out of bounds: start=", spanStart, ",end=", spanEnd, ",len=");
                                                k.append(r12.length());
                                                Log.f("BidiUtils", k.toString());
                                            }
                                            i35 = i6 + 1;
                                            objArr = objArr2;
                                        }
                                    }
                                    subtitlePainter.i = r12;
                                    subtitlePainter.j = alignment;
                                    subtitlePainter.k = bitmap;
                                    subtitlePainter.l = f12;
                                    subtitlePainter.m = i26;
                                    subtitlePainter.n = i2;
                                    subtitlePainter.o = f;
                                    subtitlePainter.p = i24;
                                    subtitlePainter.q = f9;
                                    subtitlePainter.r = f8;
                                    subtitlePainter.s = captionStyleCompat.a;
                                    subtitlePainter.t = captionStyleCompat.b;
                                    subtitlePainter.u = i;
                                    subtitlePainter.w = captionStyleCompat.d;
                                    subtitlePainter.v = captionStyleCompat.e;
                                    textPaint2.setTypeface(captionStyleCompat.f);
                                    subtitlePainter.x = f11;
                                    subtitlePainter.y = b2;
                                    subtitlePainter.z = f7;
                                    subtitlePainter.A = paddingLeft;
                                    subtitlePainter.B = paddingTop;
                                    width = i5;
                                    subtitlePainter.C = width;
                                    i8 = i3;
                                    subtitlePainter.D = i8;
                                    if (!z2) {
                                        subtitlePainter.i.getClass();
                                        CharSequence charSequence = subtitlePainter.i;
                                        if (charSequence instanceof SpannableStringBuilder) {
                                            spannableStringBuilder = (SpannableStringBuilder) charSequence;
                                        } else {
                                            spannableStringBuilder = new SpannableStringBuilder(subtitlePainter.i);
                                        }
                                        int i36 = subtitlePainter.C - subtitlePainter.A;
                                        int i37 = subtitlePainter.D - subtitlePainter.B;
                                        textPaint2.setTextSize(subtitlePainter.x);
                                        int i38 = (int) ((subtitlePainter.x * 0.125f) + 0.5f);
                                        int i39 = i38 * 2;
                                        int i40 = i36 - i39;
                                        float f13 = subtitlePainter.q;
                                        if (f13 != -3.4028235E38f) {
                                            i40 = (int) (i40 * f13);
                                        }
                                        int i41 = i40;
                                        if (i41 <= 0) {
                                            Log.f("SubtitlePainter", "Skipped drawing subtitle cue (insufficient space)");
                                            f11 = f11;
                                        } else {
                                            if (subtitlePainter.y > f5) {
                                                f11 = f11;
                                                i10 = 0;
                                                spannableStringBuilder.setSpan(new AbsoluteSizeSpan((int) subtitlePainter.y), 0, spannableStringBuilder.length(), 16711680);
                                            } else {
                                                f11 = f11;
                                                i10 = 0;
                                            }
                                            SpannableStringBuilder spannableStringBuilder2 = new SpannableStringBuilder(spannableStringBuilder);
                                            if (subtitlePainter.w == 1) {
                                                ForegroundColorSpan[] foregroundColorSpanArr = (ForegroundColorSpan[]) spannableStringBuilder2.getSpans(i10, spannableStringBuilder2.length(), ForegroundColorSpan.class);
                                                int i42 = 0;
                                                for (int length4 = foregroundColorSpanArr.length; i42 < length4; length4 = length4) {
                                                    spannableStringBuilder2.removeSpan(foregroundColorSpanArr[i42]);
                                                    i42++;
                                                }
                                            }
                                            if (Color.alpha(subtitlePainter.t) > 0) {
                                                int i43 = subtitlePainter.w;
                                                if (i43 == 0 || i43 == 2) {
                                                    textPaint = textPaint2;
                                                    spannableStringBuilder.setSpan(new BackgroundColorSpan(subtitlePainter.t), 0, spannableStringBuilder.length(), 16711680);
                                                } else {
                                                    textPaint = textPaint2;
                                                    spannableStringBuilder2.setSpan(new BackgroundColorSpan(subtitlePainter.t), 0, spannableStringBuilder2.length(), 16711680);
                                                }
                                            } else {
                                                textPaint = textPaint2;
                                            }
                                            Layout.Alignment alignment2 = subtitlePainter.j;
                                            if (alignment2 == null) {
                                                alignment2 = Layout.Alignment.ALIGN_CENTER;
                                            }
                                            Layout.Alignment alignment3 = alignment2;
                                            SpannableStringBuilder spannableStringBuilder3 = spannableStringBuilder;
                                            StaticLayout staticLayout = new StaticLayout(spannableStringBuilder3, textPaint, i41, alignment3, subtitlePainter.d, subtitlePainter.e, true);
                                            subtitlePainter.E = staticLayout;
                                            int height2 = staticLayout.getHeight();
                                            int i44 = 0;
                                            int i45 = 0;
                                            for (int lineCount = subtitlePainter.E.getLineCount(); i44 < lineCount; lineCount = lineCount) {
                                                i45 = Math.max((int) Math.ceil(subtitlePainter.E.getLineWidth(i44)), i45);
                                                i44++;
                                                height2 = height2;
                                            }
                                            int i46 = height2;
                                            if (subtitlePainter.q != -3.4028235E38f && i45 < i41) {
                                                i11 = i41;
                                            } else {
                                                i11 = i45;
                                            }
                                            int i47 = i11 + i39;
                                            float f14 = subtitlePainter.o;
                                            if (f14 != -3.4028235E38f) {
                                                int round2 = Math.round(i36 * f14);
                                                int i48 = subtitlePainter.A;
                                                int i49 = round2 + i48;
                                                int i50 = subtitlePainter.p;
                                                if (i50 != 1) {
                                                    if (i50 == 2) {
                                                        i49 -= i47;
                                                    }
                                                } else {
                                                    i49 = ((i49 * 2) - i47) / 2;
                                                }
                                                i12 = Math.max(i49, i48);
                                                i13 = Math.min(i12 + i47, subtitlePainter.C);
                                            } else {
                                                i12 = subtitlePainter.A + ((i36 - i47) / 2);
                                                i13 = i12 + i47;
                                            }
                                            int i51 = i13 - i12;
                                            if (i51 <= 0) {
                                                Log.f("SubtitlePainter", "Skipped drawing subtitle cue (invalid horizontal positioning)");
                                            } else {
                                                float f15 = subtitlePainter.l;
                                                if (f15 != -3.4028235E38f) {
                                                    if (subtitlePainter.m == 0) {
                                                        i14 = Math.round(i37 * f15) + subtitlePainter.B;
                                                        int i52 = subtitlePainter.n;
                                                        if (i52 == 2) {
                                                            i14 -= i46;
                                                        } else if (i52 == 1) {
                                                            i14 = ((i14 * 2) - i46) / 2;
                                                        }
                                                        z3 = false;
                                                    } else {
                                                        z3 = false;
                                                        int lineBottom = subtitlePainter.E.getLineBottom(0) - subtitlePainter.E.getLineTop(0);
                                                        float f16 = subtitlePainter.l;
                                                        if (f16 >= f5) {
                                                            i14 = Math.round(f16 * lineBottom) + subtitlePainter.B;
                                                        } else {
                                                            i14 = (Math.round((f16 + 1.0f) * lineBottom) + subtitlePainter.D) - i46;
                                                        }
                                                    }
                                                    int i53 = i14 + i46;
                                                    int i54 = subtitlePainter.D;
                                                    if (i53 > i54) {
                                                        i14 = i54 - i46;
                                                    } else {
                                                        int i55 = subtitlePainter.B;
                                                        if (i14 < i55) {
                                                            i14 = i55;
                                                        }
                                                    }
                                                } else {
                                                    z3 = false;
                                                    i14 = (subtitlePainter.D - i46) - ((int) (i37 * subtitlePainter.z));
                                                }
                                                subtitlePainter.E = new StaticLayout(spannableStringBuilder3, textPaint, i51, alignment3, subtitlePainter.d, subtitlePainter.e, true);
                                                subtitlePainter.F = new StaticLayout(spannableStringBuilder2, textPaint, i51, alignment3, subtitlePainter.d, subtitlePainter.e, true);
                                                subtitlePainter.G = i12;
                                                subtitlePainter.H = i14;
                                                subtitlePainter.I = i38;
                                            }
                                        }
                                        z3 = false;
                                    } else {
                                        f11 = f11;
                                        z3 = false;
                                        subtitlePainter.k.getClass();
                                        Bitmap bitmap2 = subtitlePainter.k;
                                        int i56 = subtitlePainter.C;
                                        int i57 = subtitlePainter.A;
                                        int i58 = subtitlePainter.D;
                                        int i59 = subtitlePainter.B;
                                        float f17 = i56 - i57;
                                        float f18 = (subtitlePainter.o * f17) + i57;
                                        float f19 = i58 - i59;
                                        float f20 = (subtitlePainter.l * f19) + i59;
                                        int round3 = Math.round(f17 * subtitlePainter.q);
                                        float f21 = subtitlePainter.r;
                                        if (f21 != -3.4028235E38f) {
                                            round = Math.round(f19 * f21);
                                        } else {
                                            round = Math.round((bitmap2.getHeight() / bitmap2.getWidth()) * round3);
                                        }
                                        int i60 = subtitlePainter.p;
                                        if (i60 == 2) {
                                            f2 = round3;
                                        } else {
                                            if (i60 == 1) {
                                                f2 = round3 / 2;
                                            }
                                            int round4 = Math.round(f18);
                                            i9 = subtitlePainter.n;
                                            if (i9 != 2) {
                                                f3 = round;
                                            } else {
                                                if (i9 == 1) {
                                                    f3 = round / 2;
                                                }
                                                int round5 = Math.round(f20);
                                                subtitlePainter.J = new Rect(round4, round5, round3 + round4, round + round5);
                                            }
                                            f20 -= f3;
                                            int round52 = Math.round(f20);
                                            subtitlePainter.J = new Rect(round4, round52, round3 + round4, round + round52);
                                        }
                                        f18 -= f2;
                                        int round42 = Math.round(f18);
                                        i9 = subtitlePainter.n;
                                        if (i9 != 2) {
                                        }
                                        f20 -= f3;
                                        int round522 = Math.round(f20);
                                        subtitlePainter.J = new Rect(round42, round522, round3 + round42, round + round522);
                                    }
                                    canvas2 = canvas;
                                    subtitlePainter.a(canvas2, z2);
                                    i17 = i23 + 1;
                                    canvasSubtitleOutput = this;
                                    paddingBottom = i8;
                                    f4 = f5;
                                    list = list2;
                                    height = i20;
                                    i16 = i21;
                                    size = i22;
                                    b = f11;
                                }
                            }
                        }
                        i5 = width;
                        i3 = paddingBottom;
                        z2 = z;
                        subtitlePainter.i = r12;
                        subtitlePainter.j = alignment;
                        subtitlePainter.k = bitmap;
                        subtitlePainter.l = f12;
                        subtitlePainter.m = i26;
                        subtitlePainter.n = i2;
                        subtitlePainter.o = f;
                        subtitlePainter.p = i24;
                        subtitlePainter.q = f9;
                        subtitlePainter.r = f8;
                        subtitlePainter.s = captionStyleCompat.a;
                        subtitlePainter.t = captionStyleCompat.b;
                        subtitlePainter.u = i;
                        subtitlePainter.w = captionStyleCompat.d;
                        subtitlePainter.v = captionStyleCompat.e;
                        textPaint2.setTypeface(captionStyleCompat.f);
                        subtitlePainter.x = f11;
                        subtitlePainter.y = b2;
                        subtitlePainter.z = f7;
                        subtitlePainter.A = paddingLeft;
                        subtitlePainter.B = paddingTop;
                        width = i5;
                        subtitlePainter.C = width;
                        i8 = i3;
                        subtitlePainter.D = i8;
                        if (!z2) {
                        }
                        canvas2 = canvas;
                        subtitlePainter.a(canvas2, z2);
                        i17 = i23 + 1;
                        canvasSubtitleOutput = this;
                        paddingBottom = i8;
                        f4 = f5;
                        list = list2;
                        height = i20;
                        i16 = i21;
                        size = i22;
                        b = f11;
                    }
                }
            }
        }
    }
}
