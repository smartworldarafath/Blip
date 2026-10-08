package androidx.compose.animation.core;

import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.runtime.MonotonicFrameClockKt;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.math.MathKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2", f = "Transition.kt", l = {721}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SeekableTransitionState$animateTo$2 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SeekableTransitionState o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ Transition q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1", f = "Transition.kt", l = {2422, 734, 736, 790, 794}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.animation.core.SeekableTransitionState$animateTo$2$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public MutexImpl n;
        public SeekableTransitionState o;
        public int p;
        public final /* synthetic */ SeekableTransitionState q;
        public final /* synthetic */ Object r;
        public final /* synthetic */ Transition s;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(SeekableTransitionState seekableTransitionState, Object obj, Transition transition, Continuation continuation) {
            super(2, continuation);
            this.q = seekableTransitionState;
            this.r = obj;
            this.s = transition;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass1(this.q, this.r, this.s, continuation);
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x00bc, code lost:
        
            if (androidx.compose.animation.core.SeekableTransitionState.i(r3, r26) == r1) goto L82;
         */
        /* JADX WARN: Code restructure failed: missing block: B:65:0x00a7, code lost:
        
            if (r2 == r1) goto L36;
         */
        /* JADX WARN: Code restructure failed: missing block: B:66:0x00b1, code lost:
        
            r2 = r5;
         */
        /* JADX WARN: Code restructure failed: missing block: B:67:0x00b2, code lost:
        
            if (r2 != r1) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:69:0x00ae, code lost:
        
            if (r2 == r1) goto L36;
         */
        /* JADX WARN: Removed duplicated region for block: B:21:0x00ce  */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object v(Object obj) {
            MutexImpl mutexImpl;
            SeekableTransitionState seekableTransitionState;
            Object j;
            float f;
            Object obj2;
            Object obj3;
            SeekableTransitionState.SeekingAnimationState seekingAnimationState;
            VectorizedFiniteAnimationSpec vectorizedFiniteAnimationSpec;
            AnimationVector1D animationVector1D;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.p;
            Unit unit = Unit.a;
            Transition transition = this.s;
            Object obj4 = this.r;
            SeekableTransitionState seekableTransitionState2 = this.q;
            try {
                if (i != 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i != 3) {
                                if (i != 4) {
                                    if (i == 5) {
                                        ResultKt.b(obj);
                                        return unit;
                                    }
                                    u2.l("call to 'resume' before 'invoke' with coroutine");
                                    return null;
                                }
                                ResultKt.b(obj);
                                f = 0.0f;
                                obj3 = obj4;
                                seekableTransitionState2.c(obj3);
                                seekableTransitionState2.q(f);
                                transition.j();
                                this.p = 5;
                                if (SeekableTransitionState.h(seekableTransitionState2, this) != coroutineSingletons) {
                                    return coroutineSingletons;
                                }
                                return unit;
                            }
                            ResultKt.b(obj);
                            if (!Intrinsics.a(((SnapshotMutableStateImpl) seekableTransitionState2.c).getValue(), obj4)) {
                                if (seekableTransitionState2.m() >= 1.0f || ((seekingAnimationState = seekableTransitionState2.o) != null && Intrinsics.a(null, seekingAnimationState.b))) {
                                    f = 0.0f;
                                    obj2 = obj4;
                                } else {
                                    if (seekingAnimationState != null) {
                                        vectorizedFiniteAnimationSpec = seekingAnimationState.b;
                                    } else {
                                        vectorizedFiniteAnimationSpec = null;
                                    }
                                    AnimationVector1D animationVector1D2 = SeekableTransitionState.s;
                                    if (vectorizedFiniteAnimationSpec != null) {
                                        f = 0.0f;
                                        obj2 = obj4;
                                        long j2 = seekingAnimationState.a;
                                        AnimationVector1D animationVector1D3 = seekingAnimationState.e;
                                        AnimationVector1D animationVector1D4 = seekingAnimationState.f;
                                        if (animationVector1D4 == null) {
                                            animationVector1D = animationVector1D2;
                                        } else {
                                            animationVector1D = animationVector1D4;
                                        }
                                        animationVector1D2 = (AnimationVector1D) vectorizedFiniteAnimationSpec.c(j2, animationVector1D3, SeekableTransitionState.t, animationVector1D);
                                    } else {
                                        f = 0.0f;
                                        obj2 = obj4;
                                        if (seekingAnimationState != null && seekingAnimationState.a != 0) {
                                            long j3 = seekingAnimationState.g;
                                            if (j3 == Long.MIN_VALUE) {
                                                j3 = seekableTransitionState2.f;
                                            }
                                            float f2 = ((float) j3) / 1.0E9f;
                                            if (f2 > 0.0f) {
                                                animationVector1D2 = new AnimationVector1D(1.0f / f2);
                                            }
                                        }
                                    }
                                    if (seekingAnimationState == null) {
                                        seekingAnimationState = new SeekableTransitionState.SeekingAnimationState();
                                    }
                                    AnimationVector1D animationVector1D5 = seekingAnimationState.e;
                                    seekingAnimationState.b = null;
                                    seekingAnimationState.c = false;
                                    seekingAnimationState.d = seekableTransitionState2.m();
                                    animationVector1D5.e(0, seekableTransitionState2.m());
                                    long j4 = seekableTransitionState2.f;
                                    seekingAnimationState.g = j4;
                                    seekingAnimationState.a = 0L;
                                    seekingAnimationState.f = animationVector1D2;
                                    seekingAnimationState.h = MathKt.c((1.0d - seekableTransitionState2.m()) * j4);
                                    seekableTransitionState2.o = seekingAnimationState;
                                }
                                this.n = null;
                                this.o = null;
                                this.p = 4;
                                if (SeekableTransitionState.g(seekableTransitionState2, this) != coroutineSingletons) {
                                    obj3 = obj2;
                                    seekableTransitionState2.c(obj3);
                                    seekableTransitionState2.q(f);
                                    transition.j();
                                    this.p = 5;
                                    if (SeekableTransitionState.h(seekableTransitionState2, this) != coroutineSingletons) {
                                    }
                                }
                                return coroutineSingletons;
                            }
                            return unit;
                        }
                        ResultKt.b(obj);
                        this.p = 3;
                    } else {
                        seekableTransitionState = this.o;
                        mutexImpl = this.n;
                        ResultKt.b(obj);
                    }
                } else {
                    ResultKt.b(obj);
                    Object value = ((SnapshotMutableStateImpl) seekableTransitionState2.b).getValue();
                    if (!obj4.equals(value)) {
                        SeekableTransitionState.f(seekableTransitionState2);
                        seekableTransitionState2.q(0.0f);
                        transition.s(obj4);
                        transition.o(0L);
                        seekableTransitionState2.c(value);
                        ((SnapshotMutableStateImpl) seekableTransitionState2.b).setValue(obj4);
                    }
                    MutexImpl mutexImpl2 = seekableTransitionState2.k;
                    this.n = mutexImpl2;
                    this.o = seekableTransitionState2;
                    this.p = 1;
                    if (mutexImpl2.a(this) != coroutineSingletons) {
                        mutexImpl = mutexImpl2;
                        seekableTransitionState = seekableTransitionState2;
                    }
                    return coroutineSingletons;
                }
                Object obj5 = seekableTransitionState.d;
                mutexImpl.h(null);
                if (!obj4.equals(obj5)) {
                    this.n = null;
                    this.o = null;
                    this.p = 2;
                    if (seekableTransitionState2.m == Long.MIN_VALUE) {
                        j = MonotonicFrameClockKt.a(o()).w(this, seekableTransitionState2.p);
                    } else {
                        j = seekableTransitionState2.j(this);
                    }
                }
                if (!Intrinsics.a(((SnapshotMutableStateImpl) seekableTransitionState2.c).getValue(), obj4)) {
                }
                return unit;
            } catch (Throwable th) {
                mutexImpl.h(null);
                throw th;
            }
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$animateTo$2(SeekableTransitionState seekableTransitionState, Object obj, Transition transition, Continuation continuation) {
        super(1, continuation);
        this.o = seekableTransitionState;
        this.p = obj;
        this.q = transition;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Object obj2 = this.p;
        Transition transition = this.q;
        return new SeekableTransitionState$animateTo$2(this.o, obj2, transition, (Continuation) obj).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.o, this.p, this.q, null);
            this.n = 1;
            if (CoroutineScopeKt.c(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
