package androidx.collection;

import java.util.Collection;
import java.util.Map;
import java.util.Set;
import java.util.function.BiFunction;
import java.util.function.Function;
import kotlin.jvm.internal.markers.KMappedMarker;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MapWrapper<K, V> implements Map<K, V>, KMappedMarker {
    public final ScatterMap j;
    public Entries k;
    public Keys l;
    public Values m;

    public MapWrapper(ScatterMap scatterMap) {
        this.j = scatterMap;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object compute(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object computeIfAbsent(Object obj, Function function) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object computeIfPresent(Object obj, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        return this.j.c(obj);
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return this.j.d(obj);
    }

    @Override // java.util.Map
    public final Set entrySet() {
        Entries entries = this.k;
        if (entries != null) {
            return entries;
        }
        Entries entries2 = new Entries(this.j);
        this.k = entries2;
        return entries2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            return this.j.equals(((MapWrapper) obj).j);
        }
        return false;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        return this.j.e(obj);
    }

    @Override // java.util.Map
    public final int hashCode() {
        return this.j.hashCode();
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        return this.j.f();
    }

    @Override // java.util.Map
    public final Set keySet() {
        Keys keys = this.l;
        if (keys != null) {
            return keys;
        }
        Keys keys2 = new Keys(this.j);
        this.l = keys2;
        return keys2;
    }

    @Override // java.util.Map
    public final Object merge(Object obj, Object obj2, BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object putIfAbsent(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final Object replace(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final void replaceAll(BiFunction biFunction) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final int size() {
        return this.j.e;
    }

    public final String toString() {
        return this.j.toString();
    }

    @Override // java.util.Map
    public final Collection values() {
        Values values = this.m;
        if (values != null) {
            return values;
        }
        Values values2 = new Values(this.j);
        this.m = values2;
        return values2;
    }

    @Override // java.util.Map
    public final boolean remove(Object obj, Object obj2) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // java.util.Map
    public final boolean replace(Object obj, Object obj2, Object obj3) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
