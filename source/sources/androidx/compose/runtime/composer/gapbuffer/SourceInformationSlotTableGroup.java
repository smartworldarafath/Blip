package androidx.compose.runtime.composer.gapbuffer;

import androidx.compose.runtime.tooling.CompositionData;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SourceInformationSlotTableGroup implements CompositionData, Iterable<Object>, KMappedMarker {
    public final SlotTable j;
    public final int k;
    public final RelativeGroupPath l;

    public SourceInformationSlotTableGroup(SlotTable slotTable, int i, GapGroupSourceInformation gapGroupSourceInformation, RelativeGroupPath relativeGroupPath) {
        this.j = slotTable;
        this.k = i;
        this.l = relativeGroupPath;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SourceInformationSlotTableGroup) {
            SourceInformationSlotTableGroup sourceInformationSlotTableGroup = (SourceInformationSlotTableGroup) obj;
            if (sourceInformationSlotTableGroup.k == this.k && sourceInformationSlotTableGroup.j == this.j && sourceInformationSlotTableGroup.l.equals(this.l)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        return this.l.hashCode() + ((this.j.hashCode() + (this.k * 31)) * 31);
    }

    @Override // java.lang.Iterable
    public final Iterator<Object> iterator() {
        return new SourceInformationGroupIterator(this.j, this.k, null, this.l);
    }
}
