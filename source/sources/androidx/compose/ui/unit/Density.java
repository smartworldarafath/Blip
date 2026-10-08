package androidx.compose.ui.unit;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Density extends FontScaling {
    default long D0(long j) {
        if (j == 9205357640488583168L) {
            return 9205357640488583168L;
        }
        float i0 = i0(DpSize.b(j));
        float i02 = i0(DpSize.a(j));
        return (Float.floatToRawIntBits(i0) << 32) | (Float.floatToRawIntBits(i02) & 4294967295L);
    }

    default float I0(long j) {
        if (!TextUnitType.a(TextUnit.b(j), 4294967296L)) {
            InlineClassHelperKt.b("Only Sp can convert to Px");
        }
        return i0(E(j));
    }

    default long N(int i) {
        return x(U(i));
    }

    default long P(float f) {
        return x(X(f));
    }

    default float U(int i) {
        return i / getDensity();
    }

    default float X(float f) {
        return f / getDensity();
    }

    float getDensity();

    default float i0(float f) {
        return getDensity() * f;
    }

    default int q0(long j) {
        return Math.round(I0(j));
    }

    default long y(long j) {
        if (j == 9205357640488583168L) {
            return 9205357640488583168L;
        }
        return DpKt.a(X(Float.intBitsToFloat((int) (j >> 32))), X(Float.intBitsToFloat((int) (j & 4294967295L))));
    }

    default int y0(float f) {
        float i0 = i0(f);
        if (Float.isInfinite(i0)) {
            return Integer.MAX_VALUE;
        }
        return Math.round(i0);
    }
}
