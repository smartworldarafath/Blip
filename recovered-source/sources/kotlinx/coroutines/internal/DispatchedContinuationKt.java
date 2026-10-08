package kotlinx.coroutines.internal;

import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineContextKt;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DispatchException;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.ThreadLocalEventLoop;
import kotlinx.coroutines.UndispatchedCoroutine;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DispatchedContinuationKt {
    public static final Symbol a = new Symbol("UNDEFINED");
    public static final Symbol b = new Symbol("REUSABLE_CLAIMED");

    public static final void a(Object obj, Continuation continuation) {
        Object completedExceptionally;
        UndispatchedCoroutine undispatchedCoroutine;
        if (continuation instanceof DispatchedContinuation) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            CoroutineDispatcher coroutineDispatcher = dispatchedContinuation.m;
            ContinuationImpl continuationImpl = dispatchedContinuation.n;
            Throwable a2 = Result.a(obj);
            if (a2 == null) {
                completedExceptionally = obj;
            } else {
                completedExceptionally = new CompletedExceptionally(a2, false);
            }
            if (c(coroutineDispatcher, continuationImpl.o())) {
                dispatchedContinuation.o = completedExceptionally;
                dispatchedContinuation.l = 1;
                b(coroutineDispatcher, continuationImpl.o(), dispatchedContinuation);
                return;
            }
            EventLoop a3 = ThreadLocalEventLoop.a();
            if (a3.l >= 4294967296L) {
                dispatchedContinuation.o = completedExceptionally;
                dispatchedContinuation.l = 1;
                a3.g1(dispatchedContinuation);
                return;
            }
            a3.h1(true);
            try {
                Job job = (Job) continuationImpl.o().v(Job.Key.j);
                if (job != null && !job.h()) {
                    dispatchedContinuation.g(ResultKt.a(job.R()));
                } else {
                    Object obj2 = dispatchedContinuation.p;
                    CoroutineContext o = continuationImpl.o();
                    Object c = ThreadContextKt.c(o, obj2);
                    if (c != ThreadContextKt.a) {
                        undispatchedCoroutine = CoroutineContextKt.c(continuationImpl, o, c);
                    } else {
                        undispatchedCoroutine = null;
                    }
                    try {
                        continuationImpl.g(obj);
                    } finally {
                        if (undispatchedCoroutine == null || undispatchedCoroutine.p0()) {
                            ThreadContextKt.a(o, c);
                        }
                    }
                }
                do {
                } while (a3.j1());
            } finally {
                try {
                    return;
                } finally {
                }
            }
            return;
        }
        continuation.g(obj);
    }

    public static final void b(CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext, Runnable runnable) {
        try {
            coroutineDispatcher.b1(coroutineContext, runnable);
        } catch (Throwable th) {
            throw new DispatchException(th, coroutineDispatcher, coroutineContext);
        }
    }

    public static final boolean c(CoroutineDispatcher coroutineDispatcher, CoroutineContext coroutineContext) {
        try {
            return coroutineDispatcher.d1(coroutineContext);
        } catch (Throwable th) {
            throw new DispatchException(th, coroutineDispatcher, coroutineContext);
        }
    }
}
