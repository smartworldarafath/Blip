package defpackage;

import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.graphics.BlendModeColorFilter;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.ImageBitmap;
import androidx.compose.ui.graphics.drawscope.CanvasDrawScope;
import androidx.compose.ui.graphics.drawscope.ContentDrawScope;
import androidx.compose.ui.graphics.drawscope.DrawScope;
import androidx.compose.ui.node.LayoutNodeDrawScope;
import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.ParagraphInfo;
import androidx.compose.ui.text.TextRange;
import androidx.compose.ui.text.TextRangeKt;
import java.io.Serializable;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.jvm.internal.Ref$IntRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class p4 implements Function1 {
    public final /* synthetic */ int j = 1;
    public final /* synthetic */ long k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Serializable m;
    public final /* synthetic */ Object n;

    public /* synthetic */ p4(long j, float[] fArr, Ref$IntRef ref$IntRef, Ref$FloatRef ref$FloatRef) {
        this.k = j;
        this.l = fArr;
        this.m = ref$IntRef;
        this.n = ref$FloatRef;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int f;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.n;
        Serializable serializable = this.m;
        Object obj3 = this.l;
        switch (i) {
            case 0:
                Rect rect = (Rect) obj3;
                Ref$ObjectRef ref$ObjectRef = (Ref$ObjectRef) serializable;
                long j = this.k;
                ColorFilter colorFilter = (ColorFilter) obj2;
                LayoutNodeDrawScope layoutNodeDrawScope = (LayoutNodeDrawScope) ((ContentDrawScope) obj);
                layoutNodeDrawScope.a();
                float f2 = rect.a;
                float f3 = rect.b;
                CanvasDrawScope canvasDrawScope = layoutNodeDrawScope.j;
                canvasDrawScope.k.a.c(f2, f3);
                try {
                    DrawScope.A(layoutNodeDrawScope, (ImageBitmap) ref$ObjectRef.j, j, 0L, 0.0f, colorFilter, 0, 890);
                    return unit;
                } finally {
                    canvasDrawScope.k.a.c(-f2, -f3);
                }
            default:
                float[] fArr = (float[]) obj3;
                Ref$IntRef ref$IntRef = (Ref$IntRef) serializable;
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj2;
                ParagraphInfo paragraphInfo = (ParagraphInfo) obj;
                int i2 = paragraphInfo.b;
                AndroidParagraph androidParagraph = paragraphInfo.a;
                int i3 = paragraphInfo.c;
                long j2 = this.k;
                if (i2 > TextRange.f(j2)) {
                    f = paragraphInfo.b;
                } else {
                    f = TextRange.f(j2);
                }
                if (i3 >= TextRange.e(j2)) {
                    i3 = TextRange.e(j2);
                }
                long a = TextRangeKt.a(paragraphInfo.d(f), paragraphInfo.d(i3));
                androidParagraph.d.a(TextRange.f(a), TextRange.e(a), ref$IntRef.j, fArr);
                int d = (TextRange.d(a) * 4) + ref$IntRef.j;
                for (int i4 = ref$IntRef.j; i4 < d; i4 += 4) {
                    int i5 = i4 + 1;
                    float f4 = fArr[i5];
                    float f5 = ref$FloatRef.j;
                    fArr[i5] = f4 + f5;
                    int i6 = i4 + 3;
                    fArr[i6] = fArr[i6] + f5;
                }
                ref$IntRef.j = d;
                ref$FloatRef.j += androidParagraph.f;
                return unit;
        }
    }

    public /* synthetic */ p4(Rect rect, Ref$ObjectRef ref$ObjectRef, long j, BlendModeColorFilter blendModeColorFilter) {
        this.l = rect;
        this.m = ref$ObjectRef;
        this.k = j;
        this.n = blendModeColorFilter;
    }
}
