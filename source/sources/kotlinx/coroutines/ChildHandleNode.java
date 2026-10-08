package kotlinx.coroutines;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ChildHandleNode extends JobNode implements ChildHandle {
    public final JobSupport n;

    public ChildHandleNode(JobSupport jobSupport) {
        this.n = jobSupport;
    }

    @Override // kotlinx.coroutines.ChildHandle
    public final boolean b(Throwable th) {
        return l().C(th);
    }

    @Override // kotlinx.coroutines.JobNode
    public final boolean m() {
        return true;
    }

    @Override // kotlinx.coroutines.JobNode
    public final void n(Throwable th) {
        this.n.x(l());
    }
}
