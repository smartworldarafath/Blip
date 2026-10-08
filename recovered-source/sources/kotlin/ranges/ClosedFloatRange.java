package kotlin.ranges;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ClosedFloatRange implements ClosedFloatingPointRange<Float> {
    public final float j;
    public final float k;

    public ClosedFloatRange(float f, float f2) {
        this.j = f;
        this.k = f2;
    }

    public final boolean a(Float f, Float f2) {
        if (f.floatValue() <= f2.floatValue()) {
            return true;
        }
        return false;
    }

    @Override // kotlin.ranges.ClosedRange
    public final Float b() {
        return Float.valueOf(this.k);
    }

    @Override // kotlin.ranges.ClosedRange
    public final Float c() {
        return Float.valueOf(this.j);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.ranges.ClosedFloatingPointRange
    public final boolean d(Comparable comparable) {
        float floatValue = ((Number) comparable).floatValue();
        if (floatValue >= this.j && floatValue <= this.k) {
            return true;
        }
        return false;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof ClosedFloatRange) {
            float f = this.j;
            float f2 = this.k;
            if (f > f2) {
                ClosedFloatRange closedFloatRange = (ClosedFloatRange) obj;
                if (closedFloatRange.j > closedFloatRange.k) {
                    return true;
                }
            }
            ClosedFloatRange closedFloatRange2 = (ClosedFloatRange) obj;
            if (f == closedFloatRange2.j && f2 == closedFloatRange2.k) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        float f = this.j;
        float f2 = this.k;
        if (f > f2) {
            return -1;
        }
        return Float.hashCode(f2) + (Float.hashCode(f) * 31);
    }

    public final String toString() {
        return this.j + ".." + this.k;
    }
}
