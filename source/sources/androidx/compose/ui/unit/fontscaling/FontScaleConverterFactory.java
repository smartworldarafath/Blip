package androidx.compose.ui.unit.fontscaling;

import androidx.collection.SparseArrayCompat;
import androidx.collection.SparseArrayCompatKt;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.compose.ui.unit.InlineClassHelperKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FontScaleConverterFactory {
    public static final float[] a = {8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f};
    public static volatile SparseArrayCompat b = new SparseArrayCompat(0);
    public static final Object[] c;

    static {
        Object[] objArr = new Object[0];
        c = objArr;
        synchronized (objArr) {
            b.e(115, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{9.2f, 11.5f, 13.8f, 16.4f, 19.8f, 21.8f, 25.2f, 30.0f, 100.0f}));
            b.e(130, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{10.4f, 13.0f, 15.6f, 18.8f, 21.6f, 23.6f, 26.4f, 30.0f, 100.0f}));
            b.e(150, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{12.0f, 15.0f, 18.0f, 22.0f, 24.0f, 26.0f, 28.0f, 30.0f, 100.0f}));
            b.e(180, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{14.4f, 18.0f, 21.6f, 24.4f, 27.6f, 30.8f, 32.8f, 34.8f, 100.0f}));
            b.e(200, new FontScaleConverterTable(new float[]{8.0f, 10.0f, 12.0f, 14.0f, 18.0f, 20.0f, 24.0f, 30.0f, 100.0f}, new float[]{16.0f, 20.0f, 24.0f, 26.0f, 30.0f, 34.0f, 36.0f, 38.0f, 100.0f}));
        }
        if ((b.d(0) / 100.0f) - 0.01f > 1.03f) {
            return;
        }
        InlineClassHelperKt.b("You should only apply non-linear scaling to font scales > 1");
    }

    public static FontScaleConverter a(float f) {
        float d;
        FontScaleConverter fontScaleConverter;
        float f2;
        float[] fArr = a;
        if (f >= 1.03f) {
            int i = (int) (f * 100.0f);
            FontScaleConverter fontScaleConverter2 = (FontScaleConverter) b.c(i);
            if (fontScaleConverter2 != null) {
                return fontScaleConverter2;
            }
            SparseArrayCompat sparseArrayCompat = b;
            if (sparseArrayCompat.j) {
                SparseArrayCompatKt.a(sparseArrayCompat);
            }
            int a2 = ContainerHelpersKt.a(sparseArrayCompat.m, i, sparseArrayCompat.k);
            if (a2 >= 0) {
                return (FontScaleConverter) b.g(a2);
            }
            int i2 = -(a2 + 1);
            int i3 = i2 - 1;
            if (i2 >= b.f()) {
                FontScaleConverterTable fontScaleConverterTable = new FontScaleConverterTable(new float[]{1.0f}, new float[]{f});
                b(f, fontScaleConverterTable);
                return fontScaleConverterTable;
            }
            if (i3 < 0) {
                fontScaleConverter = new FontScaleConverterTable(fArr, fArr);
                d = 1.0f;
            } else {
                d = b.d(i3) / 100.0f;
                fontScaleConverter = (FontScaleConverter) b.g(i3);
            }
            float d2 = b.d(i2) / 100.0f;
            if (d == d2) {
                f2 = 0.0f;
            } else {
                f2 = (f - d) / (d2 - d);
            }
            float max = (Math.max(0.0f, Math.min(1.0f, f2)) * 1.0f) + 0.0f;
            FontScaleConverter fontScaleConverter3 = (FontScaleConverter) b.g(i2);
            float[] fArr2 = new float[9];
            for (int i4 = 0; i4 < 9; i4++) {
                float f3 = fArr[i4];
                float b2 = fontScaleConverter.b(f3);
                fArr2[i4] = ((fontScaleConverter3.b(f3) - b2) * max) + b2;
            }
            FontScaleConverterTable fontScaleConverterTable2 = new FontScaleConverterTable(fArr, fArr2);
            b(f, fontScaleConverterTable2);
            return fontScaleConverterTable2;
        }
        return null;
    }

    public static void b(float f, FontScaleConverterTable fontScaleConverterTable) {
        synchronized (c) {
            SparseArrayCompat clone = b.clone();
            clone.e((int) (f * 100.0f), fontScaleConverterTable);
            b = clone;
        }
    }
}
