package androidx.compose.material;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.AnimatableKt;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.EasingKt;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.ComposablesKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
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
import androidx.compose.ui.graphics.GraphicsLayerScopeKt;
import androidx.compose.ui.graphics.RectangleShapeKt;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.platform.AccessibilityManager;
import androidx.compose.ui.platform.CompositionLocalsKt;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import defpackage.b1;
import defpackage.cf;
import defpackage.q;
import defpackage.u2;
import defpackage.ub;
import defpackage.x0;
import java.util.ArrayList;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnackbarHostKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v14, types: [androidx.compose.material.FadeInFadeOutState, java.lang.Object] */
    public static final void a(Modifier modifier, Composer composer, int i) {
        int i2;
        boolean z;
        int i3;
        int i4;
        boolean h;
        int i5;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1354335728);
        if ((i & 6) == 0) {
            if ((i & 8) == 0) {
                h = gapComposer.f(null);
            } else {
                h = gapComposer.h(null);
            }
            if (h) {
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
            if (gapComposer.h(ComposableSingletons$SnackbarHostKt.a)) {
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
            Object K = gapComposer.K();
            Object obj = K;
            if (K == Composer.Companion.a) {
                ?? obj2 = new Object();
                obj2.a = new Object();
                obj2.b = new ArrayList();
                gapComposer.g0(obj2);
                obj = obj2;
            }
            final FadeInFadeOutState fadeInFadeOutState = (FadeInFadeOutState) obj;
            final String a = Strings_androidKt.a(7, gapComposer);
            Object obj3 = fadeInFadeOutState.a;
            ArrayList arrayList = fadeInFadeOutState.b;
            if (!Intrinsics.a(null, obj3)) {
                gapComposer.W(93279711);
                fadeInFadeOutState.a = null;
                ArrayList arrayList2 = new ArrayList(arrayList.size());
                int size = arrayList.size();
                for (int i6 = 0; i6 < size; i6++) {
                    ((FadeInFadeOutAnimationItem) arrayList.get(i6)).getClass();
                    arrayList2.add(null);
                }
                final ArrayList arrayList3 = new ArrayList(arrayList2);
                if (!arrayList3.contains(null)) {
                    arrayList3.add(null);
                }
                arrayList.clear();
                ArrayList arrayList4 = new ArrayList(arrayList3.size());
                int size2 = arrayList3.size();
                for (int i7 = 0; i7 < size2; i7++) {
                    Object obj4 = arrayList3.get(i7);
                    if (obj4 != null) {
                        arrayList4.add(obj4);
                    }
                }
                int size3 = arrayList4.size();
                for (int i8 = 0; i8 < size3; i8++) {
                    if (arrayList4.get(i8) == null) {
                        arrayList.add(new FadeInFadeOutAnimationItem(ComposableLambdaKt.b(-1032415134, new Function3() { // from class: androidx.compose.material.i
                            @Override // kotlin.jvm.functions.Function3
                            public final Object f(Object obj5, Object obj6, Object obj7) {
                                boolean z2;
                                int i9;
                                Boolean bool;
                                Object snackbarHostKt$animatedOpacity$2$1;
                                Object obj8;
                                boolean z3;
                                int i10;
                                Function2 function2 = (Function2) obj5;
                                Composer composer2 = (Composer) obj6;
                                int intValue = ((Integer) obj7).intValue();
                                if ((intValue & 6) == 0) {
                                    if (((GapComposer) composer2).h(function2)) {
                                        i10 = 4;
                                    } else {
                                        i10 = 2;
                                    }
                                    intValue |= i10;
                                }
                                if ((intValue & 19) != 18) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                GapComposer gapComposer2 = (GapComposer) composer2;
                                if (gapComposer2.N(intValue & 1, z2)) {
                                    ArrayList arrayList5 = arrayList3;
                                    ArrayList arrayList6 = new ArrayList(arrayList5.size());
                                    int size4 = arrayList5.size();
                                    for (int i11 = 0; i11 < size4; i11++) {
                                        Object obj9 = arrayList5.get(i11);
                                        if (obj9 != null) {
                                            arrayList6.add(obj9);
                                        }
                                    }
                                    if (arrayList6.size() != 1) {
                                        i9 = 75;
                                    } else {
                                        i9 = 0;
                                    }
                                    TweenSpec tweenSpec = new TweenSpec(150, i9, EasingKt.c);
                                    boolean h2 = gapComposer2.h(null);
                                    Object obj10 = fadeInFadeOutState;
                                    boolean h3 = h2 | gapComposer2.h(obj10);
                                    Object K2 = gapComposer2.K();
                                    Object obj11 = Composer.Companion.a;
                                    if (h3 || K2 == obj11) {
                                        K2 = new a(2, obj10);
                                        gapComposer2.g0(K2);
                                    }
                                    Function0 function0 = (Function0) K2;
                                    Object K3 = gapComposer2.K();
                                    if (K3 == obj11) {
                                        K3 = AnimatableKt.a(0.0f);
                                        gapComposer2.g0(K3);
                                    }
                                    Animatable animatable = (Animatable) K3;
                                    boolean h4 = gapComposer2.h(animatable) | gapComposer2.g(true) | gapComposer2.h(tweenSpec) | gapComposer2.f(function0);
                                    Object K4 = gapComposer2.K();
                                    if (h4 || K4 == obj11) {
                                        bool = true;
                                        obj8 = obj11;
                                        z3 = true;
                                        snackbarHostKt$animatedOpacity$2$1 = new SnackbarHostKt$animatedOpacity$2$1(animatable, true, tweenSpec, function0, null);
                                        gapComposer2.g0(snackbarHostKt$animatedOpacity$2$1);
                                    } else {
                                        snackbarHostKt$animatedOpacity$2$1 = K4;
                                        bool = true;
                                        obj8 = obj11;
                                        z3 = true;
                                    }
                                    EffectsKt.e(gapComposer2, bool, (Function2) snackbarHostKt$animatedOpacity$2$1);
                                    AnimationState animationState = animatable.c;
                                    TweenSpec tweenSpec2 = new TweenSpec(150, i9, EasingKt.a);
                                    Object K5 = gapComposer2.K();
                                    if (K5 == obj8) {
                                        K5 = AnimatableKt.a(0.8f);
                                        gapComposer2.g0(K5);
                                    }
                                    Animatable animatable2 = (Animatable) K5;
                                    Boolean valueOf = Boolean.valueOf(z3);
                                    boolean h5 = gapComposer2.h(animatable2) | gapComposer2.g(z3) | gapComposer2.h(tweenSpec2);
                                    Object K6 = gapComposer2.K();
                                    if (h5 || K6 == obj8) {
                                        K6 = new SnackbarHostKt$animatedScale$1$1(animatable2, z3, tweenSpec2, null);
                                        gapComposer2.g0(K6);
                                    }
                                    EffectsKt.e(gapComposer2, valueOf, (Function2) K6);
                                    AnimationState animationState2 = animatable2.c;
                                    float floatValue = ((Number) ((SnapshotMutableStateImpl) animationState2.k).getValue()).floatValue();
                                    float floatValue2 = ((Number) ((SnapshotMutableStateImpl) animationState2.k).getValue()).floatValue();
                                    float floatValue3 = ((Number) ((SnapshotMutableStateImpl) animationState.k).getValue()).floatValue();
                                    long j = TransformOrigin.b;
                                    long j2 = GraphicsLayerScopeKt.a;
                                    Modifier b = GraphicsLayerModifierKt.b(Modifier.Companion.b, floatValue, floatValue2, floatValue3, 0.0f, j, RectangleShapeKt.a, false, j2, j2, 0, 524288);
                                    boolean g = gapComposer2.g(z3);
                                    String str = a;
                                    boolean f = g | gapComposer2.f(str) | gapComposer2.h(null);
                                    Object K7 = gapComposer2.K();
                                    if (f || K7 == obj8) {
                                        K7 = new ub(str, z3);
                                        gapComposer2.g0(K7);
                                    }
                                    Modifier a2 = SemanticsModifierKt.a(b, false, (Function1) K7);
                                    MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                                    int a3 = ComposablesKt.a(gapComposer2);
                                    PersistentCompositionLocalMap l = gapComposer2.l();
                                    Modifier c = ComposedModifierKt.c(gapComposer2, a2);
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
                                    Updater.c(gapComposer2, c, ComposeUiNode.Companion.b);
                                    function2.n(gapComposer2, Integer.valueOf(intValue & 14));
                                    gapComposer2.p(true);
                                } else {
                                    gapComposer2.Q();
                                }
                                return Unit.a;
                            }
                        }, gapComposer)));
                    } else {
                        io.sentry.d.i();
                        return;
                    }
                }
                gapComposer.p(false);
            } else {
                gapComposer.W(95881138);
                gapComposer.p(false);
            }
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int a2 = ComposablesKt.a(gapComposer);
            PersistentCompositionLocalMap l = gapComposer.l();
            Modifier c = ComposedModifierKt.c(gapComposer, modifier);
            ComposeUiNode.b.getClass();
            gapComposer.Z();
            if (gapComposer.S) {
                gapComposer.k(LayoutNode.b0);
            } else {
                gapComposer.j0();
            }
            Updater.c(gapComposer, d, ComposeUiNode.Companion.d);
            Updater.c(gapComposer, l, ComposeUiNode.Companion.c);
            if (gapComposer.S || !Intrinsics.a(gapComposer.K(), Integer.valueOf(a2))) {
                q.r(a2, gapComposer, a2, ComposeUiNode.Companion.e);
            }
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            RecomposeScopeImpl w = gapComposer.w();
            if (w != null) {
                w.b |= 1;
                fadeInFadeOutState.c = w;
                gapComposer.W(-1757732554);
                int size4 = arrayList.size();
                for (int i9 = 0; i9 < size4; i9++) {
                    FadeInFadeOutAnimationItem fadeInFadeOutAnimationItem = (FadeInFadeOutAnimationItem) arrayList.get(i9);
                    fadeInFadeOutAnimationItem.getClass();
                    ComposableLambdaImpl composableLambdaImpl = fadeInFadeOutAnimationItem.a;
                    gapComposer.U(-1515535286, null);
                    composableLambdaImpl.f(ComposableLambdaKt.b(2017516783, new cf(17, (byte) 0), gapComposer), gapComposer, 6);
                    gapComposer.p(false);
                }
                gapComposer.p(false);
                gapComposer.p(true);
            } else {
                u2.l("no recompose scope found");
                return;
            }
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new x0(modifier, i);
        }
    }

    public static final void b(SnackbarHostState snackbarHostState, Modifier modifier, Function3 function3, Composer composer, int i) {
        int i2;
        boolean z;
        Modifier modifier2;
        Function3 function32;
        int i3;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1351125615);
        if ((i & 6) == 0) {
            if (gapComposer.f(snackbarHostState)) {
                i3 = 4;
            } else {
                i3 = 2;
            }
            i2 = i3 | i;
        } else {
            i2 = i;
        }
        int i4 = i2 | 432;
        if ((i4 & 147) != 146) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i4 & 1, z)) {
            if (((SnapshotMutableStateImpl) snackbarHostState.a).getValue() == null) {
                AccessibilityManager accessibilityManager = (AccessibilityManager) gapComposer.j(CompositionLocalsKt.a);
                boolean h = gapComposer.h(null) | gapComposer.h(accessibilityManager);
                Object K = gapComposer.K();
                if (h || K == Composer.Companion.a) {
                    K = new SnackbarHostKt$SnackbarHost$1$1(accessibilityManager, null);
                    gapComposer.g0(K);
                }
                EffectsKt.e(gapComposer, null, (Function2) K);
                if (((SnapshotMutableStateImpl) snackbarHostState.a).getValue() == null) {
                    Modifier.Companion companion = Modifier.Companion.b;
                    a(companion, gapComposer, i4 & 1008);
                    function32 = ComposableSingletons$SnackbarHostKt.a;
                    modifier2 = companion;
                } else {
                    io.sentry.d.i();
                    return;
                }
            } else {
                io.sentry.d.i();
                return;
            }
        } else {
            gapComposer.Q();
            modifier2 = modifier;
            function32 = function3;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new b1(snackbarHostState, modifier2, function32, i, 13);
        }
    }
}
