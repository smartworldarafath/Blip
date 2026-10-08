package androidx.media3.exoplayer;

import androidx.media3.common.Format;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface RendererCapabilities {
    static boolean h(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            if (!z || i2 != 3) {
                return false;
            }
            return true;
        }
        return true;
    }

    static int j(int i, int i2, int i3, int i4) {
        return i | i2 | i3 | 128 | i4;
    }

    int f(Format format);

    String getName();

    int n();
}
