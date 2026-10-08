package androidx.work.impl;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Result;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ToContinuation<T> implements Runnable {
    public final ListenableFuture j;
    public final CancellableContinuationImpl k;

    public ToContinuation(ListenableFuture listenableFuture, CancellableContinuationImpl cancellableContinuationImpl) {
        this.j = listenableFuture;
        this.k = cancellableContinuationImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        Object obj;
        ListenableFuture listenableFuture = this.j;
        boolean isCancelled = listenableFuture.isCancelled();
        CancellableContinuationImpl cancellableContinuationImpl = this.k;
        if (isCancelled) {
            cancellableContinuationImpl.p(null);
            return;
        }
        try {
            String str = WorkerWrapperKt.a;
            boolean z = false;
            while (true) {
                try {
                    obj = listenableFuture.get();
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
            cancellableContinuationImpl.g(obj);
        } catch (ExecutionException e) {
            String str2 = WorkerWrapperKt.a;
            Throwable cause = e.getCause();
            cause.getClass();
            cancellableContinuationImpl.g(new Result.Failure(cause));
        }
    }
}
