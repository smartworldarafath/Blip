package com.google.common.collect;

import java.io.Serializable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
class ImmutableEntry<K, V> extends AbstractMapEntry<K, V> implements Serializable {
    public final Object j;
    public final Object k;

    public ImmutableEntry(Object obj, Object obj2) {
        this.j = obj;
        this.k = obj2;
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
    public final Object setValue(Object obj) {
        throw new UnsupportedOperationException();
    }
}
