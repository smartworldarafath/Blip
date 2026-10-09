package androidx.compose.ui.text;

import android.graphics.Paint;
import android.graphics.RectF;
import android.os.Build;
import android.text.Layout;
import android.text.Spannable;
import android.text.SpannableString;
import android.text.Spanned;
import android.text.TextPaint;
import android.text.TextUtils;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.Size;
import androidx.compose.ui.graphics.AndroidCanvas_androidKt;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.RectHelper_androidKt;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.android.LayoutHelper;
import androidx.compose.ui.text.android.LayoutIntrinsics;
import androidx.compose.ui.text.android.SpannedExtensions_androidKt;
import androidx.compose.ui.text.android.TextAndroidCanvas;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.TextLayoutGetRangeForRectExtensions_androidKt;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinderApi29;
import androidx.compose.ui.text.android.selection.GraphemeClusterSegmentFinderUnderApi29;
import androidx.compose.ui.text.android.selection.SegmentFinder;
import androidx.compose.ui.text.android.selection.WordSegmentFinder;
import androidx.compose.ui.text.android.style.IndentationFixSpan;
import androidx.compose.ui.text.android.style.PlaceholderSpan;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt;
import androidx.compose.ui.text.platform.AndroidParagraphHelper_androidKt$NoopSpan$1;
import androidx.compose.ui.text.platform.AndroidTextPaint;
import androidx.compose.ui.text.platform.style.ShaderBrushSpan;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.TextUnit;
import androidx.compose.ui.unit.TextUnitKt;
import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.d;
import defpackage.d1;
import defpackage.u2;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.FunctionReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidParagraph {
    public final AndroidParagraphIntrinsics a;
    public final int b;
    public final long c;
    public final TextLayout d;
    public final CharSequence e;
    public final float f;
    public final List g;

    /* JADX WARN: Failed to find 'out' block for switch in B:128:0x033d. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:103:0x0282  */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0346  */
    /* JADX WARN: Removed duplicated region for block: B:134:0x035d  */
    /* JADX WARN: Removed duplicated region for block: B:136:0x0370  */
    /* JADX WARN: Removed duplicated region for block: B:137:0x037c  */
    /* JADX WARN: Removed duplicated region for block: B:138:0x038f  */
    /* JADX WARN: Removed duplicated region for block: B:139:0x0398  */
    /* JADX WARN: Removed duplicated region for block: B:140:0x039d  */
    /* JADX WARN: Removed duplicated region for block: B:141:0x0340 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:162:0x021b  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01d3 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:172:0x0123  */
    /* JADX WARN: Removed duplicated region for block: B:179:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:53:0x010b  */
    /* JADX WARN: Removed duplicated region for block: B:56:0x011a  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x0143  */
    /* JADX WARN: Removed duplicated region for block: B:70:0x019a  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x01b0  */
    /* JADX WARN: Removed duplicated region for block: B:85:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01c9  */
    /* JADX WARN: Removed duplicated region for block: B:93:0x024f  */
    /* JADX WARN: Removed duplicated region for block: B:99:0x027e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public AndroidParagraph(AndroidParagraphIntrinsics androidParagraphIntrinsics, int i, int i2, long j) {
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        SpanStyle spanStyle;
        int i13;
        int i14;
        int i15;
        char c;
        SpanStyle spanStyle2;
        TextUtils.TruncateAt truncateAt;
        TextUtils.TruncateAt truncateAt2;
        TextLayout b;
        int i16;
        int i17;
        AndroidParagraph androidParagraph;
        int i18;
        int i19;
        int i20;
        Layout layout;
        ShaderBrushSpan[] shaderBrushSpanArr;
        CharSequence charSequence;
        List list;
        boolean z;
        boolean z2;
        boolean z3;
        Rect rect;
        boolean z4;
        float l;
        int c2;
        float k;
        int c3;
        float e;
        int b2;
        float j2;
        float f;
        float e2;
        int i21;
        int i22;
        int i23;
        Spannable spannable;
        this.a = androidParagraphIntrinsics;
        this.b = i;
        this.c = j;
        if (Constraints.i(j) != 0 || Constraints.j(j) != 0) {
            InlineClassHelperKt.a("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        if (i < 1) {
            InlineClassHelperKt.a("maxLines should be greater than 0");
        }
        TextStyle textStyle = androidParagraphIntrinsics.b;
        CharSequence charSequence2 = androidParagraphIntrinsics.h;
        if (i2 == 2) {
            i3 = 0;
            if (!TextUnit.a(textStyle.a.h, TextUnitKt.d(0)) && !TextUnit.a(textStyle.a.h, TextUnit.c) && (i23 = textStyle.b.a) != 0 && i23 != 5 && i23 != 4 && charSequence2.length() != 0) {
                if (charSequence2 instanceof Spannable) {
                    spannable = (Spannable) charSequence2;
                } else {
                    spannable = null;
                }
                spannable = spannable == null ? new SpannableString(charSequence2) : spannable;
                if (!SpannedExtensions_androidKt.a(spannable, IndentationFixSpan.class)) {
                    spannable.setSpan(new Object(), spannable.length() - 1, spannable.length() - 1, 33);
                }
                charSequence2 = spannable;
            }
        } else {
            i3 = 0;
        }
        CharSequence charSequence3 = charSequence2;
        this.e = charSequence3;
        ParagraphStyle paragraphStyle = textStyle.b;
        SpanStyle spanStyle3 = textStyle.a;
        int i24 = paragraphStyle.a;
        int i25 = 3;
        if (i24 == 1) {
            i4 = 3;
        } else if (i24 == 2) {
            i4 = 4;
        } else if (i24 == 3) {
            i4 = 2;
        } else if (i24 != 5 && i24 == 6) {
            i4 = 1;
        } else {
            i4 = i3;
        }
        if (i24 == 4) {
            i5 = 1;
        } else {
            i5 = i3;
        }
        if (paragraphStyle.h == 2) {
            if (Build.VERSION.SDK_INT <= 32) {
                i6 = 2;
            } else {
                i6 = 4;
            }
        } else {
            i6 = i3;
        }
        int i26 = paragraphStyle.g;
        int i27 = i26 & 255;
        if (i27 != 1) {
            if (i27 == 2) {
                i7 = i26;
                i8 = i5;
                i9 = 1;
            } else if (i27 == 3) {
                i7 = i26;
                i8 = i5;
                i9 = 2;
            }
            i10 = (i7 >> 8) & 255;
            if (i10 != 1) {
                if (i10 == 2) {
                    i25 = 1;
                } else if (i10 == 3) {
                    i25 = 2;
                } else if (i10 == 4) {
                }
                i11 = (i7 >> 16) & 255;
                if (i11 == 1) {
                    i12 = 2;
                } else {
                    i12 = 2;
                    if (i11 == 2) {
                        spanStyle = spanStyle3;
                        i13 = i4;
                        i14 = 1;
                        if (i2 != i12) {
                            truncateAt2 = TextUtils.TruncateAt.END;
                        } else if (i2 == 5) {
                            truncateAt2 = TextUtils.TruncateAt.MIDDLE;
                        } else if (i2 == 4) {
                            truncateAt2 = TextUtils.TruncateAt.START;
                        } else {
                            i15 = i6;
                            c = ' ';
                            spanStyle2 = spanStyle;
                            truncateAt = null;
                            b = b(i13, i8, truncateAt, i, i15, i9, i25, i14, charSequence3);
                            Layout layout2 = b.f;
                            i16 = i13;
                            if (Build.VERSION.SDK_INT < 35 || androidParagraphIntrinsics.g.getLetterSpacing() == 0.0f || ((i2 != 4 && i2 != 5) || layout2.getEllipsisCount(0) <= 0)) {
                                i17 = 2;
                                androidParagraph = this;
                                i18 = i;
                                i19 = i16;
                            } else {
                                int ellipsisStart = layout2.getEllipsisStart(0);
                                i17 = 2;
                                CharSequence[] charSequenceArr = {charSequence3.subSequence(0, ellipsisStart), "…", charSequence3.subSequence(layout2.getEllipsisCount(0) + ellipsisStart, charSequence3.length())};
                                androidParagraph = this;
                                i18 = i;
                                i19 = i16;
                                b = androidParagraph.b(i19, i8, truncateAt, i18, i15, i9, i25, i14, TextUtils.concat(charSequenceArr));
                            }
                            i20 = b.g;
                            if (i2 != i17 && b.b() > Constraints.g(j) && i18 > 1) {
                                int g = Constraints.g(j);
                                i21 = 0;
                                while (true) {
                                    if (i21 >= i20) {
                                        if (b.f(i21) > g) {
                                            break;
                                        } else {
                                            i21++;
                                        }
                                    } else {
                                        i21 = i20;
                                        break;
                                    }
                                }
                                if (i21 >= 0 && i21 != androidParagraph.b) {
                                    if (i21 >= 1) {
                                        i22 = 1;
                                    } else {
                                        i22 = i21;
                                    }
                                    b = androidParagraph.b(i19, i8, truncateAt, i22, i15, i9, i25, i14, androidParagraph.e);
                                }
                                androidParagraph.d = b;
                                androidParagraph.f = androidParagraph.d.b();
                                androidParagraph.a.g.c(spanStyle2.a.d(), (Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c), spanStyle2.a.a());
                                layout = androidParagraph.d.f;
                                if (layout.getText() instanceof Spanned) {
                                    CharSequence text = layout.getText();
                                    text.getClass();
                                    Spanned spanned = (Spanned) text;
                                    if (spanned.nextSpanTransition(-1, spanned.length(), ShaderBrushSpan.class) != spanned.length()) {
                                        CharSequence text2 = layout.getText();
                                        text2.getClass();
                                        shaderBrushSpanArr = (ShaderBrushSpan[]) ((Spanned) text2).getSpans(0, layout.getText().length(), ShaderBrushSpan.class);
                                        if (shaderBrushSpanArr != null) {
                                            for (ShaderBrushSpan shaderBrushSpan : shaderBrushSpanArr) {
                                                ((SnapshotMutableStateImpl) shaderBrushSpan.l).setValue(new Size((Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c)));
                                            }
                                        }
                                        charSequence = androidParagraph.e;
                                        if (charSequence instanceof Spanned) {
                                            list = EmptyList.j;
                                        } else {
                                            Spanned spanned2 = (Spanned) charSequence;
                                            Object[] spans = spanned2.getSpans(0, charSequence.length(), PlaceholderSpan.class);
                                            ArrayList arrayList = new ArrayList(spans.length);
                                            for (Object obj : spans) {
                                                PlaceholderSpan placeholderSpan = (PlaceholderSpan) obj;
                                                int spanStart = spanned2.getSpanStart(placeholderSpan);
                                                int spanEnd = spanned2.getSpanEnd(placeholderSpan);
                                                int h = androidParagraph.d.h(spanStart);
                                                if (h >= androidParagraph.b) {
                                                    z = true;
                                                } else {
                                                    z = false;
                                                }
                                                if (androidParagraph.d.f.getEllipsisCount(h) > 0 && spanEnd > androidParagraph.d.f.getEllipsisStart(h) + androidParagraph.d.f.getLineStart(h)) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                if (spanEnd > androidParagraph.d.g(h)) {
                                                    z3 = true;
                                                } else {
                                                    z3 = false;
                                                }
                                                if (!z2 && !z3 && !z) {
                                                    if (androidParagraph.d.f.getParagraphDirection(h) == 1) {
                                                        z4 = true;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    boolean isRtlCharAt = androidParagraph.d.f.isRtlCharAt(spanStart);
                                                    if (z4 && !isRtlCharAt) {
                                                        l = androidParagraph.d.k(spanStart, false);
                                                        c2 = placeholderSpan.c();
                                                    } else {
                                                        if (z4 && isRtlCharAt) {
                                                            k = androidParagraph.d.l(spanStart, false);
                                                            c3 = placeholderSpan.c();
                                                        } else {
                                                            TextLayout textLayout = androidParagraph.d;
                                                            if (isRtlCharAt) {
                                                                k = textLayout.k(spanStart, false);
                                                                c3 = placeholderSpan.c();
                                                            } else {
                                                                l = textLayout.l(spanStart, false);
                                                                c2 = placeholderSpan.c();
                                                            }
                                                        }
                                                        l = k - c3;
                                                        TextLayout textLayout2 = androidParagraph.d;
                                                        switch (placeholderSpan.p) {
                                                            case 0:
                                                                e = textLayout2.e(h);
                                                                b2 = placeholderSpan.b();
                                                                j2 = e - b2;
                                                                rect = new Rect(l, j2, k, placeholderSpan.b() + j2);
                                                                break;
                                                            case 1:
                                                                j2 = textLayout2.j(h);
                                                                rect = new Rect(l, j2, k, placeholderSpan.b() + j2);
                                                                break;
                                                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                                e = textLayout2.f(h);
                                                                b2 = placeholderSpan.b();
                                                                j2 = e - b2;
                                                                rect = new Rect(l, j2, k, placeholderSpan.b() + j2);
                                                                break;
                                                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                                j2 = ((textLayout2.f(h) + textLayout2.j(h)) - placeholderSpan.b()) / 2.0f;
                                                                rect = new Rect(l, j2, k, placeholderSpan.b() + j2);
                                                                break;
                                                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                                f = placeholderSpan.a().ascent;
                                                                e2 = textLayout2.e(h);
                                                                j2 = e2 + f;
                                                                rect = new Rect(l, j2, k, placeholderSpan.b() + j2);
                                                                break;
                                                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                                                e = textLayout2.e(h) + placeholderSpan.a().descent;
                                                                b2 = placeholderSpan.b();
                                                                j2 = e - b2;
                                                                rect = new Rect(l, j2, k, placeholderSpan.b() + j2);
                                                                break;
                                                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                                                Paint.FontMetricsInt a = placeholderSpan.a();
                                                                f = ((a.ascent + a.descent) - placeholderSpan.b()) / 2;
                                                                e2 = textLayout2.e(h);
                                                                j2 = e2 + f;
                                                                rect = new Rect(l, j2, k, placeholderSpan.b() + j2);
                                                                break;
                                                            default:
                                                                u2.l("unexpected verticalAlignment");
                                                                throw null;
                                                        }
                                                    }
                                                    k = c2 + l;
                                                    TextLayout textLayout22 = androidParagraph.d;
                                                    switch (placeholderSpan.p) {
                                                    }
                                                } else {
                                                    rect = null;
                                                }
                                                arrayList.add(rect);
                                            }
                                            list = arrayList;
                                        }
                                        androidParagraph.g = list;
                                    }
                                }
                                shaderBrushSpanArr = null;
                                if (shaderBrushSpanArr != null) {
                                }
                                charSequence = androidParagraph.e;
                                if (charSequence instanceof Spanned) {
                                }
                                androidParagraph.g = list;
                            }
                            androidParagraph.d = b;
                            androidParagraph.f = androidParagraph.d.b();
                            androidParagraph.a.g.c(spanStyle2.a.d(), (Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c), spanStyle2.a.a());
                            layout = androidParagraph.d.f;
                            if (layout.getText() instanceof Spanned) {
                            }
                            shaderBrushSpanArr = null;
                            if (shaderBrushSpanArr != null) {
                            }
                            charSequence = androidParagraph.e;
                            if (charSequence instanceof Spanned) {
                            }
                            androidParagraph.g = list;
                        }
                        i15 = i6;
                        c = ' ';
                        spanStyle2 = spanStyle;
                        truncateAt = truncateAt2;
                        b = b(i13, i8, truncateAt, i, i15, i9, i25, i14, charSequence3);
                        Layout layout22 = b.f;
                        i16 = i13;
                        if (Build.VERSION.SDK_INT < 35) {
                        }
                        i17 = 2;
                        androidParagraph = this;
                        i18 = i;
                        i19 = i16;
                        i20 = b.g;
                        if (i2 != i17) {
                            int g2 = Constraints.g(j);
                            i21 = 0;
                            while (true) {
                                if (i21 >= i20) {
                                }
                                i21++;
                            }
                            if (i21 >= 0) {
                                if (i21 >= 1) {
                                }
                                b = androidParagraph.b(i19, i8, truncateAt, i22, i15, i9, i25, i14, androidParagraph.e);
                            }
                            androidParagraph.d = b;
                            androidParagraph.f = androidParagraph.d.b();
                            androidParagraph.a.g.c(spanStyle2.a.d(), (Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c), spanStyle2.a.a());
                            layout = androidParagraph.d.f;
                            if (layout.getText() instanceof Spanned) {
                            }
                            shaderBrushSpanArr = null;
                            if (shaderBrushSpanArr != null) {
                            }
                            charSequence = androidParagraph.e;
                            if (charSequence instanceof Spanned) {
                            }
                            androidParagraph.g = list;
                        }
                        androidParagraph.d = b;
                        androidParagraph.f = androidParagraph.d.b();
                        androidParagraph.a.g.c(spanStyle2.a.d(), (Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c), spanStyle2.a.a());
                        layout = androidParagraph.d.f;
                        if (layout.getText() instanceof Spanned) {
                        }
                        shaderBrushSpanArr = null;
                        if (shaderBrushSpanArr != null) {
                        }
                        charSequence = androidParagraph.e;
                        if (charSequence instanceof Spanned) {
                        }
                        androidParagraph.g = list;
                    }
                }
                spanStyle = spanStyle3;
                i13 = i4;
                i14 = i3;
                if (i2 != i12) {
                }
                i15 = i6;
                c = ' ';
                spanStyle2 = spanStyle;
                truncateAt = truncateAt2;
                b = b(i13, i8, truncateAt, i, i15, i9, i25, i14, charSequence3);
                Layout layout222 = b.f;
                i16 = i13;
                if (Build.VERSION.SDK_INT < 35) {
                }
                i17 = 2;
                androidParagraph = this;
                i18 = i;
                i19 = i16;
                i20 = b.g;
                if (i2 != i17) {
                }
                androidParagraph.d = b;
                androidParagraph.f = androidParagraph.d.b();
                androidParagraph.a.g.c(spanStyle2.a.d(), (Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c), spanStyle2.a.a());
                layout = androidParagraph.d.f;
                if (layout.getText() instanceof Spanned) {
                }
                shaderBrushSpanArr = null;
                if (shaderBrushSpanArr != null) {
                }
                charSequence = androidParagraph.e;
                if (charSequence instanceof Spanned) {
                }
                androidParagraph.g = list;
            }
            i25 = i3;
            i11 = (i7 >> 16) & 255;
            if (i11 == 1) {
            }
            spanStyle = spanStyle3;
            i13 = i4;
            i14 = i3;
            if (i2 != i12) {
            }
            i15 = i6;
            c = ' ';
            spanStyle2 = spanStyle;
            truncateAt = truncateAt2;
            b = b(i13, i8, truncateAt, i, i15, i9, i25, i14, charSequence3);
            Layout layout2222 = b.f;
            i16 = i13;
            if (Build.VERSION.SDK_INT < 35) {
            }
            i17 = 2;
            androidParagraph = this;
            i18 = i;
            i19 = i16;
            i20 = b.g;
            if (i2 != i17) {
            }
            androidParagraph.d = b;
            androidParagraph.f = androidParagraph.d.b();
            androidParagraph.a.g.c(spanStyle2.a.d(), (Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c), spanStyle2.a.a());
            layout = androidParagraph.d.f;
            if (layout.getText() instanceof Spanned) {
            }
            shaderBrushSpanArr = null;
            if (shaderBrushSpanArr != null) {
            }
            charSequence = androidParagraph.e;
            if (charSequence instanceof Spanned) {
            }
            androidParagraph.g = list;
        }
        i7 = i26;
        i8 = i5;
        i9 = i3;
        i10 = (i7 >> 8) & 255;
        if (i10 != 1) {
        }
        i25 = i3;
        i11 = (i7 >> 16) & 255;
        if (i11 == 1) {
        }
        spanStyle = spanStyle3;
        i13 = i4;
        i14 = i3;
        if (i2 != i12) {
        }
        i15 = i6;
        c = ' ';
        spanStyle2 = spanStyle;
        truncateAt = truncateAt2;
        b = b(i13, i8, truncateAt, i, i15, i9, i25, i14, charSequence3);
        Layout layout22222 = b.f;
        i16 = i13;
        if (Build.VERSION.SDK_INT < 35) {
        }
        i17 = 2;
        androidParagraph = this;
        i18 = i;
        i19 = i16;
        i20 = b.g;
        if (i2 != i17) {
        }
        androidParagraph.d = b;
        androidParagraph.f = androidParagraph.d.b();
        androidParagraph.a.g.c(spanStyle2.a.d(), (Float.floatToRawIntBits(androidParagraph.f) & 4294967295L) | (Float.floatToRawIntBits(androidParagraph.d()) << c), spanStyle2.a.a());
        layout = androidParagraph.d.f;
        if (layout.getText() instanceof Spanned) {
        }
        shaderBrushSpanArr = null;
        if (shaderBrushSpanArr != null) {
        }
        charSequence = androidParagraph.e;
        if (charSequence instanceof Spanned) {
        }
        androidParagraph.g = list;
    }

    public static final void a(AndroidParagraph androidParagraph, Canvas canvas) {
        androidParagraph.getClass();
        android.graphics.Canvas a = AndroidCanvas_androidKt.a(canvas);
        TextLayout textLayout = androidParagraph.d;
        if (textLayout.d) {
            a.save();
            a.clipRect(0.0f, 0.0f, androidParagraph.d(), androidParagraph.f);
        }
        int i = textLayout.h;
        if (a.getClipBounds(textLayout.p)) {
            if (i != 0) {
                a.translate(0.0f, i);
            }
            ThreadLocal threadLocal = TextLayout_androidKt.a;
            Object obj = threadLocal.get();
            if (obj == null) {
                obj = new android.graphics.Canvas();
                threadLocal.set(obj);
            }
            TextAndroidCanvas textAndroidCanvas = (TextAndroidCanvas) obj;
            textAndroidCanvas.a = a;
            try {
                textLayout.f.draw(textAndroidCanvas);
                if (i != 0) {
                    a.translate(0.0f, (-1.0f) * i);
                }
            } finally {
                textAndroidCanvas.a = null;
            }
        }
        if (textLayout.d) {
            a.restore();
        }
    }

    public final TextLayout b(int i, int i2, TextUtils.TruncateAt truncateAt, int i3, int i4, int i5, int i6, int i7, CharSequence charSequence) {
        boolean z;
        PlatformParagraphStyle platformParagraphStyle;
        float d = d();
        AndroidParagraphIntrinsics androidParagraphIntrinsics = this.a;
        AndroidTextPaint androidTextPaint = androidParagraphIntrinsics.g;
        int i8 = androidParagraphIntrinsics.l;
        LayoutIntrinsics layoutIntrinsics = androidParagraphIntrinsics.i;
        TextStyle textStyle = androidParagraphIntrinsics.b;
        AndroidParagraphHelper_androidKt$NoopSpan$1 androidParagraphHelper_androidKt$NoopSpan$1 = AndroidParagraphHelper_androidKt.a;
        PlatformTextStyle platformTextStyle = textStyle.c;
        if (platformTextStyle != null && (platformParagraphStyle = platformTextStyle.a) != null) {
            z = platformParagraphStyle.a;
        } else {
            z = false;
        }
        return new TextLayout(charSequence, d, androidTextPaint, i, truncateAt, i8, z, i3, i5, i6, i7, i4, i2, layoutIntrinsics);
    }

    /* JADX WARN: Type inference failed for: r10v26, types: [e1] */
    public final long c(Rect rect, int i, TextInclusionStrategy textInclusionStrategy) {
        boolean z;
        SegmentFinder graphemeClusterSegmentFinderUnderApi29;
        int i2;
        int[] iArr;
        android.text.SegmentFinder k;
        RectF b = RectHelper_androidKt.b(rect);
        if (i != 0 && i == 1) {
            z = true;
        } else {
            z = false;
        }
        final d dVar = new d(2, textInclusionStrategy);
        TextLayout textLayout = this.d;
        TextPaint textPaint = textLayout.a;
        Layout layout = textLayout.f;
        int i3 = Build.VERSION.SDK_INT;
        if (i3 >= 34) {
            if (z) {
                final WordSegmentFinder wordSegmentFinder = new WordSegmentFinder(layout.getText(), textLayout.m());
                k = new android.text.SegmentFinder() { // from class: androidx.compose.ui.text.android.selection.Api34SegmentFinder$toAndroidSegmentFinder$1
                    public final int nextEndBoundary(int i4) {
                        return WordSegmentFinder.this.d(i4);
                    }

                    public final int nextStartBoundary(int i4) {
                        return WordSegmentFinder.this.a(i4);
                    }

                    public final int previousEndBoundary(int i4) {
                        return WordSegmentFinder.this.b(i4);
                    }

                    public final int previousStartBoundary(int i4) {
                        return WordSegmentFinder.this.c(i4);
                    }
                };
            } else {
                d1.m();
                k = d1.k(d1.j(layout.getText(), textPaint));
            }
            iArr = layout.getRangeForRect(b, k, new Layout.TextInclusionStrategy() { // from class: e1
                @Override // android.text.Layout.TextInclusionStrategy
                public final boolean isSegmentInside(RectF rectF, RectF rectF2) {
                    return ((Boolean) d.this.n(rectF, rectF2)).booleanValue();
                }
            });
        } else {
            LayoutHelper d = textLayout.d();
            if (z) {
                graphemeClusterSegmentFinderUnderApi29 = new WordSegmentFinder(layout.getText(), textLayout.m());
            } else {
                CharSequence text = layout.getText();
                if (i3 >= 29) {
                    graphemeClusterSegmentFinderUnderApi29 = new GraphemeClusterSegmentFinderApi29(text, textPaint);
                } else {
                    graphemeClusterSegmentFinderUnderApi29 = new GraphemeClusterSegmentFinderUnderApi29(text);
                }
            }
            SegmentFinder segmentFinder = graphemeClusterSegmentFinderUnderApi29;
            int lineForVertical = layout.getLineForVertical((int) b.top);
            if (b.top <= textLayout.f(lineForVertical) || (lineForVertical = lineForVertical + 1) < textLayout.g) {
                int i4 = lineForVertical;
                int lineForVertical2 = layout.getLineForVertical((int) b.bottom);
                if (lineForVertical2 != 0 || b.bottom >= textLayout.j(0)) {
                    int b2 = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, d, i4, b, segmentFinder, dVar, true);
                    while (true) {
                        i2 = i4;
                        if (b2 != -1 || i2 >= lineForVertical2) {
                            break;
                        }
                        i4 = i2 + 1;
                        b2 = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, d, i4, b, segmentFinder, dVar, true);
                    }
                    if (b2 != -1) {
                        int i5 = lineForVertical2;
                        int b3 = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, d, i5, b, segmentFinder, dVar, false);
                        while (b3 == -1 && i2 < i5) {
                            i5--;
                            b3 = TextLayoutGetRangeForRectExtensions_androidKt.b(textLayout, layout, d, i5, b, segmentFinder, dVar, false);
                        }
                        if (b3 != -1) {
                            iArr = new int[]{segmentFinder.c(b2 + 1), segmentFinder.d(b3 - 1)};
                        }
                    }
                }
            }
            iArr = null;
        }
        if (iArr == null) {
            return TextRange.b;
        }
        return TextRangeKt.a(iArr[0], iArr[1]);
    }

    public final float d() {
        return Constraints.h(this.c);
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [androidx.compose.ui.text.AndroidParagraph$paint$4, kotlin.jvm.internal.FunctionReference] */
    public final void e(Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        AndroidTextPaint androidTextPaint = this.a.g;
        int i = androidTextPaint.c;
        androidTextPaint.d(j);
        androidTextPaint.f(shadow);
        androidTextPaint.g(textDecoration);
        androidTextPaint.e(drawStyle);
        androidTextPaint.b(3);
        new FunctionReference(1, this, AndroidParagraph.class, "paint", "paint(Landroidx/compose/ui/graphics/Canvas;)V", 0).b(canvas);
        androidTextPaint.b(i);
    }

    /* JADX WARN: Type inference failed for: r2v5, types: [androidx.compose.ui.text.AndroidParagraph$paint$6, kotlin.jvm.internal.FunctionReference] */
    public final void f(Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        AndroidTextPaint androidTextPaint = this.a.g;
        int i = androidTextPaint.c;
        androidTextPaint.c(brush, (Float.floatToRawIntBits(d()) << 32) | (Float.floatToRawIntBits(this.f) & 4294967295L), f);
        androidTextPaint.f(shadow);
        androidTextPaint.g(textDecoration);
        androidTextPaint.e(drawStyle);
        androidTextPaint.b(3);
        new FunctionReference(1, this, AndroidParagraph.class, "paint", "paint(Landroidx/compose/ui/graphics/Canvas;)V", 0).b(canvas);
        androidTextPaint.b(i);
    }
}
