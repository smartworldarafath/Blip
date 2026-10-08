package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Predicate;
import com.google.common.collect.AbstractIterator;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Collections2$FilteredCollection<E> extends AbstractCollection<E> {
    public final Collection j;
    public final Predicate k;

    public Collections2$FilteredCollection(Collection collection, Predicate predicate) {
        this.j = collection;
        this.k = predicate;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean add(Object obj) {
        Preconditions.e(this.k.apply(obj));
        return this.j.add(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean addAll(Collection collection) {
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            Preconditions.e(this.k.apply(it.next()));
        }
        return this.j.addAll(collection);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.AbstractCollection, java.util.Collection
    public final void clear() {
        Collection collection = this.j;
        boolean z = collection instanceof RandomAccess;
        Predicate predicate = this.k;
        if (z && (collection instanceof List)) {
            List list = (List) collection;
            predicate.getClass();
            int i = 0;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object obj = list.get(i2);
                if (!predicate.apply(obj)) {
                    if (i2 > i) {
                        try {
                            list.set(i, obj);
                        } catch (IllegalArgumentException unused) {
                            Iterables.c(list, predicate, i, i2);
                            return;
                        } catch (UnsupportedOperationException unused2) {
                            Iterables.c(list, predicate, i, i2);
                            return;
                        }
                    }
                    i++;
                }
            }
            list.subList(i, list.size()).clear();
            return;
        }
        Iterator it = collection.iterator();
        predicate.getClass();
        while (it.hasNext()) {
            if (predicate.apply(it.next())) {
                it.remove();
            }
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        boolean z;
        Collection collection = this.j;
        collection.getClass();
        try {
            z = collection.contains(obj);
        } catch (ClassCastException | NullPointerException unused) {
            z = false;
        }
        if (!z) {
            return false;
        }
        return this.k.apply(obj);
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean containsAll(Collection collection) {
        Iterator<E> it = collection.iterator();
        while (it.hasNext()) {
            if (!contains(it.next())) {
                return false;
            }
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean isEmpty() {
        Iterator it = this.j.iterator();
        Predicate predicate = this.k;
        Preconditions.j(predicate, "predicate");
        boolean z = false;
        int i = 0;
        while (true) {
            if (it.hasNext()) {
                if (predicate.apply(it.next())) {
                    break;
                }
                i++;
            } else {
                i = -1;
                break;
            }
        }
        if (i != -1) {
            z = true;
        }
        return true ^ z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
    public final Iterator iterator() {
        final Iterator<E> it = this.j.iterator();
        it.getClass();
        final Predicate predicate = this.k;
        predicate.getClass();
        return new AbstractIterator<Object>() { // from class: com.google.common.collect.Iterators$5
            @Override // com.google.common.collect.AbstractIterator
            public final Object a() {
                Object next;
                do {
                    Iterator it2 = it;
                    if (it2.hasNext()) {
                        next = it2.next();
                    } else {
                        this.j = AbstractIterator.State.l;
                        return null;
                    }
                } while (!predicate.apply(next));
                return next;
            }
        };
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean remove(Object obj) {
        if (contains(obj) && this.j.remove(obj)) {
            return true;
        }
        return false;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean removeAll(Collection collection) {
        Iterator<E> it = this.j.iterator();
        boolean z = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.k.apply(next) && collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final boolean retainAll(Collection collection) {
        Iterator<E> it = this.j.iterator();
        boolean z = false;
        while (it.hasNext()) {
            E next = it.next();
            if (this.k.apply(next) && !collection.contains(next)) {
                it.remove();
                z = true;
            }
        }
        return z;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final int size() {
        Iterator<E> it = this.j.iterator();
        int i = 0;
        while (it.hasNext()) {
            if (this.k.apply(it.next())) {
                i++;
            }
        }
        return i;
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray() {
        return Lists.a(iterator()).toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection
    public final Object[] toArray(Object[] objArr) {
        return Lists.a(iterator()).toArray(objArr);
    }
}
