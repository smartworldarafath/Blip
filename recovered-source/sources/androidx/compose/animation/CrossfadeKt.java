package androidx.compose.animation;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.animation.core.TransitionKt;
import androidx.compose.animation.core.TransitionState;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.foundation.layout.BoxKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.Composer$Companion$Empty$1;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.PersistentCompositionLocalMap;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.runtime.Updater;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.ComposableLambdaKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.StateListIterator;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.ComposedModifierKt;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.graphics.GraphicsLayerModifierKt;
import androidx.compose.ui.graphics.GraphicsLayerScope;
import androidx.compose.ui.graphics.ReusableGraphicsLayerScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.node.ComposeUiNode;
import androidx.compose.ui.node.LayoutNode;
import java.util.ListIterator;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CrossfadeKt {
    public static final void a(final TransitionInstance transitionInstance, final Modifier modifier, final FiniteAnimationSpec finiteAnimationSpec, Function1 function1, final ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i) {
        int i2;
        boolean z;
        Function1 function12;
        boolean z2;
        int i3;
        int i4;
        int i5;
        int i6;
        TransitionState transitionState = transitionInstance.a;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1877370462);
        if ((i & 6) == 0) {
            if (gapComposer.f(transitionInstance)) {
                i6 = 4;
            } else {
                i6 = 2;
            }
            i2 = i6 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.f(modifier)) {
                i5 = 32;
            } else {
                i5 = 16;
            }
            i2 |= i5;
        }
        if ((i & 384) == 0) {
            if (gapComposer.h(finiteAnimationSpec)) {
                i4 = 256;
            } else {
                i4 = 128;
            }
            i2 |= i4;
        }
        int i7 = i2 | 3072;
        if ((i & 24576) == 0) {
            if (gapComposer.h(composableLambdaImpl)) {
                i3 = 16384;
            } else {
                i3 = 8192;
            }
            i7 |= i3;
        }
        if ((i7 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i7 & 1, z)) {
            Object K = gapComposer.K();
            Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
            if (K == composer$Companion$Empty$1) {
                K = CrossfadeKt$Crossfade$3$1.k;
                gapComposer.g0(K);
            }
            function12 = (Function1) K;
            Object K2 = gapComposer.K();
            Object obj = K2;
            if (K2 == composer$Companion$Empty$1) {
                SnapshotStateList snapshotStateList = new SnapshotStateList();
                snapshotStateList.add(transitionState.a());
                gapComposer.g0(snapshotStateList);
                obj = snapshotStateList;
            }
            SnapshotStateList snapshotStateList2 = (SnapshotStateList) obj;
            Object K3 = gapComposer.K();
            if (K3 == composer$Companion$Empty$1) {
                long[] jArr = ScatterMapKt.a;
                K3 = new MutableScatterMap();
                gapComposer.g0(K3);
            }
            MutableScatterMap mutableScatterMap = (MutableScatterMap) K3;
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) transitionInstance.d;
            if (Intrinsics.a(transitionState.a(), snapshotMutableStateImpl.getValue())) {
                gapComposer.W(321145192);
                if (snapshotStateList2.size() == 1 && Intrinsics.a(snapshotStateList2.get(0), snapshotMutableStateImpl.getValue())) {
                    gapComposer.W(321469824);
                    gapComposer.p(false);
                } else {
                    gapComposer.W(321279546);
                    if ((i7 & 14) == 4) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    Object K4 = gapComposer.K();
                    if (z2 || K4 == composer$Companion$Empty$1) {
                        K4 = new Function1<Object, Boolean>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$4$1
                            {
                                super(1);
                            }

                            @Override // kotlin.jvm.functions.Function1
                            public final Object b(Object obj2) {
                                return Boolean.valueOf(!Intrinsics.a(obj2, ((SnapshotMutableStateImpl) TransitionInstance.this.d).getValue()));
                            }
                        };
                        gapComposer.g0(K4);
                    }
                    CollectionsKt.J(snapshotStateList2, (Function1) K4);
                    mutableScatterMap.h();
                    gapComposer.p(false);
                }
                gapComposer.p(false);
            } else {
                gapComposer.W(321475776);
                gapComposer.p(false);
            }
            if (!mutableScatterMap.b(snapshotMutableStateImpl.getValue())) {
                gapComposer.W(321536443);
                ListIterator listIterator = snapshotStateList2.listIterator();
                int i8 = 0;
                while (true) {
                    StateListIterator stateListIterator = (StateListIterator) listIterator;
                    if (stateListIterator.hasNext()) {
                        if (Intrinsics.a(function12.b(stateListIterator.next()), function12.b(snapshotMutableStateImpl.getValue()))) {
                            break;
                        } else {
                            i8++;
                        }
                    } else {
                        i8 = -1;
                        break;
                    }
                }
                if (i8 == -1) {
                    snapshotStateList2.add(snapshotMutableStateImpl.getValue());
                } else {
                    snapshotStateList2.set(i8, snapshotMutableStateImpl.getValue());
                }
                mutableScatterMap.h();
                int size = snapshotStateList2.size();
                for (int i9 = 0; i9 < size; i9++) {
                    final Object obj2 = snapshotStateList2.get(i9);
                    mutableScatterMap.o(obj2, ComposableLambdaKt.b(-934471669, new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1
                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                        {
                            super(2);
                        }

                        @Override // kotlin.jvm.functions.Function2
                        public final Object n(Object obj3, Object obj4) {
                            boolean z3;
                            Object a;
                            float f;
                            Function1 function13;
                            Composer composer2 = (Composer) obj3;
                            int intValue = ((Number) obj4).intValue();
                            if ((intValue & 3) != 2) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            GapComposer gapComposer2 = (GapComposer) composer2;
                            if (gapComposer2.N(intValue & 1, z3)) {
                                final FiniteAnimationSpec finiteAnimationSpec2 = finiteAnimationSpec;
                                Function3<Transition.Segment<Object>, Composer, Integer, FiniteAnimationSpec<Float>> function3 = new Function3<Transition.Segment<Object>, Composer, Integer, FiniteAnimationSpec<Float>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$alpha$2
                                    {
                                        super(3);
                                    }

                                    @Override // kotlin.jvm.functions.Function3
                                    public final Object f(Object obj5, Object obj6, Object obj7) {
                                        ((Number) obj7).intValue();
                                        GapComposer gapComposer3 = (GapComposer) ((Composer) obj6);
                                        gapComposer3.W(955869654);
                                        gapComposer3.p(false);
                                        return FiniteAnimationSpec.this;
                                    }
                                };
                                final TransitionInstance transitionInstance2 = TransitionInstance.this;
                                boolean h = transitionInstance2.h();
                                TransitionState transitionState2 = transitionInstance2.a;
                                Composer$Companion$Empty$1 composer$Companion$Empty$12 = Composer.Companion.a;
                                if (!h) {
                                    gapComposer2.W(1666573488);
                                    boolean f2 = gapComposer2.f(transitionInstance2);
                                    a = gapComposer2.K();
                                    if (f2 || a == composer$Companion$Empty$12) {
                                        Snapshot a2 = Snapshot.Companion.a();
                                        if (a2 != null) {
                                            function13 = a2.e();
                                        } else {
                                            function13 = null;
                                        }
                                        Snapshot b = Snapshot.Companion.b(a2);
                                        try {
                                            Object a3 = transitionState2.a();
                                            Snapshot.Companion.e(a2, b, function13);
                                            gapComposer2.g0(a3);
                                            a = a3;
                                        } catch (Throwable th) {
                                            Snapshot.Companion.e(a2, b, function13);
                                            throw th;
                                        }
                                    }
                                    gapComposer2.p(false);
                                } else {
                                    gapComposer2.W(1666827533);
                                    gapComposer2.p(false);
                                    a = transitionState2.a();
                                }
                                gapComposer2.W(1378811975);
                                Object obj5 = obj2;
                                float f3 = 0.0f;
                                if (Intrinsics.a(a, obj5)) {
                                    f = 1.0f;
                                } else {
                                    f = 0.0f;
                                }
                                gapComposer2.p(false);
                                Float valueOf = Float.valueOf(f);
                                boolean f4 = gapComposer2.f(transitionInstance2);
                                Object K5 = gapComposer2.K();
                                if (f4 || K5 == composer$Companion$Empty$12) {
                                    K5 = SnapshotStateKt.e(new Function0<Object>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$1
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object a() {
                                            return ((SnapshotMutableStateImpl) TransitionInstance.this.d).getValue();
                                        }
                                    });
                                    gapComposer2.g0(K5);
                                }
                                Object value = ((State) K5).getValue();
                                gapComposer2.W(1378811975);
                                if (Intrinsics.a(value, obj5)) {
                                    f3 = 1.0f;
                                }
                                gapComposer2.p(false);
                                Float valueOf2 = Float.valueOf(f3);
                                boolean f5 = gapComposer2.f(transitionInstance2);
                                Object K6 = gapComposer2.K();
                                if (f5 || K6 == composer$Companion$Empty$12) {
                                    K6 = SnapshotStateKt.e(new Function0<Transition.Segment<Object>>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$invoke$$inlined$animateFloat$2
                                        @Override // kotlin.jvm.functions.Function0
                                        public final Object a() {
                                            return TransitionInstance.this.f();
                                        }
                                    });
                                    gapComposer2.g0(K6);
                                }
                                final Transition.TransitionAnimationState c = TransitionKt.c(transitionInstance2, valueOf, valueOf2, (FiniteAnimationSpec) function3.f(((State) K6).getValue(), gapComposer2, 0), VectorConvertersKt.a, gapComposer2, 0);
                                boolean f6 = gapComposer2.f(c);
                                Object K7 = gapComposer2.K();
                                if (f6 || K7 == composer$Companion$Empty$12) {
                                    K7 = new Function1<GraphicsLayerScope, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$5$1$1$1
                                        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                        {
                                            super(1);
                                        }

                                        @Override // kotlin.jvm.functions.Function1
                                        public final Object b(Object obj6) {
                                            ((ReusableGraphicsLayerScope) ((GraphicsLayerScope) obj6)).b(((Number) c.getValue()).floatValue());
                                            return Unit.a;
                                        }
                                    };
                                    gapComposer2.g0(K7);
                                }
                                Modifier a4 = GraphicsLayerModifierKt.a(Modifier.Companion.b, (Function1) K7);
                                MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
                                int hashCode = Long.hashCode(gapComposer2.T);
                                PersistentCompositionLocalMap l = gapComposer2.l();
                                Modifier c2 = ComposedModifierKt.c(gapComposer2, a4);
                                ComposeUiNode.b.getClass();
                                gapComposer2.Z();
                                if (gapComposer2.S) {
                                    gapComposer2.k(LayoutNode.b0);
                                } else {
                                    gapComposer2.j0();
                                }
                                Updater.c(gapComposer2, d, ComposeUiNode.Companion.d);
                                Updater.c(gapComposer2, l, ComposeUiNode.Companion.c);
                                Updater.a(gapComposer2, Integer.valueOf(hashCode));
                                Updater.b(gapComposer2);
                                Updater.c(gapComposer2, c2, ComposeUiNode.Companion.b);
                                composableLambdaImpl.f(obj5, gapComposer2, 0);
                                gapComposer2.p(true);
                            } else {
                                gapComposer2.Q();
                            }
                            return Unit.a;
                        }
                    }, gapComposer));
                }
                gapComposer.p(false);
            } else {
                gapComposer.W(322279296);
                gapComposer.p(false);
            }
            MeasurePolicy d = BoxKt.d(Alignment.Companion.a, false);
            int hashCode = Long.hashCode(gapComposer.T);
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
            Updater.a(gapComposer, Integer.valueOf(hashCode));
            Updater.b(gapComposer);
            Updater.c(gapComposer, c, ComposeUiNode.Companion.b);
            gapComposer.W(-1312707512);
            int size2 = snapshotStateList2.size();
            for (int i10 = 0; i10 < size2; i10++) {
                Object obj3 = snapshotStateList2.get(i10);
                gapComposer.U(1171574969, function12.b(obj3));
                Function2 function2 = (Function2) mutableScatterMap.e(obj3);
                if (function2 == null) {
                    gapComposer.W(1959122128);
                } else {
                    gapComposer.W(1171576145);
                    function2.n(gapComposer, 0);
                }
                gapComposer.p(false);
                gapComposer.p(false);
            }
            gapComposer.p(false);
            gapComposer.p(true);
        } else {
            gapComposer.Q();
            function12 = function1;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            final Function1 function13 = function12;
            r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$7
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj4, Object obj5) {
                    ((Number) obj5).intValue();
                    CrossfadeKt.a(TransitionInstance.this, modifier, finiteAnimationSpec, function13, composableLambdaImpl, (Composer) obj4, RecomposeScopeImplKt.a(i | 1));
                    return Unit.a;
                }
            };
        }
    }

    public static final void b(final Object obj, Modifier modifier, FiniteAnimationSpec finiteAnimationSpec, String str, ComposableLambdaImpl composableLambdaImpl, Composer composer, final int i, final int i2) {
        int i3;
        int i4;
        int i5;
        boolean z;
        final ComposableLambdaImpl composableLambdaImpl2;
        final String str2;
        final FiniteAnimationSpec finiteAnimationSpec2;
        final Modifier modifier2;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-513216493);
        if (gapComposer.f(obj)) {
            i3 = 4;
        } else {
            i3 = 2;
        }
        int i6 = i3 | i;
        int i7 = i2 & 2;
        if (i7 != 0) {
            i5 = i6 | 48;
        } else {
            if (gapComposer.f(modifier)) {
                i4 = 32;
            } else {
                i4 = 16;
            }
            i5 = i6 | i4;
        }
        int i8 = i5 | 384;
        if ((i8 & 9363) != 9362) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i8 & 1, z)) {
            if (i7 != 0) {
                modifier = Modifier.Companion.b;
            }
            Modifier modifier3 = modifier;
            TweenSpec c = AnimationSpecKt.c(0, 0, null, 7);
            a(TransitionKt.e(obj, str, gapComposer, (i8 & 14) | 48), modifier3, c, null, composableLambdaImpl, gapComposer, i8 & 58352);
            composableLambdaImpl2 = composableLambdaImpl;
            str2 = str;
            modifier2 = modifier3;
            finiteAnimationSpec2 = c;
        } else {
            composableLambdaImpl2 = composableLambdaImpl;
            gapComposer.Q();
            str2 = str;
            finiteAnimationSpec2 = finiteAnimationSpec;
            modifier2 = modifier;
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2<Composer, Integer, Unit>(obj, modifier2, finiteAnimationSpec2, str2, composableLambdaImpl2, i, i2) { // from class: androidx.compose.animation.CrossfadeKt$Crossfade$1
                public final /* synthetic */ Object k;
                public final /* synthetic */ Modifier l;
                public final /* synthetic */ FiniteAnimationSpec m;
                public final /* synthetic */ String n;
                public final /* synthetic */ ComposableLambdaImpl o;
                public final /* synthetic */ int p;

                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                    this.p = i2;
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj2, Object obj3) {
                    ((Number) obj3).intValue();
                    int a = RecomposeScopeImplKt.a(27649);
                    int i9 = this.p;
                    CrossfadeKt.b(this.k, this.l, this.m, this.n, this.o, (Composer) obj2, a, i9);
                    return Unit.a;
                }
            };
        }
    }
}
