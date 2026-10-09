package net.blip.android.ui.home;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.AnimatedVisibilityScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.ExitTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ImageKt;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.focus.FocusRequester;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.ColorFilter;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.painter.Painter;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.res.PainterResources_androidKt;
import androidx.compose.ui.text.TextStyle;
import androidx.compose.ui.text.font.FontWeight;
import androidx.compose.ui.unit.Density;
import defpackage.e6;
import defpackage.o9;
import defpackage.q;
import defpackage.r0;
import defpackage.x9;
import defpackage.z6;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.math.MathKt;
import net.blip.android.R;
import net.blip.android.ui.androidtheme.AndroidColors;
import net.blip.android.ui.androidtheme.AndroidColorsKt;
import net.blip.android.ui.androidtheme.AndroidTextStyles;
import net.blip.android.ui.androidtheme.AndroidTextStylesKt;
import net.blip.android.ui.components.SearchFieldKt;
import net.blip.android.ui.home.HomeTopBarKt;
import net.blip.shared.LightDarkThemeKt;
import net.blip.shared.PlatformTextKt;
import racra.compose.smooth_corner_rect_library.AbsoluteSmoothCornerShape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HomeTopBarKt {
    public static final void a(int i, Composer composer) {
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-14472283);
        if (i != 0) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            RowMeasurePolicy a = RowKt.a(Arrangement.e(10.0f), Alignment.Companion.k, gapComposer, 54);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier c = ComposedModifierKt.c(gapComposer, companion);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            boolean z2 = gapComposer.S;
            x9 x9Var = LayoutNode.b0;
            if (z2) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            e6 e6Var = ComposeUiNode.Companion.d;
            Updater.c(gapComposer, a, e6Var);
            e6 e6Var2 = ComposeUiNode.Companion.c;
            Updater.c(gapComposer, l, e6Var2);
            Integer valueOf = Integer.valueOf(hashCode);
            e6 e6Var3 = ComposeUiNode.Companion.e;
            Updater.c(gapComposer, valueOf, e6Var3);
            Updater.b(gapComposer);
            e6 e6Var4 = ComposeUiNode.Companion.b;
            Updater.c(gapComposer, c, e6Var4);
            Modifier l2 = SizeKt.l(ClipKt.a(companion, new AbsoluteSmoothCornerShape(10.0f, 120, 10.0f, 120, 10.0f, 120, 10.0f, 120)), 34.0f, 34.0f);
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = AndroidColorsKt.a;
            Modifier b = BackgroundKt.b(l2, ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b, RectangleShapeKt.a);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.e, false);
            int hashCode2 = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l3 = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, b);
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(x9Var);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, e6Var);
            Updater.c(gapComposer, l3, e6Var2);
            q.s(hashCode2, gapComposer, e6Var3, gapComposer);
            Updater.c(gapComposer, c2, e6Var4);
            Modifier k = SizeKt.k(companion, 20.0f);
            Painter a2 = PainterResources_androidKt.a(R.drawable.ic_logo, gapComposer);
            long j = Color.d;
            ImageKt.a(a2, "logo", k, null, null, 0.0f, ColorFilter.Companion.a(j), gapComposer, 1573304, 56);
            gapComposer.p(true);
            TextStyle textStyle = ((AndroidTextStyles) gapComposer.j(AndroidTextStylesKt.a)).a;
            if (LightDarkThemeKt.a(gapComposer)) {
                gapComposer.W(1517051623);
                j = ((AndroidColors) gapComposer.j(dynamicProvidableCompositionLocal)).b;
            } else {
                gapComposer.W(1517052198);
            }
            gapComposer.p(false);
            PlatformTextKt.c("Blip", null, TextStyle.a(textStyle, j, ((Density) gapComposer.j(CompositionLocalsKt.h)).x(24.0f), FontWeight.u, 0L, 0L, null, 0, 16777208), 0, false, 0, 0, null, gapComposer, 6, 506);
            gapComposer = gapComposer;
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new z6(i, 7);
        }
    }

    public static final void b(final Modifier modifier, final boolean z, final Function0 function0, Function0 function02, final Function1 function1, final String str, final boolean z2, final boolean z3, final Function0 function03, final Function0 function04, final Function0 function05, Composer composer, final int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        boolean z4;
        final Function0 function06;
        function0.getClass();
        function02.getClass();
        function1.getClass();
        str.getClass();
        function03.getClass();
        function04.getClass();
        function05.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1904083139);
        char c = 4;
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i9 = i | i2;
        if (gapComposer.g(z)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i10 = i9 | i3;
        if (gapComposer.h(function1)) {
            i4 = 16384;
        } else {
            i4 = 8192;
        }
        int i11 = i10 | i4;
        if (gapComposer.f(str)) {
            i5 = 131072;
        } else {
            i5 = 65536;
        }
        int i12 = i11 | i5;
        if (gapComposer.g(z2)) {
            i6 = 1048576;
        } else {
            i6 = 524288;
        }
        int i13 = i12 | i6;
        if (gapComposer.g(z3)) {
            i7 = 8388608;
        } else {
            i7 = 4194304;
        }
        int i14 = i13 | i7;
        if (gapComposer.h(function04)) {
            i8 = 536870912;
        } else {
            i8 = 268435456;
        }
        int i15 = i14 | i8;
        if (!gapComposer.h(function05)) {
            c = 2;
        }
        if ((306783379 & i15) == 306783378 && (c & 3) == 2) {
            z4 = false;
        } else {
            z4 = true;
        }
        if (gapComposer.N(i15 & 1, z4)) {
            int b = MathKt.b(((Density) gapComposer.j(CompositionLocalsKt.h)).getDensity() * 44.0f);
            Modifier b2 = ClipKt.b(modifier);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c2 = ComposedModifierKt.c(gapComposer, b2);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
            boolean z5 = !z;
            EnterTransition c3 = EnterExitTransitionKt.c(c(), 2);
            SpringSpec c4 = c();
            boolean d2 = gapComposer.d(b);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (d2 || K == composer$Companion$Empty$1) {
                K = new r0(b, 6);
                gapComposer.g0(K);
            }
            EnterTransition a = c3.a(EnterExitTransitionKt.i(c4, (Function1) K));
            ExitTransition d3 = EnterExitTransitionKt.d(c(), 2);
            SpringSpec c5 = c();
            boolean d4 = gapComposer.d(b);
            Object K2 = gapComposer.K();
            if (d4 || K2 == composer$Companion$Empty$1) {
                K2 = new r0(b, 7);
                gapComposer.g0(K2);
            }
            AnimatedVisibilityKt.b(z5, null, a, d3.a(EnterExitTransitionKt.k(c5, (Function1) K2)), null, ComposableLambdaKt.b(-1414884319, new o9(function0, function03, z3, function04, function05), gapComposer), gapComposer, 196608);
            EnterTransition c6 = EnterExitTransitionKt.c(c(), 2);
            SpringSpec c7 = c();
            boolean d5 = gapComposer.d(b);
            Object K3 = gapComposer.K();
            if (d5 || K3 == composer$Companion$Empty$1) {
                K3 = new r0(b, 5);
                gapComposer.g0(K3);
            }
            EnterTransition a2 = c6.a(EnterExitTransitionKt.i(c7, (Function1) K3));
            ExitTransition d6 = EnterExitTransitionKt.d(c(), 2);
            SpringSpec c8 = c();
            boolean d7 = gapComposer.d(b);
            Object K4 = gapComposer.K();
            if (d7 || K4 == composer$Companion$Empty$1) {
                K4 = new r0(b, 5);
                gapComposer.g0(K4);
            }
            function06 = function02;
            AnimatedVisibilityKt.b(z, null, a2, d6.a(EnterExitTransitionKt.k(c8, (Function1) K4)), null, ComposableLambdaKt.b(235983448, new Function3() { // from class: net.blip.android.ui.home.f
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    boolean z6;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    ((AnimatedVisibilityScope) obj).getClass();
                    if ((intValue & 17) != 16) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    boolean N = gapComposer2.N(intValue & 1, z6);
                    Unit unit = Unit.a;
                    if (N) {
                        Object K5 = gapComposer2.K();
                        Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
                        if (K5 == composer$Companion$Empty$12) {
                            K5 = new FocusRequester();
                            gapComposer2.g0(K5);
                        }
                        FocusRequester focusRequester = (FocusRequester) K5;
                        Object K6 = gapComposer2.K();
                        if (K6 == composer$Companion$Empty$12) {
                            K6 = new HomeTopBarKt$HomeTopBar$1$6$1$1(focusRequester, null);
                            gapComposer2.g0(K6);
                        }
                        EffectsKt.e(gapComposer2, unit, (Function2) K6);
                        Object K7 = gapComposer2.K();
                        if (K7 == composer$Companion$Empty$12) {
                            K7 = SnapshotStateKt.g(Boolean.FALSE);
                            gapComposer2.g0(K7);
                        }
                        MutableState mutableState = (MutableState) K7;
                        Function0 function07 = function06;
                        boolean f = gapComposer2.f(function07);
                        Object K8 = gapComposer2.K();
                        if (f || K8 == composer$Companion$Empty$12) {
                            K8 = new defpackage.b(18, function07, mutableState);
                            gapComposer2.g0(K8);
                        }
                        SearchFieldKt.a(null, str, "Search for someone to send to", false, z2, focusRequester, function1, (Function1) K8, gapComposer2, 196992, 9);
                        return unit;
                    }
                    gapComposer2.Q();
                    return unit;
                }
            }, gapComposer), gapComposer, ((i15 >> 3) & 14) | 196608);
            gapComposer.p(true);
        } else {
            function06 = function02;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Function0 function07 = function06;
            r.d = new Function2(z, function0, function07, function1, str, z2, z3, function03, function04, function05, i) { // from class: p9
                public final /* synthetic */ boolean k;
                public final /* synthetic */ Function0 l;
                public final /* synthetic */ Function0 m;
                public final /* synthetic */ Function1 n;
                public final /* synthetic */ String o;
                public final /* synthetic */ boolean p;
                public final /* synthetic */ boolean q;
                public final /* synthetic */ Function0 r;
                public final /* synthetic */ Function0 s;
                public final /* synthetic */ Function0 t;

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a3 = RecomposeScopeImplKt.a(100666753);
                    HomeTopBarKt.b(Modifier.this, this.k, this.l, this.m, this.n, this.o, this.p, this.q, this.r, this.s, this.t, (Composer) obj, a3);
                    return Unit.a;
                }
            };
        }
    }

    public static final SpringSpec c() {
        return AnimationSpecKt.b(0.0f, 400.0f, null, 5);
    }
}
