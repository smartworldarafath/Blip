package kotlinx.coroutines.internal;

import java.lang.Comparable;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import kotlinx.coroutines.EventLoopImplBase;
import kotlinx.coroutines.internal.ThreadSafeHeapNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ThreadSafeHeap<T extends ThreadSafeHeapNode & Comparable<? super T>> {
    public static final /* synthetic */ AtomicIntegerFieldUpdater b = AtomicIntegerFieldUpdater.newUpdater(ThreadSafeHeap.class, "_size$volatile");
    private volatile /* synthetic */ int _size$volatile;
    public ThreadSafeHeapNode[] a;

    public final void a(EventLoopImplBase.DelayedTask delayedTask) {
        delayedTask.d((EventLoopImplBase.DelayedTaskQueue) this);
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.a;
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        if (threadSafeHeapNodeArr == null) {
            threadSafeHeapNodeArr = new ThreadSafeHeapNode[4];
            this.a = threadSafeHeapNodeArr;
        } else if (atomicIntegerFieldUpdater.get(this) >= threadSafeHeapNodeArr.length) {
            threadSafeHeapNodeArr = (ThreadSafeHeapNode[]) Arrays.copyOf(threadSafeHeapNodeArr, atomicIntegerFieldUpdater.get(this) * 2);
            this.a = threadSafeHeapNodeArr;
        }
        int i = atomicIntegerFieldUpdater.get(this);
        atomicIntegerFieldUpdater.set(this, i + 1);
        threadSafeHeapNodeArr[i] = delayedTask;
        delayedTask.k = i;
        c(i);
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0064, code lost:
    
        if (((java.lang.Comparable) r6).compareTo(r7) < 0) goto L18;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final ThreadSafeHeapNode b(int i) {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.a;
        threadSafeHeapNodeArr.getClass();
        AtomicIntegerFieldUpdater atomicIntegerFieldUpdater = b;
        atomicIntegerFieldUpdater.set(this, atomicIntegerFieldUpdater.get(this) - 1);
        if (i < atomicIntegerFieldUpdater.get(this)) {
            d(i, atomicIntegerFieldUpdater.get(this));
            int i2 = (i - 1) / 2;
            if (i > 0) {
                ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i];
                threadSafeHeapNode.getClass();
                ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i2];
                threadSafeHeapNode2.getClass();
                if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) < 0) {
                    d(i, i2);
                    c(i2);
                }
            }
            while (true) {
                int i3 = i * 2;
                int i4 = i3 + 1;
                if (i4 >= atomicIntegerFieldUpdater.get(this)) {
                    break;
                }
                ThreadSafeHeapNode[] threadSafeHeapNodeArr2 = this.a;
                threadSafeHeapNodeArr2.getClass();
                int i5 = i3 + 2;
                if (i5 < atomicIntegerFieldUpdater.get(this)) {
                    ThreadSafeHeapNode threadSafeHeapNode3 = threadSafeHeapNodeArr2[i5];
                    threadSafeHeapNode3.getClass();
                    ThreadSafeHeapNode threadSafeHeapNode4 = threadSafeHeapNodeArr2[i4];
                    threadSafeHeapNode4.getClass();
                }
                i5 = i4;
                ThreadSafeHeapNode threadSafeHeapNode5 = threadSafeHeapNodeArr2[i];
                threadSafeHeapNode5.getClass();
                ThreadSafeHeapNode threadSafeHeapNode6 = threadSafeHeapNodeArr2[i5];
                threadSafeHeapNode6.getClass();
                if (((Comparable) threadSafeHeapNode5).compareTo(threadSafeHeapNode6) <= 0) {
                    break;
                }
                d(i, i5);
                i = i5;
            }
        }
        ThreadSafeHeapNode threadSafeHeapNode7 = threadSafeHeapNodeArr[atomicIntegerFieldUpdater.get(this)];
        threadSafeHeapNode7.getClass();
        EventLoopImplBase.DelayedTask delayedTask = (EventLoopImplBase.DelayedTask) threadSafeHeapNode7;
        delayedTask.d(null);
        delayedTask.k = -1;
        threadSafeHeapNodeArr[atomicIntegerFieldUpdater.get(this)] = null;
        return threadSafeHeapNode7;
    }

    public final void c(int i) {
        while (i > 0) {
            ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.a;
            threadSafeHeapNodeArr.getClass();
            int i2 = (i - 1) / 2;
            ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
            threadSafeHeapNode.getClass();
            ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
            threadSafeHeapNode2.getClass();
            if (((Comparable) threadSafeHeapNode).compareTo(threadSafeHeapNode2) <= 0) {
                return;
            }
            d(i, i2);
            i = i2;
        }
    }

    public final void d(int i, int i2) {
        ThreadSafeHeapNode[] threadSafeHeapNodeArr = this.a;
        threadSafeHeapNodeArr.getClass();
        ThreadSafeHeapNode threadSafeHeapNode = threadSafeHeapNodeArr[i2];
        threadSafeHeapNode.getClass();
        ThreadSafeHeapNode threadSafeHeapNode2 = threadSafeHeapNodeArr[i];
        threadSafeHeapNode2.getClass();
        threadSafeHeapNodeArr[i] = threadSafeHeapNode;
        threadSafeHeapNodeArr[i2] = threadSafeHeapNode2;
        ((EventLoopImplBase.DelayedTask) threadSafeHeapNode).k = i;
        ((EventLoopImplBase.DelayedTask) threadSafeHeapNode2).k = i2;
    }
}
