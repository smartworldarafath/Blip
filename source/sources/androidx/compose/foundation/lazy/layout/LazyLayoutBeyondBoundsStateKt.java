package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutPinnedItemList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.snapshots.SnapshotStateList;
import androidx.compose.runtime.snapshots.SnapshotStateListKt;
import defpackage.fe;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutBeyondBoundsStateKt {
    public static final MutableIntList a(LazyLayoutItemProvider lazyLayoutItemProvider, LazyLayoutPinnedItemList lazyLayoutPinnedItemList, LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo) {
        boolean z;
        int i;
        SnapshotStateList snapshotStateList = lazyLayoutPinnedItemList.j;
        snapshotStateList.getClass();
        PersistentList persistentList = SnapshotStateListKt.c(snapshotStateList).c;
        MutableVector mutableVector = lazyLayoutBeyondBoundsInfo.a;
        int i2 = 1;
        if (mutableVector.l != 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z && persistentList.isEmpty()) {
            return IntListKt.a;
        }
        MutableIntList mutableIntList = new MutableIntList();
        if (lazyLayoutBeyondBoundsInfo.a.l != 0) {
            int i3 = mutableVector.l;
            if (i3 != 0) {
                Object[] objArr = mutableVector.j;
                int i4 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr[0]).a;
                for (int i5 = 0; i5 < i3; i5++) {
                    int i6 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr[i5]).a;
                    if (i6 < i4) {
                        i4 = i6;
                    }
                }
                if (i4 < 0) {
                    InlineClassHelperKt.a("negative minIndex");
                }
                int i7 = mutableVector.l;
                if (i7 != 0) {
                    Object[] objArr2 = mutableVector.j;
                    int i8 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr2[0]).b;
                    for (int i9 = 0; i9 < i7; i9++) {
                        int i10 = ((LazyLayoutBeyondBoundsInfo.Interval) objArr2[i9]).b;
                        if (i10 > i8) {
                            i8 = i10;
                        }
                    }
                    i = Math.min(i8, lazyLayoutItemProvider.a() - 1);
                    i2 = i4;
                } else {
                    fe.o("MutableVector is empty.");
                    return null;
                }
            } else {
                fe.o("MutableVector is empty.");
                return null;
            }
        } else {
            i = 0;
        }
        int size = persistentList.size();
        for (int i11 = 0; i11 < size; i11++) {
            LazyLayoutPinnedItemList.PinnedItem pinnedItem = (LazyLayoutPinnedItemList.PinnedItem) persistentList.get(i11);
            int a = LazyLayoutItemProviderKt.a(((LazyLayoutPinnableItem) pinnedItem).c, lazyLayoutItemProvider, ((LazyLayoutPinnableItem) pinnedItem).a);
            if ((i2 > a || a > i) && a >= 0 && a < lazyLayoutItemProvider.a()) {
                mutableIntList.b(a);
            }
        }
        if (i2 <= i) {
            while (true) {
                mutableIntList.b(i2);
                if (i2 == i) {
                    break;
                }
                i2++;
            }
        }
        int i12 = mutableIntList.b;
        if (i12 == 0) {
            return mutableIntList;
        }
        int[] iArr = mutableIntList.a;
        iArr.getClass();
        Arrays.sort(iArr, 0, i12);
        return mutableIntList;
    }
}
