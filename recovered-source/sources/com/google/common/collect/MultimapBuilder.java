package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.base.Supplier;
import java.io.Serializable;
import java.util.ArrayList;
import java.util.List;
import java.util.TreeMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MultimapBuilder<K0, V0> {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.common.collect.MultimapBuilder$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends MultimapBuilderWithKeys<Object> {
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ArrayListSupplier<V> implements Supplier<List<V>>, Serializable {
        public final int j;

        public ArrayListSupplier() {
            CollectPreconditions.a(2, "expectedValuesPerKey");
            this.j = 2;
        }

        @Override // com.google.common.base.Supplier
        public final Object get() {
            return new ArrayList(this.j);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class ListMultimapBuilder<K0, V0> extends MultimapBuilder<K0, V0> {
        public abstract ListMultimap b();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class MultimapBuilderWithKeys<K0> {

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* renamed from: com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends ListMultimapBuilder<Object, Object> {
            /* JADX WARN: Type inference failed for: r1v0, types: [com.google.common.collect.AbstractMapBasedMultimap, com.google.common.collect.ListMultimap, java.lang.Object, com.google.common.collect.Multimaps$CustomListMultimap] */
            @Override // com.google.common.collect.MultimapBuilder.ListMultimapBuilder
            public final ListMultimap b() {
                TreeMap treeMap = new TreeMap(NaturalOrdering.j);
                ArrayListSupplier arrayListSupplier = new ArrayListSupplier();
                ?? obj = new Object();
                Preconditions.e(treeMap.isEmpty());
                obj.m = treeMap;
                obj.o = arrayListSupplier;
                return obj;
            }
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [java.lang.Object, com.google.common.collect.MultimapBuilder$ListMultimapBuilder] */
        public final ListMultimapBuilder a() {
            CollectPreconditions.a(2, "expectedValuesPerKey");
            return new Object();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.common.collect.MultimapBuilder$MultimapBuilderWithKeys, java.lang.Object] */
    public static MultimapBuilderWithKeys a() {
        return new Object();
    }
}
