package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.MediaMetadata;
import defpackage.jb;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ApicFrame extends Id3Frame {
    public final String b;
    public final String c;
    public final int d;
    public final byte[] e;

    public ApicFrame(String str, String str2, int i, byte[] bArr) {
        super("APIC");
        this.b = str;
        this.c = str2;
        this.d = i;
        this.e = bArr;
    }

    @Override // androidx.media3.common.Metadata.Entry
    public final void b(MediaMetadata.Builder builder) {
        builder.a(this.d, this.e);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && ApicFrame.class == obj.getClass()) {
                ApicFrame apicFrame = (ApicFrame) obj;
                if (this.d == apicFrame.d && this.b.equals(apicFrame.b) && Objects.equals(this.c, apicFrame.c) && Arrays.equals(this.e, apicFrame.e)) {
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
        int c = jb.c(this.b, (527 + this.d) * 31, 31);
        String str = this.c;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return Arrays.hashCode(this.e) + ((c + i) * 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.a + ": mimeType=" + this.b + ", description=" + this.c;
    }
}
