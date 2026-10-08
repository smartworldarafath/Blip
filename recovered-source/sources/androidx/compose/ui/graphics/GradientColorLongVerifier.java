package androidx.compose.ui.graphics;

import android.graphics.RadialGradient;
import android.graphics.SweepGradient;
import defpackage.x4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class GradientColorLongVerifier {
    public static final GradientColorLongVerifier a = new Object();

    public final android.graphics.LinearGradient a(long j, long j2, long[] jArr, float[] fArr, int i) {
        return x4.d(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), Float.intBitsToFloat((int) (j2 >> 32)), Float.intBitsToFloat((int) (j2 & 4294967295L)), jArr, fArr, AndroidTileMode_androidKt.a(i));
    }

    public final RadialGradient b(long j, float f, long[] jArr, float[] fArr, int i) {
        return x4.e(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), f, jArr, fArr, AndroidTileMode_androidKt.a(i));
    }

    public final SweepGradient c(long j, long[] jArr, float[] fArr) {
        return x4.g(Float.intBitsToFloat((int) (j >> 32)), Float.intBitsToFloat((int) (j & 4294967295L)), jArr, fArr);
    }
}
