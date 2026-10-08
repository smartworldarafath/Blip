package androidx.media3.common;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AuxEffectInfo {
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && AuxEffectInfo.class == obj.getClass()) {
                if (Float.compare(0.0f, 0.0f) == 0) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Float.floatToIntBits(0.0f) + 16337;
    }
}
