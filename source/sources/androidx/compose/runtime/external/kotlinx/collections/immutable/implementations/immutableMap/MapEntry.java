package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap;

import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MapEntry<K, V> implements Map.Entry<K, V>, KMappedMarker {
    public final Object j;
    public final Object k;

    public MapEntry(Object obj, Object obj2) {
        this.j = obj;
        this.k = obj2;
    }

    @Override // java.util.Map.Entry
    public final boolean equals(Object obj) {
        Map.Entry entry;
        if (obj instanceof Map.Entry) {
            entry = (Map.Entry) obj;
        } else {
            entry = null;
        }
        if (entry != null && Intrinsics.a(entry.getKey(), this.j) && Intrinsics.a(entry.getValue(), getValue())) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map.Entry
    public final Object getKey() {
        return this.j;
    }

    @Override // java.util.Map.Entry
    public Object getValue() {
        return this.k;
    }

    @Override // java.util.Map.Entry
    public final int hashCode() {
        int i;
        int i2 = 0;
        Object obj = this.j;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        Object value = getValue();
        if (value != null) {
            i2 = value.hashCode();
        }
        return i ^ i2;
    }

    @Override // java.util.Map.Entry
    public Object setValue(Object obj) {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    public final String toString() {
        return this.j + "=" + getValue();
    }
}
