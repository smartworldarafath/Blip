package androidx.compose.foundation.lazy.layout;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.runtime.collection.MutableVector;
import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutBeyondBoundsInfo {
    public final MutableVector a = new MutableVector(new Interval[16]);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Interval {
        public final int a;
        public final int b;

        public Interval(int i, int i2) {
            boolean z;
            this.a = i;
            this.b = i2;
            if (i >= 0) {
                z = true;
            } else {
                z = false;
            }
            if (!z) {
                InlineClassHelperKt.a("negative start index");
            }
            if (!(i2 >= i)) {
                InlineClassHelperKt.a("end index greater than start");
            }
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof Interval)) {
                return false;
            }
            Interval interval = (Interval) obj;
            if (this.a == interval.a && this.b == interval.b) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Integer.hashCode(this.b) + (Integer.hashCode(this.a) * 31);
        }

        public final String toString() {
            return jb.e("Interval(start=", this.a, ", end=", this.b, ")");
        }
    }
}
