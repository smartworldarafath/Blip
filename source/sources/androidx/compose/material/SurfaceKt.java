package androidx.compose.material;

import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.material.ElevationOverlay;
import androidx.compose.material.ElevationOverlayKt;
import androidx.compose.material.InteractiveComponentSizeKt;
import androidx.compose.material.MinimumInteractiveModifier;
import androidx.compose.material.RippleKt;
import androidx.compose.material.SurfaceKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.ProvidedValue;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ClipKt;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.Shape;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.unit.Dp;
import defpackage.le;
import defpackage.q;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SurfaceKt {
    /* JADX WARN: Removed duplicated region for block: B:13:0x0041  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x0061  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x007b  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00b0  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x00ba  */
    /* JADX WARN: Removed duplicated region for block: B:52:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:55:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:62:0x011c  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x00b2  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x00a4  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x007f  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0064  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Modifier modifier, Shape shape, final long j, final long j2, float f, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        int i3;
        Shape shape2;
        int i4;
        int i5;
        int i6;
        final float f2;
        int i7;
        ComposableLambdaImpl composableLambdaImpl2;
        boolean z;
        final Shape shape3;
        RecomposeScopeImpl r;
        Shape shape4;
        final Shape shape5;
        final float f3;
        int i8;
        int i9;
        int i10;
        int i11;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(174096871);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i11 = 4;
            } else {
                i11 = 2;
            }
            i3 = i11 | i;
        } else {
            i3 = i;
        }
        int i12 = i2 & 2;
        if (i12 != 0) {
            i3 |= 48;
        } else if ((i & 48) == 0) {
            shape2 = shape;
            if (gapComposer.f(shape2)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i3 |= i4;
            if ((i & 384) == 0) {
                if (gapComposer.e(j)) {
                    i10 = 256;
                } else {
                    i10 = 128;
                }
                i3 |= i10;
            }
            if ((i & 3072) == 0) {
                if (gapComposer.e(j2)) {
                    i9 = 2048;
                } else {
                    i9 = 1024;
                }
                i3 |= i9;
            }
            if ((i2 & 16) == 0) {
                i3 |= 24576;
            } else if ((i & 24576) == 0) {
                if (gapComposer.f(null)) {
                    i5 = 16384;
                } else {
                    i5 = 8192;
                }
                i3 |= i5;
            }
            i6 = i2 & 32;
            if (i6 == 0) {
                i3 |= 196608;
            } else if ((196608 & i) == 0) {
                f2 = f;
                if (gapComposer.c(f2)) {
                    i7 = 131072;
                } else {
                    i7 = 65536;
                }
                i3 |= i7;
                if ((1572864 & i) == 0) {
                    composableLambdaImpl2 = composableLambdaImpl;
                    if (gapComposer.h(composableLambdaImpl2)) {
                        i8 = 1048576;
                    } else {
                        i8 = 524288;
                    }
                    i3 |= i8;
                } else {
                    composableLambdaImpl2 = composableLambdaImpl;
                }
                if ((599187 & i3) != 599186) {
                    z = true;
                } else {
                    z = false;
                }
                if (gapComposer.N(i3 & 1, z)) {
                    gapComposer.S();
                    if ((i & 1) != 0 && !gapComposer.x()) {
                        gapComposer.Q();
                        shape5 = shape2;
                    } else {
                        if (i12 != 0) {
                            shape4 = RectangleShapeKt.a;
                        } else {
                            shape4 = shape2;
                        }
                        if (i6 != 0) {
                            shape5 = shape4;
                            f3 = 0.0f;
                            gapComposer.q();
                            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ElevationOverlayKt.b;
                            final float f4 = ((Dp) gapComposer.j(dynamicProvidableCompositionLocal)).j + f3;
                            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
                            CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a.b(new Color(j2)), dynamicProvidableCompositionLocal.b(new Dp(f4))}, ComposableLambdaKt.b(-2004281689, new Function2() { // from class: androidx.compose.material.k
                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj, Object obj2) {
                                    boolean z2;
                                    Composer composer2 = (Composer) obj;
                                    int intValue = ((Integer) obj2).intValue();
                                    if ((intValue & 3) != 2) {
                                        z2 = true;
                                    } else {
                                        z2 = false;
                                    }
                                    GapComposer gapComposer2 = (GapComposer) composer2;
                                    boolean N = gapComposer2.N(intValue & 1, z2);
                                    Unit unit = Unit.a;
                                    if (N) {
                                        Modifier c = SurfaceKt.c(Modifier.this, shape5, SurfaceKt.d(j, (ElevationOverlay) gapComposer2.j(ElevationOverlayKt.a), f4, gapComposer2), f3);
                                        Object K = gapComposer2.K();
                                        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                        if (K == composer$Companion$Empty$1) {
                                            K = new le(25);
                                            gapComposer2.g0(K);
                                        }
                                        Modifier a = SemanticsModifierKt.a(c, false, (Function1) K);
                                        Object K2 = gapComposer2.K();
                                        if (K2 == composer$Companion$Empty$1) {
                                            K2 = SurfaceKt$Surface$1$2$1.a;
                                            gapComposer2.g0(K2);
                                        }
                                        Modifier a2 = SuspendingPointerInputFilterKt.a(a, unit, (PointerInputEventHandler) K2);
                                        MeasurePolicy d = BoxKt.d(Alignment.Companion.a, true);
                                        int a3 = ComposablesKt.a(gapComposer2);
                                        PersistentCompositionLocalMap l = gapComposer2.l();
                                        Modifier c2 = ComposedModifierKt.c(gapComposer2, a2);
                                        ComposeUiNode.b.getClass();
                                        gapComposer2.Z();
                                        if (gapComposer2.S) {
                                            gapComposer2.k(LayoutNode.b0);
                                        } else {
                                            gapComposer2.j0();
                                        }
                                        Updater.c(gapComposer2, d, ComposeUiNode.Companion.d);
                                        Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                                        if (gapComposer2.S || !Intrinsics.a(gapComposer2.K(), Integer.valueOf(a3))) {
                                            q.r(a3, gapComposer2, a3, ComposeUiNode.Companion.e);
                                        }
                                        Updater.c(gapComposer2, c2, ComposeUiNode.Companion.b);
                                        composableLambdaImpl3.n(gapComposer2, 0);
                                        gapComposer2.p(true);
                                        return unit;
                                    }
                                    gapComposer2.Q();
                                    return unit;
                                }
                            }, gapComposer), gapComposer, 56);
                            shape3 = shape5;
                            f2 = f3;
                        } else {
                            shape5 = shape4;
                        }
                    }
                    f3 = f2;
                    gapComposer.q();
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = ElevationOverlayKt.b;
                    final float f42 = ((Dp) gapComposer.j(dynamicProvidableCompositionLocal2)).j + f3;
                    final ComposableLambdaImpl composableLambdaImpl32 = composableLambdaImpl2;
                    CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a.b(new Color(j2)), dynamicProvidableCompositionLocal2.b(new Dp(f42))}, ComposableLambdaKt.b(-2004281689, new Function2() { // from class: androidx.compose.material.k
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            boolean z2;
                            Composer composer2 = (Composer) obj;
                            int intValue = ((Integer) obj2).intValue();
                            if ((intValue & 3) != 2) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            boolean N = gapComposer2.N(intValue & 1, z2);
                            Unit unit = Unit.a;
                            if (N) {
                                Modifier c = SurfaceKt.c(Modifier.this, shape5, SurfaceKt.d(j, (ElevationOverlay) gapComposer2.j(ElevationOverlayKt.a), f42, gapComposer2), f3);
                                Object K = gapComposer2.K();
                                Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
                                if (K == composer$Companion$Empty$1) {
                                    K = new le(25);
                                    gapComposer2.g0(K);
                                }
                                Modifier a = SemanticsModifierKt.a(c, false, (Function1) K);
                                Object K2 = gapComposer2.K();
                                if (K2 == composer$Companion$Empty$1) {
                                    K2 = SurfaceKt$Surface$1$2$1.a;
                                    gapComposer2.g0(K2);
                                }
                                Modifier a2 = SuspendingPointerInputFilterKt.a(a, unit, (PointerInputEventHandler) K2);
                                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, true);
                                int a3 = ComposablesKt.a(gapComposer2);
                                PersistentCompositionLocalMap l = gapComposer2.l();
                                Modifier c2 = ComposedModifierKt.c(gapComposer2, a2);
                                ComposeUiNode.b.getClass();
                                gapComposer2.Z();
                                if (gapComposer2.S) {
                                    gapComposer2.k(LayoutNode.b0);
                                } else {
                                    gapComposer2.j0();
                                }
                                Updater.c(gapComposer2, d, ComposeUiNode.Companion.d);
                                Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                                if (gapComposer2.S || !Intrinsics.a(gapComposer2.K(), Integer.valueOf(a3))) {
                                    q.r(a3, gapComposer2, a3, ComposeUiNode.Companion.e);
                                }
                                Updater.c(gapComposer2, c2, ComposeUiNode.Companion.b);
                                composableLambdaImpl32.n(gapComposer2, 0);
                                gapComposer2.p(true);
                                return unit;
                            }
                            gapComposer2.Q();
                            return unit;
                        }
                    }, gapComposer), gapComposer, 56);
                    shape3 = shape5;
                    f2 = f3;
                } else {
                    gapComposer.Q();
                    shape3 = shape2;
                }
                r = gapComposer.r();
                if (r != null) {
                    r.d = new Function2() { // from class: gg
                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj, Object obj2) {
                            ((Integer) obj2).getClass();
                            SurfaceKt.a(Modifier.this, shape3, j, j2, f2, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i | 1), i2);
                            return Unit.a;
                        }
                    };
                    return;
                }
                return;
            }
            f2 = f;
            if ((1572864 & i) == 0) {
            }
            if ((599187 & i3) != 599186) {
            }
            if (gapComposer.N(i3 & 1, z)) {
            }
            r = gapComposer.r();
            if (r != null) {
            }
        }
        shape2 = shape;
        if ((i & 384) == 0) {
        }
        if ((i & 3072) == 0) {
        }
        if ((i2 & 16) == 0) {
        }
        i6 = i2 & 32;
        if (i6 == 0) {
        }
        f2 = f;
        if ((1572864 & i) == 0) {
        }
        if ((599187 & i3) != 599186) {
        }
        if (gapComposer.N(i3 & 1, z)) {
        }
        r = gapComposer.r();
        if (r != null) {
        }
    }

    public static final void b(final Function0 function0, final Modifier modifier, final boolean z, final Shape shape, final long j, final long j2, final float f, final MutableInteractionSource mutableInteractionSource, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        Function0 function02;
        int i2;
        boolean z2;
        long j3;
        MutableInteractionSource mutableInteractionSource2;
        ComposableLambdaImpl composableLambdaImpl2;
        boolean z3;
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
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(2141308794);
        if ((i & 6) == 0) {
            function02 = function0;
            if (gapComposer.h(function02)) {
                i12 = 4;
            } else {
                i12 = 2;
            }
            i2 = i12 | i;
        } else {
            function02 = function0;
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i11 = 32;
            } else {
                i11 = 16;
            }
            i2 |= i11;
        }
        if ((i & 384) == 0) {
            z2 = z;
            if (gapComposer.g(z2)) {
                i10 = 256;
            } else {
                i10 = 128;
            }
            i2 |= i10;
        } else {
            z2 = z;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(shape)) {
                i9 = 2048;
            } else {
                i9 = 1024;
            }
            i2 |= i9;
        }
        if ((i & 24576) == 0) {
            j3 = j;
            if (gapComposer.e(j3)) {
                i8 = 16384;
            } else {
                i8 = 8192;
            }
            i2 |= i8;
        } else {
            j3 = j;
        }
        if ((196608 & i) == 0) {
            if (gapComposer.e(j2)) {
                i7 = 131072;
            } else {
                i7 = 65536;
            }
            i2 |= i7;
        }
        if ((1572864 & i) == 0) {
            if (gapComposer.f(null)) {
                i6 = 1048576;
            } else {
                i6 = 524288;
            }
            i2 |= i6;
        }
        if ((12582912 & i) == 0) {
            if (gapComposer.c(f)) {
                i5 = 8388608;
            } else {
                i5 = 4194304;
            }
            i2 |= i5;
        }
        if ((100663296 & i) == 0) {
            mutableInteractionSource2 = mutableInteractionSource;
            if (gapComposer.f(mutableInteractionSource2)) {
                i4 = 67108864;
            } else {
                i4 = 33554432;
            }
            i2 |= i4;
        } else {
            mutableInteractionSource2 = mutableInteractionSource;
        }
        if ((805306368 & i) == 0) {
            composableLambdaImpl2 = composableLambdaImpl;
            if (gapComposer.h(composableLambdaImpl2)) {
                i3 = 536870912;
            } else {
                i3 = 268435456;
            }
            i2 |= i3;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
        }
        if ((306783379 & i2) != 306783378) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (gapComposer.N(i2 & 1, z3)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            }
            gapComposer.q();
            DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = ElevationOverlayKt.b;
            final float f2 = ((Dp) gapComposer.j(dynamicProvidableCompositionLocal)).j + f;
            final Function0 function03 = function02;
            final boolean z4 = z2;
            final MutableInteractionSource mutableInteractionSource3 = mutableInteractionSource2;
            final ComposableLambdaImpl composableLambdaImpl3 = composableLambdaImpl2;
            final long j4 = j3;
            CompositionLocalKt.b(new ProvidedValue[]{ContentColorKt.a.b(new Color(j2)), dynamicProvidableCompositionLocal.b(new Dp(f2))}, ComposableLambdaKt.b(-1766606150, new Function2() { // from class: hg
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    boolean z5;
                    Composer composer2 = (Composer) obj;
                    int intValue = ((Integer) obj2).intValue();
                    if ((intValue & 3) != 2) {
                        z5 = true;
                    } else {
                        z5 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    if (gapComposer2.N(intValue & 1, z5)) {
                        StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.a;
                        Modifier a = ClickableKt.a(SurfaceKt.c(Modifier.this.l(MinimumInteractiveModifier.b), shape, SurfaceKt.d(j4, (ElevationOverlay) gapComposer2.j(ElevationOverlayKt.a), f2, gapComposer2), f), mutableInteractionSource3, RippleKt.a(7, 0L, false), z4, null, function03, 24);
                        MeasurePolicy d = BoxKt.d(Alignment.Companion.a, true);
                        int a2 = ComposablesKt.a(gapComposer2);
                        PersistentCompositionLocalMap l = gapComposer2.l();
                        Modifier c = ComposedModifierKt.c(gapComposer2, a);
                        ComposeUiNode.b.getClass();
                        gapComposer2.Z();
                        if (gapComposer2.S) {
                            gapComposer2.k(LayoutNode.b0);
                        } else {
                            gapComposer2.j0();
                        }
                        Updater.c(gapComposer2, d, ComposeUiNode.Companion.d);
                        Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                        if (gapComposer2.S || !Intrinsics.a(gapComposer2.K(), Integer.valueOf(a2))) {
                            q.r(a2, gapComposer2, a2, ComposeUiNode.Companion.e);
                        }
                        Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                        composableLambdaImpl3.n(gapComposer2, 0);
                        gapComposer2.p(true);
                    } else {
                        gapComposer2.Q();
                    }
                    return Unit.a;
                }
            }, gapComposer), gapComposer, 56);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: ig
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    SurfaceKt.b(Function0.this, modifier, z, shape, j, j2, f, mutableInteractionSource, composableLambdaImpl, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final Modifier c(Modifier modifier, Shape shape, long j, float f) {
        return ClipKt.a(BackgroundKt.b(ShadowKt.a(modifier, f, shape, 0L, 24).l(Modifier.Companion.b), j, shape), shape);
    }

    public static final long d(long j, ElevationOverlay elevationOverlay, float f, GapComposer gapComposer) {
        if (Color.c(j, MaterialTheme.a(gapComposer).f()) && elevationOverlay != null) {
            gapComposer.W(-1124614454);
            long a = ((DefaultElevationOverlay) elevationOverlay).a(j, f, gapComposer, 0);
            gapComposer.p(false);
            return a;
        }
        gapComposer.W(-1124546347);
        gapComposer.p(false);
        return j;
    }
}
