package androidx.compose.runtime;

import androidx.compose.runtime.MonotonicFrameClock;
import defpackage.u2;
import kotlin.coroutines.CoroutineContext;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MonotonicFrameClockKt {
    public static final MonotonicFrameClock a(CoroutineContext coroutineContext) {
        MonotonicFrameClock monotonicFrameClock = (MonotonicFrameClock) coroutineContext.v(MonotonicFrameClock.Key.j);
        if (monotonicFrameClock != null) {
            return monotonicFrameClock;
        }
        u2.l("A MonotonicFrameClock is not available in this CoroutineContext. Callers should supply an appropriate MonotonicFrameClock using withContext.");
        return null;
    }
}
