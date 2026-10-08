package androidx.compose.ui.unit.fontscaling;

import defpackage.u2;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FontScaleConverterTable implements FontScaleConverter {
    public final float[] a;
    public final float[] b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final float a(float f, float[] fArr, float[] fArr2) {
            float f2;
            float f3;
            float f4;
            float f5;
            float f6;
            float abs = Math.abs(f);
            float signum = Math.signum(f);
            int binarySearch = Arrays.binarySearch(fArr, abs);
            if (binarySearch >= 0) {
                return signum * fArr2[binarySearch];
            }
            int i = -(binarySearch + 1);
            int i2 = i - 1;
            if (i2 >= fArr.length - 1) {
                float f7 = fArr[fArr.length - 1];
                float f8 = fArr2[fArr.length - 1];
                if (f7 == 0.0f) {
                    return 0.0f;
                }
                return (f8 / f7) * f;
            }
            if (i2 == -1) {
                float f9 = fArr[0];
                f4 = fArr2[0];
                f5 = f9;
                f3 = 0.0f;
                f2 = 0.0f;
            } else {
                float f10 = fArr[i2];
                float f11 = fArr[i];
                f2 = fArr2[i2];
                f3 = f10;
                f4 = fArr2[i];
                f5 = f11;
            }
            if (f3 == f5) {
                f6 = 0.0f;
            } else {
                f6 = (abs - f3) / (f5 - f3);
            }
            return (((f4 - f2) * Math.max(0.0f, Math.min(1.0f, f6))) + f2) * signum;
        }
    }

    public FontScaleConverterTable(float[] fArr, float[] fArr2) {
        if (fArr.length == fArr2.length && fArr.length != 0) {
            this.a = fArr;
            this.b = fArr2;
        } else {
            u2.g("Array lengths must match and be nonzero");
            throw null;
        }
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float a(float f) {
        return Companion.a(f, this.b, this.a);
    }

    @Override // androidx.compose.ui.unit.fontscaling.FontScaleConverter
    public final float b(float f) {
        return Companion.a(f, this.a, this.b);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && (obj instanceof FontScaleConverterTable)) {
                FontScaleConverterTable fontScaleConverterTable = (FontScaleConverterTable) obj;
                if (Arrays.equals(this.a, fontScaleConverterTable.a) && Arrays.equals(this.b, fontScaleConverterTable.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + (Arrays.hashCode(this.a) * 31);
    }

    public final String toString() {
        String arrays = Arrays.toString(this.a);
        arrays.getClass();
        String arrays2 = Arrays.toString(this.b);
        arrays2.getClass();
        return "FontScaleConverter{fromSpValues=" + arrays + ", toDpValues=" + arrays2 + "}";
    }
}
