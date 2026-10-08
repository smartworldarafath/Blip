package androidx.media3.exoplayer.video;

import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HevcSeiUtil {
    public static int a(ByteBuffer byteBuffer, int i, int i2) {
        int i3 = 0;
        while (i < i2) {
            int i4 = byteBuffer.get(i) & 255;
            if (i3 >= 2 && i4 == 1) {
                return i - 2;
            }
            if (i4 == 0) {
                i3++;
            } else {
                i3 = 0;
            }
            i++;
        }
        return i2;
    }
}
