package androidx.compose.runtime.collection;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.ObjectListKt;
import defpackage.fe;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MultiValueMap<K, V> {
    public final MutableScatterMap a;

    public /* synthetic */ MultiValueMap(MutableScatterMap mutableScatterMap) {
        this.a = mutableScatterMap;
    }

    public static final Object a(MutableScatterMap mutableScatterMap) {
        Object e = mutableScatterMap.e(null);
        if (e == null) {
            return null;
        }
        if (e instanceof MutableObjectList) {
            MutableObjectList mutableObjectList = (MutableObjectList) e;
            if (!mutableObjectList.d()) {
                int i = mutableObjectList.b - 1;
                Object b = mutableObjectList.b(i);
                mutableObjectList.m(i);
                b.getClass();
                if (mutableObjectList.d()) {
                    mutableScatterMap.m(null);
                }
                if (mutableObjectList.b == 1) {
                    mutableScatterMap.o(null, mutableObjectList.a());
                }
                return b;
            }
            fe.o("List is empty.");
            return null;
        }
        mutableScatterMap.m(null);
        return e;
    }

    public static final MutableObjectList b(MutableScatterMap mutableScatterMap) {
        if (mutableScatterMap.f()) {
            MutableObjectList mutableObjectList = ObjectListKt.b;
            mutableObjectList.getClass();
            return mutableObjectList;
        }
        MutableObjectList mutableObjectList2 = new MutableObjectList();
        Object[] objArr = mutableScatterMap.c;
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
                            Object obj = objArr[(i << 3) + i3];
                            if (obj instanceof MutableObjectList) {
                                mutableObjectList2.h((MutableObjectList) obj);
                            } else {
                                obj.getClass();
                                mutableObjectList2.g(obj);
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        break;
                    }
                }
                if (i == length) {
                    break;
                }
                i++;
            }
        }
        return mutableObjectList2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof MultiValueMap) {
            if (!this.a.equals(((MultiValueMap) obj).a)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "MultiValueMap(map=" + this.a + ")";
    }
}
