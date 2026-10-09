package androidx.collection;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.sequences.SequencesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MutableOrderedSetWrapper$iterator$1 implements Iterator<Object>, KMappedMarker {
    public int j = -1;
    public final Iterator k;
    public final /* synthetic */ MutableOrderedSetWrapper l;

    public MutableOrderedSetWrapper$iterator$1(MutableOrderedSetWrapper mutableOrderedSetWrapper) {
        this.l = mutableOrderedSetWrapper;
        this.k = SequencesKt.e(new MutableOrderedSetWrapper$iterator$1$iterator$1(mutableOrderedSetWrapper, this, null));
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
            this.l.k.j(i);
            this.j = -1;
        }
    }
}
