package androidx.compose.material;

import androidx.compose.animation.SingleValueAnimationKt;
import androidx.compose.animation.core.Easing;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.BackgroundKt;
import androidx.compose.foundation.CanvasKt;
import androidx.compose.foundation.IndicationKt;
import androidx.compose.foundation.gestures.DraggableKt;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.interaction.InteractionSource;
import androidx.compose.foundation.interaction.InteractionSourceKt;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.foundation.layout.BoxScopeInstance;
import androidx.compose.foundation.layout.OffsetKt;
import androidx.compose.foundation.layout.PaddingKt;
import androidx.compose.foundation.layout.SizeKt;
import androidx.compose.foundation.layout.SpacerKt;
import androidx.compose.foundation.selection.ToggleableKt;
import androidx.compose.foundation.shape.RoundedCornerShape;
import androidx.compose.foundation.shape.RoundedCornerShapeKt;
import androidx.compose.material.SwitchKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.CompositionLocal;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.ShadowKt;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.Role;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.f0;
import defpackage.gd;
import defpackage.hc;
import defpackage.ib;
import defpackage.le;
import defpackage.q;
import defpackage.u7;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SwitchKt {
    public static final float a = 14.0f;
    public static final TweenSpec b = new TweenSpec(100, (Easing) null, 6);
    public static final float c = 1.0f;
    public static final float d = 6.0f;
    public static final float e = 125.0f;

    public static final void a(boolean z, Function1 function1, Modifier modifier, MutableInteractionSource mutableInteractionSource, SwitchColors switchColors, Composer composer, int i) {
        int i2;
        SwitchColors switchColors2;
        boolean z2;
        MutableInteractionSource mutableInteractionSource2;
        Object obj;
        boolean z3;
        boolean z4;
        Modifier modifier2;
        boolean z5;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(25866825);
        if ((i & 6) == 0) {
            if (gapComposer.g(z)) {
                i8 = 4;
            } else {
                i8 = 2;
            }
            i2 = i8 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function1)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i2 |= i7;
        }
        if ((i & 384) == 0) {
            if (gapComposer.f(modifier)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i2 |= i6;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.g(true)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i2 |= i5;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.f(mutableInteractionSource)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i2 |= i4;
        }
        if ((196608 & i) == 0) {
            switchColors2 = switchColors;
            if (gapComposer.f(switchColors2)) {
                i3 = 131072;
            } else {
                i3 = 65536;
            }
            i2 |= i3;
        } else {
            switchColors2 = switchColors;
        }
        if ((74899 & i2) != 74898) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i2 & 1, z2)) {
            gapComposer.S();
            if ((i & 1) != 0 && !gapComposer.x()) {
                gapComposer.Q();
            }
            gapComposer.q();
            Object obj2 = Composer.Companion.a;
            if (mutableInteractionSource == null) {
                gapComposer.W(1799771122);
                Object K = gapComposer.K();
                if (K == obj2) {
                    K = InteractionSourceKt.a();
                    gapComposer.g0(K);
                }
                mutableInteractionSource2 = (MutableInteractionSource) K;
                gapComposer.p(false);
            } else {
                gapComposer.W(-911774843);
                gapComposer.p(false);
                mutableInteractionSource2 = mutableInteractionSource;
            }
            CompositionLocal compositionLocal = CompositionLocalsKt.h;
            float i0 = ((Density) gapComposer.j(compositionLocal)).i0(14.0f);
            Object K2 = gapComposer.K();
            if (K2 == obj2) {
                K2 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K2);
            }
            MutableState mutableState = (MutableState) K2;
            final float i02 = ((Density) gapComposer.j(compositionLocal)).i0(e);
            boolean c2 = gapComposer.c(i0) | gapComposer.c(i02);
            Object K3 = gapComposer.K();
            if (c2 || K3 == obj2) {
                DraggableAnchorsConfig draggableAnchorsConfig = new DraggableAnchorsConfig();
                draggableAnchorsConfig.a(0.0f, Boolean.FALSE);
                draggableAnchorsConfig.a(i0, Boolean.TRUE);
                MapDraggableAnchors mapDraggableAnchors = new MapDraggableAnchors(draggableAnchorsConfig.a);
                Boolean valueOf = Boolean.valueOf(z);
                AnchoredDraggableState anchoredDraggableState = new AnchoredDraggableState(valueOf, new le(27), new Function0() { // from class: mg
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        float f = SwitchKt.a;
                        return Float.valueOf(i02);
                    }
                }, b, new defpackage.h(2));
                ((SnapshotMutableStateImpl) anchoredDraggableState.m).setValue(mapDraggableAnchors);
                MutexImpl mutexImpl = anchoredDraggableState.e.b;
                if (mutexImpl.f()) {
                    try {
                        AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = anchoredDraggableState.n;
                        float c3 = ((MapDraggableAnchors) anchoredDraggableState.d()).c(valueOf);
                        if (!Float.isNaN(c3)) {
                            try {
                                AnchoredDragScope.a(anchoredDraggableState$anchoredDragScope$1, c3);
                                obj = null;
                                anchoredDraggableState.h(null);
                            } catch (Throwable th) {
                                th = th;
                                mutexImpl.h(null);
                                throw th;
                            }
                        } else {
                            obj = null;
                        }
                        anchoredDraggableState.g(valueOf);
                        mutexImpl.h(obj);
                    } catch (Throwable th2) {
                        th = th2;
                    }
                }
                gapComposer.g0(anchoredDraggableState);
                K3 = anchoredDraggableState;
            }
            AnchoredDraggableState anchoredDraggableState2 = (AnchoredDraggableState) K3;
            int i9 = i2 >> 3;
            MutableState k = SnapshotStateKt.k(function1, gapComposer);
            int i10 = i2 & 14;
            MutableState k2 = SnapshotStateKt.k(Boolean.valueOf(z), gapComposer);
            boolean f = gapComposer.f(anchoredDraggableState2) | gapComposer.f(k2) | gapComposer.f(k);
            int i11 = i2;
            Object K4 = gapComposer.K();
            if (f || K4 == obj2) {
                K4 = new SwitchKt$Switch$1$1(anchoredDraggableState2, k2, k, mutableState, null);
                gapComposer.g0(K4);
            }
            EffectsKt.e(gapComposer, anchoredDraggableState2, (Function2) K4);
            Boolean valueOf2 = Boolean.valueOf(z);
            Boolean bool = (Boolean) mutableState.getValue();
            bool.getClass();
            if (i10 == 4) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean f2 = z3 | gapComposer.f(anchoredDraggableState2);
            Object K5 = gapComposer.K();
            if (f2 || K5 == obj2) {
                K5 = new SwitchKt$Switch$2$1(z, anchoredDraggableState2, null);
                gapComposer.g0(K5);
            }
            EffectsKt.f(valueOf2, bool, (Function2) K5, gapComposer);
            if (gapComposer.j(CompositionLocalsKt.n) == LayoutDirection.k) {
                z4 = true;
            } else {
                z4 = false;
            }
            Modifier modifier3 = Modifier.Companion.b;
            if (function1 != null) {
                modifier2 = ToggleableKt.a(z, mutableInteractionSource2, new Role(2), function1);
            } else {
                modifier2 = modifier3;
            }
            if (function1 != null) {
                StaticProvidableCompositionLocal staticProvidableCompositionLocal = InteractiveComponentSizeKt.a;
                modifier3 = MinimumInteractiveModifier.b;
            }
            Modifier l = modifier.l(modifier3).l(modifier2);
            Orientation orientation = Orientation.j;
            if (function1 != null) {
                z5 = true;
            } else {
                z5 = false;
            }
            Modifier h = SizeKt.h(PaddingKt.d(SizeKt.q(DraggableKt.a(l, anchoredDraggableState2.f, z5, mutableInteractionSource2, false, new AnchoredDraggableKt$anchoredDraggable$1(anchoredDraggableState2, null), z4)), 2.0f));
            MeasurePolicy d2 = BoxKt.d(Alignment.Companion.a, false);
            int a2 = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l2 = gapComposer.l();
            Modifier c4 = ComposedModifierKt.c(gapComposer, h);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d2, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l2, ComposeUiNode.Companion.c);
            if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                q.r(a2, gapComposer, a2, ComposeUiNode.Companion.e);
            }
            Updater.c(gapComposer, c4, ComposeUiNode.Companion.b);
            boolean booleanValue = ((Boolean) anchoredDraggableState2.h.getValue()).booleanValue();
            boolean f3 = gapComposer.f(anchoredDraggableState2);
            Object K6 = gapComposer.K();
            if (f3 || K6 == obj2) {
                K6 = new f0(anchoredDraggableState2, 3);
                gapComposer.g0(K6);
            }
            b(booleanValue, switchColors2, (Function0) K6, mutableInteractionSource2, gapComposer, (i9 & 896) | 6 | ((i11 >> 6) & 7168));
            gapComposer.p(true);
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new ib(z, function1, modifier, mutableInteractionSource, switchColors, i);
        }
    }

    public static final void b(boolean z, SwitchColors switchColors, Function0 function0, InteractionSource interactionSource, Composer composer, int i) {
        int i2;
        boolean z2;
        boolean z3;
        float f;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        Modifier.Companion companion;
        boolean z4;
        long j;
        boolean z5;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(70908914);
        int i9 = i & 6;
        BoxScopeInstance boxScopeInstance = BoxScopeInstance.a;
        if (i9 == 0) {
            if (gapComposer.f(boxScopeInstance)) {
                i8 = 4;
            } else {
                i8 = 2;
            }
            i2 = i8 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.g(z)) {
                i7 = 32;
            } else {
                i7 = 16;
            }
            i2 |= i7;
        }
        if ((i & 384) == 0) {
            if (gapComposer.g(true)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i2 |= i6;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(switchColors)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i2 |= i5;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.h(function0)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i2 |= i4;
        }
        if ((196608 & i) == 0) {
            if (gapComposer.f(interactionSource)) {
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
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
            if (K == composer$Companion$Empty$12) {
                K = new SnapshotStateList();
                gapComposer.g0(K);
            }
            SnapshotStateList snapshotStateList = (SnapshotStateList) K;
            if ((458752 & i2) == 131072) {
                z3 = true;
            } else {
                z3 = false;
            }
            Object K2 = gapComposer.K();
            if (z3 || K2 == composer$Companion$Empty$12) {
                K2 = new SwitchKt$SwitchImpl$1$1(interactionSource, snapshotStateList, null);
                gapComposer.g0(K2);
            }
            EffectsKt.e(gapComposer, interactionSource, (Function2) K2);
            if (!snapshotStateList.isEmpty()) {
                f = d;
            } else {
                f = c;
            }
            float f2 = f;
            MutableState b2 = switchColors.b(z, gapComposer);
            BiasAlignment biasAlignment = Alignment.Companion.e;
            Modifier.Companion companion2 = Modifier.Companion.b;
            Modifier c2 = SizeKt.c(boxScopeInstance.d(companion2, biasAlignment), 1.0f);
            boolean f3 = gapComposer.f(b2);
            Object K3 = gapComposer.K();
            if (f3 || K3 == composer$Companion$Empty$12) {
                K3 = new u7(b2, 1);
                gapComposer.g0(K3);
            }
            CanvasKt.a(0, gapComposer, c2, (Function1) K3);
            MutableState a2 = switchColors.a(z, gapComposer);
            ElevationOverlay elevationOverlay = (ElevationOverlay) gapComposer.j(ElevationOverlayKt.a);
            float f4 = ((Dp) gapComposer.j(ElevationOverlayKt.b)).j + f2;
            GapComposer gapComposer2 = gapComposer;
            if (Color.c(((Color) a2.getValue()).a, MaterialTheme.a(gapComposer).f()) && elevationOverlay != null) {
                gapComposer2.W(-674840005);
                z4 = false;
                companion = companion2;
                composer$Companion$Empty$1 = composer$Companion$Empty$12;
                j = ((DefaultElevationOverlay) elevationOverlay).a(((Color) a2.getValue()).a, f4, gapComposer2, 0);
                gapComposer2.p(false);
            } else {
                composer$Companion$Empty$1 = composer$Companion$Empty$12;
                companion = companion2;
                z4 = false;
                gapComposer2.W(-674751066);
                gapComposer2.p(false);
                j = ((Color) a2.getValue()).a;
                gapComposer2 = gapComposer2;
            }
            GapComposer gapComposer3 = gapComposer2;
            State a3 = SingleValueAnimationKt.a(j, null, gapComposer3, 0, 14);
            gapComposer = gapComposer3;
            Modifier d2 = boxScopeInstance.d(companion, Alignment.Companion.d);
            if ((i2 & 57344) == 16384) {
                z5 = true;
            } else {
                z5 = z4;
            }
            Object K4 = gapComposer.K();
            if (z5 || K4 == composer$Companion$Empty$1) {
                K4 = new hc(1, function0);
                gapComposer.g0(K4);
            }
            Modifier g = SizeKt.g(IndicationKt.a(OffsetKt.a(d2, (Function1) K4), interactionSource, RippleKt.a(4, 0L, z4)));
            RoundedCornerShape roundedCornerShape = RoundedCornerShapeKt.a;
            SpacerKt.a(gapComposer, BackgroundKt.b(ShadowKt.a(g, f2, roundedCornerShape, 0L, 24), ((Color) a3.getValue()).a, roundedCornerShape));
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new gd(z, switchColors, function0, interactionSource, i);
        }
    }
}
