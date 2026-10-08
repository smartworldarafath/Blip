package androidx.compose.runtime.composer.gapbuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class RelativeGroupPath extends SourceInformationGroupPath {
    public final SourceInformationGroupPath a;
    public final int b;

    public RelativeGroupPath(SourceInformationGroupPath sourceInformationGroupPath, int i) {
        this.a = sourceInformationGroupPath;
        this.b = i;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof RelativeGroupPath) {
            RelativeGroupPath relativeGroupPath = (RelativeGroupPath) obj;
            if (relativeGroupPath.a.equals(this.a) && relativeGroupPath.b == this.b) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode() + (this.b * 31);
    }
}
