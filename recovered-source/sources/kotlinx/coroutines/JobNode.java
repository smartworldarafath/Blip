package kotlinx.coroutines;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.internal.LockFreeLinkedListNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class JobNode extends LockFreeLinkedListNode implements DisposableHandle, Incomplete {
    public JobSupport m;

    @Override // kotlinx.coroutines.DisposableHandle
    public final void a() {
        JobSupport l = l();
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = JobSupport.j;
            Object obj = atomicReferenceFieldUpdater.get(l);
            if (obj instanceof JobNode) {
                if (obj != this) {
                    return;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(l, obj, JobSupportKt.g)) {
                    if (atomicReferenceFieldUpdater.get(l) != obj) {
                        break;
                    }
                }
                return;
            }
            if ((obj instanceof Incomplete) && ((Incomplete) obj).c() != null) {
                k();
                return;
            }
            return;
        }
    }

    @Override // kotlinx.coroutines.Incomplete
    public final NodeList c() {
        return null;
    }

    public Job getParent() {
        return l();
    }

    @Override // kotlinx.coroutines.Incomplete
    public final boolean h() {
        return true;
    }

    public final JobSupport l() {
        JobSupport jobSupport = this.m;
        if (jobSupport != null) {
            return jobSupport;
        }
        Intrinsics.e("job");
        throw null;
    }

    public abstract boolean m();

    public abstract void n(Throwable th);

    @Override // kotlinx.coroutines.internal.LockFreeLinkedListNode
    public final String toString() {
        return getClass().getSimpleName() + '@' + DebugStringsKt.a(this) + "[job@" + DebugStringsKt.a(l()) + ']';
    }
}
