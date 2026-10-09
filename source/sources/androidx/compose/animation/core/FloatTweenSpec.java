package androidx.compose.animation.core;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FloatTweenSpec implements FloatAnimationSpec {
    public final int a;
    public final Easing b;
    public final long c;
    public final long d;

    public FloatTweenSpec(int i, int i2, Easing easing) {
        this.a = i;
        this.b = easing;
        this.c = i * 1000000;
        this.d = i2 * 1000000;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float b(long j, float f, float f2, float f3) {
        long j2;
        long j3 = j - this.d;
        if (j3 < 0) {
            j3 = 0;
        }
        long j4 = this.c;
        if (j3 > j4) {
            j2 = j4;
        } else {
            j2 = j3;
        }
        if (j2 == 0) {
            return f3;
        }
        return (e(j2, f, f2, f3) - e(j2 - 1000000, f, f2, f3)) * 1000.0f;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final long c(float f, float f2, float f3) {
        return this.d + this.c;
    }

    @Override // androidx.compose.animation.core.FloatAnimationSpec
    public final float e(long j, float f, float f2, float f3) {
        float f4;
        long j2 = j - this.d;
        if (j2 < 0) {
            j2 = 0;
        }
        long j3 = this.c;
        if (j2 > j3) {
            j2 = j3;
        }
        if (this.a == 0) {
            f4 = 1.0f;
        } else {
            f4 = ((float) j2) / ((float) j3);
        }
        float e = this.b.e(f4);
        return (f2 * e) + ((1.0f - e) * f);
    }
}
