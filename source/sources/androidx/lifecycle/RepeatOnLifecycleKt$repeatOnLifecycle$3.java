package androidx.lifecycle;

import androidx.lifecycle.Lifecycle;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.Dispatchers;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.android.HandlerContext;
import kotlinx.coroutines.internal.MainDispatcherLoader;
import kotlinx.coroutines.scheduling.DefaultScheduler;
import kotlinx.coroutines.sync.Mutex;
import kotlinx.coroutines.sync.MutexImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3", f = "RepeatOnLifecycle.kt", l = {83}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class RepeatOnLifecycleKt$repeatOnLifecycle$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Lifecycle p;
    public final /* synthetic */ Function2 q;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1", f = "RepeatOnLifecycle.kt", l = {161}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public Ref$ObjectRef n;
        public Ref$ObjectRef o;
        public Object p;
        public int q;
        public final /* synthetic */ Lifecycle r;
        public final /* synthetic */ CoroutineScope s;
        public final /* synthetic */ Function2 t;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(Lifecycle lifecycle, CoroutineScope coroutineScope, Function2 function2, Continuation continuation) {
            super(2, continuation);
            Lifecycle.State state = Lifecycle.State.j;
            this.r = lifecycle;
            this.s = coroutineScope;
            this.t = function2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            Lifecycle.State state = Lifecycle.State.j;
            return new AnonymousClass1(this.r, this.s, this.t, continuation);
        }

        /* JADX WARN: Removed duplicated region for block: B:20:0x0090  */
        /* JADX WARN: Removed duplicated region for block: B:23:0x0099  */
        /* JADX WARN: Removed duplicated region for block: B:25:? A[SYNTHETIC] */
        /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
        /* JADX WARN: Type inference failed for: r8v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final Object v(Object obj) {
            Throwable th;
            Ref$ObjectRef ref$ObjectRef;
            final CoroutineScope coroutineScope;
            final Function2 function2;
            final CancellableContinuationImpl cancellableContinuationImpl;
            Ref$ObjectRef ref$ObjectRef2;
            Job job;
            LifecycleEventObserver lifecycleEventObserver;
            Ref$ObjectRef ref$ObjectRef3;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.q;
            Unit unit = Unit.a;
            Lifecycle lifecycle = this.r;
            if (i != 0) {
                if (i == 1) {
                    Ref$ObjectRef ref$ObjectRef4 = this.o;
                    ref$ObjectRef = this.n;
                    try {
                        ResultKt.b(obj);
                        ref$ObjectRef3 = ref$ObjectRef4;
                    } catch (Throwable th2) {
                        th = th2;
                        ref$ObjectRef2 = ref$ObjectRef4;
                        job = (Job) ref$ObjectRef.j;
                        if (job != null) {
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef2.j;
                        if (lifecycleEventObserver == null) {
                        }
                    }
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                if (((LifecycleRegistry) lifecycle).i != Lifecycle.State.j) {
                    final ?? obj2 = new Object();
                    ?? obj3 = new Object();
                    try {
                        Lifecycle.State state = Lifecycle.State.n;
                        coroutineScope = this.s;
                        function2 = this.t;
                        this.n = obj2;
                        this.o = obj3;
                        this.q = 1;
                        cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(this));
                        cancellableContinuationImpl.v();
                    } catch (Throwable th3) {
                        th = th3;
                    }
                    try {
                        Lifecycle.Event.Companion.getClass();
                        final Lifecycle.Event event = Lifecycle.Event.ON_RESUME;
                        final Lifecycle.Event event2 = Lifecycle.Event.ON_PAUSE;
                        final MutexImpl mutexImpl = new MutexImpl();
                        LifecycleEventObserver lifecycleEventObserver2 = new LifecycleEventObserver() { // from class: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1

                            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
                            @DebugMetadata(c = "androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1", f = "RepeatOnLifecycle.kt", l = {166, 110}, m = "invokeSuspend", v = 1)
                            /* renamed from: androidx.lifecycle.RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1, reason: invalid class name */
                            /* loaded from: classes.dex */
                            final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
                                public Mutex n;
                                public Object o;
                                public int p;
                                public final /* synthetic */ MutexImpl q;
                                public final /* synthetic */ Function2 r;

                                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                                public AnonymousClass1(MutexImpl mutexImpl, Function2 function2, Continuation continuation) {
                                    super(2, continuation);
                                    this.q = mutexImpl;
                                    this.r = function2;
                                }

                                @Override // kotlin.jvm.functions.Function2
                                public final Object n(Object obj, Object obj2) {
                                    return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
                                }

                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                public final Continuation s(Object obj, Continuation continuation) {
                                    return new AnonymousClass1(this.q, this.r, continuation);
                                }

                                /* JADX WARN: Code restructure failed: missing block: B:27:0x0037, code lost:
                                
                                    if (r7.a(r6) == r0) goto L19;
                                 */
                                /* JADX WARN: Multi-variable type inference failed */
                                /* JADX WARN: Type inference failed for: r3v3, types: [kotlinx.coroutines.sync.Mutex] */
                                @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
                                /*
                                    Code decompiled incorrectly, please refer to instructions dump.
                                */
                                public final Object v(Object obj) {
                                    MutexImpl mutexImpl;
                                    Function2 function2;
                                    Throwable th;
                                    Mutex mutex;
                                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                                    int i = this.p;
                                    try {
                                        if (i != 0) {
                                            if (i != 1) {
                                                if (i == 2) {
                                                    mutex = this.n;
                                                    try {
                                                        ResultKt.b(obj);
                                                        mutex.h(null);
                                                        return Unit.a;
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        mutex.h(null);
                                                        throw th;
                                                    }
                                                }
                                                u2.l("call to 'resume' before 'invoke' with coroutine");
                                                return null;
                                            }
                                            function2 = (Function2) this.o;
                                            ?? r3 = this.n;
                                            ResultKt.b(obj);
                                            mutexImpl = r3;
                                        } else {
                                            ResultKt.b(obj);
                                            mutexImpl = this.q;
                                            this.n = mutexImpl;
                                            function2 = this.r;
                                            this.o = function2;
                                            this.p = 1;
                                        }
                                        RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1 = new RepeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1(function2, null);
                                        this.n = mutexImpl;
                                        this.o = null;
                                        this.p = 2;
                                        if (CoroutineScopeKt.c(repeatOnLifecycleKt$repeatOnLifecycle$3$1$1$1$1$1$1, this) != coroutineSingletons) {
                                            mutex = mutexImpl;
                                            mutex.h(null);
                                            return Unit.a;
                                        }
                                        return coroutineSingletons;
                                    } catch (Throwable th3) {
                                        MutexImpl mutexImpl2 = mutexImpl;
                                        th = th3;
                                        mutex = mutexImpl2;
                                        mutex.h(null);
                                        throw th;
                                    }
                                }
                            }

                            @Override // androidx.lifecycle.LifecycleEventObserver
                            public final void h(LifecycleOwner lifecycleOwner, Lifecycle.Event event3) {
                                Lifecycle.Event event4 = Lifecycle.Event.this;
                                Ref$ObjectRef ref$ObjectRef5 = obj2;
                                if (event3 == event4) {
                                    ref$ObjectRef5.j = BuildersKt.c(coroutineScope, null, null, new AnonymousClass1(mutexImpl, function2, null), 3);
                                    return;
                                }
                                if (event3 == event2) {
                                    Job job2 = (Job) ref$ObjectRef5.j;
                                    if (job2 != null) {
                                        job2.n(null);
                                    }
                                    ref$ObjectRef5.j = null;
                                }
                                if (event3 == Lifecycle.Event.ON_DESTROY) {
                                    cancellableContinuationImpl.g(Unit.a);
                                }
                            }
                        };
                        obj3.j = lifecycleEventObserver2;
                        lifecycle.a(lifecycleEventObserver2);
                        if (cancellableContinuationImpl.u() == coroutineSingletons) {
                            return coroutineSingletons;
                        }
                        ref$ObjectRef = obj2;
                        ref$ObjectRef3 = obj3;
                    } catch (Throwable th4) {
                        th = th4;
                        ref$ObjectRef = obj2;
                        ref$ObjectRef2 = obj3;
                        job = (Job) ref$ObjectRef.j;
                        if (job != null) {
                            job.n(null);
                        }
                        lifecycleEventObserver = (LifecycleEventObserver) ref$ObjectRef2.j;
                        if (lifecycleEventObserver == null) {
                            lifecycle.b(lifecycleEventObserver);
                            throw th;
                        }
                        throw th;
                    }
                }
                return unit;
            }
            Job job2 = (Job) ref$ObjectRef.j;
            if (job2 != null) {
                job2.n(null);
            }
            LifecycleEventObserver lifecycleEventObserver3 = (LifecycleEventObserver) ref$ObjectRef3.j;
            if (lifecycleEventObserver3 != null) {
                lifecycle.b(lifecycleEventObserver3);
            }
            return unit;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RepeatOnLifecycleKt$repeatOnLifecycle$3(Lifecycle lifecycle, Function2 function2, Continuation continuation) {
        super(2, continuation);
        Lifecycle.State state = Lifecycle.State.j;
        this.p = lifecycle;
        this.q = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((RepeatOnLifecycleKt$repeatOnLifecycle$3) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        Lifecycle.State state = Lifecycle.State.j;
        RepeatOnLifecycleKt$repeatOnLifecycle$3 repeatOnLifecycleKt$repeatOnLifecycle$3 = new RepeatOnLifecycleKt$repeatOnLifecycle$3(this.p, this.q, continuation);
        repeatOnLifecycleKt$repeatOnLifecycle$3.o = obj;
        return repeatOnLifecycleKt$repeatOnLifecycle$3;
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
            CoroutineScope coroutineScope = (CoroutineScope) this.o;
            DefaultScheduler defaultScheduler = Dispatchers.a;
            HandlerContext handlerContext = MainDispatcherLoader.a.o;
            Lifecycle.State state = Lifecycle.State.j;
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, coroutineScope, this.q, null);
            this.n = 1;
            if (BuildersKt.e(handlerContext, anonymousClass1, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
