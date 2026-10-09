package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlinx.coroutines.CompletedExceptionally;
import kotlinx.coroutines.CoroutineDispatcher;
import kotlinx.coroutines.DebugStringsKt;
import kotlinx.coroutines.DispatchedTask;
import kotlinx.coroutines.EventLoop;
import kotlinx.coroutines.ThreadLocalEventLoop;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DispatchedContinuation<T> extends DispatchedTask<T> implements CoroutineStackFrame, Continuation<T> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater q = AtomicReferenceFieldUpdater.newUpdater(DispatchedContinuation.class, Object.class, "_reusableCancellableContinuation$volatile");
    private volatile /* synthetic */ Object _reusableCancellableContinuation$volatile;
    public final CoroutineDispatcher m;
    public final ContinuationImpl n;
    public Object o;
    public final Object p;

    public DispatchedContinuation(CoroutineDispatcher coroutineDispatcher, ContinuationImpl continuationImpl) {
        super(-1);
        this.m = coroutineDispatcher;
        this.n = continuationImpl;
        this.o = DispatchedContinuationKt.a;
        this.p = ThreadContextKt.b(continuationImpl.o());
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame d() {
        return this.n;
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        Object completedExceptionally;
        Throwable a = Result.a(obj);
        if (a == null) {
            completedExceptionally = obj;
        } else {
            completedExceptionally = new CompletedExceptionally(a, false);
        }
        ContinuationImpl continuationImpl = this.n;
        CoroutineContext o = continuationImpl.o();
        CoroutineDispatcher coroutineDispatcher = this.m;
        if (DispatchedContinuationKt.c(coroutineDispatcher, o)) {
            this.o = completedExceptionally;
            this.l = 0;
            DispatchedContinuationKt.b(coroutineDispatcher, continuationImpl.o(), this);
            return;
        }
        EventLoop a2 = ThreadLocalEventLoop.a();
        if (a2.l >= 4294967296L) {
            this.o = completedExceptionally;
            this.l = 0;
            a2.g1(this);
            return;
        }
        a2.h1(true);
        try {
            CoroutineContext o2 = continuationImpl.o();
            Object c = ThreadContextKt.c(o2, this.p);
            try {
                continuationImpl.g(obj);
                do {
                } while (a2.j1());
            } finally {
                ThreadContextKt.a(o2, c);
            }
        } catch (Throwable th) {
            try {
                h(th);
            } finally {
                a2.f1(true);
            }
        }
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Object i() {
        Object obj = this.o;
        this.o = DispatchedContinuationKt.a;
        return obj;
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return this.n.o();
    }

    public final String toString() {
        return "DispatchedContinuation[" + this.m + ", " + DebugStringsKt.b(this.n) + ']';
    }

    @Override // kotlinx.coroutines.DispatchedTask
    public final Continuation c() {
        return this;
    }
}
