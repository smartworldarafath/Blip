package androidx.compose.runtime.composer.gapbuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AnchoredGroupPath extends SourceInformationGroupPath {
    public final int a;

    public AnchoredGroupPath(int i) {
        this.a = i;
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof AnchoredGroupPath) && ((AnchoredGroupPath) obj).a == this.a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a * 31;
    }
}
