package kotlinx.coroutines;

import kotlinx.coroutines.EventLoopImplBase;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EventLoopImplPlatform extends EventLoop {
    public abstract Thread k1();

    public void l1(long j, EventLoopImplBase.DelayedTask delayedTask) {
        DefaultExecutor.s.q1(j, delayedTask);
    }
}
