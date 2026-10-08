package androidx.compose.animation;

import androidx.compose.ui.unit.Density;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlingCalculator {
    public final float a;
    public final float b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FlingInfo {
        public final float a;
        public final float b;
        public final long c;

        public FlingInfo(float f, float f2, long j) {
            this.a = f;
            this.b = f2;
            this.c = j;
        }

        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (!(obj instanceof FlingInfo)) {
                return false;
            }
            FlingInfo flingInfo = (FlingInfo) obj;
            if (Float.compare(this.a, flingInfo.a) == 0 && Float.compare(this.b, flingInfo.b) == 0 && this.c == flingInfo.c) {
                return true;
            }
            return false;
        }

        public final int hashCode() {
            return Long.hashCode(this.c) + q.a(this.b, Float.hashCode(this.a) * 31, 31);
        }

        public final String toString() {
            return q.k(q.n("FlingInfo(initialVelocity=", this.a, ", distance=", this.b, ", duration="), this.c, ")");
        }
    }

    public FlingCalculator(float f, Density density) {
        this.a = f;
        float density2 = density.getDensity();
        float f2 = FlingCalculatorKt.a;
        this.b = density2 * 386.0878f * 160.0f * 0.84f;
    }

    public final FlingInfo a(float f) {
        double b = b(f);
        double d = FlingCalculatorKt.a;
        double d2 = d - 1.0d;
        return new FlingInfo(f, (float) (Math.exp((d / d2) * b) * this.a * this.b), (long) (Math.exp(b / d2) * 1000.0d));
    }

    public final double b(float f) {
        float[] fArr = AndroidFlingSpline.a;
        return Math.log((Math.abs(f) * 0.35f) / (this.a * this.b));
    }
}
