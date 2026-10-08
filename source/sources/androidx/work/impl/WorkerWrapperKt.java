package androidx.work.impl;

import androidx.work.DirectExecutor;
import androidx.work.ListenableWorker;
import androidx.work.Logger;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WorkerWrapperKt {
    public static final String a = Logger.f("WorkerWrapper");

    public static final Object a(final ListenableFuture listenableFuture, final ListenableWorker listenableWorker, SuspendLambda suspendLambda) {
        V v;
        try {
            if (listenableFuture.isDone()) {
                boolean z = false;
                while (true) {
                    try {
                        v = listenableFuture.get();
                        break;
                    } catch (InterruptedException unused) {
                        z = true;
                    } catch (Throwable th) {
                        if (z) {
                            Thread.currentThread().interrupt();
                        }
                        throw th;
                    }
                }
                if (z) {
                    Thread.currentThread().interrupt();
                }
                return v;
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(suspendLambda));
            cancellableContinuationImpl.v();
            listenableFuture.a(new ToContinuation(listenableFuture, cancellableContinuationImpl), DirectExecutor.j);
            cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.work.impl.WorkerWrapperKt$awaitWithin$2$1
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    Throwable th2 = (Throwable) obj;
                    if (th2 instanceof WorkerStoppedException) {
                        ListenableWorker.this.c.compareAndSet(-256, ((WorkerStoppedException) th2).j);
                    }
                    listenableFuture.cancel(false);
                    return Unit.a;
                }
            });
            Object u = cancellableContinuationImpl.u();
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            return u;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            cause.getClass();
            throw cause;
        }
    }
}
