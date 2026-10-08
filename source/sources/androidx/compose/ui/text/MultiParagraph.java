package androidx.compose.ui.text;

import android.graphics.Matrix;
import android.graphics.Shader;
import android.text.Layout;
import android.text.TextUtils;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.Brush;
import androidx.compose.ui.graphics.BrushKt$ShaderBrush$1;
import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.graphics.ShaderBrush;
import androidx.compose.ui.graphics.Shadow;
import androidx.compose.ui.graphics.SolidColor;
import androidx.compose.ui.graphics.drawscope.DrawStyle;
import androidx.compose.ui.text.android.LayoutHelper;
import androidx.compose.ui.text.android.TextLayout;
import androidx.compose.ui.text.android.TextLayout_androidKt;
import androidx.compose.ui.text.internal.InlineClassHelperKt;
import androidx.compose.ui.text.platform.AndroidMultiParagraphDraw_androidKt;
import androidx.compose.ui.text.style.TextDecoration;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.k8;
import defpackage.p4;
import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MultiParagraph {
    public final MultiParagraphIntrinsics a;
    public final int b;
    public final boolean c;
    public final float d;
    public final float e;
    public final int f;
    public final ArrayList g;
    public final ArrayList h;

    public MultiParagraph(MultiParagraphIntrinsics multiParagraphIntrinsics, long j, int i, int i2) {
        int i3;
        boolean z;
        Rect rect;
        int i4;
        int g;
        int i5;
        this.a = multiParagraphIntrinsics;
        this.b = i;
        if (Constraints.j(j) != 0 || Constraints.i(j) != 0) {
            InlineClassHelperKt.a("Setting Constraints.minWidth and Constraints.minHeight is not supported, these should be the default zero values instead.");
        }
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = multiParagraphIntrinsics.e;
        int size = arrayList2.size();
        float f = 0.0f;
        int i6 = 0;
        int i7 = 0;
        while (i6 < size) {
            ParagraphIntrinsicInfo paragraphIntrinsicInfo = (ParagraphIntrinsicInfo) arrayList2.get(i6);
            AndroidParagraphIntrinsics androidParagraphIntrinsics = paragraphIntrinsicInfo.a;
            int h = Constraints.h(j);
            if (Constraints.c(j)) {
                i4 = i6;
                g = Constraints.g(j) - ((int) Math.ceil(f));
                if (g < 0) {
                    g = 0;
                }
            } else {
                i4 = i6;
                g = Constraints.g(j);
            }
            i3 = 0;
            AndroidParagraph androidParagraph = new AndroidParagraph(androidParagraphIntrinsics, this.b - i7, i2, ConstraintsKt.b(0, h, 0, g, 5));
            float f2 = androidParagraph.f + f;
            TextLayout textLayout = androidParagraph.d;
            int i8 = i7 + textLayout.g;
            arrayList.add(new ParagraphInfo(androidParagraph, paragraphIntrinsicInfo.b, paragraphIntrinsicInfo.c, i7, i8, f, f2));
            if (!textLayout.d) {
                if (i8 == this.b) {
                    i5 = i4;
                    if (i5 != CollectionsKt.u(this.a.e)) {
                    }
                } else {
                    i5 = i4;
                }
                i6 = i5 + 1;
                i7 = i8;
                f = f2;
            }
            z = true;
            i7 = i8;
            f = f2;
            break;
        }
        i3 = 0;
        z = false;
        this.e = f;
        this.f = i7;
        this.c = z;
        this.h = arrayList;
        this.d = Constraints.h(j);
        ArrayList arrayList3 = new ArrayList(arrayList.size());
        int size2 = arrayList.size();
        for (int i9 = i3; i9 < size2; i9++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i9);
            List list = paragraphInfo.a.g;
            ArrayList arrayList4 = new ArrayList(list.size());
            int size3 = list.size();
            for (int i10 = i3; i10 < size3; i10++) {
                Rect rect2 = (Rect) list.get(i10);
                if (rect2 != null) {
                    rect = paragraphInfo.a(rect2);
                } else {
                    rect = null;
                }
                arrayList4.add(rect);
            }
            CollectionsKt.g(arrayList3, arrayList4);
        }
        if (arrayList3.size() < this.a.b.size()) {
            int size4 = this.a.b.size() - arrayList3.size();
            ArrayList arrayList5 = new ArrayList(size4);
            for (int i11 = i3; i11 < size4; i11++) {
                arrayList5.add(null);
            }
            arrayList3 = CollectionsKt.F(arrayList3, arrayList5);
        }
        this.g = arrayList3;
    }

    public static void i(MultiParagraph multiParagraph, Canvas canvas, long j, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        canvas.g();
        ArrayList arrayList = multiParagraph.h;
        int size = arrayList.size();
        for (int i = 0; i < size; i++) {
            ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(i);
            paragraphInfo.a.e(canvas, j, shadow, textDecoration, drawStyle);
            canvas.o(0.0f, paragraphInfo.a.f);
        }
        canvas.r();
    }

    public static void j(MultiParagraph multiParagraph, Canvas canvas, Brush brush, float f, Shadow shadow, TextDecoration textDecoration, DrawStyle drawStyle) {
        canvas.g();
        ArrayList arrayList = multiParagraph.h;
        if (arrayList.size() <= 1) {
            AndroidMultiParagraphDraw_androidKt.a(multiParagraph, canvas, brush, f, shadow, textDecoration, drawStyle);
        } else if (brush instanceof SolidColor) {
            AndroidMultiParagraphDraw_androidKt.a(multiParagraph, canvas, brush, f, shadow, textDecoration, drawStyle);
        } else if (brush instanceof ShaderBrush) {
            int size = arrayList.size();
            float f2 = 0.0f;
            float f3 = 0.0f;
            for (int i = 0; i < size; i++) {
                AndroidParagraph androidParagraph = ((ParagraphInfo) arrayList.get(i)).a;
                f3 += androidParagraph.f;
                f2 = Math.max(f2, androidParagraph.d());
            }
            Shader b = ((ShaderBrush) brush).b((Float.floatToRawIntBits(f2) << 32) | (Float.floatToRawIntBits(f3) & 4294967295L));
            Matrix matrix = new Matrix();
            b.getLocalMatrix(matrix);
            int size2 = arrayList.size();
            for (int i2 = 0; i2 < size2; i2++) {
                AndroidParagraph androidParagraph2 = ((ParagraphInfo) arrayList.get(i2)).a;
                androidParagraph2.f(canvas, new BrushKt$ShaderBrush$1(b), f, shadow, textDecoration, drawStyle);
                canvas.o(0.0f, androidParagraph2.f);
                matrix.setTranslate(0.0f, -androidParagraph2.f);
                b.setLocalMatrix(matrix);
            }
        } else {
            k8.e();
            return;
        }
        canvas.r();
    }

    /* JADX WARN: Type inference failed for: r5v0, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r6v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    public final void a(long j, float[] fArr) {
        k(TextRange.f(j));
        l(TextRange.e(j));
        ?? obj = new Object();
        obj.j = 0;
        MultiParagraphKt.d(this.h, j, new p4(j, fArr, (Ref$IntRef) obj, (Ref$FloatRef) new Object()));
    }

    public final float b(int i) {
        m(i);
        ArrayList arrayList = this.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.a;
        return androidParagraph.d.f(i - paragraphInfo.d) + paragraphInfo.f;
    }

    public final int c(int i, boolean z) {
        int g;
        m(i);
        ArrayList arrayList = this.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.a;
        int i2 = i - paragraphInfo.d;
        TextLayout textLayout = androidParagraph.d;
        if (z) {
            Layout layout = textLayout.f;
            ThreadLocal threadLocal = TextLayout_androidKt.a;
            if (layout.getEllipsisCount(i2) > 0 && textLayout.b == TextUtils.TruncateAt.END) {
                g = layout.getEllipsisStart(i2) + layout.getLineStart(i2);
            } else {
                LayoutHelper d = textLayout.d();
                Layout layout2 = d.a;
                g = d.f(layout2.getLineEnd(i2), layout2.getLineStart(i2));
            }
        } else {
            g = textLayout.g(i2);
        }
        return g + paragraphInfo.b;
    }

    public final int d(int i) {
        int a;
        int length = this.a.a.k.length();
        ArrayList arrayList = this.h;
        if (i >= length) {
            a = CollectionsKt.u(arrayList);
        } else if (i < 0) {
            a = 0;
        } else {
            a = MultiParagraphKt.a(i, arrayList);
        }
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(a);
        AndroidParagraph androidParagraph = paragraphInfo.a;
        return androidParagraph.d.h(paragraphInfo.d(i)) + paragraphInfo.d;
    }

    public final int e(float f) {
        int lineForVertical;
        ArrayList arrayList = this.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.c(arrayList, f));
        int i = paragraphInfo.c - paragraphInfo.b;
        int i2 = paragraphInfo.d;
        if (i == 0) {
            return i2;
        }
        AndroidParagraph androidParagraph = paragraphInfo.a;
        float f2 = f - paragraphInfo.f;
        TextLayout textLayout = androidParagraph.d;
        int i3 = (int) (f2 - 0.0f);
        int i4 = textLayout.g;
        if (i4 <= 0) {
            lineForVertical = 0;
        } else {
            lineForVertical = textLayout.f.getLineForVertical(i3 - textLayout.h);
            int i5 = i4 - 1;
            if (lineForVertical > i5) {
                lineForVertical = i5;
            }
        }
        return lineForVertical + i2;
    }

    public final float f(int i) {
        m(i);
        ArrayList arrayList = this.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.b(i, arrayList));
        AndroidParagraph androidParagraph = paragraphInfo.a;
        return androidParagraph.d.j(i - paragraphInfo.d) + paragraphInfo.f;
    }

    public final int g(long j) {
        int offsetForHorizontal;
        int i = (int) (j & 4294967295L);
        float intBitsToFloat = Float.intBitsToFloat(i);
        ArrayList arrayList = this.h;
        ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(MultiParagraphKt.c(arrayList, intBitsToFloat));
        int i2 = paragraphInfo.c;
        int i3 = paragraphInfo.b;
        if (i2 - i3 == 0) {
            return i3;
        }
        AndroidParagraph androidParagraph = paragraphInfo.a;
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j >> 32));
        float intBitsToFloat3 = Float.intBitsToFloat(i) - paragraphInfo.f;
        long floatToRawIntBits = (Float.floatToRawIntBits(intBitsToFloat2) << 32) | (Float.floatToRawIntBits(intBitsToFloat3) & 4294967295L);
        TextLayout textLayout = androidParagraph.d;
        int intBitsToFloat4 = (int) (Float.intBitsToFloat((int) (4294967295L & floatToRawIntBits)) - 0.0f);
        Layout layout = textLayout.f;
        int lineForVertical = layout.getLineForVertical(intBitsToFloat4 - textLayout.h);
        if (lineForVertical >= textLayout.g) {
            offsetForHorizontal = layout.getText().length();
        } else {
            offsetForHorizontal = layout.getOffsetForHorizontal(lineForVertical, (textLayout.c(lineForVertical) * (-1.0f)) + Float.intBitsToFloat((int) (floatToRawIntBits >> 32)));
        }
        return offsetForHorizontal + i3;
    }

    public final long h(Rect rect, int i, TextInclusionStrategy textInclusionStrategy) {
        long j;
        long j2;
        float f = rect.b;
        ArrayList arrayList = this.h;
        int c = MultiParagraphKt.c(arrayList, f);
        float f2 = ((ParagraphInfo) arrayList.get(c)).g;
        float f3 = rect.d;
        if (f2 < f3 && c != CollectionsKt.u(arrayList)) {
            int c2 = MultiParagraphKt.c(arrayList, f3);
            long j3 = TextRange.b;
            while (true) {
                j = TextRange.b;
                if (!TextRange.b(j3, j) || c > c2) {
                    break;
                }
                ParagraphInfo paragraphInfo = (ParagraphInfo) arrayList.get(c);
                j3 = paragraphInfo.b(paragraphInfo.a.c(paragraphInfo.c(rect), i, textInclusionStrategy), true);
                c++;
            }
            if (TextRange.b(j3, j)) {
                return j;
            }
            while (true) {
                j2 = TextRange.b;
                if (!TextRange.b(j, j2) || c > c2) {
                    break;
                }
                ParagraphInfo paragraphInfo2 = (ParagraphInfo) arrayList.get(c2);
                j = paragraphInfo2.b(paragraphInfo2.a.c(paragraphInfo2.c(rect), i, textInclusionStrategy), true);
                c2--;
            }
            if (TextRange.b(j, j2)) {
                return j3;
            }
            return TextRangeKt.a((int) (j3 >> 32), (int) (4294967295L & j));
        }
        ParagraphInfo paragraphInfo3 = (ParagraphInfo) arrayList.get(c);
        return paragraphInfo3.b(paragraphInfo3.a.c(paragraphInfo3.c(rect), i, textInclusionStrategy), true);
    }

    public final void k(int i) {
        AnnotatedString annotatedString = this.a.a;
        if (i >= 0 && i < annotatedString.k.length()) {
            return;
        }
        InlineClassHelperKt.a("offset(" + i + ") is out of bounds [0, " + annotatedString.k.length() + ")");
    }

    public final void l(int i) {
        AnnotatedString annotatedString = this.a.a;
        if (i >= 0 && i <= annotatedString.k.length()) {
            return;
        }
        InlineClassHelperKt.a("offset(" + i + ") is out of bounds [0, " + annotatedString.k.length() + "]");
    }

    public final void m(int i) {
        boolean z = false;
        int i2 = this.f;
        if (i >= 0 && i < i2) {
            z = true;
        }
        if (!z) {
            InlineClassHelperKt.a("lineIndex(" + i + ") is out of bounds [0, " + i2 + ")");
        }
    }
}
