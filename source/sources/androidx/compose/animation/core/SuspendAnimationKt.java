package androidx.compose.animation.core;

import androidx.compose.animation.core.Animation;
import androidx.compose.animation.core.AnimationScope;
import androidx.compose.animation.core.AnimationState;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.animation.core.TwoWayConverter;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.MotionDurationScale;
import androidx.compose.ui.platform.InfiniteAnimationPolicy$Key;
import defpackage.c8;
import defpackage.jg;
import defpackage.le;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SuspendAnimationKt {
    public static final Object a(float f, float f2, float f3, AnimationSpec animationSpec, final Function2 function2, SuspendLambda suspendLambda) {
        Float f4 = new Float(f);
        Float f5 = new Float(f2);
        Float f6 = new Float(f3);
        TwoWayConverter twoWayConverter = VectorConvertersKt.a;
        Function1 function1 = ((TwoWayConverterImpl) twoWayConverter).a;
        AnimationVector animationVector = (AnimationVector) function1.b(f6);
        if (animationVector == null) {
            animationVector = ((AnimationVector) function1.b(f4)).c();
        }
        AnimationVector animationVector2 = animationVector;
        Object b = b(new AnimationState(twoWayConverter, f4, animationVector2, 56), new TargetBasedAnimation(animationSpec, twoWayConverter, f4, f5, animationVector2), Long.MIN_VALUE, new Function1() { // from class: androidx.compose.animation.core.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                AnimationScope animationScope = (AnimationScope) obj;
                Function2.this.n(((SnapshotMutableStateImpl) animationScope.e).getValue(), ((TwoWayConverterImpl) VectorConvertersKt.a).b.b(animationScope.f));
                return Unit.a;
            }
        }, suspendLambda);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        Unit unit = Unit.a;
        if (b != coroutineSingletons) {
            b = unit;
        }
        if (b == coroutineSingletons) {
            return b;
        }
        return unit;
    }

    /* JADX WARN: Can't wrap try/catch for region: R(11:1|(2:3|(8:5|6|7|(3:(1:(1:11)(2:54|55))(1:56)|12|13)(8:57|(11:67|68|69|70|71|72|73|74|(2:76|(1:78)(2:81|82))(1:83)|(1:80)|29)(7:59|60|61|62|15|16|(7:18|19|20|21|22|23|(1:34)(2:25|(2:31|32)(1:27)))(2:48|49))|66|39|(1:41)|42|(1:46)|47)|14|15|16|(0)(0)))|92|6|7|(0)(0)|14|15|16|(0)(0)|(1:(0))) */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0182, code lost:
    
        if (androidx.compose.runtime.MonotonicFrameClockKt.a(r8.o()).w(r8, r5) == r9) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x00c4, code lost:
    
        if (androidx.compose.runtime.MonotonicFrameClockKt.a(r8.o()).w(r8, new defpackage.c8(r5, r10)) == r9) goto L65;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x018b, code lost:
    
        r0 = e;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x018c, code lost:
    
        r2 = r1;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0120 A[Catch: CancellationException -> 0x018b, TRY_LEAVE, TryCatch #2 {CancellationException -> 0x018b, blocks: (B:16:0x0109, B:18:0x0120), top: B:15:0x0109 }] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x019c  */
    /* JADX WARN: Removed duplicated region for block: B:44:0x01ab  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x018e  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x0051  */
    /* JADX WARN: Removed duplicated region for block: B:9:0x002d  */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object b(AnimationState animationState, Animation animation, long j, final Function1 function1, ContinuationImpl continuationImpl) {
        ContinuationImpl continuationImpl2;
        int i;
        final AnimationState animationState2;
        Ref$ObjectRef ref$ObjectRef;
        AnimationState animationState3;
        final float h;
        Function1 function12;
        Object w;
        Function1 function13;
        Ref$ObjectRef ref$ObjectRef2;
        Ref$ObjectRef ref$ObjectRef3;
        AnimationScope animationScope;
        AnimationScope animationScope2;
        Object obj;
        final Function1 function14;
        final Ref$ObjectRef ref$ObjectRef4;
        final Animation animation2;
        final AnimationState animationState4;
        final Animation animation3 = animation;
        if (continuationImpl instanceof SuspendAnimationKt$animate$4) {
            SuspendAnimationKt$animate$4 suspendAnimationKt$animate$4 = (SuspendAnimationKt$animate$4) continuationImpl;
            int i2 = suspendAnimationKt$animate$4.r;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                suspendAnimationKt$animate$4.r = i2 - Integer.MIN_VALUE;
                continuationImpl2 = suspendAnimationKt$animate$4;
                SuspendAnimationKt$animate$4 suspendAnimationKt$animate$42 = continuationImpl2;
                CoroutineContext coroutineContext = suspendAnimationKt$animate$42.k;
                Object obj2 = suspendAnimationKt$animate$42.q;
                Object obj3 = CoroutineSingletons.j;
                i = suspendAnimationKt$animate$42.r;
                int i3 = 7;
                InfiniteAnimationPolicy$Key infiniteAnimationPolicy$Key = InfiniteAnimationPolicy$Key.j;
                int i4 = 1;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            ref$ObjectRef2 = suspendAnimationKt$animate$42.p;
                            function13 = suspendAnimationKt$animate$42.o;
                            animation3 = suspendAnimationKt$animate$42.n;
                            animationState3 = suspendAnimationKt$animate$42.m;
                        } else {
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                    } else {
                        ref$ObjectRef2 = suspendAnimationKt$animate$42.p;
                        function13 = suspendAnimationKt$animate$42.o;
                        animation3 = suspendAnimationKt$animate$42.n;
                        animationState3 = suspendAnimationKt$animate$42.m;
                    }
                    try {
                        ResultKt.b(obj2);
                    } catch (CancellationException e) {
                        e = e;
                    }
                } else {
                    ResultKt.b(obj2);
                    final Object f = animation3.f(0L);
                    final AnimationVector d = animation3.d(0L);
                    final ?? obj4 = new Object();
                    if (j == Long.MIN_VALUE) {
                        try {
                            coroutineContext.getClass();
                            h = h(coroutineContext);
                            animationState2 = animationState;
                        } catch (CancellationException e2) {
                            e = e2;
                            animationState2 = animationState;
                        }
                        try {
                            function12 = new Function1() { // from class: kg
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj5) {
                                    long longValue = ((Long) obj5).longValue();
                                    Animation animation4 = animation3;
                                    TwoWayConverter c = animation4.c();
                                    Object g = animation4.g();
                                    AnimationState animationState5 = animationState2;
                                    AnimationScope animationScope3 = new AnimationScope(f, c, d, longValue, g, longValue, new jg(0, animationState5));
                                    SuspendAnimationKt.g(animationScope3, longValue, h, animation4, animationState5, function1);
                                    Ref$ObjectRef.this.j = animationScope3;
                                    return Unit.a;
                                }
                            };
                            ref$ObjectRef = obj4;
                        } catch (CancellationException e3) {
                            e = e3;
                            ref$ObjectRef = obj4;
                            animationState3 = animationState2;
                            ref$ObjectRef2 = ref$ObjectRef;
                            animationScope = (AnimationScope) ref$ObjectRef2.j;
                            if (animationScope != null) {
                            }
                            animationScope2 = (AnimationScope) ref$ObjectRef2.j;
                            if (animationScope2 != null) {
                                animationState3.o = false;
                            }
                            throw e;
                        }
                        try {
                            suspendAnimationKt$animate$42.m = animationState2;
                            suspendAnimationKt$animate$42.n = animation3;
                            suspendAnimationKt$animate$42.o = function1;
                            suspendAnimationKt$animate$42.p = ref$ObjectRef;
                            suspendAnimationKt$animate$42.r = 1;
                            if (animation3.a()) {
                                if (suspendAnimationKt$animate$42.o().v(infiniteAnimationPolicy$Key) == null) {
                                    w = MonotonicFrameClockKt.a(suspendAnimationKt$animate$42.o()).w(suspendAnimationKt$animate$42, function12);
                                } else {
                                    throw new ClassCastException();
                                }
                            } else {
                                w = MonotonicFrameClockKt.a(suspendAnimationKt$animate$42.o()).w(suspendAnimationKt$animate$42, new c8(function12, i3));
                            }
                            if (w != obj3) {
                                animationState3 = animationState2;
                                function13 = function1;
                                ref$ObjectRef2 = ref$ObjectRef;
                            }
                            return obj3;
                        } catch (CancellationException e4) {
                            e = e4;
                            animationState3 = animationState2;
                            ref$ObjectRef2 = ref$ObjectRef;
                            animationScope = (AnimationScope) ref$ObjectRef2.j;
                            if (animationScope != null) {
                            }
                            animationScope2 = (AnimationScope) ref$ObjectRef2.j;
                            if (animationScope2 != null) {
                            }
                            throw e;
                        }
                    }
                    ref$ObjectRef = obj4;
                    try {
                        AnimationScope animationScope3 = new AnimationScope(f, animation3.c(), d, j, animation3.g(), j, new jg(i4, animationState));
                        coroutineContext.getClass();
                        g(animationScope3, j, h(coroutineContext), animation3, animationState, function1);
                        ref$ObjectRef.j = animationScope3;
                        animationState3 = animationState;
                        animation3 = animation;
                        function13 = function1;
                        ref$ObjectRef3 = ref$ObjectRef;
                        obj = ref$ObjectRef3.j;
                        obj.getClass();
                        if (((Boolean) ((SnapshotMutableStateImpl) ((AnimationScope) obj).i).getValue()).booleanValue()) {
                            try {
                                CoroutineContext coroutineContext2 = suspendAnimationKt$animate$42.k;
                                coroutineContext2.getClass();
                                final float h2 = h(coroutineContext2);
                                Function1 function15 = new Function1() { // from class: lg
                                    @Override // kotlin.jvm.functions.Function1
                                    public final Object b(Object obj5) {
                                        long longValue = ((Long) obj5).longValue();
                                        Object obj6 = Ref$ObjectRef.this.j;
                                        obj6.getClass();
                                        SuspendAnimationKt.g((AnimationScope) obj6, longValue, h2, animation2, animationState4, function14);
                                        return Unit.a;
                                    }
                                };
                                ref$ObjectRef2 = ref$ObjectRef4;
                                animation3 = animation2;
                                animationState3 = animationState4;
                                function13 = function14;
                                suspendAnimationKt$animate$42.m = animationState3;
                                suspendAnimationKt$animate$42.n = animation3;
                                suspendAnimationKt$animate$42.o = function13;
                                suspendAnimationKt$animate$42.p = ref$ObjectRef2;
                                suspendAnimationKt$animate$42.r = 2;
                                if (animation3.a()) {
                                    if (suspendAnimationKt$animate$42.o().v(infiniteAnimationPolicy$Key) != null) {
                                        throw new ClassCastException();
                                    }
                                }
                            } catch (CancellationException e5) {
                                e = e5;
                                ref$ObjectRef2 = ref$ObjectRef4;
                                animationState3 = animationState4;
                            }
                            function14 = function13;
                            ref$ObjectRef4 = ref$ObjectRef3;
                            animation2 = animation3;
                            animationState4 = animationState3;
                        } else {
                            return Unit.a;
                        }
                    } catch (CancellationException e6) {
                        e = e6;
                        animationState3 = animationState;
                    }
                    ref$ObjectRef2 = ref$ObjectRef;
                    animationScope = (AnimationScope) ref$ObjectRef2.j;
                    if (animationScope != null) {
                        ((SnapshotMutableStateImpl) animationScope.i).setValue(Boolean.FALSE);
                    }
                    animationScope2 = (AnimationScope) ref$ObjectRef2.j;
                    if (animationScope2 != null && animationScope2.g == animationState3.m) {
                        animationState3.o = false;
                    }
                    throw e;
                }
                ref$ObjectRef3 = ref$ObjectRef2;
                obj = ref$ObjectRef3.j;
                obj.getClass();
                if (((Boolean) ((SnapshotMutableStateImpl) ((AnimationScope) obj).i).getValue()).booleanValue()) {
                }
            }
        }
        continuationImpl2 = new ContinuationImpl(continuationImpl);
        SuspendAnimationKt$animate$4 suspendAnimationKt$animate$422 = continuationImpl2;
        CoroutineContext coroutineContext3 = suspendAnimationKt$animate$422.k;
        Object obj22 = suspendAnimationKt$animate$422.q;
        Object obj32 = CoroutineSingletons.j;
        i = suspendAnimationKt$animate$422.r;
        int i32 = 7;
        InfiniteAnimationPolicy$Key infiniteAnimationPolicy$Key2 = InfiniteAnimationPolicy$Key.j;
        int i42 = 1;
        if (i == 0) {
        }
        ref$ObjectRef3 = ref$ObjectRef2;
        obj = ref$ObjectRef3.j;
        obj.getClass();
        if (((Boolean) ((SnapshotMutableStateImpl) ((AnimationScope) obj).i).getValue()).booleanValue()) {
        }
    }

    public static /* synthetic */ Object c(float f, float f2, AnimationSpec animationSpec, Function2 function2, SuspendLambda suspendLambda, int i) {
        if ((i & 8) != 0) {
            animationSpec = AnimationSpecKt.b(0.0f, 0.0f, null, 7);
        }
        return a(f, f2, 0.0f, animationSpec, function2, suspendLambda);
    }

    public static final Object d(AnimationState animationState, DecayAnimationSpec decayAnimationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        long j;
        DecayAnimation decayAnimation = new DecayAnimation(decayAnimationSpec, animationState.j, ((SnapshotMutableStateImpl) animationState.k).getValue(), animationState.l);
        if (z) {
            j = animationState.m;
        } else {
            j = Long.MIN_VALUE;
        }
        Object b = b(animationState, decayAnimation, j, function1, continuationImpl);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return Unit.a;
    }

    public static final Object e(AnimationState animationState, Float f, AnimationSpec animationSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl) {
        long j;
        TargetBasedAnimation targetBasedAnimation = new TargetBasedAnimation(animationSpec, animationState.j, ((SnapshotMutableStateImpl) animationState.k).getValue(), f, animationState.l);
        if (z) {
            j = animationState.m;
        } else {
            j = Long.MIN_VALUE;
        }
        Object b = b(animationState, targetBasedAnimation, j, function1, continuationImpl);
        if (b == CoroutineSingletons.j) {
            return b;
        }
        return Unit.a;
    }

    public static /* synthetic */ Object f(AnimationState animationState, Float f, SpringSpec springSpec, boolean z, Function1 function1, ContinuationImpl continuationImpl, int i) {
        if ((i & 2) != 0) {
            springSpec = AnimationSpecKt.b(0.0f, 0.0f, null, 7);
        }
        SpringSpec springSpec2 = springSpec;
        if ((i & 8) != 0) {
            function1 = new le(26);
        }
        return e(animationState, f, springSpec2, z, function1, continuationImpl);
    }

    public static final void g(AnimationScope animationScope, long j, float f, Animation animation, AnimationState animationState, Function1 function1) {
        long j2;
        if (f == 0.0f) {
            j2 = animation.b();
        } else {
            j2 = ((float) (j - animationScope.c)) / f;
        }
        animationScope.g = j;
        ((SnapshotMutableStateImpl) animationScope.e).setValue(animation.f(j2));
        animationScope.f = animation.d(j2);
        if (animation.e(j2)) {
            animationScope.h = animationScope.g;
            ((SnapshotMutableStateImpl) animationScope.i).setValue(Boolean.FALSE);
        }
        i(animationScope, animationState);
        function1.b(animationScope);
    }

    public static final float h(CoroutineContext coroutineContext) {
        float f;
        MotionDurationScale motionDurationScale = (MotionDurationScale) coroutineContext.v(MotionDurationScale.Key.j);
        if (motionDurationScale != null) {
            f = motionDurationScale.a0();
        } else {
            f = 1.0f;
        }
        if (f >= 0.0f) {
            return f;
        }
        PreconditionsKt.b("negative scale factor");
        return f;
    }

    public static final void i(AnimationScope animationScope, AnimationState animationState) {
        ((SnapshotMutableStateImpl) animationState.k).setValue(((SnapshotMutableStateImpl) animationScope.e).getValue());
        AnimationVector animationVector = animationState.l;
        AnimationVector animationVector2 = animationScope.f;
        int b = animationVector.b();
        for (int i = 0; i < b; i++) {
            animationVector.e(i, animationVector2.a(i));
        }
        animationState.n = animationScope.h;
        animationState.m = animationScope.g;
        animationState.o = ((Boolean) ((SnapshotMutableStateImpl) animationScope.i).getValue()).booleanValue();
    }
}
