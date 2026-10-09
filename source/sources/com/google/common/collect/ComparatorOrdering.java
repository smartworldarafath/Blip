package com.google.common.collect;

import defpackage.v1;
import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ComparatorOrdering<T> extends Ordering<T> implements Serializable {
    public final v1 j;

    public ComparatorOrdering(v1 v1Var) {
        this.j = v1Var;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        return this.j.compare(obj, obj2);
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if ((obj instanceof ComparatorOrdering) && this.j == ((ComparatorOrdering) obj).j) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final String toString() {
        return this.j.toString();
    }
}
