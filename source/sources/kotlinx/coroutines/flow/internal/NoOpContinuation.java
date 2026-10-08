package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class NoOpContinuation implements Continuation<Object> {
    public static final NoOpContinuation j = new Object();

    @Override // kotlin.coroutines.Continuation
    public final CoroutineContext o() {
        return EmptyCoroutineContext.j;
    }

    @Override // kotlin.coroutines.Continuation
    public final void g(Object obj) {
    }
}
