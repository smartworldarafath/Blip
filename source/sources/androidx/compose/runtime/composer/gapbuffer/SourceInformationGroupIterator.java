package androidx.compose.runtime.composer.gapbuffer;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SourceInformationGroupIterator implements Iterator<Object>, KMappedMarker {
    public final SlotTable j;
    public final int k;
    public final SourceInformationGroupPath l;
    public final int m;
    public int n;

    public SourceInformationGroupIterator(SlotTable slotTable, int i, GapGroupSourceInformation gapGroupSourceInformation, SourceInformationGroupPath sourceInformationGroupPath) {
        this.j = slotTable;
        this.k = i;
        this.l = sourceInformationGroupPath;
        this.m = slotTable.q;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        throw null;
    }

    @Override // java.util.Iterator
    public final Object next() {
        throw null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
