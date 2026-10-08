package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;
import androidx.compose.runtime.collection.MutableVector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableIntervalList<T> {
    public final MutableVector a = new MutableVector(new IntervalList$Interval[16]);
    public int b;
    public IntervalList$Interval c;

    public final void a(int i, LazyLayoutIntervalContent.Interval interval) {
        if (i < 0) {
            InlineClassHelperKt.a("size should be >=0");
        }
        if (i == 0) {
            return;
        }
        IntervalList$Interval intervalList$Interval = new IntervalList$Interval(this.b, i, interval);
        this.b += i;
        this.a.b(intervalList$Interval);
    }

    public final IntervalList$Interval b(int i) {
        if (i < 0 || i >= this.b) {
            InlineClassHelperKt.e("Index " + i + ", size " + this.b);
        }
        IntervalList$Interval intervalList$Interval = this.c;
        if (intervalList$Interval != null) {
            int i2 = intervalList$Interval.a;
            if (i < intervalList$Interval.b + i2 && i2 <= i) {
                return intervalList$Interval;
            }
        }
        MutableVector mutableVector = this.a;
        IntervalList$Interval intervalList$Interval2 = (IntervalList$Interval) mutableVector.j[IntervalListKt.a(i, mutableVector)];
        this.c = intervalList$Interval2;
        return intervalList$Interval2;
    }
}
