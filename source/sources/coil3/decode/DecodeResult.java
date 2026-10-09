package coil3.decode;

import coil3.Image;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DecodeResult {
    public final Image a;
    public final boolean b;

    public DecodeResult(Image image, boolean z) {
        this.a = image;
        this.b = z;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof DecodeResult) {
                DecodeResult decodeResult = (DecodeResult) obj;
                if (!this.a.equals(decodeResult.a) || this.b != decodeResult.b) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "DecodeResult(image=" + this.a + ", isSampled=" + this.b + ")";
    }
}
