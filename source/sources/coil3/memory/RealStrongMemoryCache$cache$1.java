package coil3.memory;

import coil3.memory.MemoryCache;
import coil3.memory.RealStrongMemoryCache;
import coil3.util.LruCache;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealStrongMemoryCache$cache$1 extends LruCache<MemoryCache.Key, RealStrongMemoryCache.InternalValue> {
    public final /* synthetic */ RealStrongMemoryCache d;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealStrongMemoryCache$cache$1(RealStrongMemoryCache realStrongMemoryCache, long j) {
        super(j);
        this.d = realStrongMemoryCache;
    }

    @Override // coil3.util.LruCache
    public final void a(Object obj, Object obj2, Object obj3) {
        RealStrongMemoryCache.InternalValue internalValue = (RealStrongMemoryCache.InternalValue) obj2;
        this.d.b.b((MemoryCache.Key) obj, internalValue.a, internalValue.b, internalValue.c);
    }

    @Override // coil3.util.LruCache
    public final long d(Object obj, Object obj2) {
        return ((RealStrongMemoryCache.InternalValue) obj2).c;
    }
}
