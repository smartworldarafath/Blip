package kotlin.coroutines.jvm.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.ContinuationInterceptor;
import kotlin.coroutines.CoroutineContext;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ContinuationImpl extends BaseContinuationImpl {
    public final CoroutineContext k;
    public transient Continuation l;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public ContinuationImpl(Continuation continuation) {
        this(continuation, r0);
        CoroutineContext coroutineContext;
        if (continuation != null) {
            coroutineContext = continuation.o();
        } else {
            coroutineContext = null;
        }
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext o() {
        CoroutineContext coroutineContext = this.k;
        coroutineContext.getClass();
        return coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void w() {
        CancellableContinuationImpl cancellableContinuationImpl;
        Continuation continuation = this.l;
        if (continuation != null && continuation != this) {
            CoroutineContext.Element v = o().v(ContinuationInterceptor.Key.j);
            v.getClass();
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = DispatchedContinuation.q;
            do {
            } while (atomicReferenceFieldUpdater.get(dispatchedContinuation) == DispatchedContinuationKt.b);
            Object obj = atomicReferenceFieldUpdater.get(dispatchedContinuation);
            if (obj instanceof CancellableContinuationImpl) {
                cancellableContinuationImpl = (CancellableContinuationImpl) obj;
            } else {
                cancellableContinuationImpl = null;
            }
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.q();
            }
        }
        this.l = CompletedContinuation.j;
    }

    public ContinuationImpl(Continuation continuation, CoroutineContext coroutineContext) {
        super(continuation);
        this.k = coroutineContext;
    }
}
