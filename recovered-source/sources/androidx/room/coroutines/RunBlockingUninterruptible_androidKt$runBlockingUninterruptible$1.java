package androidx.room.coroutines;

import defpackage.u2;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.GlobalScope;
import kotlinx.coroutines.JobSupport;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1", f = "RunBlockingUninterruptible.android.kt", l = {}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public /* synthetic */ Object n;
    public final /* synthetic */ Function2 o;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1", f = "RunBlockingUninterruptible.android.kt", l = {52}, m = "invokeSuspend")
    /* renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
        public int n;
        public /* synthetic */ Object o;
        public final /* synthetic */ CompletableDeferred p;
        public final /* synthetic */ Function2 q;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass1(CompletableDeferred completableDeferred, Function2 function2, Continuation continuation) {
            super(2, continuation);
            this.p = completableDeferred;
            this.q = function2;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            AnonymousClass1 anonymousClass1 = new AnonymousClass1(this.p, this.q, continuation);
            anonymousClass1.o = obj;
            return anonymousClass1;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CompletableDeferred completableDeferred;
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    completableDeferred = (CompletableDeferred) this.o;
                    try {
                        ResultKt.b(obj);
                    } catch (Throwable th) {
                        th = th;
                        obj = new Result.Failure(th);
                        CompletableDeferredKt.b(completableDeferred, obj);
                        return Unit.a;
                    }
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                CoroutineScope coroutineScope = (CoroutineScope) this.o;
                CompletableDeferred completableDeferred2 = this.p;
                Function2 function2 = this.q;
                try {
                    this.o = completableDeferred2;
                    this.n = 1;
                    obj = function2.n(coroutineScope, this);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                    completableDeferred = completableDeferred2;
                } catch (Throwable th2) {
                    th = th2;
                    completableDeferred = completableDeferred2;
                    obj = new Result.Failure(th);
                    CompletableDeferredKt.b(completableDeferred, obj);
                    return Unit.a;
                }
            }
            CompletableDeferredKt.b(completableDeferred, obj);
            return Unit.a;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2", f = "RunBlockingUninterruptible.android.kt", l = {58}, m = "invokeSuspend")
    /* renamed from: androidx.room.coroutines.RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
        public int n;
        public final /* synthetic */ CompletableDeferred o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public AnonymousClass2(CompletableDeferred completableDeferred, Continuation continuation) {
            super(2, continuation);
            this.o = completableDeferred;
        }

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            return ((AnonymousClass2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            return new AnonymousClass2(this.o, continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            int i = this.n;
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                    return obj;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
            this.n = 1;
            Object Z = this.o.Z(this);
            if (Z == coroutineSingletons) {
                return coroutineSingletons;
            }
            return Z;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.o = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1 = new RunBlockingUninterruptible_androidKt$runBlockingUninterruptible$1(this.o, continuation);
        runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1.n = obj;
        return runBlockingUninterruptible_androidKt$runBlockingUninterruptible$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        CoroutineContext.Element v = ((CoroutineScope) this.n).getCoroutineContext().v(ContinuationInterceptor.Key.j);
        v.getClass();
        ContinuationInterceptor continuationInterceptor = (ContinuationInterceptor) v;
        CompletableDeferred a = CompletableDeferredKt.a(null);
        BuildersKt.b(GlobalScope.j, continuationInterceptor, CoroutineStart.m, new AnonymousClass1(a, this.o, null));
        while (!((JobSupport) a).Q()) {
            try {
                return BuildersKt.d(continuationInterceptor, new AnonymousClass2(a, null));
            } catch (InterruptedException unused) {
            }
        }
        return a.q();
    }
}
