package androidx.compose.material;

import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.IndicationNodeFactory;
import androidx.compose.foundation.text.selection.TextSelectionColors;
import androidx.compose.foundation.text.selection.TextSelectionColorsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.graphics.Color;
import defpackage.a0;
import defpackage.d4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MaterialThemeKt {
    public static final void a(Colors colors, Typography typography, Shapes shapes, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        ComposableLambdaImpl composableLambdaImpl2;
        Typography typography2;
        Typography c;
        long j;
        float f;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(53836214);
        if (gapComposer.f(colors)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i | i2 | 16;
        if (gapComposer.f(shapes)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i5 = i4 | i3;
        if ((i5 & 1171) != 1170) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
                c = typography;
            } else {
                c = MaterialTheme.c(gapComposer);
            }
            gapComposer.q();
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = Colors.a(colors, 0L, 0L, 8191);
                gapComposer.g0(K);
            }
            Colors colors2 = (Colors) K;
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = ColorsKt.a;
            ((SnapshotMutableStateImpl) colors2.a).setValue(new Color(colors.e()));
            ((SnapshotMutableStateImpl) colors2.b).setValue(new Color(((Color) ((SnapshotMutableStateImpl) colors.b).getValue()).a));
            ((SnapshotMutableStateImpl) colors2.c).setValue(new Color(((Color) ((SnapshotMutableStateImpl) colors.c).getValue()).a));
            ((SnapshotMutableStateImpl) colors2.d).setValue(new Color(((Color) ((SnapshotMutableStateImpl) colors.d).getValue()).a));
            ((SnapshotMutableStateImpl) colors2.e).setValue(new Color(colors.b()));
            ((SnapshotMutableStateImpl) colors2.f).setValue(new Color(colors.f()));
            ((SnapshotMutableStateImpl) colors2.g).setValue(new Color(colors.c()));
            ((SnapshotMutableStateImpl) colors2.h).setValue(new Color(((Color) ((SnapshotMutableStateImpl) colors.h).getValue()).a));
            ((SnapshotMutableStateImpl) colors2.i).setValue(new Color(((Color) ((SnapshotMutableStateImpl) colors.i).getValue()).a));
            ((SnapshotMutableStateImpl) colors2.j).setValue(new Color(((Color) ((SnapshotMutableStateImpl) colors.j).getValue()).a));
            ((SnapshotMutableStateImpl) colors2.k).setValue(new Color(colors.d()));
            ((SnapshotMutableStateImpl) colors2.l).setValue(new Color(((Color) ((SnapshotMutableStateImpl) colors.l).getValue()).a));
            ((SnapshotMutableStateImpl) colors2.m).setValue(Boolean.valueOf(colors.g()));
            IndicationNodeFactory a = RippleKt.a(7, 0L, false);
            long e = colors2.e();
            long b = colors2.b();
            gapComposer.W(-2060762245);
            long a2 = ColorsKt.a(colors2, b);
            if (a2 != 16) {
                j = a2;
            } else {
                j = ((Color) gapComposer.j(ContentColorKt.a)).a;
            }
            gapComposer.p(false);
            long b2 = Color.b(j, ContentAlpha.c(gapComposer));
            boolean e2 = gapComposer.e(e) | gapComposer.e(b) | gapComposer.e(b2);
            Object K2 = gapComposer.K();
            if (e2 || K2 == composer$Companion$Empty$1) {
                long e3 = colors2.e();
                float a3 = MaterialTextSelectionColorsKt.a(0.4f, e, b2, b);
                float a4 = MaterialTextSelectionColorsKt.a(0.2f, e, b2, b);
                float f2 = 0.4f;
                if (a3 >= 4.5f) {
                    f = 0.4f;
                } else {
                    f = 0.2f;
                    if (a4 >= 4.5f) {
                        float f3 = 0.2f;
                        f = 0.4f;
                        for (int i6 = 0; i6 < 7; i6++) {
                            float a5 = (MaterialTextSelectionColorsKt.a(f, e, b2, b) / 4.5f) - 1.0f;
                            if (0.0f <= a5 && a5 <= 0.01f) {
                                break;
                            }
                            if (a5 < 0.0f) {
                                f2 = f;
                            } else {
                                f3 = f;
                            }
                            f = (f2 + f3) / 2.0f;
                        }
                    }
                }
                TextSelectionColors textSelectionColors = new TextSelectionColors(e3, Color.b(e, f));
                gapComposer.g0(textSelectionColors);
                K2 = textSelectionColors;
            }
            composableLambdaImpl2 = composableLambdaImpl;
            CompositionLocalKt.b(new ProvidedValue[]{ColorsKt.a.b(colors2), ContentAlphaKt.a.b(Float.valueOf(ContentAlpha.b(gapComposer))), IndicationKt.a.b(a), ShapesKt.a.b(shapes), TextSelectionColorsKt.a.b((TextSelectionColors) K2), TypographyKt.b.b(c)}, ComposableLambdaKt.b(496803446, new a0(15, c, composableLambdaImpl2), gapComposer), gapComposer, 56);
            typography2 = c;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer.Q();
            typography2 = typography;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new d4(colors, typography2, shapes, composableLambdaImpl2, i);
        }
    }
}
