package kotlinx.coroutines;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ResumeUndispatchedRunnable implements Runnable {
    public final ExecutorCoroutineDispatcherImpl j;
    public final CancellableContinuationImpl k;

    public ResumeUndispatchedRunnable(ExecutorCoroutineDispatcherImpl executorCoroutineDispatcherImpl, CancellableContinuationImpl cancellableContinuationImpl) {
        this.j = executorCoroutineDispatcherImpl;
        this.k = cancellableContinuationImpl;
    }

    @Override // java.lang.Runnable
    public final void run() {
        this.k.F(this.j);
    }
}
