package androidx.concurrent.futures;

import androidx.concurrent.futures.CallbackToFutureAdapter;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.ExecutionException;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ListenableFutureKt {
    public static final Object a(final ListenableFuture listenableFuture, Continuation continuation) {
        try {
            if (((CallbackToFutureAdapter.SafeFuture) listenableFuture).k.isDone()) {
                return AbstractResolvableFuture.g(listenableFuture);
            }
            CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(continuation));
            ((CallbackToFutureAdapter.SafeFuture) listenableFuture).k.a(new ToContinuation(listenableFuture, cancellableContinuationImpl), DirectExecutor.j);
            cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: androidx.concurrent.futures.ListenableFutureKt$await$$inlined$suspendCancellableCoroutine$lambda$1
                {
                    super(1);
                }

                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    ((CallbackToFutureAdapter.SafeFuture) ListenableFuture.this).cancel(false);
                    return Unit.a;
                }
            });
            Object u = cancellableContinuationImpl.u();
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            return u;
        } catch (ExecutionException e) {
            Throwable cause = e.getCause();
            if (cause != null) {
                throw cause;
            }
            NullPointerException nullPointerException = new NullPointerException();
            Intrinsics.d(nullPointerException, Intrinsics.class.getName());
            throw nullPointerException;
        }
    }
}
