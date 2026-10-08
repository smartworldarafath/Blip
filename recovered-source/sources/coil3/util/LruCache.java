package coil3.util;

import defpackage.u2;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LruCache<K, V> {
    public final LinkedHashMap a = new LinkedHashMap(0, 0.75f, true);
    public long b;
    public long c;

    public LruCache(long j) {
        this.b = j;
        if (j > 0) {
            return;
        }
        u2.g("maxSize <= 0");
        throw null;
    }

    public abstract void a(Object obj, Object obj2, Object obj3);

    public final long b() {
        if (this.c == -1) {
            Iterator<T> it = this.a.entrySet().iterator();
            long j = 0;
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                j += c(entry.getKey(), entry.getValue());
            }
            this.c = j;
        }
        return this.c;
    }

    public final long c(Object obj, Object obj2) {
        try {
            long d = d(obj, obj2);
            if (d >= 0) {
                return d;
            }
            throw new IllegalStateException(("sizeOf(" + obj + ", " + obj2 + ") returned a negative value: " + d).toString());
        } catch (Exception e) {
            this.c = -1L;
            throw e;
        }
    }

    public abstract long d(Object obj, Object obj2);

    public final void e(long j) {
        while (b() > j) {
            LinkedHashMap linkedHashMap = this.a;
            if (linkedHashMap.isEmpty()) {
                if (b() != 0) {
                    u2.l("sizeOf() is returning inconsistent values");
                    return;
                }
                return;
            } else {
                Map.Entry entry = (Map.Entry) CollectionsKt.r(linkedHashMap.entrySet());
                Object key = entry.getKey();
                Object value = entry.getValue();
                linkedHashMap.remove(key);
                this.c = b() - c(key, value);
                a(key, value, null);
            }
        }
    }
}
