package androidx.media3.extractor;

import com.google.common.base.Preconditions;
import com.google.common.primitives.Longs;
import java.util.ArrayList;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ChunkIndexMerger {
    public final LinkedHashMap a = new LinkedHashMap();

    public final void a(ChunkIndex chunkIndex) {
        long[] jArr = chunkIndex.e;
        if (jArr.length > 0) {
            Long valueOf = Long.valueOf(jArr[0]);
            LinkedHashMap linkedHashMap = this.a;
            if (!linkedHashMap.containsKey(valueOf)) {
                linkedHashMap.put(Long.valueOf(chunkIndex.e[0]), chunkIndex);
            }
        }
    }

    public final ChunkIndex b() {
        boolean z;
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        for (ChunkIndex chunkIndex : this.a.values()) {
            arrayList.add(chunkIndex.b);
            arrayList2.add(chunkIndex.c);
            arrayList3.add(chunkIndex.d);
            arrayList4.add(chunkIndex.e);
        }
        int[][] iArr = (int[][]) arrayList.toArray(new int[arrayList.size()]);
        long j = 0;
        for (int[] iArr2 : iArr) {
            j += iArr2.length;
        }
        int i = (int) j;
        if (j == i) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.f(z, "the total number of elements (%s) in the arrays must fit in an int", j);
        int[] iArr3 = new int[i];
        int i2 = 0;
        for (int[] iArr4 : iArr) {
            System.arraycopy(iArr4, 0, iArr3, i2, iArr4.length);
            i2 += iArr4.length;
        }
        return new ChunkIndex(iArr3, Longs.a((long[][]) arrayList2.toArray(new long[arrayList2.size()])), Longs.a((long[][]) arrayList3.toArray(new long[arrayList3.size()])), Longs.a((long[][]) arrayList4.toArray(new long[arrayList4.size()])));
    }
}
