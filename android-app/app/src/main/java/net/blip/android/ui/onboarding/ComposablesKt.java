package net.blip.android.ui.onboarding;

import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.ColumnKt;
import androidx.compose.foundation.layout.ColumnMeasurePolicy;
import androidx.compose.foundation.layout.ColumnScopeInstance;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.material.ButtonKt;
import androidx.compose.material.ProgressIndicatorKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.vector.ImageVector;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.text.AnnotatedString;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.text.style.LineBreak;
import androidx.compose.ui.unit.TextUnitKt;
import defpackage.a0;
import defpackage.c2;
import defpackage.f6;
import defpackage.g6;
import defpackage.t2;
import defpackage.z;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.shared.PlatformTextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ComposablesKt {
    public static final void a(String str, boolean z, Function0 function0, Composer composer, int i, int i2) {
        boolean z2;
        int i3;
        int i4;
        int i5;
        boolean z3;
        boolean z4;
        int i6;
        boolean z5;
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(681566374);
        int i7 = i2 & 2;
        if (i7 != 0) {
            i4 = i | 48;
            z2 = z;
        } else {
            z2 = z;
            if (gapComposer.g(z2)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i4 = i | i3;
        }
        if (gapComposer.h(function0)) {
            i5 = 256;
        } else {
            i5 = 128;
        }
        int i8 = i4 | i5;
        if ((i8 & 147) != 146) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer.N(i8 & 1, z3)) {
            if (i7 != 0) {
                i6 = i8;
                z5 = true;
            } else {
                i6 = i8;
                z5 = z2;
            }
            ButtonKt.a(function0, SizeKt.d(SizeKt.e(Modifier.Companion.b, 52.0f), 1.0f), z5, null, null, null, null, ComposableLambdaKt.b(1430161558, new z(2, str, z5), gapComposer), gapComposer, ((i6 >> 6) & 14) | 805306416 | ((i6 << 3) & 896), 504);
            z4 = z5;
        } else {
            gapComposer.Q();
            z4 = z2;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c2(str, z4, function0, i, i2);
        }
    }

    public static final void b(ImageVector imageVector, String str, Composer composer, int i) {
        int i2;
        boolean z;
        ImageVector imageVector2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(547839077);
        if (gapComposer.f(imageVector)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i3 = i2 | i | 48;
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            imageVector2 = imageVector;
            ImageKt.b(imageVector2, "", SizeKt.k(Modifier.Companion.b, 96.0f), ColorFilter.Companion.a(((AndroidColors) gapComposer.j(AndroidColorsKt.a)).e), gapComposer, (i3 & 14) | 432, 56);
            str = "";
        } else {
            imageVector2 = imageVector;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 5, imageVector2, str);
        }
    }

    public static final void c(Function2 function2, ComposableLambdaImpl composableLambdaImpl, Function2 function22, ComposableLambdaImpl composableLambdaImpl2, ComposableLambdaImpl composableLambdaImpl3, Composer composer, int i, int i2) {
        Function2 function23;
        int i3;
        int i4;
        boolean z;
        ComposableLambdaImpl composableLambdaImpl4;
        Function2 function24;
        Modifier b;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(532216014);
        int i5 = i2 & 4;
        if (i5 != 0) {
            i3 = i | 384;
            function23 = function22;
        } else if ((i & 384) == 0) {
            function23 = function22;
            if (gapComposer.h(function23)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i3 = i4 | i;
        } else {
            function23 = function22;
            i3 = i;
        }
        if ((i3 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            if (i5 != 0) {
                function24 = null;
            } else {
                function24 = function23;
            }
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = SizeKt.c(PaddingKt.d(companion, 24.0f), 1.0f);
            ColumnMeasurePolicy a = ColumnKt.a(Arrangement.d, Alignment.Companion.n, gapComposer, 54);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, c);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
            if (function2 == null) {
                gapComposer.W(22240521);
                gapComposer.p(false);
            } else {
                gapComposer.W(22240522);
                function2.n(gapComposer, 0);
                gapComposer.p(false);
            }
            SpacerKt.a(gapComposer, SizeKt.e(companion, 16.0f));
            composableLambdaImpl.n(gapComposer, 6);
            if (function24 == null) {
                gapComposer.W(22358414);
                gapComposer.p(false);
            } else {
                gapComposer.W(22358415);
                SpacerKt.a(gapComposer, SizeKt.e(companion, 8.0f));
                function24.n(gapComposer, Integer.valueOf((i3 >> 6) & 14));
                gapComposer.p(false);
            }
            SpacerKt.a(gapComposer, SizeKt.e(companion, 32.0f));
            composableLambdaImpl2.n(gapComposer, 6);
            b = ColumnScopeInstance.a.b(true);
            SpacerKt.a(gapComposer, b);
            composableLambdaImpl4 = composableLambdaImpl3;
            composableLambdaImpl4.n(gapComposer, 6);
            gapComposer.p(true);
        } else {
            composableLambdaImpl4 = composableLambdaImpl3;
            gapComposer.Q();
            function24 = function23;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new f6(function2, composableLambdaImpl, function24, composableLambdaImpl2, composableLambdaImpl4, i, i2);
        }
    }

    public static final void d(Modifier modifier, String str, Composer composer, int i) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-530026985);
        if ((i & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            ColumnMeasurePolicy a = ColumnKt.a(Arrangement.e(16.0f), Alignment.Companion.n, gapComposer, 54);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, a, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
            ProgressIndicatorKt.b(null, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b, 0.0f, 0L, 1, gapComposer, 0, 13);
            PlatformTextKt.c(str, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).e, TextUnitKt.d(16), null, 0L, 0L, null, 0, 16777212), 0, false, 0, 0, null, gapComposer, 6, 506);
            gapComposer = gapComposer;
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 6, modifier, str);
        }
    }

    public static final void e(Modifier modifier, String str, Composer composer, int i) {
        boolean z;
        Modifier modifier2;
        int i2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1213892223);
        int i3 = i | 6;
        if ((i & 48) == 0) {
            if (gapComposer.f(str)) {
                i2 = 32;
            } else {
                i2 = 16;
            }
            i3 |= i2;
        }
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        int i4 = 2;
        if (gapComposer.N(i3 & 1, z)) {
            modifier2 = Modifier.Companion.b;
            PlatformTextKt.c(str, PaddingKt.f(modifier2, 12.0f, 0.0f, 2), TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).b, ((AndroidColors) gapComposer.j(AndroidColorsKt.a)).e, TextUnitKt.d(16), null, 0L, 0L, null, LineBreak.c, 14647292), 0, false, 0, 0, null, gapComposer, (i3 >> 3) & 14, 504);
        } else {
            gapComposer.Q();
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t2(i, i4, modifier2, str);
        }
    }

    public static final void f(AnnotatedString annotatedString, Map map, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-103193408);
        if (gapComposer.f(annotatedString)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if ((i & 48) == 0) {
            if (gapComposer.f(map)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i4 |= i3;
        }
        if ((i4 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            PlatformTextKt.b(annotatedString, null, TextStyle.a(((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).a, 0L, TextUnitKt.d(36), FontWeight.u, 0L, 0L, null, 0, 16744441), 0, false, 0, 0, map, gapComposer, (i4 & 14) | ((i4 << 21) & 234881024), 762);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t2(i, 3, annotatedString, map);
        }
    }

    public static final void g(String str, Composer composer, int i) {
        int i2;
        boolean z;
        Map map;
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-593972470);
        if ((i & 6) == 0) {
            if (gapComposer.f(str)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i2 = i3 | i;
        } else {
            i2 = i;
        }
        if ((i2 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            AnnotatedString.Builder builder = new AnnotatedString.Builder();
            builder.j.append(str);
            AnnotatedString e = builder.e();
            map = EmptyMap.j;
            f(e, map, gapComposer, 48);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new g6(str, i, 0);
        }
    }
}
