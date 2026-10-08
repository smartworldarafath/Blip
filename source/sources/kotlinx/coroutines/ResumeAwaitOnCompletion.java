package kotlinx.coroutines;

import kotlin.ResultKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ResumeAwaitOnCompletion<T> extends JobNode {
    public final CancellableContinuationImpl n;

    public ResumeAwaitOnCompletion(CancellableContinuationImpl cancellableContinuationImpl) {
        this.n = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean m() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void n(Throwable th) {
        Object obj = JobSupport.j.get(l());
        boolean z = obj instanceof CompletedExceptionally;
        CancellableContinuationImpl cancellableContinuationImpl = this.n;
        if (z) {
            cancellableContinuationImpl.g(ResultKt.a(((CompletedExceptionally) obj).a));
        } else {
            cancellableContinuationImpl.g(JobSupportKt.a(obj));
        }
    }
}
