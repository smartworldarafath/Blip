package androidx.datastore.preferences.protobuf;

import defpackage.u2;
import java.lang.Comparable;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.SortedMap;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SmallSortedMap<K extends Comparable<K>, V> extends AbstractMap<K, V> {
    public static final /* synthetic */ int o = 0;
    public List j;
    public Map k;
    public boolean l;
    public volatile EntrySet m;
    public Map n;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: androidx.datastore.preferences.protobuf.SmallSortedMap$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends SmallSortedMap<Object, Object> {
        @Override // java.util.AbstractMap, java.util.Map
        public final /* bridge */ /* synthetic */ Object put(Object obj, Object obj2) {
            return g((Comparable) obj, obj2);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class Entry implements Map.Entry<K, V>, Comparable<SmallSortedMap<K, V>.Entry> {
        public final Comparable j;
        public Object k;

        public Entry(Comparable comparable, Object obj) {
            this.j = comparable;
            this.k = obj;
        }

        @Override // java.lang.Comparable
        public final int compareTo(Object obj) {
            return this.j.compareTo(((Entry) obj).j);
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            boolean equals;
            boolean equals2;
            if (obj != this) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    Comparable comparable = this.j;
                    if (comparable == null) {
                        if (key == null) {
                            equals = true;
                        } else {
                            equals = false;
                        }
                    } else {
                        equals = comparable.equals(key);
                    }
                    if (equals) {
                        Object obj2 = this.k;
                        Object value = entry.getValue();
                        if (obj2 == null) {
                            if (value == null) {
                                equals2 = true;
                            } else {
                                equals2 = false;
                            }
                        } else {
                            equals2 = obj2.equals(value);
                        }
                        if (equals2) {
                        }
                    }
                }
                return false;
            }
            return true;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            return this.j;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.k;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int hashCode;
            int i = 0;
            Comparable comparable = this.j;
            if (comparable == null) {
                hashCode = 0;
            } else {
                hashCode = comparable.hashCode();
            }
            Object obj = this.k;
            if (obj != null) {
                i = obj.hashCode();
            }
            return hashCode ^ i;
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            int i = SmallSortedMap.o;
            SmallSortedMap.this.b();
            Object obj2 = this.k;
            this.k = obj;
            return obj2;
        }

        public final String toString() {
            return this.j + "=" + this.k;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class EntryIterator implements Iterator<Map.Entry<K, V>> {
        public int j = -1;
        public boolean k;
        public Iterator l;

        public EntryIterator() {
        }

        public final Iterator a() {
            if (this.l == null) {
                this.l = SmallSortedMap.this.k.entrySet().iterator();
            }
            return this.l;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            int i = this.j + 1;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            if (i < smallSortedMap.j.size() || (!smallSortedMap.k.isEmpty() && a().hasNext())) {
                return true;
            }
            return false;
        }

        @Override // java.util.Iterator
        public final Object next() {
            this.k = true;
            int i = this.j + 1;
            this.j = i;
            SmallSortedMap smallSortedMap = SmallSortedMap.this;
            if (i < smallSortedMap.j.size()) {
                return (Map.Entry) smallSortedMap.j.get(this.j);
            }
            return (Map.Entry) a().next();
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.k) {
                this.k = false;
                int i = SmallSortedMap.o;
                SmallSortedMap smallSortedMap = SmallSortedMap.this;
                smallSortedMap.b();
                if (this.j < smallSortedMap.j.size()) {
                    int i2 = this.j;
                    this.j = i2 - 1;
                    smallSortedMap.h(i2);
                    return;
                }
                a().remove();
                return;
            }
            u2.l("remove() was called before next()");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (!contains(entry)) {
                SmallSortedMap.this.g((Comparable) entry.getKey(), entry.getValue());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final void clear() {
            SmallSortedMap.this.clear();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            Object obj2 = SmallSortedMap.this.get(entry.getKey());
            Object value = entry.getValue();
            if (obj2 != value) {
                if (obj2 == null || !obj2.equals(value)) {
                    return false;
                }
                return true;
            }
            return true;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new EntryIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            Map.Entry entry = (Map.Entry) obj;
            if (contains(entry)) {
                SmallSortedMap.this.remove(entry.getKey());
                return true;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return SmallSortedMap.this.size();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.util.AbstractMap, androidx.datastore.preferences.protobuf.SmallSortedMap, androidx.datastore.preferences.protobuf.SmallSortedMap$1] */
    public static AnonymousClass1 f() {
        ?? abstractMap = new AbstractMap();
        abstractMap.j = Collections.EMPTY_LIST;
        Map map = Collections.EMPTY_MAP;
        abstractMap.k = map;
        abstractMap.n = map;
        return abstractMap;
    }

    public final int a(Comparable comparable) {
        int i;
        int size = this.j.size();
        int i2 = size - 1;
        if (i2 >= 0) {
            int compareTo = comparable.compareTo(((Entry) this.j.get(i2)).j);
            if (compareTo > 0) {
                i = size + 1;
                return -i;
            }
            if (compareTo == 0) {
                return i2;
            }
        }
        int i3 = 0;
        while (i3 <= i2) {
            int i4 = (i3 + i2) / 2;
            int compareTo2 = comparable.compareTo(((Entry) this.j.get(i4)).j);
            if (compareTo2 < 0) {
                i2 = i4 - 1;
            } else if (compareTo2 > 0) {
                i3 = i4 + 1;
            } else {
                return i4;
            }
        }
        i = i3 + 1;
        return -i;
    }

    public final void b() {
        if (!this.l) {
        } else {
            throw new UnsupportedOperationException();
        }
    }

    public final Map.Entry c(int i) {
        return (Map.Entry) this.j.get(i);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final void clear() {
        b();
        if (!this.j.isEmpty()) {
            this.j.clear();
        }
        if (!this.k.isEmpty()) {
            this.k.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean containsKey(Object obj) {
        Comparable comparable = (Comparable) obj;
        if (a(comparable) < 0 && !this.k.containsKey(comparable)) {
            return false;
        }
        return true;
    }

    public final Set d() {
        Set entrySet;
        if (this.k.isEmpty()) {
            entrySet = Collections.EMPTY_SET;
        } else {
            entrySet = this.k.entrySet();
        }
        return entrySet;
    }

    public final SortedMap e() {
        b();
        if (this.k.isEmpty() && !(this.k instanceof TreeMap)) {
            TreeMap treeMap = new TreeMap();
            this.k = treeMap;
            this.n = treeMap.descendingMap();
        }
        return (SortedMap) this.k;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Set entrySet() {
        if (this.m == null) {
            this.m = new EntrySet();
        }
        return this.m;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof SmallSortedMap)) {
                return super.equals(obj);
            }
            SmallSortedMap smallSortedMap = (SmallSortedMap) obj;
            int size = size();
            if (size == smallSortedMap.size()) {
                int size2 = this.j.size();
                if (size2 != smallSortedMap.j.size()) {
                    return ((AbstractSet) entrySet()).equals(smallSortedMap.entrySet());
                }
                for (int i = 0; i < size2; i++) {
                    if (c(i).equals(smallSortedMap.c(i))) {
                    }
                }
                if (size2 != size) {
                    return this.k.equals(smallSortedMap.k);
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Object g(Comparable comparable, Object obj) {
        b();
        int a = a(comparable);
        if (a >= 0) {
            return ((Entry) this.j.get(a)).setValue(obj);
        }
        b();
        if (this.j.isEmpty() && !(this.j instanceof ArrayList)) {
            this.j = new ArrayList(16);
        }
        int i = -(a + 1);
        if (i >= 16) {
            return e().put(comparable, obj);
        }
        if (this.j.size() == 16) {
            Entry entry = (Entry) this.j.remove(15);
            e().put(entry.j, entry.k);
        }
        this.j.add(i, new Entry(comparable, obj));
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object get(Object obj) {
        Comparable comparable = (Comparable) obj;
        int a = a(comparable);
        if (a >= 0) {
            return ((Entry) this.j.get(a)).k;
        }
        return this.k.get(comparable);
    }

    public final Object h(int i) {
        b();
        Object obj = ((Entry) this.j.remove(i)).k;
        if (!this.k.isEmpty()) {
            Iterator it = e().entrySet().iterator();
            List list = this.j;
            Map.Entry entry = (Map.Entry) it.next();
            list.add(new Entry((Comparable) entry.getKey(), entry.getValue()));
            it.remove();
        }
        return obj;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int hashCode() {
        int size = this.j.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            i += ((Entry) this.j.get(i2)).hashCode();
        }
        if (this.k.size() > 0) {
            return this.k.hashCode() + i;
        }
        return i;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final Object remove(Object obj) {
        b();
        Comparable comparable = (Comparable) obj;
        int a = a(comparable);
        if (a >= 0) {
            return h(a);
        }
        if (this.k.isEmpty()) {
            return null;
        }
        return this.k.remove(comparable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public final int size() {
        return this.k.size() + this.j.size();
    }
}
