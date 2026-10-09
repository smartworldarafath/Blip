package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TouchSlopDetector {
    public Orientation a;
    public long b;

    public TouchSlopDetector(long j, Orientation orientation) {
        this.a = orientation;
        this.b = j;
    }

    public static long a(TouchSlopDetector touchSlopDetector, long j, float f) {
        float abs;
        long j2;
        long f2 = Offset.f(touchSlopDetector.b, j);
        touchSlopDetector.b = f2;
        if (touchSlopDetector.a == null) {
            abs = Offset.d(f2);
        } else {
            abs = Math.abs(touchSlopDetector.b(f2));
        }
        if (abs > 0.0f && abs >= f) {
            Orientation orientation = touchSlopDetector.a;
            long j3 = touchSlopDetector.b;
            if (orientation == null) {
                return Offset.e(touchSlopDetector.b, Offset.g(Offset.b(j3, Offset.d(j3)), f));
            }
            float b = touchSlopDetector.b(j3) - (Math.signum(touchSlopDetector.b(touchSlopDetector.b)) * f);
            long j4 = touchSlopDetector.b;
            Orientation orientation2 = touchSlopDetector.a;
            Orientation orientation3 = Orientation.k;
            if (orientation2 == orientation3) {
                j2 = j4 & 4294967295L;
            } else {
                j2 = j4 >> 32;
            }
            float intBitsToFloat = Float.intBitsToFloat((int) j2);
            if (touchSlopDetector.a == orientation3) {
                return (Float.floatToRawIntBits(b) << 32) | (Float.floatToRawIntBits(intBitsToFloat) & 4294967295L);
            }
            return (Float.floatToRawIntBits(b) & 4294967295L) | (Float.floatToRawIntBits(intBitsToFloat) << 32);
        }
        return 9205357640488583168L;
    }

    public final float b(long j) {
        long j2;
        if (this.a == Orientation.k) {
            j2 = j >> 32;
        } else {
            j2 = j & 4294967295L;
        }
        return Float.intBitsToFloat((int) j2);
    }

    public /* synthetic */ TouchSlopDetector(Orientation orientation) {
        this(0L, orientation);
    }
}
