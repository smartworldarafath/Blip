package androidx.compose.ui.graphics;

import android.graphics.ColorMatrix;
import defpackage.q;
import defpackage.u2;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ColorMatrixColorFilter extends ColorFilter {
    public float[] b;

    public final float[] a() {
        float[] fArr = this.b;
        if (fArr == null) {
            android.graphics.ColorFilter colorFilter = this.a;
            if (colorFilter instanceof android.graphics.ColorMatrixColorFilter) {
                ColorMatrix colorMatrix = new ColorMatrix();
                ((android.graphics.ColorMatrixColorFilter) colorFilter).getColorMatrix(colorMatrix);
                float[] array = colorMatrix.getArray();
                this.b = array;
                return array;
            }
            u2.g("Unable to obtain ColorMatrix from Android ColorMatrixColorFilter. This method was invoked on an unsupported Android version");
            return null;
        }
        return fArr;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ColorMatrixColorFilter) && Arrays.equals(a(), ((ColorMatrixColorFilter) obj).a())) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        float[] fArr = this.b;
        if (fArr != null) {
            return Arrays.hashCode(fArr);
        }
        return 0;
    }

    public final String toString() {
        String i;
        float[] fArr = this.b;
        if (fArr == null) {
            i = "null";
        } else {
            i = q.i("ColorMatrix(values=", Arrays.toString(fArr), ")");
        }
        return q.i("ColorMatrixColorFilter(colorMatrix=", i, ")");
    }
}
