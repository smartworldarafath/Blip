package androidx.compose.animation.core;

import androidx.collection.MutableObjectList;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.PrimitiveSnapshotStateKt;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotStateObserver;
import androidx.navigation.NavBackStackEntry;
import defpackage.af;
import defpackage.kb;
import defpackage.p;
import defpackage.u2;
import java.util.concurrent.CancellationException;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.sync.MutexImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SeekableTransitionState<S> extends TransitionState<S> {
    public static final AnimationVector1D s = new AnimationVector1D(0.0f);
    public static final AnimationVector1D t = new AnimationVector1D(1.0f);
    public final MutableState b;
    public final MutableState c;
    public Object d;
    public Transition e;
    public long f;
    public SnapshotStateObserver h;
    public CancellableContinuationImpl j;
    public SeekingAnimationState o;
    public final af p;
    public float q;
    public final af r;
    public final kb g = new kb(13, this);
    public final MutableFloatState i = PrimitiveSnapshotStateKt.a(0.0f);
    public final MutexImpl k = new MutexImpl();
    public final MutatorMutex l = new MutatorMutex();
    public long m = Long.MIN_VALUE;
    public final MutableObjectList n = new MutableObjectList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SeekingAnimationState {
        public long a;
        public VectorizedFiniteAnimationSpec b;
        public boolean c;
        public float d;
        public final AnimationVector1D e = new AnimationVector1D(0.0f);
        public AnimationVector1D f;
        public long g;
        public long h;

        public final String toString() {
            return "progress nanos: " + this.a + ", animationSpec: " + this.b + ", isComplete: " + this.c + ", value: " + this.d + ", start: " + this.e + ", initialVelocity: " + this.f + ", durationNanos: " + this.g + ", animationSpecDuration: " + this.h;
        }
    }

    /* JADX WARN: Type inference failed for: r3v7, types: [af] */
    /* JADX WARN: Type inference failed for: r3v8, types: [af] */
    public SeekableTransitionState(NavBackStackEntry navBackStackEntry) {
        this.b = SnapshotStateKt.g(navBackStackEntry);
        this.c = SnapshotStateKt.g(navBackStackEntry);
        this.d = navBackStackEntry;
        final int i = 0;
        this.p = new Function1(this) { // from class: af
            public final /* synthetic */ SeekableTransitionState k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                int i2 = i;
                Unit unit = Unit.a;
                SeekableTransitionState seekableTransitionState = this.k;
                long longValue = ((Long) obj).longValue();
                switch (i2) {
                    case 0:
                        seekableTransitionState.m = longValue;
                        return unit;
                    default:
                        long j = longValue - seekableTransitionState.m;
                        seekableTransitionState.m = longValue;
                        long c = MathKt.c(j / seekableTransitionState.q);
                        MutableObjectList mutableObjectList = seekableTransitionState.n;
                        if (mutableObjectList.e()) {
                            Object[] objArr = mutableObjectList.a;
                            int i3 = mutableObjectList.b;
                            int i4 = 0;
                            for (int i5 = 0; i5 < i3; i5++) {
                                SeekableTransitionState.SeekingAnimationState seekingAnimationState = (SeekableTransitionState.SeekingAnimationState) objArr[i5];
                                SeekableTransitionState.n(seekingAnimationState, c);
                                seekingAnimationState.c = true;
                            }
                            Transition transition = seekableTransitionState.e;
                            if (transition != null) {
                                transition.q();
                            }
                            int i6 = mutableObjectList.b;
                            Object[] objArr2 = mutableObjectList.a;
                            IntRange j2 = RangesKt.j(0, i6);
                            int i7 = j2.j;
                            int i8 = j2.k;
                            if (i7 <= i8) {
                                while (true) {
                                    objArr2[i7 - i4] = objArr2[i7];
                                    if (((SeekableTransitionState.SeekingAnimationState) objArr2[i7]).c) {
                                        i4++;
                                    }
                                    if (i7 != i8) {
                                        i7++;
                                    }
                                }
                            }
                            ArraysKt.m(i6 - i4, i6, null, objArr2);
                            mutableObjectList.b -= i4;
                        }
                        SeekableTransitionState.SeekingAnimationState seekingAnimationState2 = seekableTransitionState.o;
                        if (seekingAnimationState2 != null) {
                            seekingAnimationState2.g = seekableTransitionState.f;
                            SeekableTransitionState.n(seekingAnimationState2, c);
                            seekableTransitionState.q(seekingAnimationState2.d);
                            if (seekingAnimationState2.d == 1.0f) {
                                seekableTransitionState.o = null;
                            }
                            seekableTransitionState.p();
                        }
                        return unit;
                }
            }
        };
        final int i2 = 1;
        this.r = new Function1(this) { // from class: af
            public final /* synthetic */ SeekableTransitionState k;

            {
                this.k = this;
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                int i22 = i2;
                Unit unit = Unit.a;
                SeekableTransitionState seekableTransitionState = this.k;
                long longValue = ((Long) obj).longValue();
                switch (i22) {
                    case 0:
                        seekableTransitionState.m = longValue;
                        return unit;
                    default:
                        long j = longValue - seekableTransitionState.m;
                        seekableTransitionState.m = longValue;
                        long c = MathKt.c(j / seekableTransitionState.q);
                        MutableObjectList mutableObjectList = seekableTransitionState.n;
                        if (mutableObjectList.e()) {
                            Object[] objArr = mutableObjectList.a;
                            int i3 = mutableObjectList.b;
                            int i4 = 0;
                            for (int i5 = 0; i5 < i3; i5++) {
                                SeekableTransitionState.SeekingAnimationState seekingAnimationState = (SeekableTransitionState.SeekingAnimationState) objArr[i5];
                                SeekableTransitionState.n(seekingAnimationState, c);
                                seekingAnimationState.c = true;
                            }
                            Transition transition = seekableTransitionState.e;
                            if (transition != null) {
                                transition.q();
                            }
                            int i6 = mutableObjectList.b;
                            Object[] objArr2 = mutableObjectList.a;
                            IntRange j2 = RangesKt.j(0, i6);
                            int i7 = j2.j;
                            int i8 = j2.k;
                            if (i7 <= i8) {
                                while (true) {
                                    objArr2[i7 - i4] = objArr2[i7];
                                    if (((SeekableTransitionState.SeekingAnimationState) objArr2[i7]).c) {
                                        i4++;
                                    }
                                    if (i7 != i8) {
                                        i7++;
                                    }
                                }
                            }
                            ArraysKt.m(i6 - i4, i6, null, objArr2);
                            mutableObjectList.b -= i4;
                        }
                        SeekableTransitionState.SeekingAnimationState seekingAnimationState2 = seekableTransitionState.o;
                        if (seekingAnimationState2 != null) {
                            seekingAnimationState2.g = seekableTransitionState.f;
                            SeekableTransitionState.n(seekingAnimationState2, c);
                            seekableTransitionState.q(seekingAnimationState2.d);
                            if (seekingAnimationState2.d == 1.0f) {
                                seekableTransitionState.o = null;
                            }
                            seekableTransitionState.p();
                        }
                        return unit;
                }
            }
        };
    }

    public static final void f(SeekableTransitionState seekableTransitionState) {
        Transition transition = seekableTransitionState.e;
        if (transition == null) {
            return;
        }
        SeekingAnimationState seekingAnimationState = seekableTransitionState.o;
        if (seekingAnimationState == null) {
            if (seekableTransitionState.f > 0 && seekableTransitionState.m() != 1.0f && !Intrinsics.a(((SnapshotMutableStateImpl) seekableTransitionState.c).getValue(), ((SnapshotMutableStateImpl) seekableTransitionState.b).getValue())) {
                seekingAnimationState = new SeekingAnimationState();
                seekingAnimationState.d = seekableTransitionState.m();
                long j = seekableTransitionState.f;
                seekingAnimationState.g = j;
                seekingAnimationState.h = MathKt.c((1.0d - seekableTransitionState.m()) * j);
                seekingAnimationState.e.e(0, seekableTransitionState.m());
            } else {
                seekingAnimationState = null;
            }
        }
        if (seekingAnimationState != null) {
            seekingAnimationState.g = seekableTransitionState.f;
            seekableTransitionState.n.g(seekingAnimationState);
            transition.n(seekingAnimationState);
        }
        seekableTransitionState.o = null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x006f, code lost:
    
        if (androidx.compose.runtime.MonotonicFrameClockKt.a(r13).w(r1, r2) == r3) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x003a  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x002a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object g(SeekableTransitionState seekableTransitionState, ContinuationImpl continuationImpl) {
        SeekableTransitionState$runAnimations$1 seekableTransitionState$runAnimations$1;
        Object obj;
        int i;
        MutableObjectList mutableObjectList = seekableTransitionState.n;
        if (continuationImpl instanceof SeekableTransitionState$runAnimations$1) {
            seekableTransitionState$runAnimations$1 = (SeekableTransitionState$runAnimations$1) continuationImpl;
            int i2 = seekableTransitionState$runAnimations$1.o;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                seekableTransitionState$runAnimations$1.o = i2 - Integer.MIN_VALUE;
                CoroutineContext coroutineContext = seekableTransitionState$runAnimations$1.k;
                Object obj2 = seekableTransitionState$runAnimations$1.m;
                obj = CoroutineSingletons.j;
                i = seekableTransitionState$runAnimations$1.o;
                Unit unit = Unit.a;
                if (i == 0) {
                    if (i != 1 && i != 2) {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    ResultKt.b(obj2);
                } else {
                    ResultKt.b(obj2);
                    if (mutableObjectList.d() && seekableTransitionState.o == null) {
                        return unit;
                    }
                    coroutineContext.getClass();
                    if (SuspendAnimationKt.h(coroutineContext) == 0.0f) {
                        seekableTransitionState.l();
                        seekableTransitionState.m = Long.MIN_VALUE;
                        return unit;
                    }
                    if (seekableTransitionState.m == Long.MIN_VALUE) {
                        af afVar = seekableTransitionState.p;
                        seekableTransitionState$runAnimations$1.o = 1;
                        coroutineContext.getClass();
                    }
                }
                do {
                    if (mutableObjectList.e() && seekableTransitionState.o == null) {
                        seekableTransitionState.m = Long.MIN_VALUE;
                        return unit;
                    }
                    seekableTransitionState$runAnimations$1.o = 2;
                } while (seekableTransitionState.j(seekableTransitionState$runAnimations$1) != obj);
                return obj;
            }
        }
        seekableTransitionState$runAnimations$1 = new SeekableTransitionState$runAnimations$1(seekableTransitionState, continuationImpl);
        CoroutineContext coroutineContext2 = seekableTransitionState$runAnimations$1.k;
        Object obj22 = seekableTransitionState$runAnimations$1.m;
        obj = CoroutineSingletons.j;
        i = seekableTransitionState$runAnimations$1.o;
        Unit unit2 = Unit.a;
        if (i == 0) {
        }
        do {
            if (mutableObjectList.e()) {
            }
            seekableTransitionState$runAnimations$1.o = 2;
        } while (seekableTransitionState.j(seekableTransitionState$runAnimations$1) != obj);
        return obj;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x004f, code lost:
    
        if (r0.a(r1) == r2) goto L21;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x006e  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object h(SeekableTransitionState seekableTransitionState, ContinuationImpl continuationImpl) {
        SeekableTransitionState$waitForComposition$1 seekableTransitionState$waitForComposition$1;
        CoroutineSingletons coroutineSingletons;
        int i;
        Object value;
        Object u;
        Object obj;
        MutexImpl mutexImpl = seekableTransitionState.k;
        if (continuationImpl instanceof SeekableTransitionState$waitForComposition$1) {
            seekableTransitionState$waitForComposition$1 = (SeekableTransitionState$waitForComposition$1) continuationImpl;
            int i2 = seekableTransitionState$waitForComposition$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                seekableTransitionState$waitForComposition$1.p = i2 - Integer.MIN_VALUE;
                Object obj2 = seekableTransitionState$waitForComposition$1.n;
                coroutineSingletons = CoroutineSingletons.j;
                i = seekableTransitionState$waitForComposition$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            obj = seekableTransitionState$waitForComposition$1.m;
                            ResultKt.b(obj2);
                            if (!Intrinsics.a(obj2, obj)) {
                                return Unit.a;
                            }
                            seekableTransitionState.m = Long.MIN_VALUE;
                            throw new CancellationException("targetState while waiting for composition");
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    Object obj3 = seekableTransitionState$waitForComposition$1.m;
                    ResultKt.b(obj2);
                    value = obj3;
                } else {
                    ResultKt.b(obj2);
                    value = ((SnapshotMutableStateImpl) seekableTransitionState.b).getValue();
                    seekableTransitionState$waitForComposition$1.m = value;
                    seekableTransitionState$waitForComposition$1.p = 1;
                }
                seekableTransitionState$waitForComposition$1.m = value;
                seekableTransitionState$waitForComposition$1.p = 2;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(seekableTransitionState$waitForComposition$1));
                cancellableContinuationImpl.v();
                seekableTransitionState.j = cancellableContinuationImpl;
                mutexImpl.h(null);
                u = cancellableContinuationImpl.u();
                if (u != coroutineSingletons) {
                    obj = value;
                    obj2 = u;
                    if (!Intrinsics.a(obj2, obj)) {
                    }
                }
                return coroutineSingletons;
            }
        }
        seekableTransitionState$waitForComposition$1 = new SeekableTransitionState$waitForComposition$1(seekableTransitionState, continuationImpl);
        Object obj22 = seekableTransitionState$waitForComposition$1.n;
        coroutineSingletons = CoroutineSingletons.j;
        i = seekableTransitionState$waitForComposition$1.p;
        if (i == 0) {
        }
        seekableTransitionState$waitForComposition$1.m = value;
        seekableTransitionState$waitForComposition$1.p = 2;
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(1, IntrinsicsKt.b(seekableTransitionState$waitForComposition$1));
        cancellableContinuationImpl2.v();
        seekableTransitionState.j = cancellableContinuationImpl2;
        mutexImpl.h(null);
        u = cancellableContinuationImpl2.u();
        if (u != coroutineSingletons) {
        }
        return coroutineSingletons;
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x004f, code lost:
    
        if (r0.a(r1) == r2) goto L24;
     */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0086  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005a  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x005e  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003c  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0025  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Object i(SeekableTransitionState seekableTransitionState, ContinuationImpl continuationImpl) {
        SeekableTransitionState$waitForCompositionAfterTargetStateChange$1 seekableTransitionState$waitForCompositionAfterTargetStateChange$1;
        int i;
        Object value;
        Object obj;
        MutexImpl mutexImpl = seekableTransitionState.k;
        if (continuationImpl instanceof SeekableTransitionState$waitForCompositionAfterTargetStateChange$1) {
            seekableTransitionState$waitForCompositionAfterTargetStateChange$1 = (SeekableTransitionState$waitForCompositionAfterTargetStateChange$1) continuationImpl;
            int i2 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                seekableTransitionState$waitForCompositionAfterTargetStateChange$1.p = i2 - Integer.MIN_VALUE;
                Object obj2 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i == 2) {
                            obj = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.m;
                            ResultKt.b(obj2);
                            if (!Intrinsics.a(obj2, obj)) {
                                seekableTransitionState.m = Long.MIN_VALUE;
                                throw new CancellationException("snapTo() was canceled because state was changed to " + obj2 + " instead of " + obj);
                            }
                            return Unit.a;
                        }
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                    Object obj3 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.m;
                    ResultKt.b(obj2);
                    value = obj3;
                } else {
                    ResultKt.b(obj2);
                    value = ((SnapshotMutableStateImpl) seekableTransitionState.b).getValue();
                    seekableTransitionState$waitForCompositionAfterTargetStateChange$1.m = value;
                    seekableTransitionState$waitForCompositionAfterTargetStateChange$1.p = 1;
                }
                if (!Intrinsics.a(value, seekableTransitionState.d)) {
                    mutexImpl.h(null);
                    return Unit.a;
                }
                seekableTransitionState$waitForCompositionAfterTargetStateChange$1.m = value;
                seekableTransitionState$waitForCompositionAfterTargetStateChange$1.p = 2;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(seekableTransitionState$waitForCompositionAfterTargetStateChange$1));
                cancellableContinuationImpl.v();
                seekableTransitionState.j = cancellableContinuationImpl;
                mutexImpl.h(null);
                Object u = cancellableContinuationImpl.u();
                if (u != coroutineSingletons) {
                    obj = value;
                    obj2 = u;
                    if (!Intrinsics.a(obj2, obj)) {
                    }
                    return Unit.a;
                }
                return coroutineSingletons;
            }
        }
        seekableTransitionState$waitForCompositionAfterTargetStateChange$1 = new SeekableTransitionState$waitForCompositionAfterTargetStateChange$1(seekableTransitionState, continuationImpl);
        Object obj22 = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = seekableTransitionState$waitForCompositionAfterTargetStateChange$1.p;
        if (i == 0) {
        }
        if (!Intrinsics.a(value, seekableTransitionState.d)) {
        }
    }

    public static Object k(SeekableTransitionState seekableTransitionState, Object obj, Continuation continuation) {
        Object a;
        Transition transition = seekableTransitionState.e;
        if (transition != null && (a = MutatorMutex.a(seekableTransitionState.l, new SeekableTransitionState$animateTo$2(seekableTransitionState, obj, transition, null), continuation)) == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }

    public static void n(SeekingAnimationState seekingAnimationState, long j) {
        long j2 = seekingAnimationState.a + j;
        seekingAnimationState.a = j2;
        long j3 = seekingAnimationState.h;
        if (j2 >= j3) {
            seekingAnimationState.d = 1.0f;
            return;
        }
        VectorizedFiniteAnimationSpec vectorizedFiniteAnimationSpec = seekingAnimationState.b;
        AnimationVector1D animationVector1D = seekingAnimationState.e;
        if (vectorizedFiniteAnimationSpec != null) {
            AnimationVector1D animationVector1D2 = seekingAnimationState.f;
            if (animationVector1D2 == null) {
                animationVector1D2 = s;
            }
            seekingAnimationState.d = RangesKt.c(((AnimationVector1D) vectorizedFiniteAnimationSpec.f(j2, animationVector1D, t, animationVector1D2)).a(0), 0.0f, 1.0f);
            return;
        }
        float f = ((float) j2) / ((float) j3);
        float f2 = 1.0f - f;
        seekingAnimationState.d = (f * 1.0f) + (f2 * animationVector1D.a(0));
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object a() {
        return ((SnapshotMutableStateImpl) this.c).getValue();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final Object b() {
        return ((SnapshotMutableStateImpl) this.b).getValue();
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void c(Object obj) {
        ((SnapshotMutableStateImpl) this.c).setValue(obj);
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void d(Transition transition) {
        Transition transition2 = this.e;
        if (transition2 != null && !transition.equals(transition2)) {
            PreconditionsKt.b("An instance of SeekableTransitionState has been used in different Transitions. Previous instance: " + this.e + ", new instance: " + transition);
        }
        this.e = transition;
    }

    @Override // androidx.compose.animation.core.TransitionState
    public final void e() {
        this.e = null;
        SnapshotStateObserver snapshotStateObserver = this.h;
        if (snapshotStateObserver != null) {
            snapshotStateObserver.b(this);
        }
    }

    public final Object j(ContinuationImpl continuationImpl) {
        float h = SuspendAnimationKt.h(continuationImpl.o());
        Unit unit = Unit.a;
        if (h <= 0.0f) {
            l();
            return unit;
        }
        this.q = h;
        Object w = MonotonicFrameClockKt.a(continuationImpl.o()).w(continuationImpl, this.r);
        if (w == CoroutineSingletons.j) {
            return w;
        }
        return unit;
    }

    public final void l() {
        Transition transition = this.e;
        if (transition != null) {
            transition.c();
        }
        this.n.k();
        if (this.o != null) {
            this.o = null;
            q(1.0f);
            p();
        }
    }

    public final float m() {
        return ((SnapshotMutableFloatStateImpl) this.i).j();
    }

    public final Object o(float f, Object obj, SuspendLambda suspendLambda) {
        if (0.0f > f || f > 1.0f) {
            PreconditionsKt.a("Expecting fraction between 0 and 1. Got " + f);
        }
        Transition transition = this.e;
        if (transition != null) {
            Object a = MutatorMutex.a(this.l, new SeekableTransitionState$seekTo$3(obj, ((SnapshotMutableStateImpl) this.b).getValue(), this, transition, f, null), suspendLambda);
            if (a == CoroutineSingletons.j) {
                return a;
            }
        }
        return Unit.a;
    }

    public final void p() {
        Transition transition = this.e;
        if (transition == null) {
            return;
        }
        transition.m(MathKt.c(m() * ((Number) transition.m.getValue()).longValue()));
    }

    public final void q(float f) {
        ((SnapshotMutableFloatStateImpl) this.i).k(f);
    }

    public final void r(SnapshotStateObserver snapshotStateObserver) {
        p pVar;
        if (!Intrinsics.a(this.h, snapshotStateObserver)) {
            SnapshotStateObserver snapshotStateObserver2 = this.h;
            if (snapshotStateObserver2 != null) {
                snapshotStateObserver2.b(this);
            }
            SnapshotStateObserver snapshotStateObserver3 = this.h;
            if (snapshotStateObserver3 != null && (pVar = snapshotStateObserver3.h) != null) {
                pVar.a();
            }
            this.h = snapshotStateObserver;
            if (snapshotStateObserver != null) {
                snapshotStateObserver.h = Snapshot.Companion.d(snapshotStateObserver.d);
            }
            SnapshotStateObserver snapshotStateObserver4 = this.h;
            if (snapshotStateObserver4 != null) {
                snapshotStateObserver4.e(this, TransitionKt.a, this.g);
            }
        }
    }

    public final Object s(Object obj, Continuation continuation) {
        Transition transition = this.e;
        if (transition != null && (!Intrinsics.a(((SnapshotMutableStateImpl) this.c).getValue(), obj) || !Intrinsics.a(((SnapshotMutableStateImpl) this.b).getValue(), obj))) {
            Object a = MutatorMutex.a(this.l, new SeekableTransitionState$snapTo$2(this, obj, transition, null), continuation);
            if (a == CoroutineSingletons.j) {
                return a;
            }
        }
        return Unit.a;
    }
}
