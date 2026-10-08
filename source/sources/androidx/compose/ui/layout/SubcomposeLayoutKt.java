package androidx.compose.ui.layout;

import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.Updater;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.SubcomposeLayoutKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import defpackage.b1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SubcomposeLayoutKt {
    public static final SubcomposeLayoutKt$ReusedSlotId$1 a = new Object();
    public static final Object b = new Object();

    public static final void a(final Modifier modifier, final Function2 function2, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        boolean z;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1298353104);
        int i6 = i2 & 1;
        if (i6 != 0) {
            i3 = i | 6;
        } else if ((i & 6) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i3 = i4 | i;
        } else {
            i3 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function2)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i3 |= i5;
        }
        if ((i3 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i3 & 1, z)) {
            if (i6 != 0) {
                modifier = Modifier.Companion.b;
            }
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = new SubcomposeLayoutState(NoOpSubcomposeSlotReusePolicy.a);
                gapComposer.g0(K);
            }
            b((SubcomposeLayoutState) K, modifier, function2, gapComposer, (i3 << 3) & 1008);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2() { // from class: eg
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Integer) obj2).getClass();
                    int a2 = RecomposeScopeImplKt.a(i | 1);
                    SubcomposeLayoutKt.a(Modifier.this, function2, (Composer) obj, a2, i2);
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(SubcomposeLayoutState subcomposeLayoutState, Modifier modifier, Function2 function2, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-511989831);
        if ((i & 6) == 0) {
            if (gapComposer.h(subcomposeLayoutState)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i2 |= i4;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(function2)) {
                i3 = 256;
            } else {
                i3 = 128;
            }
            i2 |= i3;
        }
        if ((i2 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            int hashCode = Long.hashCode(gapComposer.T);
            GapComposer.CompositionContextImpl b2 = ComposablesKt.b(gapComposer);
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            PersistentCompositionLocalMap l = gapComposer.l();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, subcomposeLayoutState, subcomposeLayoutState.c);
            Updater.c(gapComposer, b2, subcomposeLayoutState.d);
            Updater.c(gapComposer, function2, subcomposeLayoutState.e);
            ComposeUiNode.b.getClass();
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            gapComposer.p(true);
            if (!gapComposer.z()) {
                gapComposer.W(-1259245908);
                boolean h = gapComposer.h(subcomposeLayoutState);
                Object K = gapComposer.K();
                if (h || K == Composer.Companion.a) {
                    K = new a(1, subcomposeLayoutState);
                    gapComposer.g0(K);
                }
                EffectsKt.g((Function0) K, gapComposer);
                gapComposer.p(false);
            } else {
                gapComposer.W(-1259187287);
                gapComposer.p(false);
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(subcomposeLayoutState, modifier, function2, i, 14);
        }
    }
}
