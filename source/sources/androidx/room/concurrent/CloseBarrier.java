package androidx.room.concurrent;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CloseBarrier {
    public final AtomicInteger a = new AtomicInteger(0);
    public final AtomicBoolean b = new AtomicBoolean(false);

    public CloseBarrier(Function0 function0) {
    }

    public final boolean a() {
        synchronized (this) {
            if (this.b.get()) {
                return false;
            }
            this.a.incrementAndGet();
            return true;
        }
    }

    public final void b() {
        synchronized (this) {
            this.a.decrementAndGet();
            if (this.a.get() < 0) {
                throw new IllegalStateException("Unbalanced call to unblock() detected.");
            }
        }
    }
}
