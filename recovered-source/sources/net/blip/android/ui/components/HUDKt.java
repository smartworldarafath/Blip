package net.blip.android.ui.components;

import androidx.compose.animation.AnimatedVisibilityKt;
import androidx.compose.animation.EnterExitTransitionKt;
import androidx.compose.animation.EnterTransition;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.unit.Density;
import defpackage.b0;
import defpackage.r0;
import defpackage.t;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HUDKt {
    public static final void a(Modifier modifier, boolean z, Composer composer, int i) {
        int i2;
        boolean z2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-808155889);
        if (gapComposer.g(z)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i3 = i2 | i;
        if ((i3 & 1171) != 1170) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i3 & 1, z2)) {
            SpringSpec b = AnimationSpecKt.b(0.75f, 200.0f, null, 4);
            int b2 = MathKt.b(((Density) gapComposer.j(CompositionLocalsKt.h)).i0(120.0f));
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = new HUDKt$HUD$1$1(mutableState, null);
                gapComposer.g0(K2);
            }
            EffectsKt.e(gapComposer, Unit.a, (Function2) K2);
            boolean booleanValue = ((Boolean) mutableState.getValue()).booleanValue() & z;
            boolean d = gapComposer.d(b2);
            Object K3 = gapComposer.K();
            if (d || K3 == composer$Companion$Empty$1) {
                K3 = new r0(b2, 5);
                gapComposer.g0(K3);
            }
            EnterTransition i4 = EnterExitTransitionKt.i(b, (Function1) K3);
            boolean d2 = gapComposer.d(b2);
            Object K4 = gapComposer.K();
            if (d2 || K4 == composer$Companion$Empty$1) {
                K4 = new r0(b2, 5);
                gapComposer.g0(K4);
            }
            AnimatedVisibilityKt.b(booleanValue, null, i4, EnterExitTransitionKt.k(b, (Function1) K4), null, ComposableLambdaKt.b(-2117258265, new b0(6, modifier), gapComposer), gapComposer, 196608);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new t(modifier, z, i, 2);
        }
    }
}
