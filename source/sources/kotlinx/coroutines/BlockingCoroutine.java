package kotlinx.coroutines;

import java.util.concurrent.locks.LockSupport;
import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BlockingCoroutine<T> extends AbstractCoroutine<T> {
    public final Thread m;
    public final EventLoop n;

    public BlockingCoroutine(CoroutineContext coroutineContext, Thread thread, EventLoop eventLoop) {
        super(coroutineContext, true);
        this.m = thread;
        this.n = eventLoop;
    }

    @Override // kotlinx.coroutines.JobSupport
    public final void r(Object obj) {
        Thread currentThread = Thread.currentThread();
        Thread thread = this.m;
        if (!Intrinsics.a(currentThread, thread)) {
            LockSupport.unpark(thread);
        }
    }
}
