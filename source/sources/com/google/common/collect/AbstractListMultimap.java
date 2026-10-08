package com.google.common.collect;

import com.google.common.collect.MultimapBuilder;
import java.util.Collection;
import java.util.List;
import java.util.TreeMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class AbstractListMultimap<K, V> extends AbstractMapBasedMultimap<K, V> implements ListMultimap<K, V> {
    @Override // com.google.common.collect.Multimap
    public final boolean a(Double d, Integer num) {
        TreeMap treeMap = this.m;
        Collection collection = (Collection) treeMap.get(d);
        if (collection == null) {
            List list = (List) ((MultimapBuilder.ArrayListSupplier) ((Multimaps$CustomListMultimap) this).o).get();
            if (list.add(num)) {
                this.n++;
                treeMap.put(d, list);
                return true;
            }
            throw new AssertionError("New Collection violated the Collection spec");
        }
        if (collection.add(num)) {
            this.n++;
            return true;
        }
        return false;
    }
}
