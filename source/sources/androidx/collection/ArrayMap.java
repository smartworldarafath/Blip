package androidx.collection;

import defpackage.k8;
import defpackage.u2;
import io.sentry.d;
import java.lang.reflect.Array;
import java.util.AbstractSet;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ArrayMap<K, V> extends SimpleArrayMap<K, V> implements Map<K, V> {
    public EntrySet m;
    public KeySet n;
    public ValueCollection o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class EntrySet extends AbstractSet<Map.Entry<K, V>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new MapIterator();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return ArrayMap.this.l;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class KeyIterator extends IndexBasedArrayIterator<K> {
        public KeyIterator() {
            super(ArrayMap.this.l);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final Object a(int i) {
            return ArrayMap.this.e(i);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final void b(int i) {
            ArrayMap.this.f(i);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class MapIterator implements Iterator<Map.Entry<K, V>>, Map.Entry<K, V> {
        public int j;
        public int k = -1;
        public boolean l;

        public MapIterator() {
            this.j = ArrayMap.this.l - 1;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this.l) {
                if (obj instanceof Map.Entry) {
                    Map.Entry entry = (Map.Entry) obj;
                    Object key = entry.getKey();
                    int i = this.k;
                    ArrayMap arrayMap = ArrayMap.this;
                    if (Intrinsics.a(key, arrayMap.e(i)) && Intrinsics.a(entry.getValue(), arrayMap.h(this.k))) {
                        return true;
                    }
                }
                return false;
            }
            u2.l("This container does not support retaining Map.Entry objects");
            return false;
        }

        @Override // java.util.Map.Entry
        public final Object getKey() {
            if (this.l) {
                return ArrayMap.this.e(this.k);
            }
            u2.l("This container does not support retaining Map.Entry objects");
            return null;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            if (this.l) {
                return ArrayMap.this.h(this.k);
            }
            u2.l("This container does not support retaining Map.Entry objects");
            return null;
        }

        @Override // java.util.Iterator
        public final boolean hasNext() {
            if (this.k < this.j) {
                return true;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            int hashCode;
            int i = 0;
            if (this.l) {
                int i2 = this.k;
                ArrayMap arrayMap = ArrayMap.this;
                Object e = arrayMap.e(i2);
                Object h = arrayMap.h(this.k);
                if (e == null) {
                    hashCode = 0;
                } else {
                    hashCode = e.hashCode();
                }
                if (h != null) {
                    i = h.hashCode();
                }
                return hashCode ^ i;
            }
            u2.l("This container does not support retaining Map.Entry objects");
            return 0;
        }

        @Override // java.util.Iterator
        public final Object next() {
            if (hasNext()) {
                this.k++;
                this.l = true;
                return this;
            }
            k8.o();
            return null;
        }

        @Override // java.util.Iterator
        public final void remove() {
            if (this.l) {
                ArrayMap.this.f(this.k);
                this.k--;
                this.j--;
                this.l = false;
                return;
            }
            d.d();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            if (this.l) {
                return ArrayMap.this.g(this.k, obj);
            }
            u2.l("This container does not support retaining Map.Entry objects");
            return null;
        }

        public final String toString() {
            return getKey() + "=" + getValue();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ValueIterator extends IndexBasedArrayIterator<V> {
        public ValueIterator() {
            super(ArrayMap.this.l);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final Object a(int i) {
            return ArrayMap.this.h(i);
        }

        @Override // androidx.collection.IndexBasedArrayIterator
        public final void b(int i) {
            ArrayMap.this.f(i);
        }
    }

    @Override // java.util.Map
    public final Set entrySet() {
        EntrySet entrySet = this.m;
        if (entrySet == null) {
            EntrySet entrySet2 = new EntrySet();
            this.m = entrySet2;
            return entrySet2;
        }
        return entrySet;
    }

    public final boolean i(Collection collection) {
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (!super.containsKey(it.next())) {
                return false;
            }
        }
        return true;
    }

    public final boolean j(Collection collection) {
        int i = this.l;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            super.remove(it.next());
        }
        if (i != this.l) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final Set keySet() {
        KeySet keySet = this.n;
        if (keySet == null) {
            KeySet keySet2 = new KeySet();
            this.n = keySet2;
            return keySet2;
        }
        return keySet;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        int size = map.size() + this.l;
        int i = this.l;
        int[] iArr = this.j;
        if (iArr.length < size) {
            this.j = Arrays.copyOf(iArr, size);
            this.k = Arrays.copyOf(this.k, size * 2);
        }
        if (this.l != i) {
            u2.d();
        }
        for (Map.Entry<K, V> entry : map.entrySet()) {
            put(entry.getKey(), entry.getValue());
        }
    }

    @Override // java.util.Map
    public final Collection values() {
        ValueCollection valueCollection = this.o;
        if (valueCollection == null) {
            ValueCollection valueCollection2 = new ValueCollection();
            this.o = valueCollection2;
            return valueCollection2;
        }
        return valueCollection;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class KeySet implements Set<K> {
        public KeySet() {
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Set, java.util.Collection
        public final void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean contains(Object obj) {
            return ArrayMap.this.containsKey(obj);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean containsAll(Collection collection) {
            return ArrayMap.this.i(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean equals(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            if (this != obj) {
                if (obj instanceof Set) {
                    Set set = (Set) obj;
                    try {
                        if (arrayMap.l == set.size()) {
                            if (arrayMap.i(set)) {
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

        @Override // java.util.Set, java.util.Collection
        public final int hashCode() {
            int hashCode;
            ArrayMap arrayMap = ArrayMap.this;
            int i = 0;
            for (int i2 = arrayMap.l - 1; i2 >= 0; i2--) {
                Object e = arrayMap.e(i2);
                if (e == null) {
                    hashCode = 0;
                } else {
                    hashCode = e.hashCode();
                }
                i += hashCode;
            }
            return i;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Set, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new KeyIterator();
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean remove(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            int c = arrayMap.c(obj);
            if (c >= 0) {
                arrayMap.f(c);
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean removeAll(Collection collection) {
            return ArrayMap.this.j(collection);
        }

        @Override // java.util.Set, java.util.Collection
        public final boolean retainAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.l;
            for (int i2 = i - 1; i2 >= 0; i2--) {
                if (!collection.contains(arrayMap.e(i2))) {
                    arrayMap.f(i2);
                }
            }
            if (i != arrayMap.l) {
                return true;
            }
            return false;
        }

        @Override // java.util.Set, java.util.Collection
        public final int size() {
            return ArrayMap.this.l;
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.l;
            if (objArr.length < i) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
            }
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.e(i2);
            }
            if (objArr.length > i) {
                objArr[i] = null;
            }
            return objArr;
        }

        @Override // java.util.Set, java.util.Collection
        public final Object[] toArray() {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.l;
            Object[] objArr = new Object[i];
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.e(i2);
            }
            return objArr;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ValueCollection implements Collection<V> {
        public ValueCollection() {
        }

        @Override // java.util.Collection
        public final boolean add(Object obj) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final boolean addAll(Collection collection) {
            throw new UnsupportedOperationException();
        }

        @Override // java.util.Collection
        public final void clear() {
            ArrayMap.this.clear();
        }

        @Override // java.util.Collection
        public final boolean contains(Object obj) {
            if (ArrayMap.this.a(obj) >= 0) {
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public final boolean containsAll(Collection collection) {
            Iterator it = collection.iterator();
            while (it.hasNext()) {
                if (!contains(it.next())) {
                    return false;
                }
            }
            return true;
        }

        @Override // java.util.Collection
        public final boolean isEmpty() {
            return ArrayMap.this.isEmpty();
        }

        @Override // java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new ValueIterator();
        }

        @Override // java.util.Collection
        public final boolean remove(Object obj) {
            ArrayMap arrayMap = ArrayMap.this;
            int a = arrayMap.a(obj);
            if (a >= 0) {
                arrayMap.f(a);
                return true;
            }
            return false;
        }

        @Override // java.util.Collection
        public final boolean removeAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.l;
            int i2 = 0;
            boolean z = false;
            while (i2 < i) {
                if (collection.contains(arrayMap.h(i2))) {
                    arrayMap.f(i2);
                    i2--;
                    i--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final boolean retainAll(Collection collection) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.l;
            int i2 = 0;
            boolean z = false;
            while (i2 < i) {
                if (!collection.contains(arrayMap.h(i2))) {
                    arrayMap.f(i2);
                    i2--;
                    i--;
                    z = true;
                }
                i2++;
            }
            return z;
        }

        @Override // java.util.Collection
        public final int size() {
            return ArrayMap.this.l;
        }

        @Override // java.util.Collection
        public final Object[] toArray(Object[] objArr) {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.l;
            if (objArr.length < i) {
                objArr = (Object[]) Array.newInstance(objArr.getClass().getComponentType(), i);
            }
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.h(i2);
            }
            if (objArr.length > i) {
                objArr[i] = null;
            }
            return objArr;
        }

        @Override // java.util.Collection
        public final Object[] toArray() {
            ArrayMap arrayMap = ArrayMap.this;
            int i = arrayMap.l;
            Object[] objArr = new Object[i];
            for (int i2 = 0; i2 < i; i2++) {
                objArr[i2] = arrayMap.h(i2);
            }
            return objArr;
        }
    }
}
