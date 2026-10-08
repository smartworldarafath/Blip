package androidx.compose.ui.semantics;

import defpackage.u2;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProgressBarRangeInfo {
    public static final ProgressBarRangeInfo c = new ProgressBarRangeInfo(0.0f, RangesKt.g(0.0f, 0.0f));
    public final float a;
    public final ClosedFloatingPointRange b;

    public ProgressBarRangeInfo(float f, ClosedFloatingPointRange closedFloatingPointRange) {
        this.a = f;
        this.b = closedFloatingPointRange;
        if (!Float.isNaN(f)) {
            return;
        }
        u2.g("current must not be NaN");
        throw null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof ProgressBarRangeInfo) {
            ProgressBarRangeInfo progressBarRangeInfo = (ProgressBarRangeInfo) obj;
            if (this.a == progressBarRangeInfo.a && this.b.equals(progressBarRangeInfo.b)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return (this.b.hashCode() + (Float.hashCode(this.a) * 31)) * 31;
    }

    public final String toString() {
        return "ProgressBarRangeInfo(current=" + this.a + ", range=" + this.b + ", steps=0)";
    }
}
