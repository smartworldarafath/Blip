package kotlinx.coroutines;

import kotlin.collections.ArrayDeque;
import kotlinx.coroutines.internal.LimitedDispatcherKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EventLoop extends CoroutineDispatcher {
    public static final /* synthetic */ int o = 0;
    public long l;
    public boolean m;
    public ArrayDeque n;

    @Override // kotlinx.coroutines.CoroutineDispatcher
    public final CoroutineDispatcher e1(int i) {
        LimitedDispatcherKt.a(i);
        return this;
    }

    public final void f1(boolean z) {
        long j;
        long j2 = this.l;
        if (z) {
            j = 4294967296L;
        } else {
            j = 1;
        }
        long j3 = j2 - j;
        this.l = j3;
        if (j3 <= 0 && this.m) {
            shutdown();
        }
    }

    public final void g1(DispatchedTask dispatchedTask) {
        ArrayDeque arrayDeque = this.n;
        if (arrayDeque == null) {
            arrayDeque = new ArrayDeque();
            this.n = arrayDeque;
        }
        arrayDeque.addLast(dispatchedTask);
    }

    public final void h1(boolean z) {
        long j;
        long j2 = this.l;
        if (z) {
            j = 4294967296L;
        } else {
            j = 1;
        }
        this.l = j + j2;
        if (!z) {
            this.m = true;
        }
    }

    public abstract long i1();

    public final boolean j1() {
        Object removeFirst;
        ArrayDeque arrayDeque = this.n;
        if (arrayDeque != null) {
            if (arrayDeque.isEmpty()) {
                removeFirst = null;
            } else {
                removeFirst = arrayDeque.removeFirst();
            }
            DispatchedTask dispatchedTask = (DispatchedTask) removeFirst;
            if (dispatchedTask == null) {
                return false;
            }
            dispatchedTask.run();
            return true;
        }
        return false;
    }

    public abstract void shutdown();
}
