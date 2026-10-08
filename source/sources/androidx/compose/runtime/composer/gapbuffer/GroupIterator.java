package androidx.compose.runtime.composer.gapbuffer;

import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class GroupIterator implements Iterator<Object>, KMappedMarker {
    public final SlotTable j;
    public final int k;
    public int l;
    public final int m;

    public GroupIterator(SlotTable slotTable, int i, int i2) {
        this.j = slotTable;
        this.k = i2;
        this.l = i;
        this.m = slotTable.q;
        if (slotTable.p) {
            SlotTableKt.f();
        }
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.l < this.k) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        SlotTable slotTable = this.j;
        int i = slotTable.q;
        int i2 = this.m;
        if (i != i2) {
            SlotTableKt.f();
        }
        int i3 = this.l;
        this.l = slotTable.j[(i3 * 5) + 3] + i3;
        return new SlotTableGroup(slotTable, i3, i2);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
