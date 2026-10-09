package androidx.media3.extractor.metadata.id3;

import defpackage.jb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InternalFrame extends Id3Frame {
    public final String b;
    public final String c;
    public final String d;

    public InternalFrame(String str, String str2, String str3) {
        super("----");
        this.b = str;
        this.c = str2;
        this.d = str3;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && InternalFrame.class == obj.getClass()) {
                InternalFrame internalFrame = (InternalFrame) obj;
                if (this.c.equals(internalFrame.c) && this.b.equals(internalFrame.b) && this.d.equals(internalFrame.d)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.d.hashCode() + jb.c(this.c, jb.c(this.b, 527, 31), 31);
    }

    @Override // androidx.media3.extractor.metadata.id3.Id3Frame
    public final String toString() {
        return this.a + ": domain=" + this.b + ", description=" + this.c;
    }
}
