package com.google.common.collect;

import com.google.common.base.Supplier;
import com.google.common.collect.AbstractMapBasedMultimap;
import java.util.Map;
import java.util.Set;
import java.util.TreeMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class Multimaps$CustomListMultimap<K, V> extends AbstractListMultimap<K, V> {
    public transient Supplier o;

    @Override // com.google.common.collect.AbstractMultimap
    public final Map c() {
        TreeMap treeMap = this.m;
        if (treeMap != null) {
            return new AbstractMapBasedMultimap.NavigableAsMap(this, treeMap);
        }
        if (treeMap != null) {
            return new AbstractMapBasedMultimap.SortedAsMap(this, treeMap);
        }
        return new AbstractMapBasedMultimap.AsMap(this, treeMap);
    }

    @Override // com.google.common.collect.AbstractMultimap
    public final Set d() {
        TreeMap treeMap = this.m;
        if (treeMap != null) {
            return new AbstractMapBasedMultimap.NavigableKeySet(this, treeMap);
        }
        if (treeMap != null) {
            return new AbstractMapBasedMultimap.SortedKeySet(this, treeMap);
        }
        return new AbstractMapBasedMultimap.KeySet(this, treeMap);
    }
}
