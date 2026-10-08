package androidx.compose.foundation.lazy.layout;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import kotlin.jvm.functions.Function1;
import kotlin.ranges.IntRange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NearestRangeKeyIndexMap implements LazyLayoutKeyIndexMap {
    public final MutableObjectIntMap a;
    public final Object[] b;
    public final int c;

    /* JADX WARN: Code restructure failed: missing block: B:24:0x00d5, code lost:
    
        if (r9 == null) goto L31;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public NearestRangeKeyIndexMap(IntRange intRange, LazyLayoutIntervalContent lazyLayoutIntervalContent) {
        Object defaultLazyKey;
        MutableIntervalList e = lazyLayoutIntervalContent.e();
        int i = intRange.j;
        if (i < 0) {
            InlineClassHelperKt.c("negative nearestRange.first");
        }
        int min = Math.min(intRange.k, e.b - 1);
        if (min < i) {
            MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.a;
            mutableObjectIntMap.getClass();
            this.a = mutableObjectIntMap;
            this.b = new Object[0];
            this.c = 0;
            return;
        }
        int i2 = (min - i) + 1;
        this.b = new Object[i2];
        this.c = i;
        MutableObjectIntMap mutableObjectIntMap2 = new MutableObjectIntMap(i2);
        MutableVector mutableVector = e.a;
        if (i < 0 || i >= e.b) {
            InlineClassHelperKt.e("Index " + i + ", size " + e.b);
        }
        if (min < 0 || min >= e.b) {
            InlineClassHelperKt.e("Index " + min + ", size " + e.b);
        }
        if (min < i) {
            InlineClassHelperKt.a("toIndex (" + min + ") should be not smaller than fromIndex (" + i + ")");
        }
        int a = IntervalListKt.a(i, mutableVector);
        int i3 = ((IntervalList$Interval) mutableVector.j[a]).a;
        while (i3 <= min) {
            IntervalList$Interval intervalList$Interval = (IntervalList$Interval) mutableVector.j[a];
            Function1 key = intervalList$Interval.c.getKey();
            int i4 = intervalList$Interval.a;
            int max = Math.max(i, i4);
            int min2 = Math.min(min, (intervalList$Interval.b + i4) - 1);
            if (max <= min2) {
                while (true) {
                    if (key != null) {
                        defaultLazyKey = key.b(Integer.valueOf(max - i4));
                    }
                    defaultLazyKey = new DefaultLazyKey(max);
                    mutableObjectIntMap2.g(max, defaultLazyKey);
                    this.b[max - this.c] = defaultLazyKey;
                    max = max != min2 ? max + 1 : max;
                }
            }
            i3 += intervalList$Interval.b;
            a++;
        }
        this.a = mutableObjectIntMap2;
    }

    public final int a(Object obj) {
        MutableObjectIntMap mutableObjectIntMap = this.a;
        int a = mutableObjectIntMap.a(obj);
        if (a >= 0) {
            return mutableObjectIntMap.c[a];
        }
        return -1;
    }

    public final Object b(int i) {
        int i2 = i - this.c;
        if (i2 >= 0) {
            Object[] objArr = this.b;
            if (i2 < objArr.length) {
                return objArr[i2];
            }
            return null;
        }
        return null;
    }
}
