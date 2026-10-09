package kotlin.ranges;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntRange extends IntProgression implements ClosedRange<Integer> {
    public static final IntRange m = new IntProgression(1, 0, 1);

    @Override // kotlin.ranges.IntProgression
    public final boolean equals(Object obj) {
        if (obj instanceof IntRange) {
            if (!isEmpty() || !((IntRange) obj).isEmpty()) {
                IntRange intRange = (IntRange) obj;
                if (this.j == intRange.j && this.k == intRange.k) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.IntProgression
    public final int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (this.j * 31) + this.k;
    }

    @Override // kotlin.ranges.IntProgression
    public final boolean isEmpty() {
        if (this.j > this.k) {
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.IntProgression
    public final String toString() {
        return this.j + ".." + this.k;
    }
}
