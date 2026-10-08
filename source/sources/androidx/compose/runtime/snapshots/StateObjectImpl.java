package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.AtomicInt;
import java.util.concurrent.atomic.AtomicInteger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class StateObjectImpl implements StateObject {
    public final AtomicInt j = new AtomicInteger(0);

    public final boolean h(int i) {
        if ((this.j.get() & i) != 0) {
            return true;
        }
        return false;
    }

    public final void i(int i) {
        AtomicInt atomicInt;
        int i2;
        do {
            atomicInt = this.j;
            i2 = atomicInt.get();
            if ((i2 & i) != 0) {
                return;
            }
        } while (!atomicInt.compareAndSet(i2, i2 | i));
    }
}
