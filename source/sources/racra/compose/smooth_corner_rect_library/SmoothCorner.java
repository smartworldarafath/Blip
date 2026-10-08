package racra.compose.smooth_corner_rect_library;

import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SmoothCorner {
    public final PointRelativeToVertex a;
    public final PointRelativeToVertex b;
    public final PointRelativeToVertex c;
    public final PointRelativeToVertex d;
    public final Arc e;

    public SmoothCorner(float f, float f2, int i) {
        boolean z;
        double radians;
        double radians2;
        if (i >= 0) {
            float min = Math.min(f, f2);
            float f3 = i / 100.0f;
            float min2 = Math.min(f2, (1.0f + f3) * min);
            float f4 = f2 / 2.0f;
            if (min <= f4) {
                z = true;
            } else {
                z = false;
            }
            float f5 = (min - f4) / f4;
            if (z) {
                radians = Math.toRadians(f3 * 45.0d);
            } else {
                radians = Math.toRadians(f3 * 45.0d * (1.0f - f5));
            }
            float f6 = (float) radians;
            if (z) {
                radians2 = Math.toRadians((1.0d - f3) * 90.0d);
            } else {
                radians2 = Math.toRadians((1.0f - ((1.0f - f5) * f3)) * 90.0d);
            }
            float f7 = (float) radians2;
            float radians3 = (float) ((Math.toRadians(90.0d) - f7) / 2.0d);
            double d = f6;
            float tan = ((float) Math.tan(radians3 / 2.0f)) * min * ((float) Math.cos(d));
            float tan2 = ((float) Math.tan(d)) * tan;
            float sqrt = ((min2 - ((float) (Math.sqrt(2.0d) * (((float) Math.sin(f7 / 2.0f)) * min)))) - ((1.0f + ((float) Math.tan(d))) * tan)) / 3.0f;
            float min3 = Math.min(min2, f2);
            this.a = new PointRelativeToVertex(min3, 0.0f);
            float f8 = min3 - (2.0f * sqrt);
            this.b = new PointRelativeToVertex(f8, 0.0f);
            float f9 = f8 - sqrt;
            this.c = new PointRelativeToVertex(f9, 0.0f);
            this.d = new PointRelativeToVertex(f9 - tan, tan2);
            this.e = new Arc(min, radians3, f7);
            return;
        }
        u2.g("The value for smoothness can never be negative.");
        throw null;
    }
}
