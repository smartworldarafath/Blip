package androidx.compose.animation;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.animation.core.VectorConvertersKt;
import androidx.compose.animation.core.VisibilityThresholdsKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.RecomposeScopeImpl;
import androidx.compose.runtime.RecomposeScopeImplKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntSize;
import defpackage.mc;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EnterExitTransitionKt {
    public static final TwoWayConverter a = VectorConvertersKt.a(EnterExitTransitionKt$TransformOriginVectorConverter$1.k, EnterExitTransitionKt$TransformOriginVectorConverter$2.k);
    public static final SpringSpec b = AnimationSpecKt.b(0.0f, 400.0f, null, 5);
    public static final SpringSpec c = AnimationSpecKt.b(0.0f, 400.0f, null, 5);
    public static final SpringSpec d;
    public static final SpringSpec e;

    static {
        Map map = VisibilityThresholdsKt.a;
        d = AnimationSpecKt.b(0.0f, 400.0f, new IntOffset(4294967297L), 1);
        e = AnimationSpecKt.b(0.0f, 400.0f, new IntSize(4294967297L), 1);
    }

    public static final void a(final Transition transition, final Function0 function0, Composer composer, final int i) {
        int i2;
        boolean z;
        boolean z2;
        int i3;
        int i4;
        GapComposer gapComposer = (GapComposer) composer;
        gapComposer.X(-1186853286);
        if ((i & 6) == 0) {
            if (gapComposer.f(transition)) {
                i4 = 4;
            } else {
                i4 = 2;
            }
            i2 = i4 | i;
        } else {
            i2 = i;
        }
        if ((i & 48) == 0) {
            if (gapComposer.h(function0)) {
                i3 = 32;
            } else {
                i3 = 16;
            }
            i2 |= i3;
        }
        if ((i2 & 19) != 18) {
            z = true;
        } else {
            z = false;
        }
        if (gapComposer.N(i2 & 1, z)) {
            MutableState mutableState = transition.e;
            MutableState mutableState2 = transition.d;
            if (((SnapshotMutableStateImpl) mutableState).getValue() != null) {
                z2 = true;
            } else {
                z2 = false;
            }
            SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState2;
            if (Intrinsics.a(transition.a.a(), snapshotMutableStateImpl.getValue()) && !z2) {
                function0.a();
            }
            Object K = gapComposer.K();
            Object obj = Composer.Companion.a;
            Object obj2 = K;
            if (K == obj) {
                boolean[] zArr = {z2};
                gapComposer.g0(zArr);
                obj2 = zArr;
            }
            boolean[] zArr2 = (boolean[]) obj2;
            Object K2 = gapComposer.K();
            if (K2 == obj) {
                K2 = new Object[1];
                gapComposer.g0(K2);
            }
            Object[] objArr = (Object[]) K2;
            if (!Intrinsics.a(objArr[0], snapshotMutableStateImpl.getValue())) {
                if (!z2 && !zArr2[0]) {
                    function0.a();
                }
                objArr[0] = snapshotMutableStateImpl.getValue();
            }
            zArr2[0] = z2;
        } else {
            gapComposer.Q();
        }
        RecomposeScopeImpl r = gapComposer.r();
        if (r != null) {
            r.d = new Function2<Composer, Integer, Unit>() { // from class: androidx.compose.animation.EnterExitTransitionKt$DeferredTransitionCleanupEffect$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(2);
                }

                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj3, Object obj4) {
                    ((Number) obj4).intValue();
                    int a2 = RecomposeScopeImplKt.a(i | 1);
                    EnterExitTransitionKt.a(Transition.this, function0, (Composer) obj3, a2);
                    return Unit.a;
                }
            };
        }
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
    public static EnterTransition b(TweenSpec tweenSpec, int i) {
        BiasAlignment biasAlignment;
        FiniteAnimationSpec finiteAnimationSpec = tweenSpec;
        if ((i & 1) != 0) {
            Map map = VisibilityThresholdsKt.a;
            finiteAnimationSpec = AnimationSpecKt.b(0.0f, 400.0f, new IntSize(4294967297L), 1);
        }
        Object obj = Alignment.Companion.j;
        BiasAlignment.Vertical vertical = Alignment.Companion.l;
        if (vertical.equals(obj)) {
            biasAlignment = Alignment.Companion.b;
        } else if (vertical.equals(vertical)) {
            biasAlignment = Alignment.Companion.h;
        } else {
            biasAlignment = Alignment.Companion.e;
        }
        return new EnterTransitionImpl(new TransitionData((Fade) null, (Slide) null, new ChangeSize(biasAlignment, new Lambda(1), finiteAnimationSpec, true), (Scale) null, (LinkedHashMap) null, 123));
    }

    public static EnterTransition c(FiniteAnimationSpec finiteAnimationSpec, int i) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.b(0.0f, 400.0f, null, 5);
        }
        return new EnterTransitionImpl(new TransitionData(new Fade(0.0f, finiteAnimationSpec), (Slide) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 126));
    }

    public static ExitTransition d(FiniteAnimationSpec finiteAnimationSpec, int i) {
        if ((i & 1) != 0) {
            finiteAnimationSpec = AnimationSpecKt.b(0.0f, 400.0f, null, 5);
        }
        return new ExitTransitionImpl(new TransitionData(new Fade(0.0f, finiteAnimationSpec), (Slide) null, (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 126));
    }

    public static final EnterTransition e(TweenSpec tweenSpec, float f, long j) {
        return new EnterTransitionImpl(new TransitionData((Fade) null, (Slide) null, (ChangeSize) null, new Scale(f, j, tweenSpec), (LinkedHashMap) null, 119));
    }

    public static final ExitTransition f(float f, long j, FiniteAnimationSpec finiteAnimationSpec) {
        return new ExitTransitionImpl(new TransitionData((Fade) null, (Slide) null, (ChangeSize) null, new Scale(f, j, finiteAnimationSpec), (LinkedHashMap) null, 119));
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.Lambda] */
    public static ExitTransition g(TweenSpec tweenSpec, int i) {
        BiasAlignment biasAlignment;
        FiniteAnimationSpec finiteAnimationSpec = tweenSpec;
        if ((i & 1) != 0) {
            Map map = VisibilityThresholdsKt.a;
            finiteAnimationSpec = AnimationSpecKt.b(0.0f, 400.0f, new IntSize(4294967297L), 1);
        }
        Object obj = Alignment.Companion.j;
        BiasAlignment.Vertical vertical = Alignment.Companion.l;
        if (vertical.equals(obj)) {
            biasAlignment = Alignment.Companion.b;
        } else if (vertical.equals(vertical)) {
            biasAlignment = Alignment.Companion.h;
        } else {
            biasAlignment = Alignment.Companion.e;
        }
        return new ExitTransitionImpl(new TransitionData((Fade) null, (Slide) null, new ChangeSize(biasAlignment, new Lambda(1), finiteAnimationSpec, true), (Scale) null, (LinkedHashMap) null, 123));
    }

    public static final EnterTransition h(SpringSpec springSpec, final mc mcVar) {
        return new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInHorizontally$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                return new IntOffset(((Number) mc.this.b(Integer.valueOf((int) (((IntSize) obj).a >> 32)))).intValue() << 32);
            }
        }, springSpec), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125));
    }

    public static final EnterTransition i(SpringSpec springSpec, final Function1 function1) {
        return new EnterTransitionImpl(new TransitionData((Fade) null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideInVertically$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                return new IntOffset(((Number) Function1.this.b(Integer.valueOf((int) (((IntSize) obj).a & 4294967295L)))).intValue() & 4294967295L);
            }
        }, springSpec), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125));
    }

    public static final ExitTransition j(SpringSpec springSpec, final mc mcVar) {
        return new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutHorizontally$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                return new IntOffset(((Number) mc.this.b(Integer.valueOf((int) (((IntSize) obj).a >> 32)))).intValue() << 32);
            }
        }, springSpec), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125));
    }

    public static final ExitTransition k(SpringSpec springSpec, final Function1 function1) {
        return new ExitTransitionImpl(new TransitionData((Fade) null, new Slide(new Function1<IntSize, IntOffset>() { // from class: androidx.compose.animation.EnterExitTransitionKt$slideOutVertically$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                return new IntOffset(((Number) Function1.this.b(Integer.valueOf((int) (((IntSize) obj).a & 4294967295L)))).intValue() & 4294967295L);
            }
        }, springSpec), (ChangeSize) null, (Scale) null, (LinkedHashMap) null, 125));
    }
}
