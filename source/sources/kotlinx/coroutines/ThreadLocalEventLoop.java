package kotlinx.coroutines;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ThreadLocalEventLoop {
    public static final ThreadLocal a = new ThreadLocal();

    public static EventLoop a() {
        ThreadLocal threadLocal = a;
        EventLoop eventLoop = (EventLoop) threadLocal.get();
        if (eventLoop == null) {
            BlockingEventLoop blockingEventLoop = new BlockingEventLoop(Thread.currentThread());
            threadLocal.set(blockingEventLoop);
            return blockingEventLoop;
        }
        return eventLoop;
    }
}
