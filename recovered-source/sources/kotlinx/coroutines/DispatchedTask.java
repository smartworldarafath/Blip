package kotlinx.coroutines;

import java.util.concurrent.CancellationException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.ThreadContextKt;
import kotlinx.coroutines.scheduling.Task;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DispatchedTask<T> extends Task {
    public int l;

    public DispatchedTask(int i) {
        super(0L, false);
        this.l = i;
    }

    public abstract Continuation c();

    public Throwable e(Object obj) {
        CompletedExceptionally completedExceptionally;
        if (obj instanceof CompletedExceptionally) {
            completedExceptionally = (CompletedExceptionally) obj;
        } else {
            completedExceptionally = null;
        }
        if (completedExceptionally == null) {
            return null;
        }
        return completedExceptionally.a;
    }

    public final void h(Throwable th) {
        CoroutineExceptionHandlerKt.a(new Error("Fatal exception in coroutines machinery for " + this + ". Please read KDoc to 'handleFatalException' method and report this incident to maintainers", th), c().o());
    }

    public abstract Object i();

    /* JADX WARN: Code restructure failed: missing block: B:15:0x0040, code lost:
    
        r4 = (kotlinx.coroutines.Job) r5.v(kotlinx.coroutines.Job.Key.j);
     */
    @Override // java.lang.Runnable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void run() {
        UndispatchedCoroutine undispatchedCoroutine;
        try {
            Continuation c = c();
            c.getClass();
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) c;
            ContinuationImpl continuationImpl = dispatchedContinuation.n;
            Object obj = dispatchedContinuation.p;
            CoroutineContext o = continuationImpl.o();
            Object c2 = ThreadContextKt.c(o, obj);
            Job job = null;
            if (c2 != ThreadContextKt.a) {
                undispatchedCoroutine = CoroutineContextKt.c(continuationImpl, o, c2);
            } else {
                undispatchedCoroutine = null;
            }
            try {
                CoroutineContext o2 = continuationImpl.o();
                Object i = i();
                Throwable e = e(i);
                if (e == null) {
                    int i2 = this.l;
                    boolean z = true;
                    if (i2 != 1 && i2 != 2) {
                        z = false;
                    }
                }
                if (job != null && !job.h()) {
                    CancellationException R = job.R();
                    b(R);
                    continuationImpl.g(ResultKt.a(R));
                } else if (e != null) {
                    continuationImpl.g(new Result.Failure(e));
                } else {
                    continuationImpl.g(f(i));
                }
                if (undispatchedCoroutine == null || undispatchedCoroutine.p0()) {
                    ThreadContextKt.a(o, c2);
                }
            } catch (Throwable th) {
                if (undispatchedCoroutine == null || undispatchedCoroutine.p0()) {
                    ThreadContextKt.a(o, c2);
                }
                throw th;
            }
        } catch (DispatchException e2) {
            CoroutineExceptionHandlerKt.a(e2.j, c().o());
        } catch (Throwable th2) {
            h(th2);
        }
    }

    public void b(CancellationException cancellationException) {
    }

    public Object f(Object obj) {
        return obj;
    }
}
