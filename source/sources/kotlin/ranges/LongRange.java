package kotlin.ranges;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongRange extends LongProgression implements ClosedRange<Long> {
    public static final LongRange m = new LongRange(1, 0);

    public LongRange(long j, long j2) {
        super(j, j2, 1L);
    }

    @Override // kotlin.ranges.LongProgression
    public final boolean equals(Object obj) {
        if (obj instanceof LongRange) {
            if (!isEmpty() || !((LongRange) obj).isEmpty()) {
                LongRange longRange = (LongRange) obj;
                if (this.j == longRange.j && this.k == longRange.k) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.LongProgression
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return Long.hashCode(this.k) + (Long.hashCode(this.j) * 31);
    }

    @Override // kotlin.ranges.LongProgression
    public final boolean isEmpty() {
        if (this.j > this.k) {
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.LongProgression
    public final String toString() {
        return this.j + ".." + this.k;
    }
}
