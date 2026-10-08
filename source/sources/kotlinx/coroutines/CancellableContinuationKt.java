package kotlinx.coroutines;

import defpackage.f7;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.coroutines.Continuation;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.Symbol;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CancellableContinuationKt {
    public static final void a(CancellableContinuationImpl cancellableContinuationImpl, DisposableHandle disposableHandle) {
        cancellableContinuationImpl.y(new DisposeOnCancel(disposableHandle));
    }

    public static final CancellableContinuationImpl b(Continuation continuation) {
        CancellableContinuationImpl cancellableContinuationImpl;
        CancellableContinuationImpl cancellableContinuationImpl2;
        if (!(continuation instanceof DispatchedContinuation)) {
            return new CancellableContinuationImpl(1, continuation);
        }
        DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) continuation;
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = DispatchedContinuation.q;
        loop0: while (true) {
            Object obj = atomicReferenceFieldUpdater.get(dispatchedContinuation);
            cancellableContinuationImpl = null;
            Symbol symbol = DispatchedContinuationKt.b;
            if (obj == null) {
                atomicReferenceFieldUpdater.set(dispatchedContinuation, symbol);
                cancellableContinuationImpl2 = null;
                break;
            }
            if (obj instanceof CancellableContinuationImpl) {
                while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, obj, symbol)) {
                    if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != obj) {
                        break;
                    }
                }
                cancellableContinuationImpl2 = (CancellableContinuationImpl) obj;
                break loop0;
            }
            if (obj != symbol && !(obj instanceof Throwable)) {
                f7.i(obj, "Inconsistent state ");
                return null;
            }
        }
        if (cancellableContinuationImpl2 != null) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = CancellableContinuationImpl.p;
            Object obj2 = atomicReferenceFieldUpdater2.get(cancellableContinuationImpl2);
            if ((obj2 instanceof CompletedContinuation) && ((CompletedContinuation) obj2).d != null) {
                cancellableContinuationImpl2.q();
            } else {
                CancellableContinuationImpl.o.set(cancellableContinuationImpl2, 536870911);
                atomicReferenceFieldUpdater2.set(cancellableContinuationImpl2, Active.j);
                cancellableContinuationImpl = cancellableContinuationImpl2;
            }
            if (cancellableContinuationImpl != null) {
                return cancellableContinuationImpl;
            }
        }
        return new CancellableContinuationImpl(2, continuation);
    }
}
