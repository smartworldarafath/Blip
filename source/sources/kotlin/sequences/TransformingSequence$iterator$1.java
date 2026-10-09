package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransformingSequence$iterator$1 implements Iterator<Object>, KMappedMarker {
    public final Iterator j;
    public final /* synthetic */ TransformingSequence k;

    public TransformingSequence$iterator$1(TransformingSequence transformingSequence) {
        this.k = transformingSequence;
        this.j = transformingSequence.a.iterator();
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.j.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.k.b.b(this.j.next());
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
