package net.blip.android.ui.navigation;

import android.content.Context;
import android.os.Build;
import android.view.Display;
import android.view.RoundedCorner;
import androidx.compose.animation.AnimatedContentTransitionScope;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.core.CubicBezierEasing;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.navigation.NavBackStackEntry;
import androidx.navigation.NavController;
import androidx.navigation.NavDestination;
import androidx.navigation.NavHostController;
import androidx.navigation.compose.NavHostKt;
import defpackage.a0;
import defpackage.b;
import defpackage.c0;
import defpackage.g3;
import defpackage.qi;
import defpackage.x9;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.FlowKt;
import net.blip.android.ui.navigation.NavigationRootKt;
import net.blip.libblip.Logger;
import net.blip.libblip.LoggerKt;
import net.blip.libblip.State_DerivedKt;
import net.blip.libblip.frontend.State;
import net.blip.shared.ProvideSharedCompositionLocalsKt;
import racra.compose.smooth_corner_rect_library.AbsoluteSmoothCornerShape;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NavigationRootKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new x9(21));

    /* JADX WARN: Removed duplicated region for block: B:32:0x0089  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x00a8  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00e3  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0101  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0120  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x010c  */
    /* JADX WARN: Removed duplicated region for block: B:60:0x00cf  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0094  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        boolean z;
        RoundedCorner roundedCorner;
        Dp dp;
        float f;
        RoundedCorner roundedCorner2;
        Dp dp2;
        float f2;
        RoundedCorner roundedCorner3;
        Dp dp3;
        float f3;
        RoundedCorner roundedCorner4;
        Dp dp4;
        Shape shape;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-848072155);
        if ((i & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i & 1, z)) {
            gapComposer.W(-78272625);
            float f4 = 0.0f;
            if (Build.VERSION.SDK_INT < 31) {
                shape = RoundedCornerShapeKt.b(0.0f);
                gapComposer.p(false);
            } else {
                Display b = qi.b((Context) gapComposer.j(AndroidCompositionLocals_androidKt.b));
                b.getClass();
                roundedCorner = b.getRoundedCorner(0);
                Dp dp5 = null;
                if (roundedCorner == null) {
                    gapComposer.W(347893194);
                    gapComposer.p(false);
                    dp = null;
                } else {
                    gapComposer.W(2089432343);
                    float d = d(roundedCorner, gapComposer);
                    gapComposer.p(false);
                    dp = new Dp(d);
                }
                if (dp != null) {
                    float f5 = dp.j - 4.0f;
                    Dp dp6 = new Dp(f5);
                    if (Dp.a(f5, 0.0f) < 0) {
                        dp6 = null;
                    }
                    if (dp6 != null) {
                        f = dp6.j;
                        roundedCorner2 = b.getRoundedCorner(1);
                        if (roundedCorner2 != null) {
                            gapComposer.W(348026122);
                            gapComposer.p(false);
                            dp2 = null;
                        } else {
                            gapComposer.W(2089436631);
                            float d2 = d(roundedCorner2, gapComposer);
                            gapComposer.p(false);
                            dp2 = new Dp(d2);
                        }
                        if (dp2 != null) {
                            float f6 = dp2.j - 4.0f;
                            Dp dp7 = new Dp(f6);
                            if (Dp.a(f6, 0.0f) < 0) {
                                dp7 = null;
                            }
                            if (dp7 != null) {
                                f2 = dp7.j;
                                roundedCorner3 = b.getRoundedCorner(3);
                                if (roundedCorner3 == null) {
                                    gapComposer.W(348163018);
                                    gapComposer.p(false);
                                    dp3 = null;
                                } else {
                                    gapComposer.W(2089441047);
                                    float d3 = d(roundedCorner3, gapComposer);
                                    gapComposer.p(false);
                                    dp3 = new Dp(d3);
                                }
                                if (dp3 != null) {
                                    float f7 = dp3.j - 4.0f;
                                    Dp dp8 = new Dp(f7);
                                    if (Dp.a(f7, 0.0f) < 0) {
                                        dp8 = null;
                                    }
                                    if (dp8 != null) {
                                        f3 = dp8.j;
                                        roundedCorner4 = b.getRoundedCorner(2);
                                        if (roundedCorner4 != null) {
                                            gapComposer.W(348301898);
                                            gapComposer.p(false);
                                            dp4 = null;
                                        } else {
                                            gapComposer.W(2089445527);
                                            float d4 = d(roundedCorner4, gapComposer);
                                            gapComposer.p(false);
                                            dp4 = new Dp(d4);
                                        }
                                        if (dp4 != null) {
                                            float f8 = dp4.j - 4.0f;
                                            Dp dp9 = new Dp(f8);
                                            if (Dp.a(f8, 0.0f) >= 0) {
                                                dp5 = dp9;
                                            }
                                            if (dp5 != null) {
                                                f4 = dp5.j;
                                            }
                                        }
                                        AbsoluteSmoothCornerShape absoluteSmoothCornerShape = new AbsoluteSmoothCornerShape(f, 20, f2, 20, f4, 20, f3, 20);
                                        gapComposer.p(false);
                                        shape = absoluteSmoothCornerShape;
                                    }
                                }
                                f3 = 0.0f;
                                roundedCorner4 = b.getRoundedCorner(2);
                                if (roundedCorner4 != null) {
                                }
                                if (dp4 != null) {
                                }
                                AbsoluteSmoothCornerShape absoluteSmoothCornerShape2 = new AbsoluteSmoothCornerShape(f, 20, f2, 20, f4, 20, f3, 20);
                                gapComposer.p(false);
                                shape = absoluteSmoothCornerShape2;
                            }
                        }
                        f2 = 0.0f;
                        roundedCorner3 = b.getRoundedCorner(3);
                        if (roundedCorner3 == null) {
                        }
                        if (dp3 != null) {
                        }
                        f3 = 0.0f;
                        roundedCorner4 = b.getRoundedCorner(2);
                        if (roundedCorner4 != null) {
                        }
                        if (dp4 != null) {
                        }
                        AbsoluteSmoothCornerShape absoluteSmoothCornerShape22 = new AbsoluteSmoothCornerShape(f, 20, f2, 20, f4, 20, f3, 20);
                        gapComposer.p(false);
                        shape = absoluteSmoothCornerShape22;
                    }
                }
                f = 0.0f;
                roundedCorner2 = b.getRoundedCorner(1);
                if (roundedCorner2 != null) {
                }
                if (dp2 != null) {
                }
                f2 = 0.0f;
                roundedCorner3 = b.getRoundedCorner(3);
                if (roundedCorner3 == null) {
                }
                if (dp3 != null) {
                }
                f3 = 0.0f;
                roundedCorner4 = b.getRoundedCorner(2);
                if (roundedCorner4 != null) {
                }
                if (dp4 != null) {
                }
                AbsoluteSmoothCornerShape absoluteSmoothCornerShape222 = new AbsoluteSmoothCornerShape(f, 20, f2, 20, f4, 20, f3, 20);
                gapComposer.p(false);
                shape = absoluteSmoothCornerShape222;
            }
            Modifier a2 = ClipKt.a(Modifier.Companion.b, shape);
            MeasurePolicy d5 = BoxKt.d(Alignment.Companion.a, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, a2);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d5, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            composableLambdaImpl.n(gapComposer, 6);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new c0(composableLambdaImpl, i, 9);
        }
    }

    public static final void b(NavHostController navHostController, Composer composer, int i) {
        int i2;
        boolean z;
        RecomposeScopeImpl recomposeScopeImpl;
        g3 g3Var;
        NavDestination navDestination;
        String str;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(157936552);
        int i3 = 4;
        if (gapComposer.h(navHostController)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if ((i4 & 3) != 2) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            State b = ProvideSharedCompositionLocalsKt.b(ProvideSharedCompositionLocalsKt.d, gapComposer);
            NavBackStackEntry navBackStackEntry = (NavBackStackEntry) SnapshotStateKt.a(FlowKt.a(navHostController.b.A), null, null, gapComposer, 48, 2).getValue();
            if (navBackStackEntry != null && (navDestination = navBackStackEntry.k) != null && (str = navDestination.k.e) != null) {
                if (!State_DerivedKt.c(b) && !str.equals("onboarding")) {
                    Logger logger = LoggerKt.a;
                    NavDestination f = navHostController.b.f();
                    logger.getClass();
                    Logger.h("Navigating to SetupScreenDestination from " + f, new Pair[0]);
                    NavController.b(navHostController, "onboarding");
                }
                if (State_DerivedKt.c(b) && str.equals("onboarding")) {
                    LoggerKt.a.getClass();
                    Logger.h("Navigating to RootScreenDestination from ".concat(str), new Pair[0]);
                    NavController.b(navHostController, "home");
                }
            } else {
                recomposeScopeImpl = gapComposer.r();
                if (recomposeScopeImpl != null) {
                    g3Var = new g3(navHostController, i, 3);
                    recomposeScopeImpl.d = g3Var;
                }
                return;
            }
        } else {
            gapComposer.Q();
        }
        recomposeScopeImpl = gapComposer.r();
        if (recomposeScopeImpl != null) {
            g3Var = new g3(navHostController, i, i3);
            recomposeScopeImpl.d = g3Var;
        }
    }

    public static final void c(NavHostController navHostController, Function0 function0, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        final NavHostController navHostController2;
        final Function0 function02;
        navHostController.getClass();
        function0.getClass();
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-260492822);
        if (gapComposer.h(navHostController)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(function0)) {
            i3 = 32;
        } else {
            i3 = 16;
        }
        int i5 = i4 | i3;
        if ((i5 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i5 & 1, z)) {
            final State b = ProvideSharedCompositionLocalsKt.b(ProvideSharedCompositionLocalsKt.d, gapComposer);
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = SnapshotStateKt.g(new Color(Color.g));
                gapComposer.g0(K);
            }
            final MutableState mutableState = (MutableState) K;
            final CubicBezierEasing cubicBezierEasing = new CubicBezierEasing(0.2f, 0.65f, 0.4f, 1.0f);
            final MutableState a2 = SnapshotStateKt.a(FlowKt.a(navHostController.b.A), null, null, gapComposer, 48, 2);
            function02 = function0;
            navHostController2 = navHostController;
            CompositionLocalKt.a(a.b(navHostController), ComposableLambdaKt.b(-1109178710, new Function2() { // from class: net.blip.android.ui.navigation.a
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    boolean z2;
                    String str;
                    String str2;
                    NavDestination navDestination;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = NavigationRootKt.a;
                    final int i6 = 0;
                    final int i7 = 1;
                    if ((intValue & 3) != 2) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.N(intValue & 1, z2)) {
                        MutableState mutableState2 = mutableState;
                        Modifier c = SizeKt.c(BackgroundKt.b(Modifier.Companion.b, ((Color) mutableState2.getValue()).a, RectangleShapeKt.a), 1.0f);
                        if (!State_DerivedKt.c(State.this)) {
                            str = "onboarding";
                        } else {
                            str = "home";
                        }
                        String str3 = str;
                        Object K2 = gapComposer2.K();
                        final CubicBezierEasing cubicBezierEasing2 = cubicBezierEasing;
                        Object obj3 = Composer.Companion.a;
                        if (K2 == obj3) {
                            K2 = new Function1() { // from class: bc
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj4) {
                                    int i8 = i6;
                                    CubicBezierEasing cubicBezierEasing3 = cubicBezierEasing2;
                                    AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj4;
                                    switch (i8) {
                                        case 0:
                                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = NavigationRootKt.a;
                                            animatedContentTransitionScope.getClass();
                                            return EnterExitTransitionKt.e(new TweenSpec(280, 140, cubicBezierEasing3), 0.94f, TransformOrigin.b).a(EnterExitTransitionKt.c(new TweenSpec(200, 140, EasingKt.c), 2));
                                        default:
                                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = NavigationRootKt.a;
                                            animatedContentTransitionScope.getClass();
                                            return EnterExitTransitionKt.f(0.94f, TransformOrigin.b, new TweenSpec(280, 0, cubicBezierEasing3)).a(EnterExitTransitionKt.d(new TweenSpec(200, 0, EasingKt.c), 2));
                                    }
                                }
                            };
                            gapComposer2.g0(K2);
                        }
                        Function1 function1 = (Function1) K2;
                        Object K3 = gapComposer2.K();
                        if (K3 == obj3) {
                            K3 = new Function1() { // from class: bc
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj4) {
                                    int i8 = i7;
                                    CubicBezierEasing cubicBezierEasing3 = cubicBezierEasing2;
                                    AnimatedContentTransitionScope animatedContentTransitionScope = (AnimatedContentTransitionScope) obj4;
                                    switch (i8) {
                                        case 0:
                                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = NavigationRootKt.a;
                                            animatedContentTransitionScope.getClass();
                                            return EnterExitTransitionKt.e(new TweenSpec(280, 140, cubicBezierEasing3), 0.94f, TransformOrigin.b).a(EnterExitTransitionKt.c(new TweenSpec(200, 140, EasingKt.c), 2));
                                        default:
                                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal3 = NavigationRootKt.a;
                                            animatedContentTransitionScope.getClass();
                                            return EnterExitTransitionKt.f(0.94f, TransformOrigin.b, new TweenSpec(280, 0, cubicBezierEasing3)).a(EnterExitTransitionKt.d(new TweenSpec(200, 0, EasingKt.c), 2));
                                    }
                                }
                            };
                            gapComposer2.g0(K3);
                        }
                        Function1 function12 = (Function1) K3;
                        NavHostController navHostController3 = navHostController2;
                        boolean h = gapComposer2.h(navHostController3);
                        Object obj4 = function02;
                        boolean f = h | gapComposer2.f(obj4);
                        Object K4 = gapComposer2.K();
                        if (f || K4 == obj3) {
                            K4 = new b(29, navHostController3, obj4);
                            gapComposer2.g0(K4);
                        }
                        NavHostKt.b(navHostController3, str3, c, null, function1, function12, null, null, null, null, (Function1) K4, gapComposer2, 1769472);
                        NavBackStackEntry navBackStackEntry = (NavBackStackEntry) a2.getValue();
                        if (navBackStackEntry != null && (navDestination = navBackStackEntry.k) != null) {
                            str2 = navDestination.k.e;
                        } else {
                            str2 = null;
                        }
                        Object K5 = gapComposer2.K();
                        if (K5 == obj3) {
                            K5 = SnapshotStateKt.g(null);
                            gapComposer2.g0(K5);
                        }
                        MutableState mutableState3 = (MutableState) K5;
                        boolean f2 = gapComposer2.f(str2);
                        Object K6 = gapComposer2.K();
                        if (f2 || K6 == obj3) {
                            K6 = new NavigationRootKt$NavigationRoot$1$4$1(str2, mutableState3, mutableState2, null);
                            gapComposer2.g0(K6);
                        }
                        EffectsKt.e(gapComposer2, str2, (Function2) K6);
                    } else {
                        gapComposer2.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer), gapComposer, 48);
            b(navHostController2, gapComposer, i5 & 14);
        } else {
            navHostController2 = navHostController;
            function02 = function0;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(i, 19, navHostController2, function02);
        }
    }

    public static final float d(RoundedCorner roundedCorner, Composer composer) {
        int radius;
        radius = roundedCorner.getRadius();
        return radius / ((Density) ((GapComposer) composer).j(CompositionLocalsKt.h)).getDensity();
    }
}
