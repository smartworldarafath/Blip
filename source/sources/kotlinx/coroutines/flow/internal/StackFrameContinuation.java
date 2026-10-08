package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.BaseContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class StackFrameContinuation<T> implements Continuation<T>, CoroutineStackFrame {
    public final Continuation j;
    public final CoroutineContext k;

    public StackFrameContinuation(Continuation continuation, CoroutineContext coroutineContext) {
        this.j = continuation;
        this.k = coroutineContext;
    }

    @Override // kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public final CoroutineStackFrame d() {
        return (CoroutineStackFrame) this.j;
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
        ((BaseContinuationImpl) this.j).g(obj);
    }

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return this.k;
    }
}
