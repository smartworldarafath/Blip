package net.blip.shared;

import androidx.compose.foundation.FocusableKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocalKt;
import androidx.compose.runtime.DynamicProvidableCompositionLocal;
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
import androidx.compose.ui.focus.FocusEventModifierKt;
import androidx.compose.ui.focus.FocusManager;
import androidx.compose.ui.focus.FocusPropertiesKt;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import defpackage.c0;
import defpackage.i2;
import defpackage.j6;
import defpackage.s7;
import defpackage.w7;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FocusBlockerKt {
    public static final DynamicProvidableCompositionLocal a = new DynamicProvidableCompositionLocal(new j6(19));

    public static final void a(Modifier modifier, boolean z, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        int i4;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1671833744);
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
            FocusManager focusManager = (FocusManager) gapComposer.j(CompositionLocalsKt.i);
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(null);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            if ((i2 & 112) == 32) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean h = z3 | gapComposer.h(focusManager);
            Object K2 = gapComposer.K();
            if (h || K2 == composer$Companion$Empty$1) {
                K2 = new s7(1, focusManager, mutableState, z);
                gapComposer.g0(K2);
            }
            Modifier a2 = FocusEventModifierKt.a(modifier, (Function1) K2);
            Object K3 = gapComposer.K();
            if (K3 == composer$Companion$Empty$1) {
                K3 = new i2(mutableState, 4);
                gapComposer.g0(K3);
            }
            Modifier a3 = FocusableKt.a(FocusPropertiesKt.a(a2, (Function1) K3), true, null);
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int hashCode = Long.hashCode(gapComposer.T);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, a3);
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
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            CompositionLocalKt.a(a.b(Boolean.valueOf(!z)), ComposableLambdaKt.b(1957362102, new c0(composableLambdaImpl, 5, (byte) 0), gapComposer), gapComposer, 56);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new w7(modifier, z, composableLambdaImpl, i, 1);
        }
    }
}
