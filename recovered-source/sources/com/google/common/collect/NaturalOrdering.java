package com.google.common.collect;

import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NaturalOrdering extends Ordering<Comparable<?>> implements Serializable {
    public static final NaturalOrdering j = new Object();

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    @Override // com.google.common.collect.Ordering
    public final Ordering e() {
        return ReverseNaturalOrdering.j;
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
