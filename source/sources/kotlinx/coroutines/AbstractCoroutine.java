package kotlinx.coroutines;

import defpackage.k8;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.TypeIntrinsics;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.ThreadContextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractCoroutine<T> extends JobSupport implements Job, Continuation<T>, CoroutineScope {
    public final CoroutineContext l;

    public AbstractCoroutine(CoroutineContext coroutineContext, boolean z) {
        super(z);
        M((Job) coroutineContext.v(Job.Key.j));
        this.l = coroutineContext.A(this);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final String B() {
        return getClass().getSimpleName().concat(" was cancelled");
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void L(CompletionHandlerException completionHandlerException) {
        CoroutineExceptionHandlerKt.a(completionHandlerException, this.l);
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void b0(Object obj) {
        if (obj instanceof CompletedExceptionally) {
            CompletedExceptionally completedExceptionally = (CompletedExceptionally) obj;
            Throwable th = completedExceptionally.a;
            boolean z = true;
            if (CompletedExceptionally.b.get(completedExceptionally) != 1) {
                z = false;
            }
            k0(th, z);
            return;
        }
        l0(obj);
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        Throwable a = Result.a(obj);
        if (a != null) {
            obj = new CompletedExceptionally(a, false);
        }
        Object U = U(obj);
        if (U == JobSupportKt.b) {
            return;
        }
        s(U);
    }

    @Override // kotlinx.coroutines.CoroutineScope
    public final CoroutineContext getCoroutineContext() {
        return this.l;
    }

    public final void m0(CoroutineStart coroutineStart, AbstractCoroutine abstractCoroutine, Function2 function2) {
        Object n;
        int ordinal = coroutineStart.ordinal();
        Unit unit = Unit.a;
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        try {
                            CoroutineContext coroutineContext = this.l;
                            Object c = ThreadContextKt.c(coroutineContext, null);
                            try {
                                if (!(function2 instanceof BaseContinuationImpl)) {
                                    n = IntrinsicsKt.c(function2, abstractCoroutine, this);
                                } else {
                                    TypeIntrinsics.c(2, function2);
                                    n = function2.n(abstractCoroutine, this);
                                }
                                ThreadContextKt.a(coroutineContext, c);
                                if (n != CoroutineSingletons.j) {
                                    g(n);
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                ThreadContextKt.a(coroutineContext, c);
                                throw th;
                            }
                        } catch (Throwable th2) {
                            th = th2;
                            return;
                        }
                    }
                    k8.e();
                    return;
                }
                function2.getClass();
                IntrinsicsKt.b(IntrinsicsKt.a(abstractCoroutine, this, function2)).g(unit);
                return;
            }
            return;
        }
        try {
            DispatchedContinuationKt.a(unit, IntrinsicsKt.b(IntrinsicsKt.a(abstractCoroutine, this, function2)));
        } finally {
            th = th;
            if (th instanceof DispatchException) {
                th = ((DispatchException) th).j;
            }
            g(ResultKt.a(th));
        }
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return this.l;
    }

    public void l0(Object obj) {
    }

    public void k0(Throwable th, boolean z) {
    }
}
