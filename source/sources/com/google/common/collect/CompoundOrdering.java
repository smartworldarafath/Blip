package com.google.common.collect;

import defpackage.q;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Comparator;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CompoundOrdering<T> extends Ordering<T> implements Serializable {
    public final Comparator[] j;

    public CompoundOrdering(Ordering ordering, Comparator comparator) {
        this.j = new Comparator[]{ordering, comparator};
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int i = 0;
        while (true) {
            Comparator[] comparatorArr = this.j;
            if (i >= comparatorArr.length) {
                return 0;
            }
            int compare = comparatorArr[i].compare(obj, obj2);
            if (compare != 0) {
                return compare;
            }
            i++;
        }
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof CompoundOrdering) {
            return Arrays.equals(this.j, ((CompoundOrdering) obj).j);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(this.j);
    }

    public final String toString() {
        return q.l(new StringBuilder("Ordering.compound("), Arrays.toString(this.j), ")");
    }
}
