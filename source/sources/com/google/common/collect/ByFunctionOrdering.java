package com.google.common.collect;

import com.google.common.base.Function;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ByFunctionOrdering<F, T> extends Ordering<F> implements Serializable {
    public final Function j;
    public final Ordering k;

    public ByFunctionOrdering(Function function, Ordering ordering) {
        this.j = function;
        this.k = ordering;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        Function function = this.j;
        return this.k.compare(function.apply(obj), function.apply(obj2));
    }

    @Override // java.util.Comparator
    public final boolean equals(Object obj) {
        if (obj != this) {
            if (obj instanceof ByFunctionOrdering) {
                ByFunctionOrdering byFunctionOrdering = (ByFunctionOrdering) obj;
                if (this.j.equals(byFunctionOrdering.j) && this.k.equals(byFunctionOrdering.k)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.j, this.k});
    }

    public final String toString() {
        return this.k + ".onResultOf(" + this.j + ")";
    }
}
