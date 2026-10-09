package com.google.common.collect;

import com.google.common.collect.AbstractMapBasedMultimap;
import java.util.AbstractCollection;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class AbstractMultimap<K, V> implements Multimap<K, V> {
    public transient Set j;
    public transient Collection k;
    public transient Map l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class Values extends AbstractCollection<V> {
        public final /* synthetic */ AbstractMapBasedMultimap j;

        public Values(AbstractMapBasedMultimap abstractMapBasedMultimap) {
            this.j = abstractMapBasedMultimap;
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final void clear() {
            this.j.f();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            Iterator<V> it = this.j.b().values().iterator();
            while (it.hasNext()) {
                if (((Collection) it.next()).contains(obj)) {
                    return true;
                }
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new AbstractMapBasedMultimap.Itr();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final int size() {
            return this.j.n;
        }
    }

    @Override // com.google.common.collect.Multimap
    public Map b() {
        Map map = this.l;
        if (map == null) {
            Map c = c();
            this.l = c;
            return c;
        }
        return map;
    }

    public abstract Map c();

    public abstract Set d();

    public abstract Collection e();

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof Multimap) {
            return b().equals(((Multimap) obj).b());
        }
        return false;
    }

    public int hashCode() {
        return b().hashCode();
    }

    public String toString() {
        return b().toString();
    }

    @Override // com.google.common.collect.Multimap
    public Collection values() {
        Collection collection = this.k;
        if (collection == null) {
            Collection e = e();
            this.k = e;
            return e;
        }
        return collection;
    }
}
