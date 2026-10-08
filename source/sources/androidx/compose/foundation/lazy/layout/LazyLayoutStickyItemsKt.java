package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntList;
import androidx.collection.IntListKt;
import androidx.collection.MutableIntList;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutStickyItemsKt {
    public static final List a(StickyItemsPlacement stickyItemsPlacement, int i, int i2, ArrayList arrayList, IntList intList, int i3, int i4, int i5, Function1 function1) {
        int i6;
        MutableIntList mutableIntList;
        LazyLayoutMeasuredItem lazyLayoutMeasuredItem;
        int i7;
        int f;
        Object obj;
        int i8;
        int max;
        if (stickyItemsPlacement != null && !arrayList.isEmpty() && (i6 = intList.b) != 0) {
            int i9 = -1;
            if (i2 - i >= 0 && i6 != 0) {
                IntRange j = RangesKt.j(0, i6);
                int i10 = j.j;
                int i11 = j.k;
                int i12 = -1;
                if (i10 <= i11) {
                    while (intList.a(i10) <= i) {
                        i12 = intList.a(i10);
                        if (i10 == i11) {
                            break;
                        }
                        i10++;
                    }
                }
                if (i12 == -1) {
                    mutableIntList = IntListKt.a;
                } else {
                    MutableIntList mutableIntList2 = IntListKt.a;
                    mutableIntList = new MutableIntList(1);
                    mutableIntList.b(i12);
                }
            } else {
                mutableIntList = IntListKt.a;
            }
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList(arrayList.size());
            int size = arrayList.size();
            for (int i13 = 0; i13 < size; i13++) {
                Object obj2 = arrayList.get(i13);
                int index = ((LazyLayoutMeasuredItem) obj2).getIndex();
                int[] iArr = intList.a;
                int i14 = intList.b;
                int i15 = 0;
                while (true) {
                    if (i15 >= i14) {
                        break;
                    }
                    if (iArr[i15] == index) {
                        arrayList3.add(obj2);
                        break;
                    }
                    i15++;
                }
            }
            int[] iArr2 = mutableIntList.a;
            int i16 = mutableIntList.b;
            int i17 = 0;
            while (i17 < i16) {
                int i18 = iArr2[i17];
                Iterator it = arrayList.iterator();
                int i19 = 0;
                while (true) {
                    if (it.hasNext()) {
                        if (((LazyLayoutMeasuredItem) it.next()).getIndex() == i18) {
                            break;
                        }
                        i19++;
                    } else {
                        i19 = i9;
                        break;
                    }
                }
                if (i19 == i9) {
                    lazyLayoutMeasuredItem = (LazyLayoutMeasuredItem) function1.b(Integer.valueOf(i18));
                } else {
                    lazyLayoutMeasuredItem = (LazyLayoutMeasuredItem) arrayList.remove(i19);
                }
                int e = lazyLayoutMeasuredItem.e() + lazyLayoutMeasuredItem.c();
                if (i19 == i9) {
                    i7 = e;
                    f = Integer.MIN_VALUE;
                } else {
                    i7 = e;
                    f = (int) (lazyLayoutMeasuredItem.f(0) & 4294967295L);
                }
                int size2 = arrayList3.size();
                int i20 = 0;
                while (true) {
                    if (i20 < size2) {
                        obj = arrayList3.get(i20);
                        if (((LazyLayoutMeasuredItem) obj).getIndex() != i18) {
                            break;
                        }
                        i20++;
                    } else {
                        obj = null;
                        break;
                    }
                }
                LazyLayoutMeasuredItem lazyLayoutMeasuredItem2 = (LazyLayoutMeasuredItem) obj;
                if (lazyLayoutMeasuredItem2 != null) {
                    i8 = (int) (lazyLayoutMeasuredItem2.f(0) & 4294967295L);
                } else {
                    i8 = Integer.MIN_VALUE;
                }
                if (f == Integer.MIN_VALUE) {
                    max = -i3;
                } else {
                    max = Math.max(-i3, f);
                }
                if (i8 != Integer.MIN_VALUE) {
                    max = Math.min(max, i8 - i7);
                }
                lazyLayoutMeasuredItem.h();
                lazyLayoutMeasuredItem.i(max, 0, i4, i5);
                arrayList2.add(lazyLayoutMeasuredItem);
                i17++;
                i9 = -1;
            }
            return arrayList2;
        }
        return EmptyList.j;
    }
}
