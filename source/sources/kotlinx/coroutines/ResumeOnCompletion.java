package kotlinx.coroutines;

import kotlin.Unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ResumeOnCompletion extends JobNode {
    public final CancellableContinuationImpl n;

    public ResumeOnCompletion(CancellableContinuationImpl cancellableContinuationImpl) {
        this.n = cancellableContinuationImpl;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean m() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void n(Throwable th) {
        this.n.g(Unit.a);
    }
}
