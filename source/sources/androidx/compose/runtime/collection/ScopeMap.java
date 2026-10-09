package androidx.compose.runtime.collection;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScopeMap<Key, Scope> {
    public static final void a(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        boolean z;
        Object obj3;
        int j = mutableScatterMap.j(obj);
        if (j < 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            obj3 = null;
        } else {
            obj3 = mutableScatterMap.c[j];
        }
        if (obj3 != null) {
            if (obj3 instanceof MutableScatterSet) {
                ((MutableScatterSet) obj3).d(obj2);
            } else if (obj3 != obj2) {
                MutableScatterSet mutableScatterSet = new MutableScatterSet();
                mutableScatterSet.d(obj3);
                mutableScatterSet.d(obj2);
                obj2 = mutableScatterSet;
            }
            obj2 = obj3;
        }
        if (z) {
            int i = ~j;
            mutableScatterMap.b[i] = obj;
            mutableScatterMap.c[i] = obj2;
            return;
        }
        mutableScatterMap.c[j] = obj2;
    }

    public static MutableScatterMap b() {
        long[] jArr = ScatterMapKt.a;
        return new MutableScatterMap();
    }

    public static final boolean c(MutableScatterMap mutableScatterMap, Object obj, Object obj2) {
        Object e = mutableScatterMap.e(obj);
        if (e == null) {
            return false;
        }
        if (e instanceof MutableScatterSet) {
            MutableScatterSet mutableScatterSet = (MutableScatterSet) e;
            boolean m = mutableScatterSet.m(obj2);
            if (m && mutableScatterSet.b()) {
                mutableScatterMap.m(obj);
            }
            return m;
        }
        if (!e.equals(obj2)) {
            return false;
        }
        mutableScatterMap.m(obj);
        return true;
    }

    public static final void d(MutableScatterMap mutableScatterMap, Object obj) {
        boolean z;
        long[] jArr = mutableScatterMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128) {
                            int i4 = (i << 3) + i3;
                            Object obj2 = mutableScatterMap.b[i4];
                            Object obj3 = mutableScatterMap.c[i4];
                            if (obj3 instanceof MutableScatterSet) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj3;
                                mutableScatterSet.m(obj);
                                z = mutableScatterSet.b();
                            } else if (obj3 == obj) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                mutableScatterMap.n(i4);
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }
}
