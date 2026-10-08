package kotlinx.coroutines.internal;

import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import kotlinx.coroutines.internal.ConcurrentLinkedListNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ConcurrentLinkedListNode<N extends ConcurrentLinkedListNode<N>> {
    public static final /* synthetic */ AtomicReferenceFieldUpdater j = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_next$volatile");
    public static final /* synthetic */ AtomicReferenceFieldUpdater k = AtomicReferenceFieldUpdater.newUpdater(ConcurrentLinkedListNode.class, Object.class, "_prev$volatile");
    private volatile /* synthetic */ Object _next$volatile;
    private volatile /* synthetic */ Object _prev$volatile;

    public ConcurrentLinkedListNode(Segment segment) {
        this._prev$volatile = segment;
    }

    public final void a() {
        k.set(this, null);
    }

    public final ConcurrentLinkedListNode c() {
        Object obj = j.get(this);
        if (obj == ConcurrentLinkedListKt.a) {
            return null;
        }
        return (ConcurrentLinkedListNode) obj;
    }

    public abstract boolean d();

    public final void e() {
        ConcurrentLinkedListNode concurrentLinkedListNode;
        ConcurrentLinkedListNode c;
        if (c() == null) {
            return;
        }
        while (true) {
            AtomicReferenceFieldUpdater atomicReferenceFieldUpdater = k;
            ConcurrentLinkedListNode concurrentLinkedListNode2 = (ConcurrentLinkedListNode) atomicReferenceFieldUpdater.get(this);
            while (concurrentLinkedListNode2 != null && concurrentLinkedListNode2.d()) {
                concurrentLinkedListNode2 = (ConcurrentLinkedListNode) atomicReferenceFieldUpdater.get(concurrentLinkedListNode2);
            }
            ConcurrentLinkedListNode c2 = c();
            c2.getClass();
            while (c2.d() && (c = c2.c()) != null) {
                c2 = c;
            }
            while (true) {
                Object obj = atomicReferenceFieldUpdater.get(c2);
                if (((ConcurrentLinkedListNode) obj) == null) {
                    concurrentLinkedListNode = null;
                } else {
                    concurrentLinkedListNode = concurrentLinkedListNode2;
                }
                while (!atomicReferenceFieldUpdater.compareAndSet(c2, obj, concurrentLinkedListNode)) {
                    if (atomicReferenceFieldUpdater.get(c2) != obj) {
                        break;
                    }
                }
            }
            if (concurrentLinkedListNode2 != null) {
                j.set(concurrentLinkedListNode2, c2);
            }
            if (!c2.d() || c2.c() == null) {
                if (concurrentLinkedListNode2 == null || !concurrentLinkedListNode2.d()) {
                    return;
                }
            }
        }
    }
}
