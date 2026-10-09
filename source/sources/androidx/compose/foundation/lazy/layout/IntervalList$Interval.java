package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntervalList$Interval<T> {
    public final int a;
    public final int b;
    public final LazyLayoutIntervalContent.Interval c;

    public IntervalList$Interval(int i, int i2, LazyLayoutIntervalContent.Interval interval) {
        this.a = i;
        this.b = i2;
        this.c = interval;
        if (i < 0) {
            InlineClassHelperKt.a("startIndex should be >= 0");
        }
        if (i2 > 0) {
            return;
        }
        InlineClassHelperKt.a("size should be > 0");
    }
}
