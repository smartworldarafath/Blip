package androidx.collection;

import androidx.collection.internal.Lock;
import androidx.collection.internal.LruHashMap;
import defpackage.u2;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LruCache<K, V> {
    public final int a;
    public final LruHashMap b;
    public final Lock c;
    public int d;
    public int e;
    public int f;

    /* JADX WARN: Type inference failed for: r1v2, types: [androidx.collection.internal.Lock, java.lang.Object] */
    public LruCache(int i) {
        this.a = i;
        if (i > 0) {
            this.b = new LruHashMap();
            this.c = new Object();
        } else {
            u2.g("maxSize <= 0");
            throw null;
        }
    }

    public final Object a(Object obj) {
        synchronized (this.c) {
            LruHashMap lruHashMap = this.b;
            lruHashMap.getClass();
            Object obj2 = lruHashMap.a.get(obj);
            if (obj2 != null) {
                this.e++;
                return obj2;
            }
            this.f++;
            return null;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:49:0x00a8, code lost:
    
        return r5;
     */
    /* JADX WARN: Removed duplicated region for block: B:37:0x0087 A[Catch: all -> 0x003f, TRY_ENTER, TRY_LEAVE, TryCatch #1 {all -> 0x003f, blocks: (B:13:0x002c, B:15:0x0030, B:17:0x003a, B:25:0x0042, B:27:0x0046, B:29:0x0051, B:31:0x0062, B:35:0x0081, B:37:0x0087, B:42:0x006b, B:43:0x0071, B:45:0x007d, B:21:0x00a9, B:22:0x00b0), top: B:12:0x002c }] */
    /* JADX WARN: Removed duplicated region for block: B:39:0x0085 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object b(Object obj, Object obj2) {
        Object put;
        Object next;
        Map.Entry entry;
        obj.getClass();
        obj2.getClass();
        synchronized (this.c) {
            this.d++;
            LruHashMap lruHashMap = this.b;
            lruHashMap.getClass();
            put = lruHashMap.a.put(obj, obj2);
            if (put != null) {
                this.d--;
            }
        }
        int i = this.a;
        while (true) {
            synchronized (this.c) {
                try {
                    if (this.d < 0 || (this.b.a.isEmpty() && this.d != 0)) {
                        break;
                    }
                    if (this.d <= i || this.b.a.isEmpty()) {
                        break;
                    }
                    Set<Map.Entry<K, V>> entrySet = this.b.a.entrySet();
                    entrySet.getClass();
                    Set<Map.Entry<K, V>> set = entrySet;
                    if (set instanceof List) {
                        List list = (List) set;
                        if (!list.isEmpty()) {
                            next = list.get(0);
                            entry = (Map.Entry) next;
                            if (entry != null) {
                            }
                        } else {
                            next = null;
                            entry = (Map.Entry) next;
                            if (entry != null) {
                                return put;
                            }
                            Object key = entry.getKey();
                            Object value = entry.getValue();
                            LruHashMap lruHashMap2 = this.b;
                            lruHashMap2.getClass();
                            key.getClass();
                            lruHashMap2.a.remove(key);
                            int i2 = this.d;
                            value.getClass();
                            this.d = i2 - 1;
                        }
                    } else {
                        Iterator<T> it = set.iterator();
                        if (it.hasNext()) {
                            next = it.next();
                            entry = (Map.Entry) next;
                            if (entry != null) {
                            }
                        }
                        next = null;
                        entry = (Map.Entry) next;
                        if (entry != null) {
                        }
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
        throw new IllegalStateException("LruCache.sizeOf() is reporting inconsistent results!");
    }

    public final Object c(Object obj) {
        Object remove;
        synchronized (this.c) {
            LruHashMap lruHashMap = this.b;
            lruHashMap.getClass();
            remove = lruHashMap.a.remove(obj);
            if (remove != null) {
                this.d--;
            }
        }
        return remove;
    }

    public final String toString() {
        int i;
        String str;
        synchronized (this.c) {
            try {
                int i2 = this.e;
                int i3 = this.f + i2;
                if (i3 != 0) {
                    i = (i2 * 100) / i3;
                } else {
                    i = 0;
                }
                str = "LruCache[maxSize=" + this.a + ",hits=" + this.e + ",misses=" + this.f + ",hitRate=" + i + "%]";
            } catch (Throwable th) {
                throw th;
            }
        }
        return str;
    }
}
