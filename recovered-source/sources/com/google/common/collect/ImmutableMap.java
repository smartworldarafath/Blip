package com.google.common.collect;

import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableCollection;
import com.google.common.collect.RegularImmutableMap;
import java.io.Serializable;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Objects;
import java.util.Set;
import java.util.SortedMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImmutableMap<K, V> implements Map<K, V>, Serializable {
    public transient ImmutableSet j;
    public transient ImmutableSet k;
    public transient ImmutableCollection l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder<K, V> {
        public Object[] a;
        public int b = 0;
        public DuplicateKey c;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class DuplicateKey {
            public final Object a;
            public final Object b;
            public final Object c;

            public DuplicateKey(Object obj, Object obj2, Object obj3) {
                this.a = obj;
                this.b = obj2;
                this.c = obj3;
            }

            public final IllegalArgumentException a() {
                StringBuilder sb = new StringBuilder("Multiple entries with same key: ");
                Object obj = this.a;
                sb.append(obj);
                sb.append("=");
                sb.append(this.b);
                sb.append(" and ");
                sb.append(obj);
                sb.append("=");
                sb.append(this.c);
                return new IllegalArgumentException(sb.toString());
            }
        }

        public Builder(int i) {
            this.a = new Object[i * 2];
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:26:0x01a9  */
        /* JADX WARN: Type inference failed for: r16v11 */
        /* JADX WARN: Type inference failed for: r16v12 */
        /* JADX WARN: Type inference failed for: r16v13 */
        /* JADX WARN: Type inference failed for: r16v4 */
        /* JADX WARN: Type inference failed for: r4v6 */
        /* JADX WARN: Type inference failed for: r4v8, types: [java.lang.Object[]] */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final ImmutableMap a(boolean z) {
            boolean z2;
            int i;
            char c;
            Object obj;
            char c2;
            short[] sArr;
            boolean z3;
            int i2;
            ?? r16;
            boolean z4;
            RegularImmutableMap regularImmutableMap;
            boolean z5;
            DuplicateKey duplicateKey;
            DuplicateKey duplicateKey2;
            if (z && (duplicateKey2 = this.c) != null) {
                throw duplicateKey2.a();
            }
            int i3 = this.b;
            Object[] objArr = this.a;
            if (i3 == 0) {
                regularImmutableMap = (RegularImmutableMap) RegularImmutableMap.p;
            } else {
                Object obj2 = null;
                boolean z6 = false;
                int i4 = 1;
                if (i3 == 1) {
                    Objects.requireNonNull(objArr[0]);
                    Objects.requireNonNull(objArr[1]);
                    regularImmutableMap = new RegularImmutableMap(1, null, objArr);
                } else {
                    Preconditions.k(i3, objArr.length >> 1);
                    int k = ImmutableSet.k(i3);
                    char c3 = 2;
                    if (i3 == 1) {
                        Objects.requireNonNull(objArr[0]);
                        Objects.requireNonNull(objArr[1]);
                        z5 = false;
                        i = 1;
                    } else {
                        int i5 = k - 1;
                        if (k <= 128) {
                            byte[] bArr = new byte[k];
                            Arrays.fill(bArr, (byte) -1);
                            int i6 = 0;
                            int i7 = 0;
                            while (i6 < i3) {
                                int i8 = i6 * 2;
                                int i9 = i7 * 2;
                                Object obj3 = objArr[i8];
                                Objects.requireNonNull(obj3);
                                Object obj4 = objArr[i8 ^ i4];
                                Objects.requireNonNull(obj4);
                                int a = Hashing.a(obj3.hashCode());
                                while (true) {
                                    int i10 = a & i5;
                                    z3 = z6;
                                    i2 = i4;
                                    int i11 = bArr[i10] & 255;
                                    if (i11 == 255) {
                                        bArr[i10] = (byte) i9;
                                        if (i7 < i6) {
                                            objArr[i9] = obj3;
                                            objArr[i9 ^ 1] = obj4;
                                        }
                                        i7++;
                                    } else {
                                        if (obj3.equals(objArr[i11])) {
                                            int i12 = i11 ^ 1;
                                            Object obj5 = objArr[i12];
                                            Objects.requireNonNull(obj5);
                                            obj2 = new DuplicateKey(obj3, obj4, obj5);
                                            objArr[i12] = obj4;
                                            break;
                                        }
                                        a = i10 + 1;
                                        z6 = z3;
                                        i4 = i2;
                                    }
                                }
                                i6++;
                                z6 = z3;
                                i4 = i2;
                            }
                            z2 = z6;
                            i = i4;
                            if (i7 == i3) {
                                obj2 = bArr;
                                z5 = z2;
                            } else {
                                sArr = new Object[3];
                                sArr[z2 ? 1 : 0] = bArr;
                                sArr[i] = Integer.valueOf(i7);
                                sArr[2] = obj2;
                                obj2 = sArr;
                                z5 = z2;
                            }
                        } else {
                            z2 = false;
                            i = 1;
                            if (k <= 32768) {
                                sArr = new short[k];
                                Arrays.fill(sArr, (short) -1);
                                int i13 = 0;
                                for (int i14 = 0; i14 < i3; i14++) {
                                    int i15 = i14 * 2;
                                    int i16 = i13 * 2;
                                    Object obj6 = objArr[i15];
                                    Objects.requireNonNull(obj6);
                                    Object obj7 = objArr[i15 ^ 1];
                                    Objects.requireNonNull(obj7);
                                    int a2 = Hashing.a(obj6.hashCode());
                                    while (true) {
                                        int i17 = a2 & i5;
                                        int i18 = sArr[i17] & 65535;
                                        if (i18 == 65535) {
                                            sArr[i17] = (short) i16;
                                            if (i13 < i14) {
                                                objArr[i16] = obj6;
                                                objArr[i16 ^ 1] = obj7;
                                            }
                                            i13++;
                                        } else {
                                            if (obj6.equals(objArr[i18])) {
                                                int i19 = i18 ^ 1;
                                                Object obj8 = objArr[i19];
                                                Objects.requireNonNull(obj8);
                                                obj2 = new DuplicateKey(obj6, obj7, obj8);
                                                objArr[i19] = obj7;
                                                break;
                                            }
                                            a2 = i17 + 1;
                                        }
                                    }
                                }
                                if (i13 != i3) {
                                    obj2 = new Object[]{sArr, Integer.valueOf(i13), obj2};
                                    z5 = z2;
                                }
                                obj2 = sArr;
                                z5 = z2;
                            } else {
                                int[] iArr = new int[k];
                                Arrays.fill(iArr, -1);
                                int i20 = 0;
                                int i21 = 0;
                                while (i20 < i3) {
                                    int i22 = i20 * 2;
                                    int i23 = i21 * 2;
                                    Object obj9 = objArr[i22];
                                    Objects.requireNonNull(obj9);
                                    Object obj10 = objArr[i22 ^ 1];
                                    Objects.requireNonNull(obj10);
                                    int a3 = Hashing.a(obj9.hashCode());
                                    while (true) {
                                        int i24 = a3 & i5;
                                        int i25 = iArr[i24];
                                        if (i25 == -1) {
                                            iArr[i24] = i23;
                                            if (i21 < i20) {
                                                objArr[i23] = obj9;
                                                objArr[i23 ^ 1] = obj10;
                                            }
                                            i21++;
                                            c2 = c3;
                                        } else {
                                            c2 = c3;
                                            if (obj9.equals(objArr[i25])) {
                                                int i26 = i25 ^ 1;
                                                Object obj11 = objArr[i26];
                                                Objects.requireNonNull(obj11);
                                                obj2 = new DuplicateKey(obj9, obj10, obj11);
                                                objArr[i26] = obj10;
                                                break;
                                            }
                                            a3 = i24 + 1;
                                            c3 = c2;
                                        }
                                    }
                                    i20++;
                                    c3 = c2;
                                }
                                c = c3;
                                if (i21 == i3) {
                                    obj = iArr;
                                    r16 = z2;
                                } else {
                                    Object[] objArr2 = new Object[3];
                                    objArr2[0] = iArr;
                                    objArr2[1] = Integer.valueOf(i21);
                                    objArr2[c] = obj2;
                                    obj = objArr2;
                                    r16 = z2;
                                }
                                z4 = obj instanceof Object[];
                                Object obj12 = obj;
                                if (z4) {
                                    Object[] objArr3 = (Object[]) obj;
                                    this.c = (DuplicateKey) objArr3[c];
                                    Object obj13 = objArr3[r16];
                                    int intValue = ((Integer) objArr3[i]).intValue();
                                    objArr = Arrays.copyOf(objArr, intValue * 2);
                                    obj12 = obj13;
                                    i3 = intValue;
                                }
                                regularImmutableMap = new RegularImmutableMap(i3, obj12, objArr);
                            }
                        }
                    }
                    c = 2;
                    obj = obj2;
                    r16 = z5;
                    z4 = obj instanceof Object[];
                    Object obj122 = obj;
                    if (z4) {
                    }
                    regularImmutableMap = new RegularImmutableMap(i3, obj122, objArr);
                }
            }
            if (z && (duplicateKey = this.c) != null) {
                throw duplicateKey.a();
            }
            return regularImmutableMap;
        }

        public final void b(Object obj, Object obj2) {
            int i = (this.b + 1) * 2;
            Object[] objArr = this.a;
            if (i > objArr.length) {
                this.a = Arrays.copyOf(objArr, ImmutableCollection.Builder.b(objArr.length, i));
            }
            if (obj != null) {
                if (obj2 != null) {
                    Object[] objArr2 = this.a;
                    int i2 = this.b;
                    int i3 = i2 * 2;
                    objArr2[i3] = obj;
                    objArr2[i3 + 1] = obj2;
                    this.b = i2 + 1;
                    return;
                }
                throw new NullPointerException("null value in entry: " + obj + "=null");
            }
            throw new NullPointerException("null key in entry: null=" + obj2);
        }

        public final void c(Set set) {
            if (set instanceof Collection) {
                int size = (set.size() + this.b) * 2;
                Object[] objArr = this.a;
                if (size > objArr.length) {
                    this.a = Arrays.copyOf(objArr, ImmutableCollection.Builder.b(objArr.length, size));
                }
            }
            Iterator it = set.iterator();
            while (it.hasNext()) {
                Map.Entry entry = (Map.Entry) it.next();
                b(entry.getKey(), entry.getValue());
            }
        }
    }

    public static ImmutableMap a(Map map) {
        int i;
        if ((map instanceof ImmutableMap) && !(map instanceof SortedMap)) {
            return (ImmutableMap) map;
        }
        Set<Map.Entry<K, V>> entrySet = map.entrySet();
        if (entrySet instanceof Collection) {
            i = entrySet.size();
        } else {
            i = 4;
        }
        Builder builder = new Builder(i);
        builder.c(entrySet);
        return builder.a(true);
    }

    public static ImmutableMap d() {
        return RegularImmutableMap.p;
    }

    @Override // java.util.Map
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet entrySet() {
        ImmutableSet immutableSet = this.j;
        if (immutableSet == null) {
            RegularImmutableMap regularImmutableMap = (RegularImmutableMap) this;
            RegularImmutableMap.EntrySet entrySet = new RegularImmutableMap.EntrySet(regularImmutableMap, regularImmutableMap.n, regularImmutableMap.o);
            this.j = entrySet;
            return entrySet;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    /* renamed from: c, reason: merged with bridge method [inline-methods] */
    public final ImmutableSet keySet() {
        ImmutableSet immutableSet = this.k;
        if (immutableSet == null) {
            RegularImmutableMap regularImmutableMap = (RegularImmutableMap) this;
            RegularImmutableMap.KeySet keySet = new RegularImmutableMap.KeySet(regularImmutableMap, new RegularImmutableMap.KeysOrValuesAsList(regularImmutableMap.n, 0, regularImmutableMap.o));
            this.k = keySet;
            return keySet;
        }
        return immutableSet;
    }

    @Override // java.util.Map
    public final void clear() {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (get(obj) != null) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        return values().contains(obj);
    }

    @Override // java.util.Map
    /* renamed from: e, reason: merged with bridge method [inline-methods] */
    public final ImmutableCollection values() {
        ImmutableCollection immutableCollection = this.l;
        if (immutableCollection == null) {
            RegularImmutableMap regularImmutableMap = (RegularImmutableMap) this;
            RegularImmutableMap.KeysOrValuesAsList keysOrValuesAsList = new RegularImmutableMap.KeysOrValuesAsList(regularImmutableMap.n, 1, regularImmutableMap.o);
            this.l = keysOrValuesAsList;
            return keysOrValuesAsList;
        }
        return immutableCollection;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        return Maps.a(obj, this);
    }

    @Override // java.util.Map
    public abstract Object get(Object obj);

    @Override // java.util.Map
    public final Object getOrDefault(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 != null) {
            return obj3;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int hashCode() {
        return Sets.c(entrySet());
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        if (size() == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final Object put(Object obj, Object obj2) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        throw new UnsupportedOperationException();
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        throw new UnsupportedOperationException();
    }

    public final String toString() {
        int size = size();
        CollectPreconditions.a(size, "size");
        StringBuilder sb = new StringBuilder((int) Math.min(size * 8, 1073741824L));
        sb.append('{');
        boolean z = true;
        for (Map.Entry<K, V> entry : entrySet()) {
            if (!z) {
                sb.append(", ");
            }
            sb.append(entry.getKey());
            sb.append('=');
            sb.append(entry.getValue());
            z = false;
        }
        sb.append('}');
        return sb.toString();
    }
}
