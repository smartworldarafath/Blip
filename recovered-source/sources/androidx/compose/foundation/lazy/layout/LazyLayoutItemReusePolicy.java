package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.ui.layout.SubcomposeSlotReusePolicy;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LazyLayoutItemReusePolicy implements SubcomposeSlotReusePolicy {
    public final LazyLayoutItemContentFactory a;
    public final MutableObjectIntMap b;

    public LazyLayoutItemReusePolicy(LazyLayoutItemContentFactory lazyLayoutItemContentFactory) {
        this.a = lazyLayoutItemContentFactory;
        MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.a;
        this.b = new MutableObjectIntMap();
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public final void a(SubcomposeSlotReusePolicy.SlotIdsSet slotIdsSet) {
        int i;
        MutableObjectIntMap mutableObjectIntMap = this.b;
        mutableObjectIntMap.b();
        MutableOrderedScatterSet mutableOrderedScatterSet = slotIdsSet.j;
        Object[] objArr = mutableOrderedScatterSet.b;
        long[] jArr = mutableOrderedScatterSet.c;
        int i2 = mutableOrderedScatterSet.e;
        while (i2 != Integer.MAX_VALUE) {
            int i3 = (int) ((jArr[i2] >> 31) & 2147483647L);
            Object obj = objArr[i2];
            Object b = this.a.b(obj);
            int a = mutableObjectIntMap.a(b);
            if (a >= 0) {
                i = mutableObjectIntMap.c[a];
            } else {
                i = 0;
            }
            if (i == 7) {
                slotIdsSet.remove(obj);
            } else {
                mutableObjectIntMap.g(i + 1, b);
            }
            i2 = i3;
        }
    }

    @Override // androidx.compose.ui.layout.SubcomposeSlotReusePolicy
    public final boolean b(Object obj, Object obj2) {
        LazyLayoutItemContentFactory lazyLayoutItemContentFactory = this.a;
        return Intrinsics.a(lazyLayoutItemContentFactory.b(obj), lazyLayoutItemContentFactory.b(obj2));
    }
}
