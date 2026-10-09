package kotlin.collections.builders;

import defpackage.k8;
import defpackage.u2;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.AbstractList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MapBuilder<K, V> implements Map<K, V>, Serializable, KMutableMap {
    public static final MapBuilder w;
    public Object[] j;
    public Object[] k;
    public int[] l;
    public int[] m;
    public int n;
    public int o;
    public int p;
    public int q;
    public int r;
    public MapBuilderKeys s;
    public MapBuilderValues t;
    public MapBuilderEntries u;
    public boolean v;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EntriesItr<K, V> extends Itr<K, V> implements Iterator<Map.Entry<K, V>>, KMappedMarker {
        @Override // java.util.Iterator
        public final Object next() {
            a();
            int i = this.k;
            MapBuilder mapBuilder = this.j;
            if (i < mapBuilder.o) {
                this.k = i + 1;
                this.l = i;
                EntryRef entryRef = new EntryRef(mapBuilder, i);
                b();
                return entryRef;
            }
            k8.o();
            return null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EntryRef<K, V> implements Map.Entry<K, V>, KMutableMap.Entry {
        public final MapBuilder j;
        public final int k;
        public final int l;

        public EntryRef(MapBuilder mapBuilder, int i) {
            mapBuilder.getClass();
            this.j = mapBuilder;
            this.k = i;
            this.l = mapBuilder.q;
        }

        public final void a() {
            if (this.j.q == this.l) {
            } else {
                throw new ConcurrentModificationException("The backing map has been modified after this entry was obtained.");
            }
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (Intrinsics.a(entry.getKey(), getKey()) && Intrinsics.a(entry.getValue(), getValue())) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            a();
            return this.j.j[this.k];
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            a();
            Object[] objArr = this.j.k;
            objArr.getClass();
            return objArr[this.k];
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int i;
            Object key = getKey();
            int i2 = 0;
            if (key != null) {
                i = key.hashCode();
            } else {
                i = 0;
            }
            Object value = getValue();
            if (value != null) {
                i2 = value.hashCode();
            }
            return i ^ i2;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            a();
            MapBuilder mapBuilder = this.j;
            mapBuilder.c();
            Object[] objArr = mapBuilder.k;
            if (objArr == null) {
                int length = mapBuilder.j.length;
                if (length >= 0) {
                    objArr = new Object[length];
                    mapBuilder.k = objArr;
                } else {
                    u2.g("capacity must be non-negative.");
                    return null;
                }
            }
            int i = this.k;
            Object obj2 = objArr[i];
            objArr[i] = obj;
            return obj2;
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            sb.append(getKey());
            sb.append('=');
            sb.append(getValue());
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Itr<K, V> {
        public final MapBuilder j;
        public int k;
        public int l;
        public int m;

        public Itr(MapBuilder mapBuilder) {
            mapBuilder.getClass();
            this.j = mapBuilder;
            this.l = -1;
            this.m = mapBuilder.q;
            b();
        }

        public final void a() {
            if (this.j.q == this.m) {
                return;
            }
            u2.d();
        }

        public final void b() {
            while (true) {
                int i = this.k;
                MapBuilder mapBuilder = this.j;
                if (i < mapBuilder.o && mapBuilder.l[i] < 0) {
                    this.k = i + 1;
                } else {
                    return;
                }
            }
        }

        public final boolean hasNext() {
            if (this.k < this.j.o) {
                return true;
            }
            return false;
        }

        public final void remove() {
            a();
            if (this.l != -1) {
                MapBuilder mapBuilder = this.j;
                mapBuilder.c();
                mapBuilder.l(this.l);
                this.l = -1;
                this.m = mapBuilder.q;
                return;
            }
            u2.l("Call next() before removing element from the iterator.");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class KeysItr<K, V> extends Itr<K, V> implements Iterator<K>, KMappedMarker {
        @Override // java.util.Iterator
        public final Object next() {
            a();
            int i = this.k;
            MapBuilder mapBuilder = this.j;
            if (i < mapBuilder.o) {
                this.k = i + 1;
                this.l = i;
                Object obj = mapBuilder.j[i];
                b();
                return obj;
            }
            k8.o();
            return null;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ValuesItr<K, V> extends Itr<K, V> implements Iterator<V>, KMappedMarker {
        @Override // java.util.Iterator
        public final Object next() {
            a();
            int i = this.k;
            MapBuilder mapBuilder = this.j;
            if (i < mapBuilder.o) {
                this.k = i + 1;
                this.l = i;
                Object[] objArr = mapBuilder.k;
                objArr.getClass();
                Object obj = objArr[this.l];
                b();
                return obj;
            }
            k8.o();
            return null;
        }
    }

    static {
        MapBuilder mapBuilder = new MapBuilder(0);
        mapBuilder.v = true;
        w = mapBuilder;
    }

    public MapBuilder(int i) {
        if (i >= 0) {
            Object[] objArr = new Object[i];
            int[] iArr = new int[i];
            int highestOneBit = Integer.highestOneBit((i < 1 ? 1 : i) * 3);
            this.j = objArr;
            this.k = null;
            this.l = iArr;
            this.m = new int[highestOneBit];
            this.n = 2;
            this.o = 0;
            this.p = Integer.numberOfLeadingZeros(highestOneBit) + 1;
            return;
        }
        u2.g("capacity must be non-negative.");
        throw null;
    }

    public final int a(Object obj) {
        c();
        while (true) {
            int j = j(obj);
            int i = this.n * 2;
            int length = this.m.length / 2;
            if (i > length) {
                i = length;
            }
            int i2 = 0;
            while (true) {
                int[] iArr = this.m;
                int i3 = iArr[j];
                if (i3 == 0) {
                    int i4 = this.o;
                    Object[] objArr = this.j;
                    if (i4 >= objArr.length) {
                        f(1);
                    } else {
                        int i5 = i4 + 1;
                        this.o = i5;
                        objArr[i4] = obj;
                        this.l[i4] = j;
                        iArr[j] = i5;
                        this.r++;
                        this.q++;
                        if (i2 > this.n) {
                            this.n = i2;
                        }
                        return i4;
                    }
                } else {
                    if (Intrinsics.a(this.j[i3 - 1], obj)) {
                        return -i3;
                    }
                    i2++;
                    if (i2 > i) {
                        k(this.m.length * 2);
                        break;
                    }
                    int i6 = j - 1;
                    if (j == 0) {
                        j = this.m.length - 1;
                    } else {
                        j = i6;
                    }
                }
            }
        }
    }

    public final MapBuilder b() {
        c();
        this.v = true;
        if (this.r > 0) {
            return this;
        }
        MapBuilder mapBuilder = w;
        mapBuilder.getClass();
        return mapBuilder;
    }

    public final void c() {
        if (!this.v) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // java.util.Map
    public final void clear() {
        c();
        int i = this.o - 1;
        if (i >= 0) {
            int i2 = 0;
            while (true) {
                int[] iArr = this.l;
                int i3 = iArr[i2];
                if (i3 >= 0) {
                    this.m[i3] = 0;
                    iArr[i2] = -1;
                }
                if (i2 == i) {
                    break;
                } else {
                    i2++;
                }
            }
        }
        ListBuilderKt.b(this.j, 0, this.o);
        Object[] objArr = this.k;
        if (objArr != null) {
            ListBuilderKt.b(objArr, 0, this.o);
        }
        this.r = 0;
        this.o = 0;
        this.q++;
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (g(obj) >= 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (i(obj) >= 0) {
            return true;
        }
        return false;
    }

    public final void d(boolean z) {
        int i;
        Object[] objArr = this.k;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = this.o;
            if (i2 >= i) {
                break;
            }
            int[] iArr = this.l;
            int i4 = iArr[i2];
            if (i4 >= 0) {
                Object[] objArr2 = this.j;
                objArr2[i3] = objArr2[i2];
                if (objArr != null) {
                    objArr[i3] = objArr[i2];
                }
                if (z) {
                    iArr[i3] = i4;
                    this.m[i4] = i3 + 1;
                }
                i3++;
            }
            i2++;
        }
        ListBuilderKt.b(this.j, i3, i);
        if (objArr != null) {
            ListBuilderKt.b(objArr, i3, this.o);
        }
        this.o = i3;
    }

    public final boolean e(Collection collection) {
        boolean a;
        collection.getClass();
        for (Object obj : collection) {
            if (obj != null) {
                try {
                    Map.Entry entry = (Map.Entry) obj;
                    int g = g(entry.getKey());
                    if (g < 0) {
                        a = false;
                    } else {
                        Object[] objArr = this.k;
                        objArr.getClass();
                        a = Intrinsics.a(objArr[g], entry.getValue());
                    }
                    if (!a) {
                    }
                } catch (ClassCastException unused) {
                }
            }
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        MapBuilderEntries mapBuilderEntries = this.u;
        if (mapBuilderEntries == null) {
            MapBuilderEntries mapBuilderEntries2 = new MapBuilderEntries(this);
            this.u = mapBuilderEntries2;
            return mapBuilderEntries2;
        }
        return mapBuilderEntries;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof Map) {
                Map map = (Map) obj;
                if (this.r != map.size() || !e(map.entrySet())) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final void f(int i) {
        Object[] objArr;
        Object[] objArr2 = this.j;
        int length = objArr2.length;
        int i2 = this.o;
        int i3 = length - i2;
        int i4 = i2 - this.r;
        int i5 = 1;
        if (i3 < i && i3 + i4 >= i && i4 >= objArr2.length / 4) {
            d(true);
            return;
        }
        int i6 = i2 + i;
        if (i6 >= 0) {
            if (i6 > objArr2.length) {
                int e = AbstractList.Companion.e(objArr2.length, i6);
                Object[] objArr3 = this.j;
                objArr3.getClass();
                this.j = Arrays.copyOf(objArr3, e);
                Object[] objArr4 = this.k;
                if (objArr4 != null) {
                    objArr = Arrays.copyOf(objArr4, e);
                } else {
                    objArr = null;
                }
                this.k = objArr;
                this.l = Arrays.copyOf(this.l, e);
                if (e >= 1) {
                    i5 = e;
                }
                int highestOneBit = Integer.highestOneBit(i5 * 3);
                if (highestOneBit > this.m.length) {
                    k(highestOneBit);
                    return;
                }
                return;
            }
            return;
        }
        throw new OutOfMemoryError();
    }

    public final int g(Object obj) {
        int j = j(obj);
        int i = this.n;
        while (true) {
            int i2 = this.m[j];
            if (i2 == 0) {
                return -1;
            }
            int i3 = i2 - 1;
            if (Intrinsics.a(this.j[i3], obj)) {
                return i3;
            }
            i--;
            if (i < 0) {
                return -1;
            }
            int i4 = j - 1;
            if (j == 0) {
                j = this.m.length - 1;
            } else {
                j = i4;
            }
        }
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int g = g(obj);
        if (g < 0) {
            return null;
        }
        Object[] objArr = this.k;
        objArr.getClass();
        return objArr[g];
    }

    @Override // java.util.Map
    public final int hashCode() {
        int i;
        int i2;
        Itr itr = new Itr(this);
        int i3 = 0;
        while (itr.hasNext()) {
            int i4 = itr.k;
            MapBuilder mapBuilder = itr.j;
            if (i4 < mapBuilder.o) {
                itr.k = i4 + 1;
                itr.l = i4;
                Object obj = mapBuilder.j[i4];
                if (obj != null) {
                    i = obj.hashCode();
                } else {
                    i = 0;
                }
                Object[] objArr = mapBuilder.k;
                objArr.getClass();
                Object obj2 = objArr[itr.l];
                if (obj2 != null) {
                    i2 = obj2.hashCode();
                } else {
                    i2 = 0;
                }
                itr.b();
                i3 += i ^ i2;
            } else {
                k8.o();
                return 0;
            }
        }
        return i3;
    }

    public final int i(Object obj) {
        int i = this.o;
        while (true) {
            i--;
            if (i < 0) {
                return -1;
            }
            if (this.l[i] >= 0) {
                Object[] objArr = this.k;
                objArr.getClass();
                if (Intrinsics.a(objArr[i], obj)) {
                    return i;
                }
            }
        }
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        if (this.r == 0) {
            return true;
        }
        return false;
    }

    public final int j(Object obj) {
        int i;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        return (i * (-1640531527)) >>> this.p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x0032, code lost:
    
        r3[r0] = r6;
        r5.l[r2] = r0;
        r2 = r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void k(int i) {
        this.q++;
        int i2 = 0;
        if (this.o > this.r) {
            d(false);
        }
        this.m = new int[i];
        this.p = Integer.numberOfLeadingZeros(i) + 1;
        while (i2 < this.o) {
            int i3 = i2 + 1;
            int j = j(this.j[i2]);
            int i4 = this.n;
            while (true) {
                int[] iArr = this.m;
                if (iArr[j] == 0) {
                    break;
                }
                i4--;
                if (i4 >= 0) {
                    int i5 = j - 1;
                    if (j == 0) {
                        j = iArr.length - 1;
                    } else {
                        j = i5;
                    }
                } else {
                    u2.l("This cannot happen with fixed magic multiplier and grow-only hash array. Have object hashCodes changed?");
                    return;
                }
            }
        }
    }

    @Override // java.util.Map
    public final Set keySet() {
        MapBuilderKeys mapBuilderKeys = this.s;
        if (mapBuilderKeys == null) {
            MapBuilderKeys mapBuilderKeys2 = new MapBuilderKeys(this);
            this.s = mapBuilderKeys2;
            return mapBuilderKeys2;
        }
        return mapBuilderKeys;
    }

    public final void l(int i) {
        int i2;
        int i3;
        int j;
        int[] iArr;
        Object[] objArr = this.j;
        objArr.getClass();
        objArr[i] = null;
        Object[] objArr2 = this.k;
        if (objArr2 != null) {
            objArr2[i] = null;
        }
        int i4 = this.l[i];
        loop0: while (true) {
            int i5 = i4;
            int i6 = 0;
            do {
                int i7 = i4 - 1;
                if (i4 == 0) {
                    i4 = this.m.length - 1;
                } else {
                    i4 = i7;
                }
                int[] iArr2 = this.m;
                i2 = iArr2[i4];
                i6++;
                if (i6 > this.n) {
                    iArr2[i5] = 0;
                    break loop0;
                } else if (i2 == 0) {
                    iArr2[i5] = 0;
                    break loop0;
                } else {
                    i3 = i2 - 1;
                    j = j(this.j[i3]) - i4;
                    iArr = this.m;
                }
            } while ((j & (iArr.length - 1)) < i6);
            iArr[i5] = i2;
            this.l[i3] = i5;
        }
        this.l[i] = -1;
        this.r--;
        this.q++;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        c();
        int a = a(obj);
        Object[] objArr = this.k;
        if (objArr == null) {
            int length = this.j.length;
            if (length >= 0) {
                objArr = new Object[length];
                this.k = objArr;
            } else {
                u2.g("capacity must be non-negative.");
                return null;
            }
        }
        if (a < 0) {
            int i = (-a) - 1;
            Object obj3 = objArr[i];
            objArr[i] = obj2;
            return obj3;
        }
        objArr[a] = obj2;
        return null;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        c();
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if (!entrySet.isEmpty()) {
            f(entrySet.size());
            for (Map.Entry<K, V> entry : entrySet) {
                int a = a(entry.getKey());
                Object[] objArr = this.k;
                if (objArr == null) {
                    int length = this.j.length;
                    if (length >= 0) {
                        objArr = new Object[length];
                        this.k = objArr;
                    } else {
                        u2.g("capacity must be non-negative.");
                        return;
                    }
                }
                if (a >= 0) {
                    objArr[a] = entry.getValue();
                } else {
                    int i = (-a) - 1;
                    if (!Intrinsics.a(entry.getValue(), objArr[i])) {
                        objArr[i] = entry.getValue();
                    }
                }
            }
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        c();
        int g = g(obj);
        if (g < 0) {
            return null;
        }
        Object[] objArr = this.k;
        objArr.getClass();
        Object obj2 = objArr[g];
        l(g);
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.r;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder((this.r * 3) + 2);
        sb.append("{");
        Itr itr = new Itr(this);
        int i = 0;
        while (itr.hasNext()) {
            if (i > 0) {
                sb.append(", ");
            }
            int i2 = itr.k;
            MapBuilder mapBuilder = itr.j;
            if (i2 < mapBuilder.o) {
                itr.k = i2 + 1;
                itr.l = i2;
                Object obj = mapBuilder.j[i2];
                if (obj == mapBuilder) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj);
                }
                sb.append('=');
                Object[] objArr = mapBuilder.k;
                objArr.getClass();
                Object obj2 = objArr[itr.l];
                if (obj2 == mapBuilder) {
                    sb.append("(this Map)");
                } else {
                    sb.append(obj2);
                }
                itr.b();
                i++;
            } else {
                k8.o();
                return null;
            }
        }
        sb.append("}");
        return sb.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        MapBuilderValues mapBuilderValues = this.t;
        if (mapBuilderValues == null) {
            MapBuilderValues mapBuilderValues2 = new MapBuilderValues(this);
            this.t = mapBuilderValues2;
            return mapBuilderValues2;
        }
        return mapBuilderValues;
    }

    public MapBuilder() {
        this(8);
    }
}
