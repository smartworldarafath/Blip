package androidx.compose.animation;

import androidx.compose.animation.core.MutableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.EffectsKt;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.Color;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;
import androidx.compose.ui.graphics.colorspace.Rgb;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.layout.LayoutModifierKt;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.modifier.ModifierLocalProviderKt$modifierLocalProvider$1;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.IntOffset;
import defpackage.d8;
import defpackage.ec;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AnimatedVisibilityKt {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:199:0x0565  */
    /* JADX WARN: Removed duplicated region for block: B:204:0x05b0  */
    /* JADX WARN: Removed duplicated region for block: B:209:0x05e0  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0629  */
    /* JADX WARN: Removed duplicated region for block: B:232:0x0692  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x06a8  */
    /* JADX WARN: Removed duplicated region for block: B:245:0x06ec  */
    /* JADX WARN: Removed duplicated region for block: B:250:0x071d  */
    /* JADX WARN: Removed duplicated region for block: B:253:0x076c A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:257:0x079d A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:260:0x07c1 A[ADDED_TO_REGION] */
    /* JADX WARN: Removed duplicated region for block: B:263:0x080b  */
    /* JADX WARN: Removed duplicated region for block: B:266:0x0834  */
    /* JADX WARN: Removed duplicated region for block: B:268:0x083a  */
    /* JADX WARN: Removed duplicated region for block: B:269:0x0816  */
    /* JADX WARN: Removed duplicated region for block: B:273:0x0736  */
    /* JADX WARN: Removed duplicated region for block: B:274:0x070e  */
    /* JADX WARN: Removed duplicated region for block: B:275:0x06d4  */
    /* JADX WARN: Removed duplicated region for block: B:279:0x0664  */
    /* JADX WARN: Removed duplicated region for block: B:286:0x0603  */
    /* JADX WARN: Removed duplicated region for block: B:287:0x05d3  */
    /* JADX WARN: Removed duplicated region for block: B:288:0x0597  */
    /* JADX WARN: Type inference failed for: r7v23, types: [androidx.compose.runtime.internal.ComposableLambdaImpl] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void a(final Transition transition, final Function1 function1, Modifier modifier, final EnterTransition enterTransition, final ExitTransition exitTransition, final Function2 function2, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z;
        final ComposableLambdaImpl composableLambdaImpl2;
        boolean z2;
        boolean z3;
        int i3;
        boolean z4;
        Fade fade;
        Scale scale;
        boolean z5;
        Slide slide;
        ChangeSize changeSize;
        boolean z6;
        boolean z7;
        boolean z8;
        ChangeSize changeSize2;
        boolean z9;
        boolean z10;
        SharedMutableTransformState sharedMutableTransformState;
        boolean z11;
        TransitionData transitionData;
        TwoWayConverter twoWayConverter;
        ChangeSize changeSize3;
        Composer$Companion$Empty$1 composer$Companion$Empty$1;
        TransitionInstance transitionInstance;
        boolean z12;
        Transition.DeferredAnimation deferredAnimation;
        Transition.DeferredAnimation deferredAnimation2;
        Transition.DeferredAnimation deferredAnimation3;
        ChangeSize changeSize4;
        final boolean z13;
        Modifier.Companion companion;
        SharedMutableTransformState sharedMutableTransformState2;
        EnterTransition enterTransition2;
        Modifier modifier2;
        Modifier.Companion companion2;
        boolean z14;
        boolean z15;
        AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl;
        boolean z16;
        Modifier.Companion companion3;
        Modifier modifier3;
        SharedMutableTransformState sharedMutableTransformState3;
        ExitTransition exitTransition2;
        Transition.DeferredAnimation deferredAnimation4;
        Transition.DeferredAnimation deferredAnimation5;
        Transition.DeferredAnimation deferredAnimation6;
        Modifier modifier4;
        Transition.DeferredAnimation deferredAnimation7;
        Transition.DeferredAnimation deferredAnimation8;
        boolean h;
        Object K;
        EnterTransition enterTransition3;
        ExitTransition exitTransition3;
        final SharedMutableTransformState sharedMutableTransformState4;
        boolean h2;
        Object K2;
        boolean g;
        Object K3;
        Object K4;
        AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl2;
        ComposableLambdaImpl composableLambdaImpl3;
        boolean z17;
        EnterExitState e;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        final Modifier modifier5 = modifier;
        ComposableLambdaImpl composableLambdaImpl4 = composableLambdaImpl;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1310802509);
        if ((i & 6) == 0) {
            if (gapComposer.f(transition)) {
                i11 = 4;
            } else {
                i11 = 2;
            }
            i2 = i11 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function1)) {
                i10 = 32;
            } else {
                i10 = 16;
            }
            i2 |= i10;
        }
        if ((i & 384) == 0) {
            if (gapComposer.f(modifier5)) {
                i9 = 256;
            } else {
                i9 = 128;
            }
            i2 |= i9;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(enterTransition)) {
                i8 = 2048;
            } else {
                i8 = 1024;
            }
            i2 |= i8;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.f(exitTransition)) {
                i7 = 16384;
            } else {
                i7 = 8192;
            }
            i2 |= i7;
        }
        if ((196608 & i) == 0) {
            if (gapComposer.h(function2)) {
                i6 = 131072;
            } else {
                i6 = 65536;
            }
            i2 |= i6;
        }
        int i12 = i2 | 1572864;
        if ((12582912 & i) == 0) {
            if (gapComposer.h(null)) {
                i5 = 8388608;
            } else {
                i5 = 4194304;
            }
            i12 |= i5;
        }
        if ((100663296 & i) == 0) {
            if (gapComposer.h(composableLambdaImpl4)) {
                i4 = 67108864;
            } else {
                i4 = 33554432;
            }
            i12 |= i4;
        }
        if ((38347923 & i12) != 38347922) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i12 & 1, z)) {
            MutableState mutableState = transition.e;
            MutableState mutableState2 = transition.d;
            TransitionState transitionState = transition.a;
            Object value = ((SnapshotMutableStateImpl) mutableState).getValue();
            Object K5 = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
            if (K5 == composer$Companion$Empty$12) {
                K5 = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K5);
            }
            final MutableState mutableState3 = (MutableState) K5;
            Object K6 = gapComposer.K();
            if (K6 == composer$Companion$Empty$12) {
                K6 = new Function0<Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$1$1
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        MutableState.this.setValue(Boolean.FALSE);
                        return Unit.a;
                    }
                };
                gapComposer.g0(K6);
            }
            int i13 = i12 & 14;
            int i14 = i12;
            int i15 = i13 | 48;
            EnterExitTransitionKt.a(transition, (Function0) K6, gapComposer, i15);
            if (value != null && ((Boolean) function1.b(value)).booleanValue()) {
                mutableState3.setValue(Boolean.TRUE);
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState2;
            if (!((Boolean) function1.b(snapshotMutableStateImpl.getValue())).booleanValue() && !((Boolean) function1.b(transitionState.a())).booleanValue() && ((value == null || !((Boolean) function1.b(value)).booleanValue()) && ((!((Boolean) mutableState3.getValue()).booleanValue() || Intrinsics.a(transitionState.a(), snapshotMutableStateImpl.getValue())) && !transition.h() && !transition.d()))) {
                gapComposer.W(-270514673);
                gapComposer.p(false);
                composableLambdaImpl2 = composableLambdaImpl4;
            } else {
                gapComposer.W(-273709037);
                int i16 = i15 & 14;
                if (((i16 ^ 6) > 4 && gapComposer.f(transition)) || (i15 & 6) == 4) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Object K7 = gapComposer.K();
                if (z2 || K7 == composer$Companion$Empty$12) {
                    K7 = transitionState.a();
                    gapComposer.g0(K7);
                }
                if (transition.h()) {
                    K7 = transitionState.a();
                }
                gapComposer.W(2016262395);
                EnterExitState e2 = e(transition, function1, K7, gapComposer);
                gapComposer.p(false);
                Object value2 = snapshotMutableStateImpl.getValue();
                gapComposer.W(2016262395);
                EnterExitState e3 = e(transition, function1, value2, gapComposer);
                gapComposer.p(false);
                int i17 = i16 | 3072;
                int i18 = (i17 & 14) ^ 6;
                if ((i18 > 4 && gapComposer.f(transition)) || (i17 & 6) == 4) {
                    z3 = true;
                } else {
                    z3 = false;
                }
                Object K8 = gapComposer.K();
                if (!z3 && K8 != composer$Companion$Empty$12) {
                    i3 = i17;
                } else {
                    i3 = i17;
                    K8 = new Transition(new MutableTransitionState(e2), transition, transition.c.concat(" > EnterExitTransition"));
                    gapComposer.g0(K8);
                }
                TransitionInstance transitionInstance2 = (TransitionInstance) K8;
                if ((i18 > 4 && gapComposer.f(transition)) || (i3 & 6) == 4) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                boolean f = z4 | gapComposer.f(transitionInstance2);
                Object K9 = gapComposer.K();
                if (f || K9 == composer$Companion$Empty$12) {
                    K9 = new ec(20, transition, transitionInstance2);
                    gapComposer.g0(K9);
                }
                EffectsKt.c(transitionInstance2, (Function1) K9, gapComposer);
                if (transition.h()) {
                    transitionInstance2.l(e2, e3);
                } else {
                    transitionInstance2.s(e3);
                    ((SnapshotMutableStateImpl) transitionInstance2.l).setValue(Boolean.FALSE);
                }
                if (!transition.h()) {
                    gapComposer.W(782386797);
                    Object value3 = ((SnapshotMutableStateImpl) transition.e).getValue();
                    if (value3 == null) {
                        gapComposer.W(782437481);
                        z17 = false;
                        gapComposer.p(false);
                        e = null;
                    } else {
                        z17 = false;
                        gapComposer.W(782437482);
                        gapComposer.W(2016262395);
                        e = e(transition, function1, value3, gapComposer);
                        gapComposer.p(false);
                        gapComposer.p(false);
                    }
                    transitionInstance2.r(e);
                    gapComposer.p(z17);
                } else {
                    gapComposer.W(782538635);
                    gapComposer.p(false);
                }
                boolean f2 = gapComposer.f(transitionInstance2);
                Object K10 = gapComposer.K();
                if (f2 || K10 == composer$Companion$Empty$12) {
                    K10 = SnapshotStateKt.g(enterTransition);
                    gapComposer.g0(K10);
                }
                MutableState mutableState4 = (MutableState) K10;
                TransitionState transitionState2 = transitionInstance2.a;
                SnapshotMutableStateImpl snapshotMutableStateImpl2 = (SnapshotMutableStateImpl) transitionInstance2.d;
                if (transitionState2.a() == snapshotMutableStateImpl2.getValue() && transitionInstance2.a.a() == EnterExitState.k) {
                    if (transitionInstance2.h()) {
                        mutableState4.setValue(enterTransition);
                    } else {
                        mutableState4.setValue(EnterTransition.a);
                    }
                } else if (snapshotMutableStateImpl2.getValue() != EnterExitState.l) {
                    mutableState4.setValue(((EnterTransition) mutableState4.getValue()).a(enterTransition));
                }
                EnterTransition enterTransition4 = (EnterTransition) mutableState4.getValue();
                MutableState mutableState5 = transitionInstance2.d;
                TransitionState transitionState3 = transitionInstance2.a;
                boolean f3 = gapComposer.f(transitionInstance2);
                Object K11 = gapComposer.K();
                if (f3 || K11 == composer$Companion$Empty$12) {
                    K11 = SnapshotStateKt.g(exitTransition);
                    gapComposer.g0(K11);
                }
                MutableState mutableState6 = (MutableState) K11;
                SnapshotMutableStateImpl snapshotMutableStateImpl3 = (SnapshotMutableStateImpl) mutableState5;
                if (transitionState3.a() == snapshotMutableStateImpl3.getValue() && transitionState3.a() == EnterExitState.k) {
                    gapComposer.W(-505142498);
                    gapComposer.p(false);
                    if (transitionInstance2.h()) {
                        mutableState6.setValue(exitTransition);
                    } else {
                        mutableState6.setValue(ExitTransition.a);
                    }
                } else if (snapshotMutableStateImpl3.getValue() != EnterExitState.k) {
                    gapComposer.W(-504838512);
                    Fade fade2 = ((ExitTransitionImpl) ((ExitTransition) mutableState6.getValue())).c.a;
                    if (fade2 != null) {
                        fade = new Fade(1.0f, fade2.b);
                    } else {
                        fade = null;
                    }
                    Scale scale2 = ((ExitTransitionImpl) ((ExitTransition) mutableState6.getValue())).c.d;
                    if (scale2 != null) {
                        scale = new Scale(1.0f, scale2.b, scale2.c);
                    } else {
                        scale = null;
                    }
                    Slide slide2 = ((ExitTransitionImpl) ((ExitTransition) mutableState6.getValue())).c.b;
                    if (slide2 == null) {
                        gapComposer.W(-504119809);
                        z5 = false;
                        gapComposer.p(false);
                        slide = null;
                    } else {
                        gapComposer.W(-708998590);
                        Object K12 = gapComposer.K();
                        if (K12 == composer$Companion$Empty$12) {
                            K12 = EnterExitTransitionKt$trackActiveExit$neutralData$1$1.k;
                            gapComposer.g0(K12);
                        }
                        Slide slide3 = new Slide((Function1) K12, slide2.b);
                        z5 = false;
                        gapComposer.p(false);
                        slide = slide3;
                    }
                    ChangeSize changeSize5 = ((ExitTransitionImpl) ((ExitTransition) mutableState6.getValue())).c.c;
                    if (changeSize5 == null) {
                        gapComposer.W(-504024174);
                        gapComposer.p(z5);
                        changeSize = null;
                    } else {
                        gapComposer.W(-708995505);
                        Object K13 = gapComposer.K();
                        if (K13 == composer$Companion$Empty$12) {
                            K13 = EnterExitTransitionKt$trackActiveExit$neutralData$2$1.k;
                            gapComposer.g0(K13);
                        }
                        ChangeSize changeSize6 = new ChangeSize(changeSize5.a, (Function1) K13, changeSize5.c, changeSize5.d);
                        gapComposer.p(false);
                        changeSize = changeSize6;
                    }
                    TransitionData transitionData2 = ((ExitTransitionImpl) ((ExitTransition) mutableState6.getValue())).c;
                    mutableState6.setValue(new ExitTransitionImpl(new TransitionData(fade, slide, changeSize, scale, (LinkedHashMap) null, 96)).a(exitTransition));
                    gapComposer.p(false);
                } else {
                    gapComposer.W(-503833306);
                    gapComposer.p(false);
                }
                ExitTransition exitTransition4 = (ExitTransition) mutableState6.getValue();
                MutableState k = SnapshotStateKt.k(function2, gapComposer);
                Object n = function2.n(transitionState3.a(), ((SnapshotMutableStateImpl) mutableState5).getValue());
                boolean f4 = gapComposer.f(transitionInstance2) | gapComposer.f(k);
                Object K14 = gapComposer.K();
                if (f4 || K14 == composer$Companion$Empty$12) {
                    K14 = new AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1(transitionInstance2, k, null);
                    gapComposer.g0(K14);
                }
                MutableState i19 = SnapshotStateKt.i(gapComposer, n, (Function2) K14);
                Object a = transitionState3.a();
                EnterExitState enterExitState = EnterExitState.l;
                if (a == enterExitState && ((SnapshotMutableStateImpl) mutableState5).getValue() == enterExitState && ((Boolean) i19.getValue()).booleanValue()) {
                    gapComposer.W(-270520625);
                    gapComposer.p(false);
                    composableLambdaImpl3 = composableLambdaImpl;
                    z12 = false;
                } else {
                    gapComposer.W(-272022668);
                    if (i13 == 4) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    Object K15 = gapComposer.K();
                    if (z6 || K15 == composer$Companion$Empty$12) {
                        K15 = new AnimatedVisibilityScopeImpl();
                        gapComposer.g0(K15);
                    }
                    AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl3 = (AnimatedVisibilityScopeImpl) K15;
                    animatedVisibilityScopeImpl3.b.getClass();
                    final SharedMutableTransformState sharedMutableTransformState5 = animatedVisibilityScopeImpl3.b;
                    Object K16 = gapComposer.K();
                    if (K16 == composer$Companion$Empty$12) {
                        K16 = EnterExitTransitionKt$createModifier$1$1.k;
                        gapComposer.g0(K16);
                    }
                    final Function0 function0 = (Function0) K16;
                    gapComposer.W(-1491182875);
                    gapComposer.p(false);
                    gapComposer.W(-1491180092);
                    gapComposer.p(false);
                    if (sharedMutableTransformState5 == null) {
                        gapComposer.W(-968938819);
                        boolean f5 = gapComposer.f(transitionInstance2);
                        Object K17 = gapComposer.K();
                        if (f5 || K17 == composer$Companion$Empty$12) {
                            K17 = new SharedMutableTransformState();
                            gapComposer.g0(K17);
                        }
                        sharedMutableTransformState5 = (SharedMutableTransformState) K17;
                        z7 = false;
                    } else {
                        z7 = false;
                        gapComposer.W(-31257052);
                    }
                    gapComposer.p(z7);
                    if (((SnapshotMutableStateImpl) transitionInstance2.e).getValue() != null) {
                        z8 = true;
                    } else {
                        z8 = false;
                    }
                    sharedMutableTransformState5.c(z8);
                    boolean h3 = gapComposer.h(sharedMutableTransformState5);
                    Object K18 = gapComposer.K();
                    if (h3 || K18 == composer$Companion$Empty$12) {
                        K18 = new Function0<Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$trackActiveMutableState$1$1
                            {
                                super(0);
                            }

                            @Override // kotlin.jvm.functions.Function0
                            public final Object a() {
                                SharedMutableTransformState sharedMutableTransformState6 = SharedMutableTransformState.this;
                                MutableState mutableState7 = sharedMutableTransformState6.b;
                                Boolean bool = Boolean.FALSE;
                                ((SnapshotMutableStateImpl) mutableState7).setValue(bool);
                                sharedMutableTransformState6.c(false);
                                TransformScopeImpl transformScopeImpl = sharedMutableTransformState6.c;
                                ((SnapshotMutableStateImpl) transformScopeImpl.a).setValue(bool);
                                ((SnapshotMutableStateImpl) transformScopeImpl.c).setValue(bool);
                                ((SnapshotMutableStateImpl) transformScopeImpl.e).setValue(bool);
                                ((SnapshotMutableStateImpl) transformScopeImpl.g).setValue(bool);
                                sharedMutableTransformState6.e = Color.g;
                                sharedMutableTransformState6.f = 1.0f;
                                sharedMutableTransformState6.g = 1.0f;
                                VelocityTracker1D velocityTracker1D = sharedMutableTransformState6.j;
                                if (velocityTracker1D != null) {
                                    ArraysKt.m(0, r2.length, null, velocityTracker1D.d);
                                    velocityTracker1D.e = 0;
                                }
                                sharedMutableTransformState6.h = TransformOrigin.b;
                                sharedMutableTransformState6.i = 0L;
                                return Unit.a;
                            }
                        };
                        gapComposer.g0(K18);
                    }
                    EnterExitTransitionKt.a(transitionInstance2, (Function0) K18, gapComposer, 0);
                    TransitionData transitionData3 = ((EnterTransitionImpl) enterTransition4).b;
                    ExitTransitionImpl exitTransitionImpl = (ExitTransitionImpl) exitTransition4;
                    TransitionData transitionData4 = exitTransitionImpl.c;
                    TransitionData transitionData5 = exitTransitionImpl.c;
                    boolean c = Color.c(sharedMutableTransformState5.e, Color.g);
                    TransitionData transitionData6 = ((EnterTransitionImpl) enterTransition4).b;
                    Slide slide4 = transitionData6.b;
                    ChangeSize changeSize7 = transitionData6.c;
                    if (slide4 == null && transitionData5.b == null) {
                        changeSize2 = changeSize7;
                        if (IntOffset.a(sharedMutableTransformState5.i, 0L)) {
                            z9 = false;
                            if (changeSize2 != null && transitionData5.c == null) {
                                z10 = false;
                            } else {
                                z10 = true;
                            }
                            TwoWayConverter twoWayConverter2 = VectorConvertersKt.g;
                            if (!z9) {
                                gapComposer.W(1018653691);
                                Object K19 = gapComposer.K();
                                if (K19 == composer$Companion$Empty$12) {
                                    K19 = "Built-in slide";
                                    gapComposer.g0("Built-in slide");
                                }
                                String str = (String) K19;
                                z11 = c;
                                composer$Companion$Empty$1 = composer$Companion$Empty$12;
                                sharedMutableTransformState = sharedMutableTransformState5;
                                changeSize3 = changeSize2;
                                z12 = false;
                                transitionData = transitionData5;
                                transitionInstance = transitionInstance2;
                                Transition.DeferredAnimation b = TransitionKt.b(transitionInstance, twoWayConverter2, str, gapComposer, 384, 0);
                                twoWayConverter = twoWayConverter2;
                                gapComposer.p(false);
                                deferredAnimation = b;
                            } else {
                                sharedMutableTransformState = sharedMutableTransformState5;
                                z11 = c;
                                transitionData = transitionData5;
                                twoWayConverter = twoWayConverter2;
                                changeSize3 = changeSize2;
                                composer$Companion$Empty$1 = composer$Companion$Empty$12;
                                transitionInstance = transitionInstance2;
                                z12 = false;
                                gapComposer.W(1018759494);
                                gapComposer.p(false);
                                deferredAnimation = null;
                            }
                            if (!z10) {
                                gapComposer.W(1018851285);
                                Object K20 = gapComposer.K();
                                if (K20 == composer$Companion$Empty$1) {
                                    K20 = "Built-in shrink/expand";
                                    gapComposer.g0("Built-in shrink/expand");
                                }
                                Transition.DeferredAnimation b2 = TransitionKt.b(transitionInstance, VectorConvertersKt.h, (String) K20, gapComposer, 384, 0);
                                gapComposer.p(z12);
                                deferredAnimation2 = b2;
                            } else {
                                gapComposer.W(1018962109);
                                gapComposer.p(z12);
                                deferredAnimation2 = null;
                            }
                            if (!z10) {
                                gapComposer.W(1019035735);
                                Object K21 = gapComposer.K();
                                if (K21 == composer$Companion$Empty$1) {
                                    K21 = "Built-in InterruptionHandlingOffset";
                                    gapComposer.g0("Built-in InterruptionHandlingOffset");
                                }
                                Transition.DeferredAnimation b3 = TransitionKt.b(transitionInstance, twoWayConverter, (String) K21, gapComposer, 384, 0);
                                gapComposer.p(z12);
                                deferredAnimation3 = b3;
                            } else {
                                gapComposer.W(1019206141);
                                gapComposer.p(z12);
                                deferredAnimation3 = null;
                            }
                            if ((changeSize3 == null && !changeSize3.d) || (((changeSize4 = transitionData.c) != null && !changeSize4.d) || !z10)) {
                                z13 = true;
                            } else {
                                z13 = z12;
                            }
                            Rgb rgb = ColorSpaces.e;
                            companion = Modifier.Companion.b;
                            if (z11) {
                                gapComposer.W(1019733235);
                                TwoWayConverter twoWayConverter3 = (TwoWayConverter) ColorVectorConverterKt$ColorToVector$1.k.b(rgb);
                                Object K22 = gapComposer.K();
                                if (K22 == composer$Companion$Empty$1) {
                                    K22 = "Built-in veil";
                                    gapComposer.g0("Built-in veil");
                                }
                                SharedMutableTransformState sharedMutableTransformState6 = sharedMutableTransformState;
                                modifier2 = new VeilModifierElement(transitionInstance, TransitionKt.b(transitionInstance, twoWayConverter3, (String) K22, gapComposer, 384, 0), enterTransition4, exitTransition4, sharedMutableTransformState6);
                                enterTransition2 = enterTransition4;
                                sharedMutableTransformState2 = sharedMutableTransformState6;
                                gapComposer.p(z12);
                            } else {
                                sharedMutableTransformState2 = sharedMutableTransformState;
                                enterTransition2 = enterTransition4;
                                gapComposer.W(1020031362);
                                gapComposer.p(z12);
                                modifier2 = companion;
                            }
                            TransitionData transitionData7 = ((ExitTransitionImpl) exitTransition4).c;
                            if (transitionData6.a != null && transitionData7.a == null) {
                                companion2 = companion;
                                if (sharedMutableTransformState2.f == 1.0f) {
                                    z14 = z12;
                                    if (transitionData6.d != null && transitionData7.d == null && sharedMutableTransformState2.g == 1.0f) {
                                        z15 = z12;
                                    } else {
                                        z15 = true;
                                    }
                                    SharedMutableTransformState sharedMutableTransformState7 = sharedMutableTransformState2;
                                    TwoWayConverter twoWayConverter4 = VectorConvertersKt.a;
                                    if (z14) {
                                        gapComposer.W(-1511865571);
                                        Object K23 = gapComposer.K();
                                        if (K23 == composer$Companion$Empty$1) {
                                            K23 = "Built-in alpha";
                                            gapComposer.g0("Built-in alpha");
                                        }
                                        animatedVisibilityScopeImpl = animatedVisibilityScopeImpl3;
                                        z16 = z15;
                                        companion3 = companion2;
                                        modifier3 = modifier2;
                                        sharedMutableTransformState3 = sharedMutableTransformState7;
                                        exitTransition2 = exitTransition4;
                                        Transition.DeferredAnimation b4 = TransitionKt.b(transitionInstance, twoWayConverter4, (String) K23, gapComposer, 384, 0);
                                        gapComposer.p(z12);
                                        deferredAnimation4 = b4;
                                    } else {
                                        animatedVisibilityScopeImpl = animatedVisibilityScopeImpl3;
                                        z16 = z15;
                                        companion3 = companion2;
                                        modifier3 = modifier2;
                                        sharedMutableTransformState3 = sharedMutableTransformState7;
                                        exitTransition2 = exitTransition4;
                                        gapComposer.W(-1511696126);
                                        gapComposer.p(z12);
                                        deferredAnimation4 = null;
                                    }
                                    if (z16) {
                                        gapComposer.W(-1511628483);
                                        Object K24 = gapComposer.K();
                                        if (K24 == composer$Companion$Empty$1) {
                                            K24 = "Built-in scale";
                                            gapComposer.g0("Built-in scale");
                                        }
                                        deferredAnimation5 = deferredAnimation4;
                                        Transition.DeferredAnimation b5 = TransitionKt.b(transitionInstance, twoWayConverter4, (String) K24, gapComposer, 384, 0);
                                        gapComposer.p(z12);
                                        deferredAnimation6 = b5;
                                    } else {
                                        deferredAnimation5 = deferredAnimation4;
                                        gapComposer.W(-1511459038);
                                        gapComposer.p(z12);
                                        deferredAnimation6 = null;
                                    }
                                    if (z16) {
                                        gapComposer.W(-1511381382);
                                        modifier4 = modifier3;
                                        deferredAnimation7 = deferredAnimation6;
                                        deferredAnimation8 = TransitionKt.b(transitionInstance, EnterExitTransitionKt.a, "TransformOriginInterruptionHandling", gapComposer, 384, 0);
                                        gapComposer.p(z12);
                                    } else {
                                        modifier4 = modifier3;
                                        deferredAnimation7 = deferredAnimation6;
                                        gapComposer.W(-1511209054);
                                        gapComposer.p(z12);
                                        deferredAnimation8 = null;
                                    }
                                    h = gapComposer.h(deferredAnimation5) | gapComposer.f(enterTransition2) | gapComposer.f(exitTransition2) | gapComposer.h(sharedMutableTransformState3) | gapComposer.h(deferredAnimation7) | gapComposer.f(transitionInstance) | gapComposer.h(deferredAnimation8);
                                    K = gapComposer.K();
                                    if (h && K != composer$Companion$Empty$1) {
                                        sharedMutableTransformState4 = sharedMutableTransformState3;
                                        enterTransition3 = enterTransition2;
                                        exitTransition3 = exitTransition2;
                                    } else {
                                        SharedMutableTransformState sharedMutableTransformState8 = sharedMutableTransformState3;
                                        enterTransition3 = enterTransition2;
                                        exitTransition3 = exitTransition2;
                                        K = new d8(deferredAnimation5, sharedMutableTransformState8, deferredAnimation7, transitionInstance, enterTransition3, exitTransition3, deferredAnimation8);
                                        sharedMutableTransformState4 = sharedMutableTransformState8;
                                        gapComposer.g0(K);
                                    }
                                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit = (GraphicsLayerBlockForEnterExit) K;
                                    h2 = gapComposer.h(sharedMutableTransformState4);
                                    K2 = gapComposer.K();
                                    if (!h2 || K2 == composer$Companion$Empty$1) {
                                        K2 = new Function0<SharedMutableTransformState>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$2$1
                                            {
                                                super(0);
                                            }

                                            @Override // kotlin.jvm.functions.Function0
                                            public final Object a() {
                                                return SharedMutableTransformState.this;
                                            }
                                        };
                                        gapComposer.g0(K2);
                                    }
                                    Modifier l = new ModifierLocalProviderKt$modifierLocalProvider$1((Function0) K2).l(companion3);
                                    g = gapComposer.g(z13) | gapComposer.f(function0);
                                    K3 = gapComposer.K();
                                    if (!g || K3 == composer$Companion$Empty$1) {
                                        K3 = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$3$1
                                            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                            {
                                                super(1);
                                            }

                                            @Override // kotlin.jvm.functions.Function1
                                            public final Object b(Object obj) {
                                                boolean z18;
                                                GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                                                if (!z13 && ((Boolean) function0.a()).booleanValue()) {
                                                    z18 = true;
                                                } else {
                                                    z18 = false;
                                                }
                                                ((ReusableGraphicsLayerScope) graphicsLayerScope).d(z18);
                                                return Unit.a;
                                            }
                                        };
                                        gapComposer.g0(K3);
                                    }
                                    Modifier l2 = l.l(GraphicsLayerModifierKt.a(companion3, (Function1) K3)).l(new EnterExitTransitionElement(transitionInstance, deferredAnimation2, deferredAnimation3, deferredAnimation, enterTransition3, exitTransition3, sharedMutableTransformState4, function0, graphicsLayerBlockForEnterExit)).l(modifier4);
                                    gapComposer.W(-1255657861);
                                    gapComposer.p(z12);
                                    modifier5 = modifier;
                                    Modifier l3 = modifier5.l(l2.l(companion3));
                                    K4 = gapComposer.K();
                                    if (K4 == composer$Companion$Empty$1) {
                                        animatedVisibilityScopeImpl2 = animatedVisibilityScopeImpl;
                                        K4 = new AnimatedEnterExitMeasurePolicy(animatedVisibilityScopeImpl2);
                                        gapComposer.g0(K4);
                                    } else {
                                        animatedVisibilityScopeImpl2 = animatedVisibilityScopeImpl;
                                    }
                                    AnimatedEnterExitMeasurePolicy animatedEnterExitMeasurePolicy = (AnimatedEnterExitMeasurePolicy) K4;
                                    int hashCode = Long.hashCode(gapComposer.T);
                                    PersistentCompositionLocalMap l4 = gapComposer.l();
                                    Modifier c2 = ComposedModifierKt.c(gapComposer, l3);
                                    ComposeUiNode.b.getClass();
                                    gapComposer.Z();
                                    if (gapComposer.S) {
                                        gapComposer.k(LayoutNode.b0);
                                    } else {
                                        gapComposer.j0();
                                    }
                                    Updater.c(gapComposer, animatedEnterExitMeasurePolicy, ComposeUiNode.Companion.d);
                                    Updater.c(gapComposer, l4, ComposeUiNode.Companion.c);
                                    Updater.a(gapComposer, Integer.valueOf(hashCode));
                                    Updater.b(gapComposer);
                                    Updater.c(gapComposer, c2, ComposeUiNode.Companion.b);
                                    ?? r7 = composableLambdaImpl;
                                    r7.f(animatedVisibilityScopeImpl2, gapComposer, Integer.valueOf((i14 >> 21) & 112));
                                    gapComposer.p(true);
                                    gapComposer.p(z12);
                                    composableLambdaImpl3 = r7;
                                }
                            } else {
                                companion2 = companion;
                            }
                            z14 = true;
                            if (transitionData6.d != null) {
                            }
                            z15 = true;
                            SharedMutableTransformState sharedMutableTransformState72 = sharedMutableTransformState2;
                            TwoWayConverter twoWayConverter42 = VectorConvertersKt.a;
                            if (z14) {
                            }
                            if (z16) {
                            }
                            if (z16) {
                            }
                            h = gapComposer.h(deferredAnimation5) | gapComposer.f(enterTransition2) | gapComposer.f(exitTransition2) | gapComposer.h(sharedMutableTransformState3) | gapComposer.h(deferredAnimation7) | gapComposer.f(transitionInstance) | gapComposer.h(deferredAnimation8);
                            K = gapComposer.K();
                            if (h) {
                            }
                            SharedMutableTransformState sharedMutableTransformState82 = sharedMutableTransformState3;
                            enterTransition3 = enterTransition2;
                            exitTransition3 = exitTransition2;
                            K = new d8(deferredAnimation5, sharedMutableTransformState82, deferredAnimation7, transitionInstance, enterTransition3, exitTransition3, deferredAnimation8);
                            sharedMutableTransformState4 = sharedMutableTransformState82;
                            gapComposer.g0(K);
                            GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit2 = (GraphicsLayerBlockForEnterExit) K;
                            h2 = gapComposer.h(sharedMutableTransformState4);
                            K2 = gapComposer.K();
                            if (!h2) {
                            }
                            K2 = new Function0<SharedMutableTransformState>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$2$1
                                {
                                    super(0);
                                }

                                @Override // kotlin.jvm.functions.Function0
                                public final Object a() {
                                    return SharedMutableTransformState.this;
                                }
                            };
                            gapComposer.g0(K2);
                            Modifier l5 = new ModifierLocalProviderKt$modifierLocalProvider$1((Function0) K2).l(companion3);
                            g = gapComposer.g(z13) | gapComposer.f(function0);
                            K3 = gapComposer.K();
                            if (!g) {
                            }
                            K3 = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$3$1
                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                {
                                    super(1);
                                }

                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj) {
                                    boolean z18;
                                    GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                                    if (!z13 && ((Boolean) function0.a()).booleanValue()) {
                                        z18 = true;
                                    } else {
                                        z18 = false;
                                    }
                                    ((ReusableGraphicsLayerScope) graphicsLayerScope).d(z18);
                                    return Unit.a;
                                }
                            };
                            gapComposer.g0(K3);
                            Modifier l22 = l5.l(GraphicsLayerModifierKt.a(companion3, (Function1) K3)).l(new EnterExitTransitionElement(transitionInstance, deferredAnimation2, deferredAnimation3, deferredAnimation, enterTransition3, exitTransition3, sharedMutableTransformState4, function0, graphicsLayerBlockForEnterExit2)).l(modifier4);
                            gapComposer.W(-1255657861);
                            gapComposer.p(z12);
                            modifier5 = modifier;
                            Modifier l32 = modifier5.l(l22.l(companion3));
                            K4 = gapComposer.K();
                            if (K4 == composer$Companion$Empty$1) {
                            }
                            AnimatedEnterExitMeasurePolicy animatedEnterExitMeasurePolicy2 = (AnimatedEnterExitMeasurePolicy) K4;
                            int hashCode2 = Long.hashCode(gapComposer.T);
                            PersistentCompositionLocalMap l42 = gapComposer.l();
                            Modifier c22 = ComposedModifierKt.c(gapComposer, l32);
                            ComposeUiNode.b.getClass();
                            gapComposer.Z();
                            if (gapComposer.S) {
                            }
                            Updater.c(gapComposer, animatedEnterExitMeasurePolicy2, ComposeUiNode.Companion.d);
                            Updater.c(gapComposer, l42, ComposeUiNode.Companion.c);
                            Updater.a(gapComposer, Integer.valueOf(hashCode2));
                            Updater.b(gapComposer);
                            Updater.c(gapComposer, c22, ComposeUiNode.Companion.b);
                            ?? r72 = composableLambdaImpl;
                            r72.f(animatedVisibilityScopeImpl2, gapComposer, Integer.valueOf((i14 >> 21) & 112));
                            gapComposer.p(true);
                            gapComposer.p(z12);
                            composableLambdaImpl3 = r72;
                        }
                    } else {
                        changeSize2 = changeSize7;
                    }
                    z9 = true;
                    if (changeSize2 != null) {
                    }
                    z10 = true;
                    TwoWayConverter twoWayConverter22 = VectorConvertersKt.g;
                    if (!z9) {
                    }
                    if (!z10) {
                    }
                    if (!z10) {
                    }
                    if (changeSize3 == null) {
                    }
                    z13 = z12;
                    Rgb rgb2 = ColorSpaces.e;
                    companion = Modifier.Companion.b;
                    if (z11) {
                    }
                    TransitionData transitionData72 = ((ExitTransitionImpl) exitTransition4).c;
                    if (transitionData6.a != null) {
                    }
                    companion2 = companion;
                    z14 = true;
                    if (transitionData6.d != null) {
                    }
                    z15 = true;
                    SharedMutableTransformState sharedMutableTransformState722 = sharedMutableTransformState2;
                    TwoWayConverter twoWayConverter422 = VectorConvertersKt.a;
                    if (z14) {
                    }
                    if (z16) {
                    }
                    if (z16) {
                    }
                    h = gapComposer.h(deferredAnimation5) | gapComposer.f(enterTransition2) | gapComposer.f(exitTransition2) | gapComposer.h(sharedMutableTransformState3) | gapComposer.h(deferredAnimation7) | gapComposer.f(transitionInstance) | gapComposer.h(deferredAnimation8);
                    K = gapComposer.K();
                    if (h) {
                    }
                    SharedMutableTransformState sharedMutableTransformState822 = sharedMutableTransformState3;
                    enterTransition3 = enterTransition2;
                    exitTransition3 = exitTransition2;
                    K = new d8(deferredAnimation5, sharedMutableTransformState822, deferredAnimation7, transitionInstance, enterTransition3, exitTransition3, deferredAnimation8);
                    sharedMutableTransformState4 = sharedMutableTransformState822;
                    gapComposer.g0(K);
                    GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit22 = (GraphicsLayerBlockForEnterExit) K;
                    h2 = gapComposer.h(sharedMutableTransformState4);
                    K2 = gapComposer.K();
                    if (!h2) {
                    }
                    K2 = new Function0<SharedMutableTransformState>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$2$1
                        {
                            super(0);
                        }

                        @Override // kotlin.jvm.functions.Function0
                        public final Object a() {
                            return SharedMutableTransformState.this;
                        }
                    };
                    gapComposer.g0(K2);
                    Modifier l52 = new ModifierLocalProviderKt$modifierLocalProvider$1((Function0) K2).l(companion3);
                    g = gapComposer.g(z13) | gapComposer.f(function0);
                    K3 = gapComposer.K();
                    if (!g) {
                    }
                    K3 = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createModifier$3$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj) {
                            boolean z18;
                            GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                            if (!z13 && ((Boolean) function0.a()).booleanValue()) {
                                z18 = true;
                            } else {
                                z18 = false;
                            }
                            ((ReusableGraphicsLayerScope) graphicsLayerScope).d(z18);
                            return Unit.a;
                        }
                    };
                    gapComposer.g0(K3);
                    Modifier l222 = l52.l(GraphicsLayerModifierKt.a(companion3, (Function1) K3)).l(new EnterExitTransitionElement(transitionInstance, deferredAnimation2, deferredAnimation3, deferredAnimation, enterTransition3, exitTransition3, sharedMutableTransformState4, function0, graphicsLayerBlockForEnterExit22)).l(modifier4);
                    gapComposer.W(-1255657861);
                    gapComposer.p(z12);
                    modifier5 = modifier;
                    Modifier l322 = modifier5.l(l222.l(companion3));
                    K4 = gapComposer.K();
                    if (K4 == composer$Companion$Empty$1) {
                    }
                    AnimatedEnterExitMeasurePolicy animatedEnterExitMeasurePolicy22 = (AnimatedEnterExitMeasurePolicy) K4;
                    int hashCode22 = Long.hashCode(gapComposer.T);
                    PersistentCompositionLocalMap l422 = gapComposer.l();
                    Modifier c222 = ComposedModifierKt.c(gapComposer, l322);
                    ComposeUiNode.b.getClass();
                    gapComposer.Z();
                    if (gapComposer.S) {
                    }
                    Updater.c(gapComposer, animatedEnterExitMeasurePolicy22, ComposeUiNode.Companion.d);
                    Updater.c(gapComposer, l422, ComposeUiNode.Companion.c);
                    Updater.a(gapComposer, Integer.valueOf(hashCode22));
                    Updater.b(gapComposer);
                    Updater.c(gapComposer, c222, ComposeUiNode.Companion.b);
                    ?? r722 = composableLambdaImpl;
                    r722.f(animatedVisibilityScopeImpl2, gapComposer, Integer.valueOf((i14 >> 21) & 112));
                    gapComposer.p(true);
                    gapComposer.p(z12);
                    composableLambdaImpl3 = r722;
                }
                gapComposer.p(z12);
                composableLambdaImpl2 = composableLambdaImpl3;
            }
        } else {
            gapComposer.Q();
            composableLambdaImpl2 = composableLambdaImpl4;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$5
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.a(Transition.this, function1, modifier5, enterTransition, exitTransition, function2, composableLambdaImpl2, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(final boolean z, Modifier modifier, EnterTransition enterTransition, ExitTransition exitTransition, String str, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z2;
        ExitTransition exitTransition2;
        final ComposableLambdaImpl composableLambdaImpl2;
        final EnterTransition enterTransition2;
        final String str2;
        int i3;
        int i4;
        int i5;
        int i6;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1448730565);
        if ((i & 6) == 0) {
            if (gapComposer.g(z)) {
                i6 = 4;
            } else {
                i6 = 2;
            }
            i2 = i6 | i;
        } else {
            i2 = i;
        }
        int i7 = i2 | 48;
        if ((i & 384) == 0) {
            if (gapComposer.f(enterTransition)) {
                i5 = 256;
            } else {
                i5 = 128;
            }
            i7 |= i5;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(exitTransition)) {
                i4 = 2048;
            } else {
                i4 = 1024;
            }
            i7 |= i4;
        }
        int i8 = i7 | 24576;
        if ((196608 & i) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 131072;
            } else {
                i3 = 65536;
            }
            i8 |= i3;
        }
        if ((74899 & i8) != 74898) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i8 & 1, z2)) {
            TransitionInstance e = TransitionKt.e(Boolean.valueOf(z), "AnimatedVisibility", gapComposer, (i8 & 14) | ((i8 >> 9) & 112));
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = AnimatedVisibilityKt$AnimatedVisibility$1$1.k;
                gapComposer.g0(K);
            }
            Function1 function1 = (Function1) K;
            int i9 = i8 << 3;
            exitTransition2 = exitTransition;
            d(e, function1, enterTransition, exitTransition2, composableLambdaImpl, gapComposer, (i9 & 896) | 48 | (i9 & 7168) | (57344 & i9) | (i9 & 3670016));
            enterTransition2 = enterTransition;
            composableLambdaImpl2 = composableLambdaImpl;
            modifier = Modifier.Companion.b;
            str2 = "AnimatedVisibility";
        } else {
            exitTransition2 = exitTransition;
            composableLambdaImpl2 = composableLambdaImpl;
            enterTransition2 = enterTransition;
            gapComposer.Q();
            str2 = str;
        }
        final Modifier modifier2 = modifier;
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final ExitTransition exitTransition3 = exitTransition2;
            r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.b(z, modifier2, enterTransition2, exitTransition3, str2, composableLambdaImpl2, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final void c(final boolean z, Modifier modifier, final EnterTransition enterTransition, final ExitTransition exitTransition, String str, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z2;
        final Modifier modifier2;
        final String str2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(1799879339);
        if (gapComposer.g(z)) {
            i2 = 32;
        } else {
            i2 = 16;
        }
        int i3 = i | i2 | 196992;
        if ((599185 & i3) != 599184) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (gapComposer.N(i3 & 1, z2)) {
            TransitionInstance e = TransitionKt.e(Boolean.valueOf(z), "AnimatedVisibility", gapComposer, ((i3 >> 3) & 14) | 48);
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = AnimatedVisibilityKt$AnimatedVisibility$5$1.k;
                gapComposer.g0(K);
            }
            d(e, (Function1) K, enterTransition, exitTransition, composableLambdaImpl, gapComposer, 1600944);
            str2 = "AnimatedVisibility";
            modifier2 = Modifier.Companion.b;
        } else {
            gapComposer.Q();
            modifier2 = modifier;
            str2 = str;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2<Composer, Integer, Unit>(z, modifier2, enterTransition, exitTransition, str2, composableLambdaImpl, i) { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibility$6
                public final /* synthetic */ boolean k;
                public final /* synthetic */ Modifier l;
                public final /* synthetic */ EnterTransition m;
                public final /* synthetic */ ExitTransition n;
                public final /* synthetic */ String o;
                public final /* synthetic */ ComposableLambdaImpl p;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    int a = RecomposeScopeImplKt.a(1600519);
                    AnimatedVisibilityKt.c(this.k, this.l, this.m, this.n, this.o, this.p, (Composer) obj, a);
                    return Unit.a;
                }
            };
        }
    }

    public static final void d(final TransitionInstance transitionInstance, final Function1 function1, EnterTransition enterTransition, ExitTransition exitTransition, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z;
        final ComposableLambdaImpl composableLambdaImpl2;
        final ExitTransition exitTransition2;
        final EnterTransition enterTransition2;
        final Function1 function12;
        final TransitionInstance transitionInstance2;
        boolean z2;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-497872534);
        if ((i & 6) == 0) {
            if (gapComposer.f(transitionInstance)) {
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
        int i9 = i & 384;
        Modifier.Companion companion = Modifier.Companion.b;
        if (i9 == 0) {
            if (gapComposer.f(companion)) {
                i6 = 256;
            } else {
                i6 = 128;
            }
            i2 |= i6;
        }
        if ((i & 3072) == 0) {
            if (gapComposer.f(enterTransition)) {
                i5 = 2048;
            } else {
                i5 = 1024;
            }
            i2 |= i5;
        }
        if ((i & 24576) == 0) {
            if (gapComposer.f(exitTransition)) {
                i4 = 16384;
            } else {
                i4 = 8192;
            }
            i2 |= i4;
        }
        int i10 = i2 | 196608;
        if ((1572864 & i) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 1048576;
            } else {
                i3 = 524288;
            }
            i10 |= i3;
        }
        boolean z3 = false;
        if ((599187 & i10) != 599186) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i10 & 1, z)) {
            int i11 = i10 & 112;
            if (i11 == 32) {
                z2 = true;
            } else {
                z2 = false;
            }
            int i12 = i10 & 14;
            if (i12 == 4) {
                z3 = true;
            }
            boolean z4 = z2 | z3;
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (z4 || K == composer$Companion$Empty$1) {
                K = new Function3<MeasureScope, Measurable, Constraints, MeasureResult>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public final Object f(Object obj, Object obj2, Object obj3) {
                        long j;
                        Map map;
                        MeasureScope measureScope = (MeasureScope) obj;
                        final Placeable w = ((Measurable) obj2).w(((Constraints) obj3).a);
                        if (measureScope.f0()) {
                            if (!((Boolean) Function1.this.b(((SnapshotMutableStateImpl) transitionInstance.d).getValue())).booleanValue()) {
                                j = 0;
                                int i13 = (int) (4294967295L & j);
                                Function1<Placeable.PlacementScope, Unit> function13 = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1.1
                                    {
                                        super(1);
                                    }

                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj4) {
                                        ((Placeable.PlacementScope) obj4).e(Placeable.this, 0, 0, 0.0f);
                                        return Unit.a;
                                    }
                                };
                                map = EmptyMap.j;
                                return measureScope.B((int) (j >> 32), i13, map, function13);
                            }
                        }
                        j = (w.j << 32) | (w.k & 4294967295L);
                        int i132 = (int) (4294967295L & j);
                        Function1<Placeable.PlacementScope, Unit> function132 = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$1$1.1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj4) {
                                ((Placeable.PlacementScope) obj4).e(Placeable.this, 0, 0, 0.0f);
                                return Unit.a;
                            }
                        };
                        map = EmptyMap.j;
                        return measureScope.B((int) (j >> 32), i132, map, function132);
                    }
                };
                gapComposer.g0(K);
            }
            Modifier a = LayoutModifierKt.a(companion, (Function3) K);
            Object K2 = gapComposer.K();
            if (K2 == composer$Companion$Empty$1) {
                K2 = AnimatedVisibilityKt$AnimatedVisibilityImpl$2$1.k;
                gapComposer.g0(K2);
            }
            int i13 = 196608 | i12 | i11 | (i10 & 7168) | (57344 & i10);
            int i14 = i10 << 6;
            a(transitionInstance, function1, a, enterTransition, exitTransition, (Function2) K2, composableLambdaImpl, gapComposer, i13 | (29360128 & i14) | (i14 & 234881024));
            transitionInstance2 = transitionInstance;
            function12 = function1;
            enterTransition2 = enterTransition;
            exitTransition2 = exitTransition;
            composableLambdaImpl2 = composableLambdaImpl;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            exitTransition2 = exitTransition;
            enterTransition2 = enterTransition;
            function12 = function1;
            transitionInstance2 = transitionInstance;
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedVisibilityImpl$3
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    ((Number) obj2).intValue();
                    AnimatedVisibilityKt.d(TransitionInstance.this, function12, enterTransition2, exitTransition2, composableLambdaImpl2, (Composer) obj, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final EnterExitState e(Transition transition, Function1 function1, Object obj, Composer composer) {
        EnterExitState enterExitState;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.U(-422486566, transition);
        boolean h = transition.h();
        TransitionState transitionState = transition.a;
        if (h) {
            gapComposer.W(-212166497);
            gapComposer.p(false);
            if (((Boolean) function1.b(obj)).booleanValue()) {
                enterExitState = EnterExitState.k;
            } else if (((Boolean) function1.b(transitionState.a())).booleanValue()) {
                enterExitState = EnterExitState.l;
            } else {
                enterExitState = EnterExitState.j;
            }
        } else {
            gapComposer.W(-211886815);
            Object K = gapComposer.K();
            if (K == Composer.Companion.a) {
                K = SnapshotStateKt.g(Boolean.FALSE);
                gapComposer.g0(K);
            }
            MutableState mutableState = (MutableState) K;
            Object value = ((SnapshotMutableStateImpl) transition.e).getValue();
            if (((Boolean) function1.b(transitionState.a())).booleanValue() || (value != null && ((Boolean) function1.b(value)).booleanValue())) {
                mutableState.setValue(Boolean.TRUE);
            }
            if (((Boolean) function1.b(obj)).booleanValue()) {
                enterExitState = EnterExitState.k;
            } else if (value != null && ((Boolean) function1.b(value)).booleanValue()) {
                enterExitState = EnterExitState.j;
            } else if (((Boolean) mutableState.getValue()).booleanValue()) {
                enterExitState = EnterExitState.l;
            } else {
                enterExitState = EnterExitState.j;
            }
            gapComposer.p(false);
        }
        gapComposer.p(false);
        return enterExitState;
    }
}
