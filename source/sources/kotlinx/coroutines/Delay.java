package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Delay {
    void S(long j, CancellableContinuationImpl cancellableContinuationImpl);

    default DisposableHandle x0(long j, Runnable runnable, CoroutineContext coroutineContext) {
        return DefaultExecutorKt.a.x0(j, runnable, coroutineContext);
    }
}
