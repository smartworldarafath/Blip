package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.AbstractMultimap;
import com.google.common.collect.Maps;
import com.google.common.collect.MultimapBuilder;
import defpackage.u2;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Collections;
import java.util.Comparator;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.Map;
import java.util.NavigableMap;
import java.util.NavigableSet;
import java.util.Objects;
import java.util.RandomAccess;
import java.util.Set;
import java.util.SortedMap;
import java.util.SortedSet;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractMapBasedMultimap<K, V> extends AbstractMultimap<K, V> implements Serializable {
    public transient TreeMap m;
    public transient int n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class AsMap extends Maps.ViewCachingAbstractMap<K, Collection<V>> {
        public final transient Map l;
        public final /* synthetic */ Multimaps$CustomListMultimap m;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public class AsMapEntries extends Maps.EntrySet<K, Collection<V>> {
            public AsMapEntries() {
            }

            @Override // com.google.common.collect.Maps.EntrySet
            public final Map b() {
                return AsMap.this;
            }

            @Override // com.google.common.collect.Maps.EntrySet, java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean contains(Object obj) {
                Set<Map.Entry<K, V>> entrySet = AsMap.this.l.entrySet();
                entrySet.getClass();
                try {
                    return entrySet.contains(obj);
                } catch (ClassCastException | NullPointerException unused) {
                    return false;
                }
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
            public final Iterator iterator() {
                return new AsMapIterator();
            }

            @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
            public final boolean remove(Object obj) {
                Object obj2;
                if (!contains(obj)) {
                    return false;
                }
                Map.Entry entry = (Map.Entry) obj;
                Objects.requireNonNull(entry);
                Multimaps$CustomListMultimap multimaps$CustomListMultimap = AsMap.this.m;
                Object key = entry.getKey();
                TreeMap treeMap = multimaps$CustomListMultimap.m;
                treeMap.getClass();
                try {
                    obj2 = treeMap.remove(key);
                } catch (ClassCastException | NullPointerException unused) {
                    obj2 = null;
                }
                Collection collection = (Collection) obj2;
                if (collection != null) {
                    int size = collection.size();
                    collection.clear();
                    multimaps$CustomListMultimap.n -= size;
                    return true;
                }
                return true;
            }
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public class AsMapIterator implements Iterator<Map.Entry<K, Collection<V>>> {
            public final Iterator j;
            public Collection k;

            public AsMapIterator() {
                this.j = AsMap.this.l.entrySet().iterator();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.j.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry entry = (Map.Entry) this.j.next();
                this.k = (Collection) entry.getValue();
                return AsMap.this.a(entry);
            }

            @Override // java.util.Iterator
            public final void remove() {
                boolean z;
                if (this.k != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.m("no calls to next() since the last call to remove()", z);
                this.j.remove();
                AsMap.this.m.n -= this.k.size();
                this.k.clear();
                this.k = null;
            }
        }

        public AsMap(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
            this.m = multimaps$CustomListMultimap;
            this.l = sortedMap;
        }

        public final Map.Entry a(Map.Entry entry) {
            WrappedList wrappedList;
            Object key = entry.getKey();
            List list = (List) ((Collection) entry.getValue());
            boolean z = list instanceof RandomAccess;
            Multimaps$CustomListMultimap multimaps$CustomListMultimap = this.m;
            if (z) {
                wrappedList = new WrappedList(key, list, null);
            } else {
                wrappedList = new WrappedList(key, list, null);
            }
            return new ImmutableEntry(key, wrappedList);
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final void clear() {
            Multimaps$CustomListMultimap multimaps$CustomListMultimap = this.m;
            if (this.l == multimaps$CustomListMultimap.m) {
                multimaps$CustomListMultimap.f();
                return;
            }
            AsMapIterator asMapIterator = new AsMapIterator();
            while (asMapIterator.hasNext()) {
                asMapIterator.next();
                asMapIterator.remove();
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean containsKey(Object obj) {
            Map map = this.l;
            map.getClass();
            try {
                return map.containsKey(obj);
            } catch (ClassCastException | NullPointerException unused) {
                return false;
            }
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final boolean equals(Object obj) {
            if (this != obj && !this.l.equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object get(Object obj) {
            Object obj2;
            WrappedList wrappedList;
            Map map = this.l;
            map.getClass();
            try {
                obj2 = map.get(obj);
            } catch (ClassCastException | NullPointerException unused) {
                obj2 = null;
            }
            Collection collection = (Collection) obj2;
            if (collection == null) {
                return null;
            }
            List list = (List) collection;
            boolean z = list instanceof RandomAccess;
            Multimaps$CustomListMultimap multimaps$CustomListMultimap = this.m;
            if (z) {
                wrappedList = new WrappedList(obj, list, null);
            } else {
                wrappedList = new WrappedList(obj, list, null);
            }
            return wrappedList;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int hashCode() {
            return this.l.hashCode();
        }

        @Override // java.util.AbstractMap, java.util.Map
        public Set keySet() {
            Multimaps$CustomListMultimap multimaps$CustomListMultimap = this.m;
            Set set = multimaps$CustomListMultimap.j;
            if (set == null) {
                Set d = multimaps$CustomListMultimap.d();
                multimaps$CustomListMultimap.j = d;
                return d;
            }
            return set;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final Object remove(Object obj) {
            Collection collection = (Collection) this.l.remove(obj);
            if (collection == null) {
                return null;
            }
            Multimaps$CustomListMultimap multimaps$CustomListMultimap = this.m;
            List list = (List) ((MultimapBuilder.ArrayListSupplier) multimaps$CustomListMultimap.o).get();
            list.addAll(collection);
            multimaps$CustomListMultimap.n -= collection.size();
            collection.clear();
            return list;
        }

        @Override // java.util.AbstractMap, java.util.Map
        public final int size() {
            return this.l.size();
        }

        @Override // java.util.AbstractMap
        public final String toString() {
            return this.l.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public abstract class Itr<T> implements Iterator<T> {
        public final Iterator j;
        public Object k = null;
        public Collection l = null;
        public Iterator m = Iterators$EmptyModifiableIterator.j;

        public Itr() {
            this.j = AbstractMapBasedMultimap.this.m.entrySet().iterator();
        }

        public abstract Object a(Object obj, Object obj2);

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (!this.j.hasNext() && !this.m.hasNext()) {
                return false;
            }
            return true;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (!this.m.hasNext()) {
                Map.Entry entry = (Map.Entry) this.j.next();
                this.k = entry.getKey();
                Collection collection = (Collection) entry.getValue();
                this.l = collection;
                this.m = collection.iterator();
            }
            return this.m.next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            this.m.remove();
            Collection collection = this.l;
            Objects.requireNonNull(collection);
            if (collection.isEmpty()) {
                this.j.remove();
            }
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            abstractMapBasedMultimap.n--;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class KeySet extends Maps.KeySet<K, Collection<V>> {
        public final /* synthetic */ Multimaps$CustomListMultimap k;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$KeySet$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Iterator<Object> {
            public Map.Entry j;
            public final /* synthetic */ Iterator k;
            public final /* synthetic */ KeySet l;

            public AnonymousClass1(KeySet keySet, Iterator it) {
                this.k = it;
                this.l = keySet;
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                return this.k.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                Map.Entry entry = (Map.Entry) this.k.next();
                this.j = entry;
                return entry.getKey();
            }

            @Override // java.util.Iterator
            public final void remove() {
                boolean z;
                if (this.j != null) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.m("no calls to next() since the last call to remove()", z);
                Collection collection = (Collection) this.j.getValue();
                this.k.remove();
                this.l.k.n -= collection.size();
                collection.clear();
                this.j = null;
            }
        }

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public KeySet(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
            super(sortedMap);
            this.k = multimaps$CustomListMultimap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            Iterator it = iterator();
            while (true) {
                AnonymousClass1 anonymousClass1 = (AnonymousClass1) it;
                if (anonymousClass1.hasNext()) {
                    anonymousClass1.next();
                    anonymousClass1.remove();
                } else {
                    return;
                }
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean containsAll(Collection collection) {
            return this.j.keySet().containsAll(collection);
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final boolean equals(Object obj) {
            if (this != obj && !this.j.keySet().equals(obj)) {
                return false;
            }
            return true;
        }

        @Override // java.util.AbstractSet, java.util.Collection, java.util.Set
        public final int hashCode() {
            return this.j.keySet().hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new AnonymousClass1(this, this.j.entrySet().iterator());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            int i;
            Collection collection = (Collection) this.j.remove(obj);
            if (collection != null) {
                i = collection.size();
                collection.clear();
                this.k.n -= i;
            } else {
                i = 0;
            }
            if (i <= 0) {
                return false;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class RandomAccessWrappedList extends AbstractMapBasedMultimap<K, V>.WrappedList implements RandomAccess {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class SortedAsMap extends AbstractMapBasedMultimap<K, V>.AsMap implements SortedMap<K, Collection<V>> {
        public SortedSet n;
        public final /* synthetic */ Multimaps$CustomListMultimap o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SortedAsMap(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
            super(multimaps$CustomListMultimap, sortedMap);
            this.o = multimaps$CustomListMultimap;
        }

        public SortedSet b() {
            return new SortedKeySet(this.o, d());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public SortedSet keySet() {
            SortedSet sortedSet = this.n;
            if (sortedSet == null) {
                SortedSet b = b();
                this.n = b;
                return b;
            }
            return sortedSet;
        }

        @Override // java.util.SortedMap
        public final Comparator comparator() {
            return d().comparator();
        }

        public SortedMap d() {
            return (SortedMap) this.l;
        }

        @Override // java.util.SortedMap
        public final Object firstKey() {
            return d().firstKey();
        }

        public SortedMap headMap(Object obj) {
            return new SortedAsMap(this.o, d().headMap(obj));
        }

        @Override // java.util.SortedMap
        public final Object lastKey() {
            return d().lastKey();
        }

        public SortedMap subMap(Object obj, Object obj2) {
            return new SortedAsMap(this.o, d().subMap(obj, obj2));
        }

        public SortedMap tailMap(Object obj) {
            return new SortedAsMap(this.o, d().tailMap(obj));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class SortedKeySet extends AbstractMapBasedMultimap<K, V>.KeySet implements SortedSet<K> {
        public final /* synthetic */ Multimaps$CustomListMultimap l;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public SortedKeySet(Multimaps$CustomListMultimap multimaps$CustomListMultimap, SortedMap sortedMap) {
            super(multimaps$CustomListMultimap, sortedMap);
            this.l = multimaps$CustomListMultimap;
        }

        public SortedMap b() {
            return (SortedMap) this.j;
        }

        @Override // java.util.SortedSet
        public final Comparator comparator() {
            return b().comparator();
        }

        @Override // java.util.SortedSet
        public final Object first() {
            return b().firstKey();
        }

        public SortedSet headSet(Object obj) {
            return new SortedKeySet(this.l, b().headMap(obj));
        }

        @Override // java.util.SortedSet
        public final Object last() {
            return b().lastKey();
        }

        public SortedSet subSet(Object obj, Object obj2) {
            return new SortedKeySet(this.l, b().subMap(obj, obj2));
        }

        public SortedSet tailSet(Object obj) {
            return new SortedKeySet(this.l, b().tailMap(obj));
        }
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Collection e() {
        return new AbstractMultimap.Values(this);
    }

    public final void f() {
        TreeMap treeMap = this.m;
        Iterator<V> it = treeMap.values().iterator();
        while (it.hasNext()) {
            ((Collection) it.next()).clear();
        }
        treeMap.clear();
        this.n = 0;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class WrappedList extends AbstractMapBasedMultimap<K, V>.WrappedCollection implements List<V> {
        public WrappedList(Object obj, List list, WrappedCollection wrappedCollection) {
            super(obj, list, wrappedCollection);
        }

        @Override // java.util.List
        public final void add(int i, Object obj) {
            c();
            boolean isEmpty = this.k.isEmpty();
            ((List) this.k).add(i, obj);
            AbstractMapBasedMultimap.this.n++;
            if (isEmpty) {
                b();
            }
        }

        @Override // java.util.List
        public final boolean addAll(int i, Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = ((List) this.k).addAll(i, collection);
            if (addAll) {
                AbstractMapBasedMultimap.this.n += this.k.size() - size;
                if (size == 0) {
                    b();
                }
            }
            return addAll;
        }

        @Override // java.util.List
        public final Object get(int i) {
            c();
            return ((List) this.k).get(i);
        }

        @Override // java.util.List
        public final int indexOf(Object obj) {
            c();
            return ((List) this.k).indexOf(obj);
        }

        @Override // java.util.List
        public final int lastIndexOf(Object obj) {
            c();
            return ((List) this.k).lastIndexOf(obj);
        }

        @Override // java.util.List
        public final ListIterator listIterator() {
            c();
            return new WrappedListIterator();
        }

        @Override // java.util.List
        public final Object remove(int i) {
            c();
            Object remove = ((List) this.k).remove(i);
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            abstractMapBasedMultimap.n--;
            d();
            return remove;
        }

        @Override // java.util.List
        public final Object set(int i, Object obj) {
            c();
            return ((List) this.k).set(i, obj);
        }

        @Override // java.util.List
        public final List subList(int i, int i2) {
            c();
            List subList = ((List) this.k).subList(i, i2);
            WrappedCollection wrappedCollection = this.l;
            if (wrappedCollection == null) {
                wrappedCollection = this;
            }
            boolean z = subList instanceof RandomAccess;
            AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
            Object obj = this.j;
            if (z) {
                return new WrappedList(obj, subList, wrappedCollection);
            }
            return new WrappedList(obj, subList, wrappedCollection);
        }

        @Override // java.util.List
        public final ListIterator listIterator(int i) {
            c();
            return new WrappedListIterator(i);
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public class WrappedListIterator extends AbstractMapBasedMultimap<K, V>.WrappedCollection.WrappedIterator implements ListIterator<V> {
            public WrappedListIterator(int i) {
                super(WrappedList.this, ((List) WrappedList.this.k).listIterator(i));
            }

            @Override // java.util.ListIterator
            public final void add(Object obj) {
                WrappedList wrappedList = WrappedList.this;
                boolean isEmpty = wrappedList.isEmpty();
                b().add(obj);
                AbstractMapBasedMultimap.this.n++;
                if (isEmpty) {
                    wrappedList.b();
                }
            }

            public final ListIterator b() {
                a();
                return (ListIterator) this.j;
            }

            @Override // java.util.ListIterator
            public final boolean hasPrevious() {
                return b().hasPrevious();
            }

            @Override // java.util.ListIterator
            public final int nextIndex() {
                return b().nextIndex();
            }

            @Override // java.util.ListIterator
            public final Object previous() {
                return b().previous();
            }

            @Override // java.util.ListIterator
            public final int previousIndex() {
                return b().previousIndex();
            }

            @Override // java.util.ListIterator
            public final void set(Object obj) {
                b().set(obj);
            }

            public WrappedListIterator() {
                super();
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class NavigableAsMap extends AbstractMapBasedMultimap<K, V>.SortedAsMap implements NavigableMap<K, Collection<V>> {
        public final /* synthetic */ Multimaps$CustomListMultimap p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigableAsMap(Multimaps$CustomListMultimap multimaps$CustomListMultimap, NavigableMap navigableMap) {
            super(multimaps$CustomListMultimap, navigableMap);
            this.p = multimaps$CustomListMultimap;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        public final SortedSet b() {
            return new NavigableKeySet(this.p, d());
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        /* renamed from: c */
        public final SortedSet keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry ceilingEntry(Object obj) {
            Map.Entry<K, V> ceilingEntry = d().ceilingEntry(obj);
            if (ceilingEntry == null) {
                return null;
            }
            return a(ceilingEntry);
        }

        @Override // java.util.NavigableMap
        public final Object ceilingKey(Object obj) {
            return d().ceilingKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet descendingKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final NavigableMap descendingMap() {
            return new NavigableAsMap(this.p, d().descendingMap());
        }

        public final Map.Entry e(Iterator it) {
            if (!it.hasNext()) {
                return null;
            }
            Map.Entry entry = (Map.Entry) it.next();
            List list = (List) ((MultimapBuilder.ArrayListSupplier) this.p.o).get();
            list.addAll((Collection) entry.getValue());
            it.remove();
            return new ImmutableEntry(entry.getKey(), Collections.unmodifiableList(list));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap
        /* renamed from: f, reason: merged with bridge method [inline-methods] */
        public final NavigableMap d() {
            return (NavigableMap) ((SortedMap) this.l);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry firstEntry() {
            Map.Entry<K, V> firstEntry = d().firstEntry();
            if (firstEntry == null) {
                return null;
            }
            return a(firstEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry floorEntry(Object obj) {
            Map.Entry<K, V> floorEntry = d().floorEntry(obj);
            if (floorEntry == null) {
                return null;
            }
            return a(floorEntry);
        }

        @Override // java.util.NavigableMap
        public final Object floorKey(Object obj) {
            return d().floorKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableMap headMap(Object obj, boolean z) {
            return new NavigableAsMap(this.p, d().headMap(obj, z));
        }

        @Override // java.util.NavigableMap
        public final Map.Entry higherEntry(Object obj) {
            Map.Entry<K, V> higherEntry = d().higherEntry(obj);
            if (higherEntry == null) {
                return null;
            }
            return a(higherEntry);
        }

        @Override // java.util.NavigableMap
        public final Object higherKey(Object obj) {
            return d().higherKey(obj);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, com.google.common.collect.AbstractMapBasedMultimap.AsMap, java.util.AbstractMap, java.util.Map
        public final Set keySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lastEntry() {
            Map.Entry<K, V> lastEntry = d().lastEntry();
            if (lastEntry == null) {
                return null;
            }
            return a(lastEntry);
        }

        @Override // java.util.NavigableMap
        public final Map.Entry lowerEntry(Object obj) {
            Map.Entry<K, V> lowerEntry = d().lowerEntry(obj);
            if (lowerEntry == null) {
                return null;
            }
            return a(lowerEntry);
        }

        @Override // java.util.NavigableMap
        public final Object lowerKey(Object obj) {
            return d().lowerKey(obj);
        }

        @Override // java.util.NavigableMap
        public final NavigableSet navigableKeySet() {
            return (NavigableSet) super.keySet();
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollFirstEntry() {
            return e(((AsMap.AsMapEntries) entrySet()).iterator());
        }

        @Override // java.util.NavigableMap
        public final Map.Entry pollLastEntry() {
            return e(((AsMap.AsMapEntries) ((Maps.ViewCachingAbstractMap) descendingMap()).entrySet()).iterator());
        }

        @Override // java.util.NavigableMap
        public final NavigableMap subMap(Object obj, boolean z, Object obj2, boolean z2) {
            return new NavigableAsMap(this.p, d().subMap(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableMap
        public final NavigableMap tailMap(Object obj, boolean z) {
            return new NavigableAsMap(this.p, d().tailMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap headMap(Object obj) {
            return headMap(obj, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap subMap(Object obj, Object obj2) {
            return subMap(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedAsMap, java.util.SortedMap, java.util.NavigableMap
        public final SortedMap tailMap(Object obj) {
            return tailMap(obj, true);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class NavigableKeySet extends AbstractMapBasedMultimap<K, V>.SortedKeySet implements NavigableSet<K> {
        public final /* synthetic */ Multimaps$CustomListMultimap m;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public NavigableKeySet(Multimaps$CustomListMultimap multimaps$CustomListMultimap, NavigableMap navigableMap) {
            super(multimaps$CustomListMultimap, navigableMap);
            this.m = multimaps$CustomListMultimap;
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet
        /* renamed from: c, reason: merged with bridge method [inline-methods] */
        public final NavigableMap b() {
            return (NavigableMap) ((SortedMap) this.j);
        }

        @Override // java.util.NavigableSet
        public final Object ceiling(Object obj) {
            return b().ceilingKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Iterator descendingIterator() {
            return ((KeySet) descendingSet()).iterator();
        }

        @Override // java.util.NavigableSet
        public final NavigableSet descendingSet() {
            return new NavigableKeySet(this.m, b().descendingMap());
        }

        @Override // java.util.NavigableSet
        public final Object floor(Object obj) {
            return b().floorKey(obj);
        }

        @Override // java.util.NavigableSet
        public final NavigableSet headSet(Object obj, boolean z) {
            return new NavigableKeySet(this.m, b().headMap(obj, z));
        }

        @Override // java.util.NavigableSet
        public final Object higher(Object obj) {
            return b().higherKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object lower(Object obj) {
            return b().lowerKey(obj);
        }

        @Override // java.util.NavigableSet
        public final Object pollFirst() {
            KeySet.AnonymousClass1 anonymousClass1 = (KeySet.AnonymousClass1) iterator();
            if (anonymousClass1.hasNext()) {
                Object next = anonymousClass1.next();
                anonymousClass1.remove();
                return next;
            }
            return null;
        }

        @Override // java.util.NavigableSet
        public final Object pollLast() {
            Iterator descendingIterator = descendingIterator();
            if (descendingIterator.hasNext()) {
                Object next = descendingIterator.next();
                descendingIterator.remove();
                return next;
            }
            return null;
        }

        @Override // java.util.NavigableSet
        public final NavigableSet subSet(Object obj, boolean z, Object obj2, boolean z2) {
            return new NavigableKeySet(this.m, b().subMap(obj, z, obj2, z2));
        }

        @Override // java.util.NavigableSet
        public final NavigableSet tailSet(Object obj, boolean z) {
            return new NavigableKeySet(this.m, b().tailMap(obj, z));
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet headSet(Object obj) {
            return headSet(obj, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet subSet(Object obj, Object obj2) {
            return subSet(obj, true, obj2, false);
        }

        @Override // com.google.common.collect.AbstractMapBasedMultimap.SortedKeySet, java.util.SortedSet, java.util.NavigableSet
        public final SortedSet tailSet(Object obj) {
            return tailSet(obj, true);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class WrappedCollection extends AbstractCollection<V> {
        public final Object j;
        public Collection k;
        public final WrappedCollection l;
        public final Collection m;

        public WrappedCollection(Object obj, List list, WrappedCollection wrappedCollection) {
            Collection collection;
            this.j = obj;
            this.k = list;
            this.l = wrappedCollection;
            if (wrappedCollection == null) {
                collection = null;
            } else {
                collection = wrappedCollection.k;
            }
            this.m = collection;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(Object obj) {
            c();
            boolean isEmpty = this.k.isEmpty();
            boolean add = this.k.add(obj);
            if (add) {
                AbstractMapBasedMultimap.this.n++;
                if (isEmpty) {
                    b();
                }
            }
            return add;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean addAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean addAll = this.k.addAll(collection);
            if (addAll) {
                AbstractMapBasedMultimap.this.n += this.k.size() - size;
                if (size == 0) {
                    b();
                }
            }
            return addAll;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void b() {
            WrappedCollection wrappedCollection = this.l;
            if (wrappedCollection != null) {
                wrappedCollection.b();
            } else {
                AbstractMapBasedMultimap.this.m.put(this.j, this.k);
            }
        }

        public final void c() {
            Collection collection;
            WrappedCollection wrappedCollection = this.l;
            if (wrappedCollection != null) {
                wrappedCollection.c();
                if (wrappedCollection.k != this.m) {
                    u2.d();
                    return;
                }
                return;
            }
            if (this.k.isEmpty() && (collection = (Collection) AbstractMapBasedMultimap.this.m.get(this.j)) != null) {
                this.k = collection;
            }
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            int size = size();
            if (size == 0) {
                return;
            }
            this.k.clear();
            AbstractMapBasedMultimap.this.n -= size;
            d();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            c();
            return this.k.contains(obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean containsAll(Collection collection) {
            c();
            return this.k.containsAll(collection);
        }

        public final void d() {
            WrappedCollection wrappedCollection = this.l;
            if (wrappedCollection != null) {
                wrappedCollection.d();
            } else if (this.k.isEmpty()) {
                AbstractMapBasedMultimap.this.m.remove(this.j);
            }
        }

        @Override // java.util.Collection
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            c();
            return this.k.equals(obj);
        }

        @Override // java.util.Collection
        public final int hashCode() {
            c();
            return this.k.hashCode();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            c();
            return new WrappedIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean remove(Object obj) {
            c();
            boolean remove = this.k.remove(obj);
            if (remove) {
                AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
                abstractMapBasedMultimap.n--;
                d();
            }
            return remove;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean removeAll(Collection collection) {
            if (collection.isEmpty()) {
                return false;
            }
            int size = size();
            boolean removeAll = this.k.removeAll(collection);
            if (removeAll) {
                AbstractMapBasedMultimap.this.n += this.k.size() - size;
                d();
            }
            return removeAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean retainAll(Collection collection) {
            collection.getClass();
            int size = size();
            boolean retainAll = this.k.retainAll(collection);
            if (retainAll) {
                AbstractMapBasedMultimap.this.n += this.k.size() - size;
                d();
            }
            return retainAll;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            c();
            return this.k.size();
        }

        @Override // java.util.AbstractCollection
        public final String toString() {
            c();
            return this.k.toString();
        }

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public class WrappedIterator implements Iterator<V> {
            public final Iterator j;
            public final Collection k;

            public WrappedIterator() {
                Iterator it;
                Collection collection = WrappedCollection.this.k;
                this.k = collection;
                if (collection instanceof List) {
                    it = ((List) collection).listIterator();
                } else {
                    it = collection.iterator();
                }
                this.j = it;
            }

            public final void a() {
                WrappedCollection wrappedCollection = WrappedCollection.this;
                wrappedCollection.c();
                if (wrappedCollection.k == this.k) {
                    return;
                }
                u2.d();
            }

            @Override // java.util.Iterator
            public final boolean hasNext() {
                a();
                return this.j.hasNext();
            }

            @Override // java.util.Iterator
            public final Object next() {
                a();
                return this.j.next();
            }

            @Override // java.util.Iterator
            public final void remove() {
                this.j.remove();
                WrappedCollection wrappedCollection = WrappedCollection.this;
                AbstractMapBasedMultimap abstractMapBasedMultimap = AbstractMapBasedMultimap.this;
                abstractMapBasedMultimap.n--;
                wrappedCollection.d();
            }

            public WrappedIterator(WrappedList wrappedList, ListIterator listIterator) {
                WrappedCollection.this = wrappedList;
                this.k = wrappedList.k;
                this.j = listIterator;
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.common.collect.AbstractMapBasedMultimap$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends AbstractMapBasedMultimap<Object, Object>.Itr<Object> {
        @Override // com.google.common.collect.AbstractMapBasedMultimap.Itr
        public final Object a(Object obj, Object obj2) {
            return obj2;
        }
    }
}
