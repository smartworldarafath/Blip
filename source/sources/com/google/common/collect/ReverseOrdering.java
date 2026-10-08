package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReverseOrdering<T> extends Ordering<T> implements Serializable {
    public final Ordering j;

    public ReverseOrdering(Ordering ordering) {
        this.j = ordering;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.j.compare(obj2, obj);
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering e() {
        return this.j;
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof ReverseOrdering) {
            return this.j.equals(((ReverseOrdering) obj).j);
        }
        return false;
    }

    public final int hashCode() {
        return -this.j.hashCode();
    }

    public final String toString() {
        return this.j + ".reverse()";
    }
}
