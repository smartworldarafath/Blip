package kotlinx.coroutines;

import java.lang.reflect.Method;
import java.util.concurrent.CancellationException;
import java.util.concurrent.Executor;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.RejectedExecutionException;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ScheduledFuture;
import java.util.concurrent.ScheduledThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.internal.ConcurrentKt;
import kotlinx.coroutines.scheduling.DefaultIoScheduler;
import kotlinx.coroutines.scheduling.DefaultScheduler;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ExecutorCoroutineDispatcherImpl extends ExecutorCoroutineDispatcher implements Delay {
    public final Executor l;

    public ExecutorCoroutineDispatcherImpl(Executor executor) {
        ScheduledThreadPoolExecutor scheduledThreadPoolExecutor;
        Method method;
        this.l = executor;
        Method method2 = ConcurrentKt.a;
        try {
            if (executor instanceof ScheduledThreadPoolExecutor) {
                scheduledThreadPoolExecutor = (ScheduledThreadPoolExecutor) executor;
            } else {
                scheduledThreadPoolExecutor = null;
            }
            if (scheduledThreadPoolExecutor != null && (method = ConcurrentKt.a) != null) {
                method.invoke(scheduledThreadPoolExecutor, Boolean.TRUE);
            }
        } catch (Throwable unused) {
        }
    }

    @Override // kotlinx.coroutines.Delay
    public final void S(long j, CancellableContinuationImpl cancellableContinuationImpl) {
        ScheduledExecutorService scheduledExecutorService;
        Executor executor = this.l;
        ScheduledFuture<?> scheduledFuture = null;
        if (executor instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) executor;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            ResumeUndispatchedRunnable resumeUndispatchedRunnable = new ResumeUndispatchedRunnable(this, cancellableContinuationImpl);
            CoroutineContext coroutineContext = cancellableContinuationImpl.n;
            try {
                scheduledFuture = scheduledExecutorService.schedule(resumeUndispatchedRunnable, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                JobKt.b(coroutineContext, cancellationException);
            }
        }
        if (scheduledFuture != null) {
            cancellableContinuationImpl.y(new CancelFutureOnCancel(scheduledFuture));
        } else {
            DefaultExecutor.s.S(j, cancellableContinuationImpl);
        }
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final void b1(CoroutineContext coroutineContext, Runnable runnable) {
        try {
            this.l.execute(runnable);
        } catch (RejectedExecutionException e) {
            CancellationException cancellationException = new CancellationException("The task was rejected");
            cancellationException.initCause(e);
            JobKt.b(coroutineContext, cancellationException);
            DefaultScheduler defaultScheduler = Dispatchers.a;
            DefaultIoScheduler.l.b1(coroutineContext, runnable);
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ExecutorService executorService;
        Executor executor = this.l;
        if (executor instanceof ExecutorService) {
            executorService = (ExecutorService) executor;
        } else {
            executorService = null;
        }
        if (executorService != null) {
            executorService.shutdown();
        }
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof ExecutorCoroutineDispatcherImpl) && ((ExecutorCoroutineDispatcherImpl) obj).l == this.l) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return System.identityHashCode(this.l);
    }

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final String toString() {
        return this.l.toString();
    }

    @Override // kotlinx.coroutines.Delay
    public final DisposableHandle x0(long j, Runnable runnable, CoroutineContext coroutineContext) {
        ScheduledExecutorService scheduledExecutorService;
        Executor executor = this.l;
        ScheduledFuture<?> scheduledFuture = null;
        if (executor instanceof ScheduledExecutorService) {
            scheduledExecutorService = (ScheduledExecutorService) executor;
        } else {
            scheduledExecutorService = null;
        }
        if (scheduledExecutorService != null) {
            try {
                scheduledFuture = scheduledExecutorService.schedule(runnable, j, TimeUnit.MILLISECONDS);
            } catch (RejectedExecutionException e) {
                CancellationException cancellationException = new CancellationException("The task was rejected");
                cancellationException.initCause(e);
                JobKt.b(coroutineContext, cancellationException);
            }
        }
        if (scheduledFuture != null) {
            return new DisposableFutureHandle(scheduledFuture);
        }
        return DefaultExecutor.s.x0(j, runnable, coroutineContext);
    }
}
