package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlin.jvm.internal.PropertyReference;
import kotlinx.coroutines.DebugStringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LockFreeLinkedListNode {
    public static final /* synthetic */ AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_prev$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater l = AtomicReferenceFieldUpdater.newUpdater(LockFreeLinkedListNode.class, Object.class, "_removedRef$volatile");
    private volatile /* synthetic */ Object _next$volatile = this;
    private volatile /* synthetic */ Object _prev$volatile = this;
    private volatile /* synthetic */ Object _removedRef$volatile;

    public final boolean d(LockFreeLinkedListNode lockFreeLinkedListNode, int i) {
        while (true) {
            LockFreeLinkedListNode f = f();
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            if (f == null) {
                Object obj = atomicReferenceFieldUpdater.get(this);
                while (true) {
                    f = (LockFreeLinkedListNode) obj;
                    if (!f.j()) {
                        break;
                    }
                    obj = atomicReferenceFieldUpdater.get(f);
                }
            }
            if (f instanceof ListClosed) {
                if ((((ListClosed) f).m & i) == 0 && f.d(lockFreeLinkedListNode, i)) {
                    return true;
                }
                return false;
            }
            atomicReferenceFieldUpdater.set(lockFreeLinkedListNode, f);
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j;
            atomicReferenceFieldUpdater2.set(lockFreeLinkedListNode, this);
            while (!atomicReferenceFieldUpdater2.compareAndSet(f, this, lockFreeLinkedListNode)) {
                if (atomicReferenceFieldUpdater2.get(f) != this) {
                    break;
                }
            }
            lockFreeLinkedListNode.g(this);
            return true;
        }
    }

    public final void e(int i) {
        d(new ListClosed(i), i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0031, code lost:
    
        r6 = ((kotlinx.coroutines.internal.Removed) r6).a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x0039, code lost:
    
        if (r5.compareAndSet(r4, r3, r6) == false) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0041, code lost:
    
        if (r5.get(r4) == r3) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x001c, code lost:
    
        return r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final LockFreeLinkedListNode f() {
        loop0: while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(this);
            LockFreeLinkedListNode lockFreeLinkedListNode2 = lockFreeLinkedListNode;
            while (true) {
                LockFreeLinkedListNode lockFreeLinkedListNode3 = null;
                while (true) {
                    AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = j;
                    Object obj = atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode2);
                    if (obj == this) {
                        if (lockFreeLinkedListNode == lockFreeLinkedListNode2) {
                            break;
                        }
                        while (!atomicReferenceFieldUpdater.compareAndSet(this, lockFreeLinkedListNode, lockFreeLinkedListNode2)) {
                            if (atomicReferenceFieldUpdater.get(this) != lockFreeLinkedListNode) {
                                break;
                            }
                        }
                        break loop0;
                    }
                    if (j()) {
                        return null;
                    }
                    if (obj instanceof Removed) {
                        if (lockFreeLinkedListNode3 != null) {
                            break;
                        }
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode2);
                    } else {
                        obj.getClass();
                        lockFreeLinkedListNode3 = lockFreeLinkedListNode2;
                        lockFreeLinkedListNode2 = (LockFreeLinkedListNode) obj;
                    }
                }
                lockFreeLinkedListNode2 = lockFreeLinkedListNode3;
            }
        }
    }

    public final void g(LockFreeLinkedListNode lockFreeLinkedListNode) {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            LockFreeLinkedListNode lockFreeLinkedListNode2 = (LockFreeLinkedListNode) atomicReferenceFieldUpdater.get(lockFreeLinkedListNode);
            if (j.get(this) != lockFreeLinkedListNode) {
                return;
            }
            while (!atomicReferenceFieldUpdater.compareAndSet(lockFreeLinkedListNode, lockFreeLinkedListNode2, this)) {
                if (atomicReferenceFieldUpdater.get(lockFreeLinkedListNode) != lockFreeLinkedListNode2) {
                    break;
                }
            }
            if (j()) {
                lockFreeLinkedListNode.f();
                return;
            }
            return;
        }
    }

    public final LockFreeLinkedListNode i() {
        Removed removed;
        Object obj = j.get(this);
        if (obj instanceof Removed) {
            removed = (Removed) obj;
        } else {
            removed = null;
        }
        if (removed != null) {
            return removed.a;
        }
        obj.getClass();
        return (LockFreeLinkedListNode) obj;
    }

    public boolean j() {
        return j.get(this) instanceof Removed;
    }

    public final void k() {
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = j;
            Object obj = atomicReferenceFieldUpdater.get(this);
            if (!(obj instanceof Removed)) {
                if (obj == this) {
                    return;
                }
                obj.getClass();
                LockFreeLinkedListNode lockFreeLinkedListNode = (LockFreeLinkedListNode) obj;
                AtomicReferenceFieldUpdater atomicReferenceFieldUpdater2 = l;
                Removed removed = (Removed) atomicReferenceFieldUpdater2.get(lockFreeLinkedListNode);
                if (removed == null) {
                    removed = new Removed(lockFreeLinkedListNode);
                    atomicReferenceFieldUpdater2.set(lockFreeLinkedListNode, removed);
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(this, obj, removed)) {
                    if (atomicReferenceFieldUpdater.get(this) != obj) {
                        break;
                    }
                }
                lockFreeLinkedListNode.f();
                return;
            }
            return;
        }
    }

    public String toString() {
        return new PropertyReference(this, DebugStringsKt.class, "classSimpleName", "getClassSimpleName(Ljava/lang/Object;)Ljava/lang/String;", 1) + '@' + DebugStringsKt.a(this);
    }
}
