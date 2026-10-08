package androidx.media3.extractor.metadata.id3;

import defpackage.jb;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UrlLinkFrame extends Id3Frame {
    public final String b;
    public final String c;

    public UrlLinkFrame(String str, String str2, String str3) {
        super(str);
        this.b = str2;
        this.c = str3;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && UrlLinkFrame.class == obj.getClass()) {
                UrlLinkFrame urlLinkFrame = (UrlLinkFrame) obj;
                if (this.a.equals(urlLinkFrame.a) && Objects.equals(this.b, urlLinkFrame.b) && this.c.equals(urlLinkFrame.c)) {
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
        int c = jb.c(this.a, 527, 31);
        String str = this.b;
        if (str != null) {
            i = str.hashCode();
        } else {
            i = 0;
        }
        return this.c.hashCode() + ((c + i) * 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.a + ": url=" + this.c;
    }
}
