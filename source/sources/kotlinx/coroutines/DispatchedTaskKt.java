package kotlinx.coroutines;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.ThreadContextKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DispatchedTaskKt {
    public static final void a(CancellableContinuationImpl cancellableContinuationImpl, Continuation continuation, boolean z) {
        Object f;
        UndispatchedCoroutine undispatchedCoroutine;
        Object obj = CancellableContinuationImpl.p.get(cancellableContinuationImpl);
        Throwable e = cancellableContinuationImpl.e(obj);
        if (e != null) {
            f = new Result.Failure(e);
        } else {
            f = cancellableContinuationImpl.f(obj);
        }
        if (z) {
            continuation.getClass();
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            ContinuationImpl continuationImpl = dispatchedContinuation.n;
            Object obj2 = dispatchedContinuation.p;
            CoroutineContext o = continuationImpl.o();
            Object c = ThreadContextKt.c(o, obj2);
            if (c != ThreadContextKt.a) {
                undispatchedCoroutine = CoroutineContextKt.c(continuationImpl, o, c);
            } else {
                undispatchedCoroutine = null;
            }
            try {
                continuationImpl.g(f);
                if (undispatchedCoroutine != null && !undispatchedCoroutine.p0()) {
                    return;
                }
                ThreadContextKt.a(o, c);
                return;
            } catch (Throwable th) {
                if (undispatchedCoroutine == null || undispatchedCoroutine.p0()) {
                    ThreadContextKt.a(o, c);
                }
                throw th;
            }
        }
        continuation.g(f);
    }
}
