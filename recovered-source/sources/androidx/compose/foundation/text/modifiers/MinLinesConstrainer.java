package androidx.compose.foundation.text.modifiers;

import androidx.compose.ui.text.AndroidParagraph;
import androidx.compose.ui.text.AndroidParagraphIntrinsics;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.TextStyleKt;
import androidx.compose.ui.text.font.FontFamily;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MinLinesConstrainer {
    public static MinLinesConstrainer h;
    public final LayoutDirection a;
    public final TextStyle b;
    public final Density c;
    public final FontFamily.Resolver d;
    public final TextStyle e;
    public float f = Float.NaN;
    public float g = Float.NaN;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static MinLinesConstrainer a(MinLinesConstrainer minLinesConstrainer, LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
            if (minLinesConstrainer != null && layoutDirection == minLinesConstrainer.a && TextStyleKt.a(textStyle, layoutDirection).equals(minLinesConstrainer.b) && density.getDensity() == minLinesConstrainer.c.getDensity() && resolver == minLinesConstrainer.d) {
                return minLinesConstrainer;
            }
            MinLinesConstrainer minLinesConstrainer2 = MinLinesConstrainer.h;
            if (minLinesConstrainer2 != null && layoutDirection == minLinesConstrainer2.a && TextStyleKt.a(textStyle, layoutDirection).equals(minLinesConstrainer2.b) && density.getDensity() == minLinesConstrainer2.c.getDensity() && resolver == minLinesConstrainer2.d) {
                return minLinesConstrainer2;
            }
            MinLinesConstrainer minLinesConstrainer3 = new MinLinesConstrainer(layoutDirection, TextStyleKt.a(textStyle, layoutDirection), DensityKt.a(density.getDensity(), density.e0()), resolver);
            MinLinesConstrainer.h = minLinesConstrainer3;
            return minLinesConstrainer3;
        }
    }

    public MinLinesConstrainer(LayoutDirection layoutDirection, TextStyle textStyle, Density density, FontFamily.Resolver resolver) {
        this.a = layoutDirection;
        this.b = textStyle;
        this.c = density;
        this.d = resolver;
        this.e = TextStyleKt.a(textStyle, layoutDirection);
    }

    public final long a(int i, long j) {
        float f = this.g;
        float f2 = this.f;
        int i2 = 0;
        int i3 = 1;
        if (Float.isNaN(f) || Float.isNaN(f2)) {
            String str = MinLinesConstrainerKt.a;
            TextStyle textStyle = this.e;
            EmptyList emptyList = EmptyList.j;
            FontFamily.Resolver resolver = this.d;
            Density density = this.c;
            AndroidParagraph androidParagraph = new AndroidParagraph(new AndroidParagraphIntrinsics(str, textStyle, emptyList, emptyList, resolver, density, false), 1, 1, ConstraintsKt.b(0, 0, 0, 0, 15));
            i3 = 1;
            float f3 = new AndroidParagraph(new AndroidParagraphIntrinsics(MinLinesConstrainerKt.b, this.e, emptyList, emptyList, this.d, density, true), 2, 1, ConstraintsKt.b(0, 0, 0, 0, 15)).f;
            float f4 = androidParagraph.f;
            float f5 = f3 - f4;
            this.g = f4;
            this.f = f5;
            f2 = f5;
            f = f4;
        }
        if (i != i3) {
            int round = Math.round((f2 * (i - 1)) + f);
            if (round >= 0) {
                i2 = round;
            }
            int g = Constraints.g(j);
            if (i2 > g) {
                i2 = g;
            }
        } else {
            i2 = Constraints.i(j);
        }
        return ConstraintsKt.a(Constraints.j(j), Constraints.h(j), i2, Constraints.g(j));
    }
}
