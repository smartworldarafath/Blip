package androidx.media3.common;

import androidx.media3.common.util.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DeviceInfo {
    public static final /* synthetic */ int c = 0;
    public final int a = 0;
    public final int b = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
    }

    static {
        Util.z(0);
        Util.z(1);
        Util.z(2);
        Util.z(3);
    }

    public DeviceInfo(Builder builder) {
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DeviceInfo) {
                DeviceInfo deviceInfo = (DeviceInfo) obj;
                if (this.a == deviceInfo.a && this.b == deviceInfo.b) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (((16337 + this.a) * 31) + this.b) * 31;
    }
}
