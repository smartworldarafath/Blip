package coil3.memory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealMemoryCache implements MemoryCache {
    public final RealStrongMemoryCache a;
    public final RealWeakMemoryCache b;
    public final Object c = new Object();

    public RealMemoryCache(RealStrongMemoryCache realStrongMemoryCache, RealWeakMemoryCache realWeakMemoryCache) {
        this.a = realStrongMemoryCache;
        this.b = realWeakMemoryCache;
    }

    public final void a(long j) {
        synchronized (this.c) {
            RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = this.a.c;
            realStrongMemoryCache$cache$1.b = j;
            realStrongMemoryCache$cache$1.e(j);
        }
    }
}
