package androidx.compose.ui.unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DensityImpl implements Density {
    public final float j;
    public final float k;

    public DensityImpl(float f, float f2) {
        this.j = f;
        this.k = f2;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.k;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof DensityImpl)) {
            return false;
        }
        DensityImpl densityImpl = (DensityImpl) obj;
        if (Float.compare(this.j, densityImpl.j) == 0 && Float.compare(this.k, densityImpl.k) == 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.j;
    }

    public final int hashCode() {
        return Float.hashCode(this.k) + (Float.hashCode(this.j) * 31);
    }

    public final String toString() {
        return "DensityImpl(density=" + this.j + ", fontScale=" + this.k + ")";
    }
}
