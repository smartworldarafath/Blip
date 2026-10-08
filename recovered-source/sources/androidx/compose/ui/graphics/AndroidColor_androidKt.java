package androidx.compose.ui.graphics;

import android.os.Build;
import androidx.compose.ui.graphics.colorspace.ColorSpaces;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidColor_androidKt {
    public static final long a(long j) {
        long j2 = 63 & j;
        int i = (int) j2;
        if (i <= 15) {
            return j;
        }
        if (i == ColorSpaces.u.c) {
            return ColorKt.f(j);
        }
        if ((i == ColorSpaces.v.c || i == ColorSpaces.w.c) && Build.VERSION.SDK_INT < 34) {
            return ColorKt.f(j);
        }
        if (i == ColorSpaces.x.c && Build.VERSION.SDK_INT < 36) {
            return ColorKt.f(j);
        }
        return (j & (-64)) | (j2 - 1);
    }

    public static final long b(long j) {
        int i = (int) (63 & j);
        if (i != ColorSpaces.x.c && i != ColorSpaces.s.c && i != ColorSpaces.t.c) {
            return a(j);
        }
        return a(Color.a(j, ColorSpaces.e));
    }
}
