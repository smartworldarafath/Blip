package androidx.compose.animation;

import androidx.compose.animation.core.AnimationVector1D;
import androidx.compose.animation.core.AnimationVector2D;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.graphics.TransformOrigin;
import androidx.compose.ui.input.pointer.util.VelocityTracker1D;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutAwareModifierNode;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.unit.Velocity;
import defpackage.d8;
import defpackage.k8;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.Duration;
import kotlin.time.DurationUnit;
import kotlin.time.LongSaturatedMathKt;
import kotlin.time.MonotonicTimeSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EnterExitTransitionModifierNode extends LayoutModifierNodeWithPassThroughIntrinsics implements LayoutAwareModifierNode {
    public Transition.DeferredAnimation A;
    public EnterTransition B;
    public ExitTransition C;
    public SharedMutableTransformState D;
    public Function0 E;
    public GraphicsLayerBlockForEnterExit F;
    public long G = -9223372034707292160L;
    public Alignment H;
    public final Function1 I;
    public final Function1 J;
    public TransitionInstance x;
    public Transition.DeferredAnimation y;
    public Transition.DeferredAnimation z;

    public EnterExitTransitionModifierNode(TransitionInstance transitionInstance, Transition.DeferredAnimation deferredAnimation, Transition.DeferredAnimation deferredAnimation2, Transition.DeferredAnimation deferredAnimation3, EnterTransition enterTransition, ExitTransition exitTransition, SharedMutableTransformState sharedMutableTransformState, Function0 function0, GraphicsLayerBlockForEnterExit graphicsLayerBlockForEnterExit) {
        this.x = transitionInstance;
        this.y = deferredAnimation;
        this.z = deferredAnimation2;
        this.A = deferredAnimation3;
        this.B = enterTransition;
        this.C = exitTransition;
        this.D = sharedMutableTransformState;
        this.E = function0;
        this.F = graphicsLayerBlockForEnterExit;
        ConstraintsKt.b(0, 0, 0, 0, 15);
        this.I = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$sizeTransitionSpec$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState = EnterExitState.j;
                EnterExitState enterExitState2 = EnterExitState.k;
                boolean b = segment.b(enterExitState, enterExitState2);
                Object obj2 = null;
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = EnterExitTransitionModifierNode.this;
                if (b) {
                    ChangeSize changeSize = ((EnterTransitionImpl) enterExitTransitionModifierNode.B).b.c;
                    if (changeSize != null) {
                        obj2 = changeSize.c;
                    }
                } else if (segment.b(enterExitState2, EnterExitState.l)) {
                    ChangeSize changeSize2 = ((ExitTransitionImpl) enterExitTransitionModifierNode.C).c.c;
                    if (changeSize2 != null) {
                        obj2 = changeSize2.c;
                    }
                } else {
                    obj2 = EnterExitTransitionKt.e;
                }
                if (obj2 == null) {
                    return EnterExitTransitionKt.e;
                }
                return obj2;
            }
        };
        this.J = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<IntOffset>>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$slideSpec$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                FiniteAnimationSpec finiteAnimationSpec;
                FiniteAnimationSpec finiteAnimationSpec2;
                Transition.Segment segment = (Transition.Segment) obj;
                EnterExitState enterExitState = EnterExitState.j;
                EnterExitState enterExitState2 = EnterExitState.k;
                boolean b = segment.b(enterExitState, enterExitState2);
                EnterExitTransitionModifierNode enterExitTransitionModifierNode = EnterExitTransitionModifierNode.this;
                if (b) {
                    Slide slide = ((EnterTransitionImpl) enterExitTransitionModifierNode.B).b.b;
                    if (slide != null && (finiteAnimationSpec2 = slide.b) != null) {
                        return finiteAnimationSpec2;
                    }
                    return EnterExitTransitionKt.d;
                }
                if (segment.b(enterExitState2, EnterExitState.l)) {
                    Slide slide2 = ((ExitTransitionImpl) enterExitTransitionModifierNode.C).c.b;
                    if (slide2 != null && (finiteAnimationSpec = slide2.b) != null) {
                        return finiteAnimationSpec;
                    }
                    return EnterExitTransitionKt.d;
                }
                return EnterExitTransitionKt.d;
            }
        };
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        this.G = -9223372034707292160L;
    }

    public final Alignment Y0() {
        Alignment alignment;
        Alignment alignment2;
        if (this.x.f().b(EnterExitState.j, EnterExitState.k)) {
            ChangeSize changeSize = ((EnterTransitionImpl) this.B).b.c;
            if (changeSize != null && (alignment2 = changeSize.a) != null) {
                return alignment2;
            }
            ChangeSize changeSize2 = ((ExitTransitionImpl) this.C).c.c;
            if (changeSize2 != null) {
                return changeSize2.a;
            }
            return null;
        }
        ChangeSize changeSize3 = ((ExitTransitionImpl) this.C).c.c;
        if (changeSize3 != null && (alignment = changeSize3.a) != null) {
            return alignment;
        }
        ChangeSize changeSize4 = ((EnterTransitionImpl) this.B).b.c;
        if (changeSize4 != null) {
            return changeSize4.a;
        }
        return null;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        final Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData;
        char c;
        long j2;
        final Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData2;
        final TransformOrigin transformOrigin;
        final Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData3;
        final long j3;
        Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData4;
        long j4;
        long j5;
        long j6;
        final Transition.DeferredAnimation.DeferredAnimationData deferredAnimationData5;
        Map map2;
        IntOffset intOffset;
        AnimationVector2D animationVector2D;
        float f;
        float f2;
        TransformOrigin transformOrigin2;
        Float f3;
        AnimationVector1D animationVector1D;
        float f4;
        Float f5;
        Map map3;
        if (this.x.a.a() == ((SnapshotMutableStateImpl) this.x.d).getValue()) {
            this.H = null;
        } else if (this.H == null) {
            Alignment Y0 = Y0();
            if (Y0 == null) {
                Y0 = Alignment.Companion.a;
            }
            this.H = Y0;
        }
        if (measureScope.f0()) {
            final Placeable w = measurable.w(j);
            long j7 = (w.j << 32) | (w.k & 4294967295L);
            this.G = j7;
            Function1<Placeable.PlacementScope, Unit> function1 = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    ((Placeable.PlacementScope) obj).e(Placeable.this, 0, 0, 0.0f);
                    return Unit.a;
                }
            };
            map3 = EmptyMap.j;
            return measureScope.B((int) (j7 >> 32), (int) (j7 & 4294967295L), map3, function1);
        }
        if (((Boolean) this.E.a()).booleanValue()) {
            d8 d8Var = (d8) this.F;
            Transition.DeferredAnimation deferredAnimation = d8Var.a;
            final SharedMutableTransformState sharedMutableTransformState = d8Var.b;
            Transition.DeferredAnimation deferredAnimation2 = d8Var.c;
            TransitionInstance transitionInstance = d8Var.d;
            final EnterTransition enterTransition = d8Var.e;
            final ExitTransition exitTransition = d8Var.f;
            Transition.DeferredAnimation deferredAnimation3 = d8Var.g;
            TwoWayConverter twoWayConverter = EnterExitTransitionKt.a;
            if (deferredAnimation != null) {
                Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Float>> function12 = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        FiniteAnimationSpec finiteAnimationSpec;
                        FiniteAnimationSpec finiteAnimationSpec2;
                        Transition.Segment segment = (Transition.Segment) obj;
                        EnterExitState enterExitState = EnterExitState.j;
                        EnterExitState enterExitState2 = EnterExitState.k;
                        if (segment.b(enterExitState, enterExitState2)) {
                            Fade fade = ((EnterTransitionImpl) EnterTransition.this).b.a;
                            if (fade != null && (finiteAnimationSpec2 = fade.b) != null) {
                                return finiteAnimationSpec2;
                            }
                            return EnterExitTransitionKt.b;
                        }
                        if (segment.b(enterExitState2, EnterExitState.l)) {
                            Fade fade2 = ((ExitTransitionImpl) exitTransition).c.a;
                            if (fade2 != null && (finiteAnimationSpec = fade2.b) != null) {
                                return finiteAnimationSpec;
                            }
                            return EnterExitTransitionKt.b;
                        }
                        return EnterExitTransitionKt.b;
                    }
                };
                if (sharedMutableTransformState.a()) {
                    f5 = Float.valueOf(sharedMutableTransformState.f);
                } else {
                    f5 = null;
                }
                deferredAnimationData = deferredAnimation.a(function12, f5, null, new Function1<EnterExitState, Float>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$alpha$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        int ordinal = ((EnterExitState) obj).ordinal();
                        float f6 = 1.0f;
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    Fade fade = ((ExitTransitionImpl) exitTransition).c.a;
                                    f6 = fade != null ? fade.a : sharedMutableTransformState.f;
                                } else {
                                    k8.e();
                                    return null;
                                }
                            }
                        } else {
                            Fade fade2 = ((EnterTransitionImpl) EnterTransition.this).b.a;
                            if (fade2 != null) {
                                f6 = fade2.a;
                            }
                        }
                        return Float.valueOf(f6);
                    }
                });
            } else {
                deferredAnimationData = null;
            }
            if (deferredAnimation2 != null) {
                Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Float>> function13 = new Function1<Transition.Segment<EnterExitState>, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        FiniteAnimationSpec finiteAnimationSpec;
                        FiniteAnimationSpec finiteAnimationSpec2;
                        Transition.Segment segment = (Transition.Segment) obj;
                        EnterExitState enterExitState = EnterExitState.j;
                        EnterExitState enterExitState2 = EnterExitState.k;
                        if (segment.b(enterExitState, enterExitState2)) {
                            Scale scale = ((EnterTransitionImpl) EnterTransition.this).b.d;
                            if (scale != null && (finiteAnimationSpec2 = scale.c) != null) {
                                return finiteAnimationSpec2;
                            }
                            return EnterExitTransitionKt.b;
                        }
                        if (segment.b(enterExitState2, EnterExitState.l)) {
                            Scale scale2 = ((ExitTransitionImpl) exitTransition).c.d;
                            if (scale2 != null && (finiteAnimationSpec = scale2.c) != null) {
                                return finiteAnimationSpec;
                            }
                            return EnterExitTransitionKt.b;
                        }
                        return EnterExitTransitionKt.b;
                    }
                };
                if (sharedMutableTransformState.a()) {
                    f3 = Float.valueOf(sharedMutableTransformState.g);
                } else {
                    f3 = null;
                }
                if (sharedMutableTransformState.a()) {
                    c = ' ';
                    VelocityTracker1D velocityTracker1D = sharedMutableTransformState.j;
                    if (velocityTracker1D != null) {
                        float b = velocityTracker1D.b();
                        Float valueOf = Float.valueOf(b);
                        if (Float.isNaN(b)) {
                            valueOf = null;
                        }
                        if (valueOf != null) {
                            f4 = valueOf.floatValue();
                            j2 = 4294967295L;
                            animationVector1D = new AnimationVector1D(f4);
                        }
                    }
                    f4 = 0.0f;
                    j2 = 4294967295L;
                    animationVector1D = new AnimationVector1D(f4);
                } else {
                    c = ' ';
                    j2 = 4294967295L;
                    animationVector1D = null;
                }
                deferredAnimationData2 = deferredAnimation2.a(function13, f3, animationVector1D, new Function1<EnterExitState, Float>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$scale$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        int ordinal = ((EnterExitState) obj).ordinal();
                        float f6 = 1.0f;
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    Scale scale = ((ExitTransitionImpl) exitTransition).c.d;
                                    f6 = scale != null ? scale.a : sharedMutableTransformState.g;
                                } else {
                                    k8.e();
                                    return null;
                                }
                            }
                        } else {
                            Scale scale2 = ((EnterTransitionImpl) EnterTransition.this).b.d;
                            if (scale2 != null) {
                                f6 = scale2.a;
                            }
                        }
                        return Float.valueOf(f6);
                    }
                });
            } else {
                c = ' ';
                j2 = 4294967295L;
                deferredAnimationData2 = null;
            }
            if (transitionInstance.a.a() == EnterExitState.j) {
                Scale scale = ((EnterTransitionImpl) enterTransition).b.d;
                if (scale != null) {
                    transformOrigin = new TransformOrigin(scale.b);
                } else {
                    Scale scale2 = ((ExitTransitionImpl) exitTransition).c.d;
                    if (scale2 != null) {
                        transformOrigin = new TransformOrigin(scale2.b);
                    }
                    transformOrigin = null;
                }
            } else {
                Scale scale3 = ((ExitTransitionImpl) exitTransition).c.d;
                if (scale3 != null) {
                    transformOrigin = new TransformOrigin(scale3.b);
                } else {
                    Scale scale4 = ((EnterTransitionImpl) enterTransition).b.d;
                    if (scale4 != null) {
                        transformOrigin = new TransformOrigin(scale4.b);
                    }
                    transformOrigin = null;
                }
            }
            if (deferredAnimation3 != null) {
                if (sharedMutableTransformState.a()) {
                    transformOrigin2 = new TransformOrigin(sharedMutableTransformState.h);
                } else {
                    transformOrigin2 = null;
                }
                deferredAnimationData3 = deferredAnimation3.a(EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$1.k, transformOrigin2, null, new Function1<EnterExitState, TransformOrigin>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$transformOrigin$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        long j8;
                        long j9;
                        int ordinal = ((EnterExitState) obj).ordinal();
                        TransformOrigin transformOrigin3 = null;
                        ExitTransition exitTransition2 = exitTransition;
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    Scale scale5 = ((ExitTransitionImpl) exitTransition2).c.d;
                                    if (scale5 != null) {
                                        j9 = scale5.b;
                                    } else {
                                        j9 = sharedMutableTransformState.h;
                                    }
                                    transformOrigin3 = new TransformOrigin(j9);
                                } else {
                                    k8.e();
                                    return null;
                                }
                            } else {
                                transformOrigin3 = TransformOrigin.this;
                            }
                        } else {
                            Scale scale6 = ((EnterTransitionImpl) enterTransition).b.d;
                            if (scale6 != null) {
                                transformOrigin3 = new TransformOrigin(scale6.b);
                            } else {
                                Scale scale7 = ((ExitTransitionImpl) exitTransition2).c.d;
                                if (scale7 != null) {
                                    transformOrigin3 = new TransformOrigin(scale7.b);
                                }
                            }
                        }
                        if (transformOrigin3 != null) {
                            j8 = transformOrigin3.a;
                        } else {
                            j8 = TransformOrigin.b;
                        }
                        return new TransformOrigin(j8);
                    }
                });
            } else {
                deferredAnimationData3 = null;
            }
            final Function1<GraphicsLayerScope, Unit> function14 = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$createGraphicsLayerBlock$1$1$block$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    float f6;
                    float f7;
                    float f8;
                    boolean z;
                    long j8;
                    long b2;
                    GraphicsLayerScope graphicsLayerScope = (GraphicsLayerScope) obj;
                    float f9 = 1.0f;
                    State state = deferredAnimationData;
                    if (state != null) {
                        f6 = ((Number) state.getValue()).floatValue();
                    } else {
                        f6 = 1.0f;
                    }
                    SharedMutableTransformState sharedMutableTransformState2 = SharedMutableTransformState.this;
                    TransformScopeImpl transformScopeImpl = sharedMutableTransformState2.c;
                    if (sharedMutableTransformState2.b() && ((Boolean) ((SnapshotMutableStateImpl) transformScopeImpl.a).getValue()).booleanValue()) {
                        f7 = ((SnapshotMutableFloatStateImpl) transformScopeImpl.b).j();
                    } else {
                        f7 = 1.0f;
                    }
                    float f10 = f6 * f7;
                    if (sharedMutableTransformState2.b()) {
                        sharedMutableTransformState2.f = f10;
                    }
                    ReusableGraphicsLayerScope reusableGraphicsLayerScope = (ReusableGraphicsLayerScope) graphicsLayerScope;
                    reusableGraphicsLayerScope.b(f10);
                    State state2 = deferredAnimationData2;
                    if (state2 != null) {
                        f8 = ((Number) state2.getValue()).floatValue();
                    } else {
                        f8 = 1.0f;
                    }
                    if (sharedMutableTransformState2.b() && ((Boolean) ((SnapshotMutableStateImpl) transformScopeImpl.c).getValue()).booleanValue()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        f9 = ((SnapshotMutableFloatStateImpl) transformScopeImpl.d).j();
                    }
                    float f11 = f8 * f9;
                    if (sharedMutableTransformState2.b()) {
                        sharedMutableTransformState2.g = f11;
                        if (z) {
                            ((SnapshotMutableFloatStateImpl) transformScopeImpl.d).j();
                        }
                        if (z) {
                            if (sharedMutableTransformState2.j == null) {
                                sharedMutableTransformState2.j = new VelocityTracker1D(false);
                            }
                            VelocityTracker1D velocityTracker1D2 = sharedMutableTransformState2.j;
                            if (velocityTracker1D2 != null) {
                                long j9 = sharedMutableTransformState2.d;
                                long a = MonotonicTimeSource.a();
                                DurationUnit durationUnit = DurationUnit.k;
                                if ((1 | (j9 - 1)) == Long.MAX_VALUE) {
                                    b2 = Duration.i(LongSaturatedMathKt.a(j9));
                                } else {
                                    b2 = LongSaturatedMathKt.b(a, j9);
                                }
                                velocityTracker1D2.a(Duration.d(b2), f11);
                            }
                        }
                    }
                    reusableGraphicsLayerScope.g(f11);
                    reusableGraphicsLayerScope.h(f11);
                    State state3 = deferredAnimationData3;
                    if (state3 != null) {
                        j8 = ((TransformOrigin) state3.getValue()).a;
                    } else {
                        j8 = TransformOrigin.b;
                    }
                    if (sharedMutableTransformState2.b() && ((Boolean) ((SnapshotMutableStateImpl) transformScopeImpl.e).getValue()).booleanValue()) {
                        j8 = ((TransformOrigin) ((SnapshotMutableStateImpl) transformScopeImpl.f).getValue()).a;
                    }
                    if (sharedMutableTransformState2.b()) {
                        sharedMutableTransformState2.h = j8;
                    }
                    reusableGraphicsLayerScope.n(j8);
                    return Unit.a;
                }
            };
            final Placeable w2 = measurable.w(j);
            final long j8 = (w2.j << c) | (w2.k & j2);
            if (!IntSize.a(this.G, -9223372034707292160L)) {
                j3 = this.G;
            } else {
                j3 = j8;
            }
            Transition.DeferredAnimation deferredAnimation4 = this.y;
            if (deferredAnimation4 != null) {
                deferredAnimationData4 = deferredAnimation4.a(this.I, null, null, new Function1<EnterExitState, IntSize>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$animSize$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        Function1 function15;
                        Function1 function16;
                        int ordinal = ((EnterExitState) obj).ordinal();
                        EnterExitTransitionModifierNode enterExitTransitionModifierNode = EnterExitTransitionModifierNode.this;
                        long j9 = j3;
                        if (ordinal != 0) {
                            if (ordinal != 1) {
                                if (ordinal == 2) {
                                    ChangeSize changeSize = ((ExitTransitionImpl) enterExitTransitionModifierNode.C).c.c;
                                    if (changeSize != null && (function16 = changeSize.b) != null) {
                                        j9 = ((IntSize) function16.b(new IntSize(j9))).a;
                                    }
                                } else {
                                    k8.e();
                                    return null;
                                }
                            }
                        } else {
                            ChangeSize changeSize2 = ((EnterTransitionImpl) enterExitTransitionModifierNode.B).b.c;
                            if (changeSize2 != null && (function15 = changeSize2.b) != null) {
                                j9 = ((IntSize) function15.b(new IntSize(j9))).a;
                            }
                        }
                        return new IntSize(j9);
                    }
                });
            } else {
                deferredAnimationData4 = null;
            }
            if (deferredAnimationData4 != null) {
                j4 = ((IntSize) deferredAnimationData4.getValue()).a;
            } else {
                j4 = j8;
            }
            final long d = ConstraintsKt.d(j, j4);
            Transition.DeferredAnimation deferredAnimation5 = this.z;
            if (deferredAnimation5 != null) {
                j5 = ((IntOffset) deferredAnimation5.a(EnterExitTransitionModifierNode$measure$offsetDelta$1.k, null, null, new Function1<EnterExitState, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$offsetDelta$2
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        long j9;
                        int ordinal;
                        EnterExitState enterExitState = (EnterExitState) obj;
                        EnterExitTransitionModifierNode enterExitTransitionModifierNode = EnterExitTransitionModifierNode.this;
                        if (enterExitTransitionModifierNode.H != null && enterExitTransitionModifierNode.Y0() != null && !Intrinsics.a(enterExitTransitionModifierNode.H, enterExitTransitionModifierNode.Y0()) && (ordinal = enterExitState.ordinal()) != 0 && ordinal != 1) {
                            if (ordinal == 2) {
                                ChangeSize changeSize = ((ExitTransitionImpl) enterExitTransitionModifierNode.C).c.c;
                                if (changeSize != null) {
                                    Function1 function15 = changeSize.b;
                                    long j10 = j3;
                                    long j11 = ((IntSize) function15.b(new IntSize(j10))).a;
                                    Alignment Y02 = enterExitTransitionModifierNode.Y0();
                                    Y02.getClass();
                                    LayoutDirection layoutDirection = LayoutDirection.j;
                                    long a = Y02.a(j10, j11, layoutDirection);
                                    Alignment alignment = enterExitTransitionModifierNode.H;
                                    alignment.getClass();
                                    j9 = IntOffset.b(a, alignment.a(j10, j11, layoutDirection));
                                    return new IntOffset(j9);
                                }
                            } else {
                                k8.e();
                                return null;
                            }
                        }
                        j9 = 0;
                        return new IntOffset(j9);
                    }
                }).getValue()).a;
            } else {
                j5 = 0;
            }
            Transition.DeferredAnimation deferredAnimation6 = this.A;
            if (deferredAnimation6 != null) {
                SharedMutableTransformState sharedMutableTransformState2 = this.D;
                if (sharedMutableTransformState2.a()) {
                    intOffset = new IntOffset(sharedMutableTransformState2.i);
                } else {
                    intOffset = null;
                }
                if (this.D.a()) {
                    float b2 = Velocity.b(0L);
                    Float valueOf2 = Float.valueOf(b2);
                    if (Float.isNaN(b2)) {
                        valueOf2 = null;
                    }
                    if (valueOf2 != null) {
                        f = valueOf2.floatValue();
                    } else {
                        f = 0.0f;
                    }
                    float c2 = Velocity.c(0L);
                    Float valueOf3 = Float.valueOf(c2);
                    if (Float.isNaN(c2)) {
                        valueOf3 = null;
                    }
                    if (valueOf3 != null) {
                        f2 = valueOf3.floatValue();
                    } else {
                        f2 = 0.0f;
                    }
                    j6 = j5;
                    animationVector2D = new AnimationVector2D(f, f2);
                } else {
                    j6 = j5;
                    animationVector2D = null;
                }
                deferredAnimationData5 = deferredAnimation6.a(this.J, intOffset, animationVector2D, new Function1<EnterExitState, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$animSlideOffsetState$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj) {
                        long j9;
                        long j10;
                        long j11;
                        Function1 function15;
                        Function1 function16;
                        EnterExitState enterExitState = (EnterExitState) obj;
                        EnterExitState enterExitState2 = EnterExitState.l;
                        EnterExitTransitionModifierNode enterExitTransitionModifierNode = EnterExitTransitionModifierNode.this;
                        if (enterExitState == enterExitState2 && ((ExitTransitionImpl) enterExitTransitionModifierNode.C).c.b == null) {
                            j11 = enterExitTransitionModifierNode.D.i;
                        } else {
                            Slide slide = ((EnterTransitionImpl) enterExitTransitionModifierNode.B).b.b;
                            long j12 = j3;
                            if (slide != null && (function16 = slide.a) != null) {
                                j9 = ((IntOffset) function16.b(new IntSize(j12))).a;
                            } else {
                                j9 = 0;
                            }
                            Slide slide2 = ((ExitTransitionImpl) enterExitTransitionModifierNode.C).c.b;
                            if (slide2 != null && (function15 = slide2.a) != null) {
                                j10 = ((IntOffset) function15.b(new IntSize(j12))).a;
                            } else {
                                j10 = 0;
                            }
                            int ordinal = enterExitState.ordinal();
                            if (ordinal != 0) {
                                if (ordinal != 1) {
                                    if (ordinal == 2) {
                                        j11 = j10;
                                    } else {
                                        k8.e();
                                        return null;
                                    }
                                } else {
                                    j11 = 0;
                                }
                            } else {
                                j11 = j9;
                            }
                        }
                        return new IntOffset(j11);
                    }
                });
            } else {
                j6 = j5;
                deferredAnimationData5 = null;
            }
            int i = (int) (d >> c);
            int i2 = (int) (d & j2);
            final long j9 = j3;
            final long j10 = j6;
            Function1<Placeable.PlacementScope, Unit> function15 = new Function1<Placeable.PlacementScope, Unit>(deferredAnimationData5, j8, j9, d, w2, j10, function14) { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$2
                public final /* synthetic */ State l;
                public final /* synthetic */ long m;
                public final /* synthetic */ long n;
                public final /* synthetic */ Placeable o;
                public final /* synthetic */ long p;
                public final /* synthetic */ Function1 q;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(1);
                    this.m = j9;
                    this.n = d;
                    this.o = w2;
                    this.p = j10;
                    this.q = function14;
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    long j11;
                    Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                    EnterExitTransitionModifierNode enterExitTransitionModifierNode = EnterExitTransitionModifierNode.this;
                    SharedMutableTransformState sharedMutableTransformState3 = enterExitTransitionModifierNode.D;
                    long j12 = 0;
                    State state = this.l;
                    if (state != null) {
                        j11 = ((IntOffset) state.getValue()).a;
                    } else {
                        j11 = 0;
                    }
                    sharedMutableTransformState3.b();
                    if (sharedMutableTransformState3.b()) {
                        sharedMutableTransformState3.c.getClass();
                    }
                    long c3 = IntOffset.c(j11, 0L);
                    if (sharedMutableTransformState3.b()) {
                        sharedMutableTransformState3.i = c3;
                    }
                    Alignment alignment = enterExitTransitionModifierNode.H;
                    if (alignment != null) {
                        j12 = alignment.a(this.m, this.n, LayoutDirection.j);
                    }
                    long c4 = IntOffset.c(j12, c3);
                    long j13 = this.p;
                    placementScope.m(this.o, ((int) (c4 >> 32)) + ((int) (j13 >> 32)), ((int) (c4 & 4294967295L)) + ((int) (j13 & 4294967295L)), this.q);
                    return Unit.a;
                }
            };
            map2 = EmptyMap.j;
            return measureScope.B(i, i2, map2, function15);
        }
        final Placeable w3 = measurable.w(j);
        int i3 = w3.j;
        int i4 = w3.k;
        Function1<Placeable.PlacementScope, Unit> function16 = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionModifierNode$measure$3$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                ((Placeable.PlacementScope) obj).e(Placeable.this, 0, 0, 0.0f);
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(i3, i4, map, function16);
    }

    @Override // androidx.compose.ui.node.LayoutAwareModifierNode
    public final void C(LayoutCoordinates layoutCoordinates) {
    }
}
