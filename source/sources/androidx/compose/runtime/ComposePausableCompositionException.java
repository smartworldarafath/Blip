package androidx.compose.runtime;

import androidx.collection.IntList;
import androidx.collection.MutableObjectList;
import androidx.collection.ObjectList;
import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.ListIterator;
import java.util.RandomAccess;
import kotlin.collections.CollectionsKt;
import kotlin.sequences.SequencesKt;
import kotlin.sequences.SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ComposePausableCompositionException extends RuntimeException {
    public final ObjectList j;
    public final MutableObjectList k;
    public final IntList l;
    public final int m;

    public ComposePausableCompositionException(ObjectList objectList, MutableObjectList mutableObjectList, IntList intList, int i, Exception exc) {
        super(exc);
        this.j = objectList;
        this.k = mutableObjectList;
        this.l = intList;
        this.m = i;
    }

    @Override // java.lang.Throwable
    public final String getMessage() {
        Collection collection;
        List h = SequencesKt.h(new SequencesKt__SequenceBuilderKt$sequence$$inlined$Sequence$1(new ComposePausableCompositionException$operationsSequence$1(this, null)));
        int size = h.size();
        if (50 >= size) {
            collection = CollectionsKt.X(h);
        } else {
            ArrayList arrayList = new ArrayList(50);
            if (h instanceof RandomAccess) {
                for (int i = size - 50; i < size; i++) {
                    arrayList.add(h.get(i));
                }
            } else {
                ListIterator listIterator = h.listIterator(size - 50);
                while (listIterator.hasNext()) {
                    arrayList.add(listIterator.next());
                }
            }
            collection = arrayList;
        }
        return StringsKt.W("\n            |Failed to execute op number " + this.m + ":\n            |" + CollectionsKt.y(collection, "\n", null, null, null, 62) + "\n            ");
    }
}
