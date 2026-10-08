package com.squareup.wire.internal;

import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.RandomAccess;
import kotlin.collections.AbstractList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ImmutableList<T> extends AbstractList<T> implements RandomAccess, Serializable {
    public final ArrayList j;

    public ImmutableList(List list) {
        list.getClass();
        this.j = new ArrayList(list);
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.j.size();
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        return this.j.get(i);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection, java.util.List
    public final Object[] toArray() {
        return this.j.toArray(new Object[0]);
    }
}
