package androidx.media3.common;

import androidx.media3.common.util.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VideoSize {
    public static final VideoSize d = new VideoSize(0, 0);
    public final int a;
    public final int b;
    public final float c;

    static {
        Util.z(0);
        Util.z(1);
        Util.z(3);
    }

    public VideoSize(float f, int i, int i2) {
        this.a = i;
        this.b = i2;
        this.c = f;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof VideoSize) {
            VideoSize videoSize = (VideoSize) obj;
            if (this.a == videoSize.a && this.b == videoSize.b && this.c == videoSize.c) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return Float.floatToRawIntBits(this.c) + ((((217 + this.a) * 31) + this.b) * 31);
    }

    public VideoSize(int i, int i2) {
        this(1.0f, i, i2);
    }
}
