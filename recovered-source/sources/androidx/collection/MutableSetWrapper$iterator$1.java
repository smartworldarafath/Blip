package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableSetWrapper$iterator$1 implements Iterator<Object>, KMappedMarker {
    public int j = -1;
    public final Iterator k;
    public final /* synthetic */ MutableSetWrapper l;

    public MutableSetWrapper$iterator$1(MutableSetWrapper mutableSetWrapper) {
        this.l = mutableSetWrapper;
        this.k = SequencesKt.e(new MutableSetWrapper$iterator$1$iterator$1(mutableSetWrapper, this, null));
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.k.hasNext();
    }

    @Override // java.util.Iterator
    public final Object next() {
        return this.k.next();
    }

    @Override // java.util.Iterator
    public final void remove() {
        int i = this.j;
        if (i != -1) {
            this.l.k.n(i);
            this.j = -1;
        }
    }
}
