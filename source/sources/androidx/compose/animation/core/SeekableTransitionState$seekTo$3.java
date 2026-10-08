package androidx.compose.animation.core;

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
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3", f = "Transition.kt", l = {610}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class SeekableTransitionState$seekTo$3 extends SuspendLambda implements Function1<Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ Object o;
    public final /* synthetic */ Object p;
    public final /* synthetic */ SeekableTransitionState q;
    public final /* synthetic */ Transition r;
    public final /* synthetic */ float s;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1", f = "Transition.kt", l = {632}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ Object p;
        public final /* synthetic */ Object q;
        public final /* synthetic */ SeekableTransitionState r;
        public final /* synthetic */ Transition s;
        public final /* synthetic */ float t;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        @DebugMetadata(c = "androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1$1", f = "Transition.kt", l = {628}, m = "invokeSuspend", v = 1)
        /* renamed from: androidx.compose.animation.core.SeekableTransitionState$seekTo$3$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        public final class C00001 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
            public int n;
            public final /* synthetic */ SeekableTransitionState o;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C00001(SeekableTransitionState seekableTransitionState, Continuation continuation) {
                super(2, continuation);
                this.o = seekableTransitionState;
            }

            @Override // kotlin.jvm.functions.Function2
            public final Object n(Object obj, Object obj2) {
                return ((C00001) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
            }

            @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
            public final Continuation s(Object obj, Continuation continuation) {
                return new C00001(this.o, continuation);
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
                    this.n = 1;
                    if (SeekableTransitionState.g(this.o, this) == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                return Unit.a;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Object obj, Object obj2, SeekableTransitionState seekableTransitionState, Transition transition, float f, Continuation continuation) {
            super(2, continuation);
            this.p = obj;
            this.q = obj2;
            this.r = seekableTransitionState;
            this.s = transition;
            this.t = f;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, this.q, this.r, this.s, this.t, continuation);
            anonymousClass1.o = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            Unit unit = Unit.a;
            SeekableTransitionState seekableTransitionState = this.r;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.o;
                Object obj2 = this.p;
                Object obj3 = this.q;
                if (!Intrinsics.a(obj2, obj3)) {
                    SeekableTransitionState.f(seekableTransitionState);
                } else {
                    seekableTransitionState.o = null;
                    if (Intrinsics.a(((SnapshotMutableStateImpl) seekableTransitionState.c).getValue(), obj2)) {
                        return unit;
                    }
                }
                boolean a = Intrinsics.a(obj2, obj3);
                float f = this.t;
                if (!a) {
                    Transition transition = this.s;
                    transition.s(obj2);
                    transition.o(0L);
                    ((SnapshotMutableStateImpl) seekableTransitionState.b).setValue(obj2);
                    transition.k(f);
                }
                seekableTransitionState.q(f);
                if (seekableTransitionState.n.e()) {
                    BuildersKt.c(coroutineScope, null, null, new C00001(seekableTransitionState, null), 3);
                } else {
                    seekableTransitionState.m = Long.MIN_VALUE;
                }
                this.n = 1;
                if (SeekableTransitionState.i(seekableTransitionState, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            seekableTransitionState.p();
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SeekableTransitionState$seekTo$3(Object obj, Object obj2, SeekableTransitionState seekableTransitionState, Transition transition, float f, Continuation continuation) {
        super(1, continuation);
        this.o = obj;
        this.p = obj2;
        this.q = seekableTransitionState;
        this.r = transition;
        this.s = f;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Transition transition = this.r;
        float f = this.s;
        return new SeekableTransitionState$seekTo$3(this.o, this.p, this.q, transition, f, (Continuation) obj).v(Unit.a);
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
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.o, this.p, this.q, this.r, this.s, null);
            this.n = 1;
            if (CoroutineScopeKt.c(anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
