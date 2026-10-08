package androidx.compose.ui.unit;

import androidx.compose.ui.unit.fontscaling.FontScaleConverter;
import androidx.compose.ui.unit.fontscaling.FontScaleConverterFactory;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface FontScaling {
    default float E(long j) {
        if (!TextUnitType.a(TextUnit.b(j), 4294967296L)) {
            InlineClassHelperKt.b("Only Sp can convert to Px");
        }
        float[] fArr = FontScaleConverterFactory.a;
        if (e0() >= 1.03f) {
            FontScaleConverter a = FontScaleConverterFactory.a(e0());
            if (a == null) {
                return e0() * TextUnit.c(j);
            }
            return a.b(TextUnit.c(j));
        }
        return e0() * TextUnit.c(j);
    }

    float e0();

    default long x(float f) {
        float e0;
        float[] fArr = FontScaleConverterFactory.a;
        if (e0() >= 1.03f) {
            FontScaleConverter a = FontScaleConverterFactory.a(e0());
            if (a != null) {
                e0 = a.a(f);
            } else {
                e0 = f / e0();
            }
            return TextUnitKt.e(4294967296L, e0);
        }
        return TextUnitKt.e(4294967296L, f / e0());
    }
}
