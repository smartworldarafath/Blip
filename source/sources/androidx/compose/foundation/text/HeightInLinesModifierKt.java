package androidx.compose.foundation.text;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HeightInLinesModifierKt {
    public static final int a(float f, float f2, float f3, int i, int i2) {
        if (i == i2) {
            return -1;
        }
        int i3 = i - 2;
        if (i3 < 0) {
            i3 = 0;
        }
        float f4 = (f2 * i3) + f;
        int i4 = 1;
        int i5 = i - 1;
        if (i5 <= 1) {
            i4 = i5;
        }
        return MathKt.b((f3 * i4) + f4);
    }

    public static final void b(int i, int i2) {
        boolean z;
        boolean z2 = false;
        if (i > 0 && i2 > 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            InlineClassHelperKt.a("both minLines " + i + " and maxLines " + i2 + " must be greater than zero");
        }
        if (i <= i2) {
            z2 = true;
        }
        if (!z2) {
            InlineClassHelperKt.a("minLines " + i + " must be less than or equal to maxLines " + i2);
        }
    }
}
