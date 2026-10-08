package net.blip.shared;

import androidx.compose.animation.core.AnimateAsStateKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScope;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.State;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifierKt;
import androidx.compose.ui.graphics.ColorMatrixColorFilter;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import defpackage.c0;
import defpackage.j6;
import defpackage.ma;
import defpackage.u7;
import defpackage.v7;
import defpackage.w7;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DisabledContentKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new j6(15));

    public static final void a(Modifier modifier, final boolean z, final ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z2;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(350219519);
        if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.g(z)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i2 & 1, z2)) {
            FocusBlockerKt.a(modifier, !z, ComposableLambdaKt.b(-1629728857, new Function3() { // from class: net.blip.shared.b
                @Override // kotlin.jvm.functions.Function3
                public final Object f(Object obj, Object obj2, Object obj3) {
                    boolean z3;
                    int i6;
                    BoxScope boxScope = (BoxScope) obj;
                    Composer composer2 = (Composer) obj2;
                    int intValue = ((Integer) obj3).intValue();
                    DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal = DisabledContentKt.a;
                    boxScope.getClass();
                    if ((intValue & 6) == 0) {
                        if (((GapComposer) composer2).f(boxScope)) {
                            i6 = 4;
                        } else {
                            i6 = 2;
                        }
                        intValue |= i6;
                    }
                    if ((intValue & 19) != 18) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    GapComposer gapComposer2 = (GapComposer) composer2;
                    boolean N = gapComposer2.N(intValue & 1, z3);
                    Unit unit = Unit.a;
                    if (N) {
                        DynamicProvidableCompositionLocal dynamicProvidableCompositionLocal2 = DisabledContentKt.a;
                        boolean z4 = z;
                        CompositionLocalKt.a(dynamicProvidableCompositionLocal2.b(Boolean.valueOf(z4)), ComposableLambdaKt.b(-340426009, new c0(composableLambdaImpl, 4, (byte) 0), gapComposer2), gapComposer2, 56);
                        Modifier b = boxScope.b(Modifier.Companion.b);
                        b.getClass();
                        if (z4) {
                            b = SuspendingPointerInputFilterKt.a(b, unit, Modifier_DisablePointerInputKt$disablePointerInput$1$1.a);
                        }
                        BoxKt.a(b, gapComposer2, 0);
                    } else {
                        gapComposer2.Q();
                    }
                    return unit;
                }
            }, gapComposer), gapComposer, (i2 & 14) | 384);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new w7(modifier, z, composableLambdaImpl, i, 0);
        }
    }

    public static final void b(Modifier modifier, boolean z, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z2;
        float f;
        float f2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1011869993);
        int i3 = i | 6;
        if (gapComposer.g(z)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i4 = i3 | i2;
        if ((i4 & 147) != 146) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i4 & 1, z2)) {
            if (z) {
                f = 0.3f;
            } else {
                f = 1.0f;
            }
            State b = AnimateAsStateKt.b(f, null, gapComposer, 3072, 22);
            if (z) {
                f2 = 0.5f;
            } else {
                f2 = 1.0f;
            }
            State b2 = AnimateAsStateKt.b(f2, null, gapComposer, 3072, 22);
            boolean f3 = gapComposer.f(b);
            Object K = gapComposer.K();
            if (f3 || K == Composer.Companion.a) {
                K = new u7(b, 0);
                gapComposer.g0(K);
            }
            Modifier.Companion companion = Modifier.Companion.b;
            Modifier a2 = GraphicsLayerModifierKt.a(companion, (Function1) K);
            if (((Number) b2.getValue()).floatValue() < 1.0f) {
                ColorMatrixColorFilter a3 = Modifier_ColorFilterKt.a(((Number) b2.getValue()).floatValue());
                a2.getClass();
                a2 = DrawModifierKt.c(a2, new ma(2, a3));
            }
            a(a2, z, composableLambdaImpl, gapComposer, i4 & 1008);
            modifier = companion;
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new v7(modifier, z, composableLambdaImpl, i);
        }
    }
}
