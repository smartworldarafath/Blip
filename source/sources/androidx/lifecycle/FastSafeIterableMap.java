package androidx.lifecycle;

import androidx.collection.MutableScatterMap;
import androidx.lifecycle.LifecycleRegistry;
import java.util.Map;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FastSafeIterableMap<K, V> {
    public final MutableScatterMap a = new MutableScatterMap();
    public Entry b;
    public Entry c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Entry<K, V> implements Map.Entry<K, V>, KMappedMarker {
        public final Object j;
        public final LifecycleRegistry.ObserverWithState k;
        public Entry l;
        public Entry m;
        public boolean n;

        public Entry(LifecycleObserver lifecycleObserver, LifecycleRegistry.ObserverWithState observerWithState) {
            this.j = lifecycleObserver;
            this.k = observerWithState;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj instanceof Entry) {
                Entry entry = (Entry) obj;
                if (Intrinsics.a(this.j, entry.j) && this.k == entry.k) {
                    return true;
                }
                return false;
            }
            return false;
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
            Object obj = this.j;
            if (obj == null) {
                hashCode = 0;
            } else {
                hashCode = obj.hashCode();
            }
            return this.k.hashCode() + (hashCode * 31);
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final String toString() {
            return "Entry(key=" + this.j + ", value=" + this.k + ")";
        }
    }
}
