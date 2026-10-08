package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.DispatchedContinuation;
import kotlinx.coroutines.internal.DispatchedContinuationKt;
import kotlinx.coroutines.internal.Symbol;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ChildContinuation extends JobNode {
    public final CancellableContinuationImpl n;

    public ChildContinuation(CancellableContinuationImpl cancellableContinuationImpl) {
        this.n = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean m() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void n(Throwable th) {
        JobSupport l = l();
        CancellableContinuationImpl cancellableContinuationImpl = this.n;
        Throwable s = cancellableContinuationImpl.s(l);
        if (cancellableContinuationImpl.A()) {
            DispatchedContinuation dispatchedContinuation = (DispatchedContinuation) cancellableContinuationImpl.m;
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = DispatchedContinuation.q;
            loop0: while (true) {
                Object obj = atomicReferenceFieldUpdater.get(dispatchedContinuation);
                Symbol symbol = DispatchedContinuationKt.b;
                if (Intrinsics.a(obj, symbol)) {
                    while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, symbol, s)) {
                        if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != symbol) {
                            break;
                        }
                    }
                    return;
                } else {
                    if (obj instanceof Throwable) {
                        return;
                    }
                    while (!atomicReferenceFieldUpdater.compareAndSet(dispatchedContinuation, obj, null)) {
                        if (atomicReferenceFieldUpdater.get(dispatchedContinuation) != obj) {
                            break;
                        }
                    }
                    break loop0;
                }
            }
        }
        cancellableContinuationImpl.p(s);
        if (!cancellableContinuationImpl.A()) {
            cancellableContinuationImpl.q();
        }
    }
}
