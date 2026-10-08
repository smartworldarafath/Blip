package kotlin.sequences;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DropSequence$iterator$1 implements Iterator<Object>, KMappedMarker {
    public final Iterator j;
    public int k;

    public DropSequence$iterator$1(DropSequence dropSequence) {
        this.j = dropSequence.a.iterator();
        this.k = dropSequence.b;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        Iterator it;
        while (true) {
            int i = this.k;
            it = this.j;
            if (i <= 0 || !it.hasNext()) {
                break;
            }
            it.next();
            this.k--;
        }
        return it.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        Iterator it;
        while (true) {
            int i = this.k;
            it = this.j;
            if (i <= 0 || !it.hasNext()) {
                break;
            }
            it.next();
            this.k--;
        }
        return it.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
