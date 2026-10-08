package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionData;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SlotTableGroup implements CompositionData, Iterable<Object>, KMappedMarker {
    public final SlotTable j;
    public final int k;
    public final int l;

    public SlotTableGroup(SlotTable slotTable, int i, int i2) {
        this.j = slotTable;
        this.k = i;
        this.l = i2;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SlotTableGroup) {
            SlotTableGroup slotTableGroup = (SlotTableGroup) obj;
            if (slotTableGroup.k == this.k && slotTableGroup.l == this.l && slotTableGroup.j == this.j) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return (this.j.hashCode() * 31) + this.k;
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        SlotTable slotTable = this.j;
        if (slotTable.q != this.l) {
            SlotTableKt.f();
        }
        int i = this.k;
        slotTable.g(i);
        return new GroupIterator(slotTable, i + 1, slotTable.j[(i * 5) + 3] + i);
    }
}
