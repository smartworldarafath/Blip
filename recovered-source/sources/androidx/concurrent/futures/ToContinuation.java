package androidx.concurrent.futures;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Result;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ToContinuation<T> implements Runnable {
    public final ListenableFuture j;
    public final CancellableContinuationImpl k;

    public ToContinuation(ListenableFuture listenableFuture, CancellableContinuationImpl cancellableContinuationImpl) {
        this.j = listenableFuture;
        this.k = cancellableContinuationImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        ListenableFuture listenableFuture = this.j;
        boolean isCancelled = ((CallbackToFutureAdapter.SafeFuture) listenableFuture).isCancelled();
        CancellableContinuationImpl cancellableContinuationImpl = this.k;
        if (isCancelled) {
            cancellableContinuationImpl.p(null);
            return;
        }
        try {
            cancellableContinuationImpl.g(AbstractResolvableFuture.g(listenableFuture));
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                cancellableContinuationImpl.g(new Result.Failure(cause));
            } else {
                NullPointerException nullPointerException = new NullPointerException();
                Intrinsics.d(nullPointerException, Intrinsics.class.getName());
                throw nullPointerException;
            }
        }
    }
}
