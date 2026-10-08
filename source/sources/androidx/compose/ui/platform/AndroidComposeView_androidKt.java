package androidx.compose.ui.platform;

import android.view.View;
import android.view.ViewParent;
import androidx.compose.ui.graphics.Matrix;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidComposeView_androidKt {
    public static final boolean a(View view, View view2) {
        if (!view2.equals(view)) {
            for (ViewParent parent = view2.getParent(); parent != null; parent = parent.getParent()) {
                if (parent == view) {
                    return true;
                }
            }
            return false;
        }
        return false;
    }

    public static final void b(float[] fArr, float f, float f2, float[] fArr2) {
        Matrix.d(fArr2);
        Matrix.f(fArr2, f, f2);
        d(fArr, fArr2);
    }

    public static final float c(int i, int i2, float[] fArr, float[] fArr2) {
        int i3 = i * 4;
        return (fArr[i3 + 3] * fArr2[12 + i2]) + (fArr[i3 + 2] * fArr2[8 + i2]) + (fArr[i3 + 1] * fArr2[4 + i2]) + (fArr[i3] * fArr2[i2]);
    }

    public static final void d(float[] fArr, float[] fArr2) {
        float c = c(0, 0, fArr2, fArr);
        float c2 = c(0, 1, fArr2, fArr);
        float c3 = c(0, 2, fArr2, fArr);
        float c4 = c(0, 3, fArr2, fArr);
        float c5 = c(1, 0, fArr2, fArr);
        float c6 = c(1, 1, fArr2, fArr);
        float c7 = c(1, 2, fArr2, fArr);
        float c8 = c(1, 3, fArr2, fArr);
        float c9 = c(2, 0, fArr2, fArr);
        float c10 = c(2, 1, fArr2, fArr);
        float c11 = c(2, 2, fArr2, fArr);
        float c12 = c(2, 3, fArr2, fArr);
        float c13 = c(3, 0, fArr2, fArr);
        float c14 = c(3, 1, fArr2, fArr);
        float c15 = c(3, 2, fArr2, fArr);
        float c16 = c(3, 3, fArr2, fArr);
        fArr[0] = c;
        fArr[1] = c2;
        fArr[2] = c3;
        fArr[3] = c4;
        fArr[4] = c5;
        fArr[5] = c6;
        fArr[6] = c7;
        fArr[7] = c8;
        fArr[8] = c9;
        fArr[9] = c10;
        fArr[10] = c11;
        fArr[11] = c12;
        fArr[12] = c13;
        fArr[13] = c14;
        fArr[14] = c15;
        fArr[15] = c16;
    }
}
