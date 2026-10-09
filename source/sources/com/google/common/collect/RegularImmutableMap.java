package com.google.common.collect;

import com.google.common.base.Preconditions;
import java.util.AbstractMap;
import java.util.Map;
import java.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RegularImmutableMap<K, V> extends ImmutableMap<K, V> {
    public static final ImmutableMap p = new RegularImmutableMap(0, null, new Object[0]);
    public final transient Object m;
    public final transient Object[] n;
    public final transient int o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class EntrySet<K, V> extends ImmutableSet<Map.Entry<K, V>> {
        public final transient ImmutableMap m;
        public final transient Object[] n;
        public final transient int o;

        public EntrySet(ImmutableMap immutableMap, Object[] objArr, int i) {
            this.m = immutableMap;
            this.n = objArr;
            this.o = i;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int c(int i, Object[] objArr) {
            return b().c(i, objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                Object key = entry.getKey();
                Object value = entry.getValue();
                if (value != null && value.equals(this.m.get(key))) {
                    return true;
                }
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean g() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* renamed from: i */
        public final UnmodifiableIterator iterator() {
            return b().listIterator(0);
        }

        @Override // com.google.common.collect.ImmutableSet
        public final ImmutableList p() {
            return new ImmutableList<Map.Entry<Object, Object>>() { // from class: com.google.common.collect.RegularImmutableMap.EntrySet.1
                @Override // com.google.common.collect.ImmutableCollection
                public final boolean g() {
                    return true;
                }

                @Override // java.util.List
                public final Object get(int i) {
                    EntrySet entrySet = EntrySet.this;
                    Preconditions.h(i, entrySet.o);
                    Object[] objArr = entrySet.n;
                    int i2 = i * 2;
                    Object obj = objArr[i2];
                    Objects.requireNonNull(obj);
                    Object obj2 = objArr[i2 + 1];
                    Objects.requireNonNull(obj2);
                    return new AbstractMap.SimpleImmutableEntry(obj, obj2);
                }

                @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
                public final int size() {
                    return EntrySet.this.o;
                }
            };
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.o;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class KeySet<K> extends ImmutableSet<K> {
        public final transient ImmutableMap m;
        public final transient ImmutableList n;

        public KeySet(ImmutableMap immutableMap, ImmutableList immutableList) {
            this.m = immutableMap;
            this.n = immutableList;
        }

        @Override // com.google.common.collect.ImmutableSet, com.google.common.collect.ImmutableCollection
        public final ImmutableList b() {
            return this.n;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final int c(int i, Object[] objArr) {
            return this.n.c(i, objArr);
        }

        @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
        public final boolean contains(Object obj) {
            if (this.m.get(obj) != null) {
                return true;
            }
            return false;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean g() {
            return true;
        }

        @Override // com.google.common.collect.ImmutableCollection
        /* renamed from: i */
        public final UnmodifiableIterator iterator() {
            return this.n.listIterator(0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final int size() {
            return this.m.size();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class KeysOrValuesAsList extends ImmutableList<Object> {
        public final transient Object[] l;
        public final transient int m;
        public final transient int n;

        public KeysOrValuesAsList(Object[] objArr, int i, int i2) {
            this.l = objArr;
            this.m = i;
            this.n = i2;
        }

        @Override // com.google.common.collect.ImmutableCollection
        public final boolean g() {
            return true;
        }

        @Override // java.util.List
        public final Object get(int i) {
            Preconditions.h(i, this.n);
            Object obj = this.l[(i * 2) + this.m];
            Objects.requireNonNull(obj);
            return obj;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public final int size() {
            return this.n;
        }
    }

    public RegularImmutableMap(int i, Object obj, Object[] objArr) {
        this.m = obj;
        this.n = objArr;
        this.o = i;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x009e A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:7:0x009f A[RETURN] */
    @Override // com.google.common.collect.ImmutableMap, java.util.Map
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object get(Object obj) {
        Object obj2;
        if (obj != null) {
            Object[] objArr = this.n;
            if (this.o == 1) {
                Object obj3 = objArr[0];
                Objects.requireNonNull(obj3);
                if (obj3.equals(obj)) {
                    obj2 = objArr[1];
                    Objects.requireNonNull(obj2);
                }
            } else {
                Object obj4 = this.m;
                if (obj4 != null) {
                    if (obj4 instanceof byte[]) {
                        byte[] bArr = (byte[]) obj4;
                        int length = bArr.length - 1;
                        int a = Hashing.a(obj.hashCode());
                        while (true) {
                            int i = a & length;
                            int i2 = bArr[i] & 255;
                            if (i2 == 255) {
                                break;
                            }
                            if (obj.equals(objArr[i2])) {
                                obj2 = objArr[i2 ^ 1];
                                break;
                            }
                            a = i + 1;
                        }
                    } else if (obj4 instanceof short[]) {
                        short[] sArr = (short[]) obj4;
                        int length2 = sArr.length - 1;
                        int a2 = Hashing.a(obj.hashCode());
                        while (true) {
                            int i3 = a2 & length2;
                            int i4 = sArr[i3] & 65535;
                            if (i4 == 65535) {
                                break;
                            }
                            if (obj.equals(objArr[i4])) {
                                obj2 = objArr[i4 ^ 1];
                                break;
                            }
                            a2 = i3 + 1;
                        }
                    } else {
                        int[] iArr = (int[]) obj4;
                        int length3 = iArr.length - 1;
                        int a3 = Hashing.a(obj.hashCode());
                        while (true) {
                            int i5 = a3 & length3;
                            int i6 = iArr[i5];
                            if (i6 == -1) {
                                break;
                            }
                            if (obj.equals(objArr[i6])) {
                                obj2 = objArr[i6 ^ 1];
                                break;
                            }
                            a3 = i5 + 1;
                        }
                    }
                }
            }
            if (obj2 != null) {
                return null;
            }
            return obj2;
        }
        obj2 = null;
        if (obj2 != null) {
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.o;
    }
}
