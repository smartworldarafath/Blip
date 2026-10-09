package androidx.media3.extractor.metadata.id3;

import defpackage.jb;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GeobFrame extends Id3Frame {
    public final String b;
    public final String c;
    public final String d;
    public final byte[] e;

    public GeobFrame(String str, String str2, String str3, byte[] bArr) {
        super("GEOB");
        this.b = str;
        this.c = str2;
        this.d = str3;
        this.e = bArr;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && GeobFrame.class == obj.getClass()) {
                GeobFrame geobFrame = (GeobFrame) obj;
                if (Objects.equals(this.b, geobFrame.b) && this.c.equals(geobFrame.c) && this.d.equals(geobFrame.d) && Arrays.equals(this.e, geobFrame.e)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int i;
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return Arrays.hashCode(this.e) + jb.c(this.d, jb.c(this.c, (527 + i) * 31, 31), 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.a + ": mimeType=" + this.b + ", filename=" + this.c + ", description=" + this.d;
    }
}
