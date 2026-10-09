package kotlinx.coroutines;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DisposeOnCompletion extends JobNode {
    public final DisposableHandle n;

    public DisposeOnCompletion(DisposableHandle disposableHandle) {
        this.n = disposableHandle;
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean m() {
        return false;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void n(Throwable th) {
        this.n.a();
    }
}
