package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.lazy.layout.LazyLayoutIntervalContent.Interval;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyLayoutIntervalContent<Interval extends Interval> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Interval {
        default Function1 a() {
            return LazyLayoutIntervalContent$Interval$type$1.j;
        }

        Function1 getKey();
    }

    public final Object d(int i) {
        IntervalList$Interval b = e().b(i);
        return b.c.a().b(Integer.valueOf(i - b.a));
    }

    public abstract MutableIntervalList e();

    public final Object f(int i) {
        Object b;
        IntervalList$Interval b2 = e().b(i);
        int i2 = i - b2.a;
        Function1 key = b2.c.getKey();
        if (key != null && (b = key.b(Integer.valueOf(i2))) != null) {
            return b;
        }
        return new DefaultLazyKey(i);
    }
}
