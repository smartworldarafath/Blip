package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimatedContentTransitionScopeImpl<S> implements AnimatedContentTransitionScope<S> {
    public final Transition a;
    public Alignment b;
    public final MutableState c = SnapshotStateKt.g(new IntSize(0));
    public final MutableScatterMap d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SizeModifierElement<S> extends ModifierNodeElement<SizeModifierNode<S>> {
        public final Transition.DeferredAnimation b;
        public final MutableState c;
        public final AnimatedContentTransitionScopeImpl d;

        public SizeModifierElement(Transition.DeferredAnimation deferredAnimation, MutableState mutableState, AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl) {
            this.b = deferredAnimation;
            this.c = mutableState;
            this.d = animatedContentTransitionScopeImpl;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof SizeModifierElement) {
                SizeModifierElement sizeModifierElement = (SizeModifierElement) obj;
                if (Intrinsics.a(sizeModifierElement.b, this.b) && sizeModifierElement.c.equals(this.c)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node g() {
            return new SizeModifierNode(this.b, this.c, this.d);
        }

        public final int hashCode() {
            int i;
            int hashCode = this.d.hashCode() * 31;
            Transition.DeferredAnimation deferredAnimation = this.b;
            if (deferredAnimation != null) {
                i = deferredAnimation.hashCode();
            } else {
                i = 0;
            }
            return this.c.hashCode() + ((hashCode + i) * 31);
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final void i(Modifier.Node node) {
            SizeModifierNode sizeModifierNode = (SizeModifierNode) node;
            sizeModifierNode.x = this.b;
            sizeModifierNode.y = this.c;
            sizeModifierNode.z = this.d;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SizeModifierNode<S> extends LayoutModifierNodeWithPassThroughIntrinsics {
        public Placeable A;
        public Placeable B;
        public long C = 0;
        public long D = 0;
        public final Function1 E = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$lookaheadPlacementBlock$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = AnimatedContentTransitionScopeImpl.SizeModifierNode.this;
                Placeable placeable = sizeModifierNode.A;
                placeable.getClass();
                long j = sizeModifierNode.C;
                Placeable.PlacementScope.h((Placeable.PlacementScope) obj, placeable, sizeModifierNode.z.b.a((placeable.k & 4294967295L) | (placeable.j << 32), j, LayoutDirection.j));
                return Unit.a;
            }
        };
        public final Function1 F = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$approachPlacementBlock$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = AnimatedContentTransitionScopeImpl.SizeModifierNode.this;
                Placeable placeable = sizeModifierNode.B;
                placeable.getClass();
                long j = sizeModifierNode.D;
                Placeable.PlacementScope.h((Placeable.PlacementScope) obj, placeable, sizeModifierNode.z.b.a((placeable.k & 4294967295L) | (placeable.j << 32), j, LayoutDirection.j));
                return Unit.a;
            }
        };
        public long G = -9223372034707292160L;
        public Transition.DeferredAnimation x;
        public MutableState y;
        public AnimatedContentTransitionScopeImpl z;

        public SizeModifierNode(Transition.DeferredAnimation deferredAnimation, MutableState mutableState, AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl) {
            this.x = deferredAnimation;
            this.y = mutableState;
            this.z = animatedContentTransitionScopeImpl;
        }

        @Override // androidx.compose.ui.Modifier.Node
        public final void S0() {
            this.G = -9223372034707292160L;
        }

        @Override // androidx.compose.ui.node.LayoutModifierNode
        public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
            long j2;
            Map map;
            Map map2;
            Placeable w = measurable.w(j);
            if (measureScope.f0()) {
                j2 = (w.j << 32) | (w.k & 4294967295L);
            } else {
                Transition.DeferredAnimation deferredAnimation = this.x;
                int i = w.j;
                if (deferredAnimation == null) {
                    j2 = (i << 32) | (w.k & 4294967295L);
                    this.G = j2;
                } else {
                    final long j3 = (w.k & 4294967295L) | (i << 32);
                    Transition.DeferredAnimation.DeferredAnimationData a = deferredAnimation.a(new Function1<Transition.Segment<Object>, FiniteAnimationSpec<IntSize>>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj) {
                            long j4;
                            FiniteAnimationSpec finiteAnimationSpec;
                            Transition.Segment segment = (Transition.Segment) obj;
                            Object a2 = segment.a();
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = AnimatedContentTransitionScopeImpl.SizeModifierNode.this;
                            long j5 = 0;
                            if (Intrinsics.a(a2, sizeModifierNode.z.a())) {
                                if (IntSize.a(sizeModifierNode.G, -9223372034707292160L)) {
                                    j4 = j3;
                                } else {
                                    j4 = sizeModifierNode.G;
                                }
                            } else {
                                State state = (State) sizeModifierNode.z.d.e(segment.a());
                                if (state != null) {
                                    j4 = ((IntSize) state.getValue()).a;
                                } else {
                                    j4 = 0;
                                }
                            }
                            State state2 = (State) sizeModifierNode.z.d.e(segment.c());
                            if (state2 != null) {
                                j5 = ((IntSize) state2.getValue()).a;
                            }
                            SizeTransform sizeTransform = (SizeTransform) sizeModifierNode.y.getValue();
                            if (sizeTransform != null && (finiteAnimationSpec = (FiniteAnimationSpec) ((SizeTransformImpl) sizeTransform).a.n(new IntSize(j4), new IntSize(j5))) != null) {
                                return finiteAnimationSpec;
                            }
                            return AnimationSpecKt.b(0.0f, 400.0f, null, 5);
                        }
                    }, null, null, new Function1<Object, IntSize>() { // from class: androidx.compose.animation.AnimatedContentTransitionScopeImpl$SizeModifierNode$measure$size$2
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Object b(Object obj) {
                            long j4;
                            AnimatedContentTransitionScopeImpl.SizeModifierNode sizeModifierNode = AnimatedContentTransitionScopeImpl.SizeModifierNode.this;
                            if (Intrinsics.a(obj, sizeModifierNode.z.a())) {
                                if (IntSize.a(sizeModifierNode.G, -9223372034707292160L)) {
                                    j4 = j3;
                                } else {
                                    j4 = sizeModifierNode.G;
                                }
                            } else {
                                State state = (State) sizeModifierNode.z.d.e(obj);
                                if (state != null) {
                                    j4 = ((IntSize) state.getValue()).a;
                                } else {
                                    j4 = 0;
                                }
                            }
                            return new IntSize(j4);
                        }
                    });
                    j2 = ((IntSize) a.getValue()).a;
                    this.G = ((IntSize) a.getValue()).a;
                }
            }
            if (measureScope.f0()) {
                this.A = w;
                this.C = j2;
                Function1 function1 = this.E;
                map2 = EmptyMap.j;
                return measureScope.B((int) (j2 >> 32), (int) (j2 & 4294967295L), map2, function1);
            }
            this.B = w;
            this.D = j2;
            Function1 function12 = this.F;
            map = EmptyMap.j;
            return measureScope.B((int) (j2 >> 32), (int) (j2 & 4294967295L), map, function12);
        }
    }

    public AnimatedContentTransitionScopeImpl(Transition transition, Alignment alignment) {
        this.a = transition;
        this.b = alignment;
        long[] jArr = ScatterMapKt.a;
        this.d = new MutableScatterMap();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final Object a() {
        return this.a.f().a();
    }

    @Override // androidx.compose.animation.core.Transition.Segment
    public final Object c() {
        return this.a.f().c();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ChildData implements ParentDataModifier {
        public final MutableState b;
        public final MutableState c = SnapshotStateKt.g(Boolean.FALSE);

        public ChildData(boolean z) {
            this.b = SnapshotStateKt.g(Boolean.valueOf(z));
        }

        @Override // androidx.compose.ui.layout.ParentDataModifier
        public final Object n() {
            return this;
        }
    }
}
