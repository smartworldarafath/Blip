package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.ClickableKt;
import androidx.compose.foundation.ScrollState;
import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.PaddingValues;
import androidx.compose.foundation.layout.RowKt;
import androidx.compose.foundation.layout.RowMeasurePolicy;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import defpackage.g1;
import defpackage.ib;
import defpackage.p2;
import defpackage.q;
import defpackage.t;
import defpackage.u;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MenuKt {
    public static final void a(MutableTransitionState mutableTransitionState, MutableState mutableState, ScrollState scrollState, Modifier modifier, ComposableLambdaImpl composableLambdaImpl, Composer composer, int i) {
        int i2;
        int i3;
        int i4;
        int i5;
        boolean z;
        float f;
        TweenSpec c;
        float f2;
        TweenSpec c2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1077393800);
        if (gapComposer.f(mutableTransitionState)) {
            i2 = 4;
        } else {
            i2 = 2;
        }
        int i6 = i | i2;
        if (gapComposer.f(scrollState)) {
            i3 = 256;
        } else {
            i3 = 128;
        }
        int i7 = i6 | i3;
        if (gapComposer.f(modifier)) {
            i4 = 2048;
        } else {
            i4 = 1024;
        }
        int i8 = i7 | i4;
        if (gapComposer.h(composableLambdaImpl)) {
            i5 = 16384;
        } else {
            i5 = 8192;
        }
        int i9 = i8 | i5;
        if ((i9 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i9 & 1, z)) {
            Transition d = TransitionKt.d(mutableTransitionState, "DropDownMenu", gapComposer, (i9 & 14) | 48);
            TransitionState transitionState = d.a;
            MutableState mutableState2 = d.d;
            boolean booleanValue = ((Boolean) transitionState.a()).booleanValue();
            gapComposer.W(-1833869404);
            float f3 = 0.8f;
            if (booleanValue) {
                f = 1.0f;
            } else {
                f = 0.8f;
            }
            gapComposer.p(false);
            Float valueOf = Float.valueOf(f);
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState2;
            boolean booleanValue2 = ((Boolean) snapshotMutableStateImpl.getValue()).booleanValue();
            gapComposer.W(-1833869404);
            if (booleanValue2) {
                f3 = 1.0f;
            }
            gapComposer.p(false);
            Float valueOf2 = Float.valueOf(f3);
            Transition.Segment f4 = d.f();
            gapComposer.W(445475263);
            Boolean bool = Boolean.FALSE;
            Boolean bool2 = Boolean.TRUE;
            if (f4.b(bool, bool2)) {
                c = AnimationSpecKt.c(120, 0, EasingKt.b, 2);
            } else {
                c = AnimationSpecKt.c(1, 74, null, 4);
            }
            TweenSpec tweenSpec = c;
            gapComposer.p(false);
            TwoWayConverter twoWayConverter = VectorConvertersKt.a;
            Transition.TransitionAnimationState c3 = TransitionKt.c(d, valueOf, valueOf2, tweenSpec, twoWayConverter, gapComposer, 0);
            boolean booleanValue3 = ((Boolean) d.a.a()).booleanValue();
            gapComposer.W(-1578341192);
            float f5 = 0.0f;
            if (booleanValue3) {
                f2 = 1.0f;
            } else {
                f2 = 0.0f;
            }
            gapComposer.p(false);
            Float valueOf3 = Float.valueOf(f2);
            boolean booleanValue4 = ((Boolean) snapshotMutableStateImpl.getValue()).booleanValue();
            gapComposer.W(-1578341192);
            if (booleanValue4) {
                f5 = 1.0f;
            }
            gapComposer.p(false);
            Float valueOf4 = Float.valueOf(f5);
            Transition.Segment f6 = d.f();
            gapComposer.W(701003475);
            if (f6.b(bool, bool2)) {
                c2 = AnimationSpecKt.c(30, 0, null, 6);
            } else {
                c2 = AnimationSpecKt.c(75, 0, null, 6);
            }
            gapComposer.p(false);
            Transition.TransitionAnimationState c4 = TransitionKt.c(d, valueOf3, valueOf4, c2, twoWayConverter, gapComposer, 0);
            boolean f7 = gapComposer.f(c3) | gapComposer.f(c4);
            Object K = gapComposer.K();
            if (f7 || K == Composer.Companion.a) {
                K = new p2(mutableState, c3, c4, 10);
                gapComposer.g0(K);
            }
            Modifier a = GraphicsLayerModifierKt.a(Modifier.Companion.b, (Function1) K);
            ComposableLambdaImpl b = ComposableLambdaKt.b(-707086267, new u(modifier, scrollState, composableLambdaImpl, 10), gapComposer);
            RoundedCornerShape roundedCornerShape = MaterialTheme.b(gapComposer).b;
            long f8 = MaterialTheme.a(gapComposer).f();
            SurfaceKt.a(a, roundedCornerShape, f8, ColorsKt.b(f8, gapComposer), 8.0f, b, gapComposer, 1769472, 0);
            gapComposer = gapComposer;
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new g1(mutableTransitionState, mutableState, scrollState, modifier, composableLambdaImpl, i);
        }
    }

    public static final void b(Function0 function0, Modifier modifier, boolean z, PaddingValues paddingValues, Function3 function3, Composer composer, int i) {
        int i2;
        boolean z2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-674391690);
        if ((i & 6) == 0) {
            if (gapComposer.h(function0)) {
                i8 = 4;
            } else {
                i8 = 2;
            }
            i2 = i8 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i2 |= i7;
        }
        if ((i & 384) == 0) {
            if (gapComposer.g(z)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i2 |= i6;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(paddingValues)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i2 |= i5;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.f(null)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i2 |= i4;
        }
        if ((196608 & i) == 0) {
            if (gapComposer.h(function3)) {
                i3 = 131072;
            } else {
                i3 = 65536;
            }
            i2 |= i3;
        }
        if ((74899 & i2) != 74898) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i2 & 1, z2)) {
            Modifier c = PaddingKt.c(SizeKt.m(SizeKt.d(ClickableKt.a(modifier, null, RippleKt.a(6, 0L, true), z, null, function0, 24), 1.0f), 112.0f, 48.0f, 280.0f, Float.NaN), paddingValues);
            RowMeasurePolicy a = RowKt.a(Arrangement.a, Alignment.Companion.k, gapComposer, 48);
            int a2 = ComposablesKt.a(gapComposer);
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
            if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                q.r(a2, gapComposer, a2, ComposeUiNode.Companion.e);
            }
            Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
            TextKt.a(MaterialTheme.c(gapComposer).g, ComposableLambdaKt.b(-77738101, new t(z, function3), gapComposer), gapComposer, 48);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new ib(function0, modifier, z, paddingValues, function3, i);
        }
    }
}
