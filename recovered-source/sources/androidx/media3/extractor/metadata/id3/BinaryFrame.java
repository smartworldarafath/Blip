package androidx.media3.extractor.metadata.id3;

import defpackage.jb;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BinaryFrame extends Id3Frame {
    public final byte[] b;

    public BinaryFrame(String str, byte[] bArr) {
        super(str);
        this.b = bArr;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && BinaryFrame.class == obj.getClass()) {
                BinaryFrame binaryFrame = (BinaryFrame) obj;
                if (this.a.equals(binaryFrame.a) && Arrays.equals(this.b, binaryFrame.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.b) + jb.c(this.a, 527, 31);
    }
}
