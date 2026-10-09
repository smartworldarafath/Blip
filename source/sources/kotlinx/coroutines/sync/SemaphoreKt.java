package kotlinx.coroutines.sync;

import kotlinx.coroutines.internal.Symbol;
import kotlinx.coroutines.internal.SystemPropsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemaphoreKt {
    public static final int a = SystemPropsKt.d("kotlinx.coroutines.semaphore.maxSpinCycles", 100, 12);
    public static final Symbol b = new Symbol("PERMIT");
    public static final Symbol c = new Symbol("TAKEN");
    public static final Symbol d = new Symbol("BROKEN");
    public static final Symbol e = new Symbol("CANCELLED");
    public static final int f = SystemPropsKt.d("kotlinx.coroutines.semaphore.segmentSize", 16, 12);

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlinx.coroutines.sync.Semaphore, kotlinx.coroutines.sync.SemaphoreAndMutexImpl] */
    public static Semaphore a(int i) {
        return new SemaphoreAndMutexImpl(i);
    }
}
