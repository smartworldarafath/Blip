package androidx.media3.exoplayer.audio;

import android.os.Build;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class DeviceTypeUtil {
    public static boolean a(int i) {
        if (i == 8 || i == 7) {
            return true;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 31 && (i == 26 || i == 27)) {
            return true;
        }
        if (i2 >= 33 && i == 30) {
            return true;
        }
        return false;
    }
}
