package androidx.compose.ui.window;

import android.view.View;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.a0;
import defpackage.a1;
import defpackage.b1;
import defpackage.n;
import java.util.UUID;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidDialog_androidKt {
    public static final void a(final Function0 function0, final DialogProperties dialogProperties, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(826668973);
        if ((i & 6) == 0) {
            if (gapComposer.h(function0)) {
                i5 = 4;
            } else {
                i5 = 2;
            }
            i2 = i5 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(dialogProperties)) {
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
        int i6 = i2;
        int i7 = 0;
        if ((i6 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i6 & 1, z)) {
            View view = (View) gapComposer.j(AndroidCompositionLocals_androidKt.f);
            Density density = (Density) gapComposer.j(CompositionLocalsKt.h);
            final LayoutDirection layoutDirection = (LayoutDirection) gapComposer.j(CompositionLocalsKt.n);
            GapComposer.CompositionContextImpl b = ComposablesKt.b(gapComposer);
            MutableState k = SnapshotStateKt.k(composableLambdaImpl, gapComposer);
            Object[] objArr = new Object[0];
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = new n(8);
                gapComposer.g0(K);
            }
            UUID uuid = (UUID) RememberSaveableKt.c(objArr, (Function0) K, gapComposer);
            boolean d = gapComposer.d(dialogProperties.g) | gapComposer.f(view) | gapComposer.f(density) | gapComposer.f(null);
            Object K2 = gapComposer.K();
            if (!d && K2 != composer$Companion$Empty$1) {
                z2 = true;
            } else {
                DialogWrapper dialogWrapper = new DialogWrapper(function0, dialogProperties, view, layoutDirection, density, uuid);
                z2 = true;
                ComposableLambdaImpl composableLambdaImpl2 = new ComposableLambdaImpl(-1338939603, true, new a1(k, i7));
                DialogLayout dialogLayout = dialogWrapper.r;
                dialogLayout.setParentCompositionContext(b);
                ((SnapshotMutableStateImpl) dialogLayout.u).setValue(composableLambdaImpl2);
                dialogLayout.y = true;
                dialogLayout.d();
                gapComposer.g0(dialogWrapper);
                K2 = dialogWrapper;
            }
            final DialogWrapper dialogWrapper2 = (DialogWrapper) K2;
            boolean h = gapComposer.h(dialogWrapper2);
            Object K3 = gapComposer.K();
            if (h || K3 == composer$Companion$Empty$1) {
                K3 = new a(dialogWrapper2, 0);
                gapComposer.g0(K3);
            }
            EffectsKt.c(dialogWrapper2, (Function1) K3, gapComposer);
            boolean h2 = gapComposer.h(dialogWrapper2);
            if ((i6 & 14) == 4) {
                z3 = z2;
            } else {
                z3 = false;
            }
            boolean z4 = h2 | z3;
            if ((i6 & 112) != 32) {
                z2 = false;
            }
            boolean d2 = z4 | z2 | gapComposer.d(layoutDirection.ordinal());
            Object K4 = gapComposer.K();
            if (d2 || K4 == composer$Companion$Empty$1) {
                K4 = new Function0() { // from class: androidx.compose.ui.window.b
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        DialogWrapper.this.i(function0, dialogProperties, layoutDirection);
                        return Unit.a;
                    }
                };
                gapComposer.g0(K4);
            }
            EffectsKt.g((Function0) K4, gapComposer);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(function0, dialogProperties, composableLambdaImpl, i, 0);
        }
    }

    public static final void b(Modifier modifier, Function2 function2, Composer composer, int i) {
        int i2;
        int i3;
        boolean z;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1090521195);
        if (gapComposer.f(modifier)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i4 = i2 | i;
        if (gapComposer.h(function2)) {
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
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = AndroidDialog_androidKt$DialogLayout$1$1.a;
                gapComposer.g0(K);
            }
            MeasurePolicy measurePolicy = (MeasurePolicy) K;
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            ComposeUiNode.b.getClass();
            int i6 = (((((i5 << 3) & 112) | (((i5 >> 3) & 14) | 384)) << 6) & 896) | 6;
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, measurePolicy, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            Updater.c(gapComposer, Integer.valueOf(hashCode), ComposeUiNode.Companion.e);
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            function2.n(gapComposer, Integer.valueOf((i6 >> 6) & 14));
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new a0(modifier, function2, i, 3);
        }
    }
}
