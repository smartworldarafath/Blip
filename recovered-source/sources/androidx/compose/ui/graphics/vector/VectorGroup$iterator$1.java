package androidx.compose.ui.graphics.vector;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class VectorGroup$iterator$1 implements Iterator<VectorNode>, KMappedMarker {
    public final Iterator j;

    public VectorGroup$iterator$1(VectorGroup vectorGroup) {
        this.j = vectorGroup.s.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.j.hasNext();
    }

    @Override // java.util.Iterator
    public final VectorNode next() {
        return (VectorNode) this.j.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
