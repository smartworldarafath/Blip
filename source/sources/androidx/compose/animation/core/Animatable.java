package androidx.compose.animation.core;

import androidx.compose.animation.core.AnimationVector;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Animatable<T, V extends AnimationVector> {
    public final TwoWayConverter a;
    public final Object b;
    public final AnimationState c;
    public final MutableState d;
    public final MutableState e;
    public Float f;
    public Float g;
    public final MutatorMutex h;
    public final SpringSpec i;
    public final AnimationVector j;
    public final AnimationVector k;
    public AnimationVector l;
    public AnimationVector m;

    public Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2) {
        AnimationVector animationVector;
        AnimationVector animationVector2;
        this.a = twoWayConverter;
        this.b = obj2;
        AnimationState animationState = new AnimationState(twoWayConverter, obj, null, 60);
        this.c = animationState;
        this.d = SnapshotStateKt.g(Boolean.FALSE);
        this.e = SnapshotStateKt.g(obj);
        this.h = new MutatorMutex();
        this.i = new SpringSpec(obj2);
        AnimationVector animationVector3 = animationState.l;
        boolean z = animationVector3 instanceof AnimationVector1D;
        if (z) {
            animationVector = AnimatableKt.e;
        } else if (animationVector3 instanceof AnimationVector2D) {
            animationVector = AnimatableKt.f;
        } else if (animationVector3 instanceof AnimationVector3D) {
            animationVector = AnimatableKt.g;
        } else {
            animationVector = AnimatableKt.h;
        }
        this.j = animationVector;
        if (z) {
            animationVector2 = AnimatableKt.a;
        } else if (animationVector3 instanceof AnimationVector2D) {
            animationVector2 = AnimatableKt.b;
        } else if (animationVector3 instanceof AnimationVector3D) {
            animationVector2 = AnimatableKt.c;
        } else {
            animationVector2 = AnimatableKt.d;
        }
        this.k = animationVector2;
        this.l = animationVector;
        this.m = animationVector2;
    }

    public static final void a(Animatable animatable) {
        AnimationState animationState = animatable.c;
        animationState.l.d();
        animationState.m = Long.MIN_VALUE;
        ((SnapshotMutableStateImpl) animatable.d).setValue(Boolean.FALSE);
    }

    public static Object b(Animatable animatable, Float f, DecayAnimationSpec decayAnimationSpec, SuspendLambda suspendLambda) {
        Object f2 = animatable.f();
        TwoWayConverter twoWayConverter = animatable.a;
        return MutatorMutex.a(animatable.h, new Animatable$runAnimation$2(animatable, f, new DecayAnimation(decayAnimationSpec, twoWayConverter, f2, (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(f)), animatable.c.m, null, null), suspendLambda);
    }

    public static Object d(Animatable animatable, Object obj, AnimationSpec animationSpec, Function1 function1, Continuation continuation, int i) {
        if ((i & 2) != 0) {
            animationSpec = animatable.i;
        }
        AnimationSpec animationSpec2 = animationSpec;
        Object b = ((TwoWayConverterImpl) animatable.a).b.b(animatable.c.l);
        if ((i & 8) != 0) {
            function1 = null;
        }
        return animatable.c(obj, animationSpec2, b, function1, continuation);
    }

    public final Object c(Object obj, AnimationSpec animationSpec, Object obj2, Function1 function1, Continuation continuation) {
        Object f = f();
        TwoWayConverter twoWayConverter = this.a;
        return MutatorMutex.a(this.h, new Animatable$runAnimation$2(this, obj2, new TargetBasedAnimation(animationSpec, twoWayConverter, f, obj, (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(obj2)), this.c.m, function1, null), continuation);
    }

    public final Object e(Object obj) {
        if (!Intrinsics.a(this.l, this.j) || !Intrinsics.a(this.m, this.k)) {
            TwoWayConverterImpl twoWayConverterImpl = (TwoWayConverterImpl) this.a;
            AnimationVector animationVector = (AnimationVector) twoWayConverterImpl.a.b(obj);
            int b = animationVector.b();
            boolean z = false;
            for (int i = 0; i < b; i++) {
                if (animationVector.a(i) < this.l.a(i) || animationVector.a(i) > this.m.a(i)) {
                    animationVector.e(i, RangesKt.c(animationVector.a(i), this.l.a(i), this.m.a(i)));
                    z = true;
                }
            }
            if (z) {
                return twoWayConverterImpl.b.b(animationVector);
            }
        }
        return obj;
    }

    public final Object f() {
        return ((SnapshotMutableStateImpl) this.c.k).getValue();
    }

    public final boolean g() {
        return ((Boolean) ((SnapshotMutableStateImpl) this.d).getValue()).booleanValue();
    }

    public final Object h(Object obj, Continuation continuation) {
        Object a = MutatorMutex.a(this.h, new Animatable$snapTo$2(this, obj, null), continuation);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }

    public final Object i(SuspendLambda suspendLambda) {
        Object a = MutatorMutex.a(this.h, new Animatable$stop$2(this, null), suspendLambda);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }

    public final void j(Float f, Float f2) {
        TwoWayConverter twoWayConverter = this.a;
        AnimationVector animationVector = (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(f);
        if (animationVector == null) {
            animationVector = this.j;
        }
        AnimationVector animationVector2 = (AnimationVector) ((TwoWayConverterImpl) twoWayConverter).a.b(f2);
        if (animationVector2 == null) {
            animationVector2 = this.k;
        }
        int b = animationVector.b();
        for (int i = 0; i < b; i++) {
            if (animationVector.a(i) > animationVector2.a(i)) {
                PreconditionsKt.b("Lower bound must be no greater than upper bound on *all* dimensions. The provided lower bound: " + animationVector + " is greater than upper bound " + animationVector2 + " on index " + i);
            }
        }
        this.l = animationVector;
        this.m = animationVector2;
        this.g = f2;
        this.f = f;
        if (!g()) {
            Object e = e(f());
            if (!Intrinsics.a(e, f())) {
                ((SnapshotMutableStateImpl) this.c.k).setValue(e);
            }
        }
    }

    public /* synthetic */ Animatable(Object obj, TwoWayConverter twoWayConverter, Object obj2, int i) {
        this(obj, twoWayConverter, (i & 4) != 0 ? null : obj2);
    }
}
