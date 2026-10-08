package coil3.memory;

import coil3.Image;
import coil3.memory.MemoryCache;
import java.util.LinkedHashMap;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealStrongMemoryCache {
    public final long a;
    public final RealWeakMemoryCache b;
    public final RealStrongMemoryCache$cache$1 c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class InternalValue {
        public final Image a;
        public final Map b;
        public final long c;

        public InternalValue(Image image, Map map, long j) {
            this.a = image;
            this.b = map;
            this.c = j;
        }
    }

    public RealStrongMemoryCache(long j, RealWeakMemoryCache realWeakMemoryCache) {
        this.a = j;
        this.b = realWeakMemoryCache;
        this.c = new RealStrongMemoryCache$cache$1(this, j);
    }

    public final void a(MemoryCache.Key key, Image image, Map map, long j) {
        RealStrongMemoryCache$cache$1 realStrongMemoryCache$cache$1 = this.c;
        long j2 = realStrongMemoryCache$cache$1.b;
        LinkedHashMap linkedHashMap = realStrongMemoryCache$cache$1.a;
        if (j <= j2) {
            InternalValue internalValue = new InternalValue(image, map, j);
            Object put = linkedHashMap.put(key, internalValue);
            realStrongMemoryCache$cache$1.c = realStrongMemoryCache$cache$1.c(key, internalValue) + realStrongMemoryCache$cache$1.b();
            if (put != null) {
                realStrongMemoryCache$cache$1.c = realStrongMemoryCache$cache$1.b() - realStrongMemoryCache$cache$1.c(key, put);
                realStrongMemoryCache$cache$1.a(key, put, internalValue);
            }
            realStrongMemoryCache$cache$1.e(realStrongMemoryCache$cache$1.b);
            return;
        }
        Object remove = linkedHashMap.remove(key);
        if (remove != null) {
            realStrongMemoryCache$cache$1.c = realStrongMemoryCache$cache$1.b() - realStrongMemoryCache$cache$1.c(key, remove);
            realStrongMemoryCache$cache$1.a(key, remove, null);
        }
        this.b.b(key, image, map, j);
    }
}
