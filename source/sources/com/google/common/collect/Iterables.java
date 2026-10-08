package com.google.common.collect;

import com.google.common.base.Predicate;
import com.google.common.collect.Sets;
import defpackage.k8;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Iterables {
    public static Object a(Iterable iterable, String str) {
        Sets.AnonymousClass2.AnonymousClass1 anonymousClass1 = new Sets.AnonymousClass2.AnonymousClass1();
        if (anonymousClass1.hasNext()) {
            return anonymousClass1.next();
        }
        return str;
    }

    public static Object b(Iterable iterable) {
        Object next;
        if (iterable instanceof List) {
            List list = (List) iterable;
            if (!list.isEmpty()) {
                return list.get(list.size() - 1);
            }
            k8.o();
            return null;
        }
        Iterator it = iterable.iterator();
        do {
            next = it.next();
        } while (it.hasNext());
        return next;
    }

    public static void c(List list, Predicate predicate, int i, int i2) {
        for (int size = list.size() - 1; size > i2; size--) {
            if (predicate.apply(list.get(size))) {
                list.remove(size);
            }
        }
        for (int i3 = i2 - 1; i3 >= i; i3--) {
            list.remove(i3);
        }
    }
}
