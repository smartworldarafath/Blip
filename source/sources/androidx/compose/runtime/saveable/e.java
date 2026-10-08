package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import java.util.Map;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class e implements Function2 {
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        SaveableStateHolderImpl saveableStateHolderImpl = (SaveableStateHolderImpl) obj2;
        Map map = saveableStateHolderImpl.j;
        MutableScatterMap mutableScatterMap = saveableStateHolderImpl.k;
        Object[] objArr = mutableScatterMap.b;
        Object[] objArr2 = mutableScatterMap.c;
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
                            Object obj3 = objArr[i4];
                            Map c = ((SaveableStateRegistry) objArr2[i4]).c();
                            if (c.isEmpty()) {
                                map.remove(obj3);
                            } else {
                                map.put(obj3, c);
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
        if (map.isEmpty()) {
            return null;
        }
        return map;
    }
}
