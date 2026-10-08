package androidx.media3.extractor.metadata.id3;

import defpackage.jb;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PrivFrame extends Id3Frame {
    public final String b;
    public final byte[] c;

    public PrivFrame(String str, byte[] bArr) {
        super("PRIV");
        this.b = str;
        this.c = bArr;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && PrivFrame.class == obj.getClass()) {
                PrivFrame privFrame = (PrivFrame) obj;
                if (this.b.equals(privFrame.b) && Arrays.equals(this.c, privFrame.c)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.c) + jb.c(this.b, 527, 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.a + ": owner=" + this.b;
    }
}
