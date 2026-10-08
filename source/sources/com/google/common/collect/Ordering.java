package com.google.common.collect;

import com.google.common.base.Function;
import defpackage.v1;
import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Ordering<T> implements Comparator<T> {
    public static Ordering b(v1 v1Var) {
        return new ComparatorOrdering(v1Var);
    }

    public static Ordering c() {
        return NaturalOrdering.j;
    }

    public final Ordering a(Comparator comparator) {
        return new CompoundOrdering(this, comparator);
    }

    public final Ordering d(Function function) {
        return new ByFunctionOrdering(function, this);
    }

    public Ordering e() {
        return new ReverseOrdering(this);
    }
}
