package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class JobImpl extends JobSupport implements CompletableJob {
    public final boolean l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public JobImpl(Job job) {
        super(true);
        ChildHandleNode childHandleNode;
        ChildHandleNode childHandleNode2;
        boolean z = true;
        M(job);
        AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = JobSupport.k;
        ChildHandle childHandle = (ChildHandle) atomicReferenceFieldUpdater.get(this);
        if (childHandle instanceof ChildHandleNode) {
            childHandleNode = (ChildHandleNode) childHandle;
        } else {
            childHandleNode = null;
        }
        if (childHandleNode != null) {
            JobSupport l = childHandleNode.l();
            while (!l.H()) {
                ChildHandle childHandle2 = (ChildHandle) atomicReferenceFieldUpdater.get(l);
                if (childHandle2 instanceof ChildHandleNode) {
                    childHandleNode2 = (ChildHandleNode) childHandle2;
                } else {
                    childHandleNode2 = null;
                }
                if (childHandleNode2 != null) {
                    l = childHandleNode2.l();
                }
            }
            this.l = z;
        }
        z = false;
        this.l = z;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean H() {
        return this.l;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final boolean I() {
        return true;
    }
}
