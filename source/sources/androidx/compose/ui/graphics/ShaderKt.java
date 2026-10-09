package androidx.compose.ui.graphics;

import android.os.Build;
import defpackage.u2;
import java.util.List;
import kotlin.collections.CollectionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ShaderKt {
    public static final android.graphics.LinearGradient a(long j, long j2, List list, List list2) {
        if (list.size() == list2.size()) {
            int i = 0;
            if (Build.VERSION.SDK_INT >= 29) {
                int size = list.size();
                long[] jArr = new long[size];
                while (i < size) {
                    jArr[i] = AndroidColor_androidKt.b(((Color) list.get(i)).a);
                    i++;
                }
                return GradientColorLongVerifier.a.a(j, j2, jArr, CollectionsKt.U(list2), 0);
            }
            float intBitsToFloat = Float.intBitsToFloat((int) (j >> 32));
            float intBitsToFloat2 = Float.intBitsToFloat((int) (j & 4294967295L));
            float intBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32));
            float intBitsToFloat4 = Float.intBitsToFloat((int) (j2 & 4294967295L));
            int size2 = list.size();
            int[] iArr = new int[size2];
            while (i < size2) {
                iArr[i] = ColorKt.f(((Color) list.get(i)).a);
                i++;
            }
            return new android.graphics.LinearGradient(intBitsToFloat, intBitsToFloat2, intBitsToFloat3, intBitsToFloat4, iArr, CollectionsKt.U(list2), AndroidTileMode_androidKt.a(0));
        }
        u2.g("colors and colorStops arguments must have equal length.");
        return null;
    }
}
