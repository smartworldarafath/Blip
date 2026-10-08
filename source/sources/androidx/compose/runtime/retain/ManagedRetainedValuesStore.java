package androidx.compose.runtime.retain;

import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ManagedRetainedValuesStore implements RetainedValuesStore {
    public boolean b;
    public boolean c;
    public boolean a = true;
    public final MutableScatterMap d = new MutableScatterMap();

    public final void a() {
        MutableScatterMap mutableScatterMap = this.d;
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
                                MutableObjectList mutableObjectList = (MutableObjectList) obj;
                                Object[] objArr2 = mutableObjectList.a;
                                int i4 = mutableObjectList.b;
                                for (int i5 = 0; i5 < i4; i5++) {
                                    Object obj2 = objArr2[i5];
                                }
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
                } else {
                    i++;
                }
            }
        }
        mutableScatterMap.h();
    }
}
