package androidx.compose.ui.input.pointer.util;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.HistoricalChange;
import androidx.compose.ui.input.pointer.PointerEventKt;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.internal.InlineClassHelperKt;
import java.util.List;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VelocityTrackerKt {
    public static final void a(VelocityTracker velocityTracker, PointerInputChange pointerInputChange) {
        Lsq2VelocityTracker lsq2VelocityTracker = velocityTracker.a;
        lsq2VelocityTracker.getClass();
        VelocityTracker1D velocityTracker1D = lsq2VelocityTracker.b;
        VelocityTracker1D velocityTracker1D2 = lsq2VelocityTracker.a;
        boolean b = PointerEventKt.b(pointerInputChange);
        long j = pointerInputChange.b;
        if (b) {
            ArraysKt.m(0, r4.length, null, velocityTracker1D2.d);
            velocityTracker1D2.e = 0;
            ArraysKt.m(0, r4.length, null, velocityTracker1D.d);
            velocityTracker1D.e = 0;
            lsq2VelocityTracker.c = 0L;
        }
        if (!PointerEventKt.d(pointerInputChange)) {
            List b2 = pointerInputChange.b();
            int size = b2.size();
            for (int i = 0; i < size; i++) {
                HistoricalChange historicalChange = (HistoricalChange) b2.get(i);
                lsq2VelocityTracker.a(historicalChange.a, Offset.f(historicalChange.e, 0L));
            }
            lsq2VelocityTracker.a(j, Offset.f(pointerInputChange.n, 0L));
        }
        if (PointerEventKt.d(pointerInputChange) && j - lsq2VelocityTracker.c > 40) {
            ArraysKt.m(0, r1.length, null, velocityTracker1D2.d);
            velocityTracker1D2.e = 0;
            ArraysKt.m(0, r3.length, null, velocityTracker1D.d);
            velocityTracker1D.e = 0;
            lsq2VelocityTracker.c = 0L;
        }
        lsq2VelocityTracker.c = j;
    }

    public static final float b(float[] fArr, float[] fArr2) {
        int length = fArr.length;
        float f = 0.0f;
        for (int i = 0; i < length; i++) {
            f += fArr[i] * fArr2[i];
        }
        return f;
    }

    public static final void c(float[] fArr, float[] fArr2, int i, float[] fArr3) {
        float b;
        if (i == 0) {
            InlineClassHelperKt.a("At least one point must be provided");
        }
        int i2 = 2 >= i ? i - 1 : 2;
        int i3 = i2 + 1;
        float[][] fArr4 = new float[i3];
        for (int i4 = 0; i4 < i3; i4++) {
            fArr4[i4] = new float[i];
        }
        for (int i5 = 0; i5 < i; i5++) {
            fArr4[0][i5] = 1.0f;
            for (int i6 = 1; i6 < i3; i6++) {
                fArr4[i6][i5] = fArr4[i6 - 1][i5] * fArr[i5];
            }
        }
        float[][] fArr5 = new float[i3];
        for (int i7 = 0; i7 < i3; i7++) {
            fArr5[i7] = new float[i];
        }
        float[][] fArr6 = new float[i3];
        for (int i8 = 0; i8 < i3; i8++) {
            fArr6[i8] = new float[i3];
        }
        for (int i9 = 0; i9 < i3; i9++) {
            float[] fArr7 = fArr5[i9];
            float[] fArr8 = fArr4[i9];
            fArr8.getClass();
            fArr7.getClass();
            System.arraycopy(fArr8, 0, fArr7, 0, i);
            for (int i10 = 0; i10 < i9; i10++) {
                float[] fArr9 = fArr5[i10];
                float b2 = b(fArr7, fArr9);
                for (int i11 = 0; i11 < i; i11++) {
                    fArr7[i11] = fArr7[i11] - (fArr9[i11] * b2);
                }
            }
            float sqrt = (float) Math.sqrt(b(fArr7, fArr7));
            if (sqrt < 1.0E-6f) {
                sqrt = 1.0E-6f;
            }
            float f = 1.0f / sqrt;
            for (int i12 = 0; i12 < i; i12++) {
                fArr7[i12] = fArr7[i12] * f;
            }
            float[] fArr10 = fArr6[i9];
            for (int i13 = 0; i13 < i3; i13++) {
                if (i13 < i9) {
                    b = 0.0f;
                } else {
                    b = b(fArr7, fArr4[i13]);
                }
                fArr10[i13] = b;
            }
        }
        for (int i14 = i2; -1 < i14; i14--) {
            float b3 = b(fArr5[i14], fArr2);
            float[] fArr11 = fArr6[i14];
            int i15 = i14 + 1;
            if (i15 <= i2) {
                int i16 = i2;
                while (true) {
                    b3 -= fArr11[i16] * fArr3[i16];
                    if (i16 != i15) {
                        i16--;
                    }
                }
            }
            fArr3[i14] = b3 / fArr11[i14];
        }
    }
}
