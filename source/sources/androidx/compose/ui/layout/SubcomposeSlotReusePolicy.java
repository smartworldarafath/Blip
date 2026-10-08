package androidx.compose.ui.layout;

import androidx.collection.MutableOrderedScatterSet;
import androidx.collection.OrderedScatterSetKt;
import java.util.Collection;
import java.util.Iterator;
import java.util.function.Predicate;
import kotlin.jvm.internal.CollectionToArray;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface SubcomposeSlotReusePolicy {
    void a(SlotIdsSet slotIdsSet);

    boolean b(Object obj, Object obj2);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class SlotIdsSet implements Collection<Object>, KMappedMarker {
        public final MutableOrderedScatterSet j = OrderedScatterSetKt.a();

        @Override // java.util.Collection
        public final boolean add(Object obj) {
            return this.j.b(obj);
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection<? extends Object> collection) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public final void clear() {
            this.j.d();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            return this.j.a(obj);
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!this.j.a(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            if (this.j.g == 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return this.j.c().iterator();
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            return this.j.i(obj);
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection collection) {
            return this.j.i(collection);
        }

        @Override // java.util.Collection
        public final boolean removeIf(Predicate<? super Object> predicate) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            return this.j.k(collection);
        }

        @Override // java.util.Collection
        public final int size() {
            return this.j.g;
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            return CollectionToArray.a(this);
        }

        @Override // java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            return CollectionToArray.b(this, objArr);
        }
    }
}
