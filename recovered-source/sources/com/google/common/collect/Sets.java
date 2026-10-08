package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.collect.AbstractIterator;
import defpackage.k8;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.Set;
import java.util.SortedSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Sets {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FilteredSet<E> extends Collections2$FilteredCollection<E> implements Set<E> {
        @Override // java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            return Sets.a(this, obj);
        }

        @Override // java.util.Collection, java.util.Set
        public final int hashCode() {
            return Sets.c(this);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class FilteredSortedSet<E> extends FilteredSet<E> implements SortedSet<E> {
        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return ((SortedSet) this.j).comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            Iterator<E> it = this.j.iterator();
            it.getClass();
            Predicate predicate = this.k;
            predicate.getClass();
            while (it.hasNext()) {
                E next = it.next();
                if (predicate.apply(next)) {
                    return next;
                }
            }
            k8.o();
            return null;
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Collections2$FilteredCollection] */
        @Override // java.util.SortedSet
        public final SortedSet headSet(Object obj) {
            return new Collections2$FilteredCollection(((SortedSet) this.j).headSet(obj), this.k);
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // java.util.SortedSet
        public final Object last() {
            SortedSet sortedSet = (SortedSet) this.j;
            while (true) {
                Object last = sortedSet.last();
                if (this.k.apply(last)) {
                    return last;
                }
                sortedSet = sortedSet.headSet(last);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Collections2$FilteredCollection] */
        @Override // java.util.SortedSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return new Collections2$FilteredCollection(((SortedSet) this.j).subSet(obj, obj2), this.k);
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.util.SortedSet, com.google.common.collect.Collections2$FilteredCollection] */
        @Override // java.util.SortedSet
        public final SortedSet tailSet(Object obj) {
            return new Collections2$FilteredCollection(((SortedSet) this.j).tailSet(obj), this.k);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ImprovedAbstractSet<E> extends AbstractSet<E> {
        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean removeAll(Collection collection) {
            collection.getClass();
            if (collection instanceof Multiset) {
                collection = ((RegularImmutableMultiset) ((Multiset) collection)).j();
            }
            boolean z = false;
            if ((collection instanceof Set) && collection.size() > size()) {
                Iterator<E> it = iterator();
                while (it.hasNext()) {
                    if (collection.contains(it.next())) {
                        it.remove();
                        z = true;
                    }
                }
                return z;
            }
            Iterator<E> it2 = collection.iterator();
            while (it2.hasNext()) {
                z |= remove(it2.next());
            }
            return z;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean retainAll(Collection collection) {
            collection.getClass();
            return super.retainAll(collection);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class SetView<E> extends AbstractSet<E> {
        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractSet, java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean removeAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean retainAll(Collection collection) {
            throw new UnsupportedOperationException();
        }
    }

    public static boolean a(Set set, Object obj) {
        if (set != obj) {
            if (obj instanceof Set) {
                Set set2 = (Set) obj;
                try {
                    if (set.size() == set2.size()) {
                        if (set.containsAll(set2)) {
                            return true;
                        }
                        return false;
                    }
                    return false;
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v2, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    /* JADX WARN: Type inference failed for: r0v6, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.util.Set, com.google.common.collect.Collections2$FilteredCollection] */
    public static Set b(Set set, Predicate predicate) {
        if (set instanceof SortedSet) {
            Collection collection = (SortedSet) set;
            if (collection instanceof FilteredSet) {
                FilteredSet filteredSet = (FilteredSet) collection;
                return new Collections2$FilteredCollection((SortedSet) filteredSet.j, Predicates.b(filteredSet.k, predicate));
            }
            return new Collections2$FilteredCollection(collection, predicate);
        }
        if (set instanceof FilteredSet) {
            FilteredSet filteredSet2 = (FilteredSet) set;
            return new Collections2$FilteredCollection((Set) filteredSet2.j, Predicates.b(filteredSet2.k, predicate));
        }
        set.getClass();
        return new Collections2$FilteredCollection(set, predicate);
    }

    public static int c(Set set) {
        int i;
        int i2 = 0;
        for (Object obj : set) {
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i2 = ~(~(i2 + i));
        }
        return i2;
    }

    public static SetView d(final Set set, final ImmutableSet immutableSet) {
        Preconditions.j(set, "set1");
        Preconditions.j(immutableSet, "set2");
        return new SetView<Object>() { // from class: com.google.common.collect.Sets.2

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* renamed from: com.google.common.collect.Sets$2$1, reason: invalid class name */
            /* loaded from: classes.dex */
            class AnonymousClass1 extends AbstractIterator<Object> {
                public final Iterator l;

                public AnonymousClass1() {
                    this.l = set.iterator();
                }

                @Override // com.google.common.collect.AbstractIterator
                public final Object a() {
                    Object next;
                    do {
                        Iterator it = this.l;
                        if (it.hasNext()) {
                            next = it.next();
                        } else {
                            this.j = AbstractIterator.State.l;
                            return null;
                        }
                    } while (!immutableSet.contains(next));
                    return next;
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                if (set.contains(obj) && immutableSet.contains(obj)) {
                    return true;
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean containsAll(Collection collection) {
                if (set.containsAll(collection) && immutableSet.containsAll(collection)) {
                    return true;
                }
                return false;
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean isEmpty() {
                return Collections.disjoint(immutableSet, set);
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new AnonymousClass1();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final int size() {
                Iterator it = set.iterator();
                int i = 0;
                while (it.hasNext()) {
                    if (immutableSet.contains(it.next())) {
                        i++;
                    }
                }
                return i;
            }
        };
    }
}
