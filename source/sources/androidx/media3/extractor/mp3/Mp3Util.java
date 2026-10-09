package androidx.media3.extractor.mp3;

import androidx.media3.common.util.Util;
import java.math.RoundingMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class Mp3Util {
    public static int a(long j, long j2) {
        if (j > 0 && j2 > 0) {
            long J = Util.J(j, 8000000L, j2, RoundingMode.HALF_UP);
            if (J > 0 && J <= 2147483647L) {
                return (int) J;
            }
        }
        return -2147483647;
    }
}
