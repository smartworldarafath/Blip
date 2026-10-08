package io.ktor.util;

import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;
import java.util.Set;
import kotlin.collections.AbstractMutableCollection;
import kotlin.collections.AbstractMutableSet;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.markers.KMutableMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CaseInsensitiveMap<Value> implements Map<String, Value>, KMutableMap {
    public static final String[] r = new String[0];
    public static final Object[] s = new Object[0];
    public static final int[] t = new int[0];
    public String[] j;
    public Object[] k;
    public int l;
    public int[] m;
    public int n;
    public KeySet o;
    public EntrySet p;
    public ValueCollection q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final int a(String str) {
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i = (i * 31) + Character.toLowerCase(str.charAt(i2));
            }
            return i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class EntrySet extends AbstractMutableSet<Map.Entry<String, Value>> {
        public EntrySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            ((Map.Entry) obj).getClass();
            throw new UnsupportedOperationException("CaseInsensitiveMap.entries does not support add");
        }

        @Override // kotlin.collections.AbstractMutableSet
        public final int b() {
            return CaseInsensitiveMap.this.l;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (obj instanceof Map.Entry) {
                if (!(obj instanceof KMappedMarker) || (obj instanceof KMutableMap.Entry)) {
                    return super.contains((Map.Entry) obj);
                }
                return false;
            }
            return false;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new CaseInsensitiveMap$EntrySet$iterator$1(CaseInsensitiveMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (obj instanceof Map.Entry) {
                if (!(obj instanceof KMappedMarker) || (obj instanceof KMutableMap.Entry)) {
                    return super.remove((Map.Entry) obj);
                }
                return false;
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class KeySet extends AbstractMutableSet<String> {
        public KeySet() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean add(Object obj) {
            ((String) obj).getClass();
            throw new UnsupportedOperationException("CaseInsensitiveMap.keys does not support add");
        }

        @Override // kotlin.collections.AbstractMutableSet
        public final int b() {
            return CaseInsensitiveMap.this.l;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean contains(Object obj) {
            if (!(obj instanceof String)) {
                return false;
            }
            return CaseInsensitiveMap.this.containsKey((String) obj);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public final Iterator iterator() {
            return new CaseInsensitiveMap$KeySet$iterator$1(CaseInsensitiveMap.this);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public final boolean remove(Object obj) {
            if (obj instanceof String) {
                if (CaseInsensitiveMap.this.remove((String) obj) != null) {
                    return true;
                }
                return false;
            }
            return false;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class MapEntry implements Map.Entry<String, Value>, KMutableMap.Entry {
        public final String j;
        public Object k;

        public MapEntry(String str, Object obj) {
            this.j = str;
            this.k = obj;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (this.j.equals(entry.getKey()) && this.k.equals(entry.getValue())) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // java.util.Map.Entry
        public final String getKey() {
            return this.j;
        }

        @Override // java.util.Map.Entry
        public final Object getValue() {
            return this.k;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.k.hashCode() ^ this.j.hashCode();
        }

        @Override // java.util.Map.Entry
        public final Object setValue(Object obj) {
            obj.getClass();
            Object obj2 = this.k;
            this.k = obj;
            String str = this.j;
            CaseInsensitiveMap caseInsensitiveMap = CaseInsensitiveMap.this;
            int a = caseInsensitiveMap.a(str);
            if (a >= 0) {
                caseInsensitiveMap.k[a] = obj;
            }
            return obj2;
        }

        public final String toString() {
            return this.j + '=' + this.k;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ValueCollection extends AbstractMutableCollection<Value> {
        public ValueCollection() {
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public final boolean add(Object obj) {
            obj.getClass();
            throw new UnsupportedOperationException("CaseInsensitiveMap.values does not support add");
        }

        @Override // kotlin.collections.AbstractMutableCollection
        public final int b() {
            return CaseInsensitiveMap.this.l;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public final Iterator iterator() {
            return new CaseInsensitiveMap$ValueCollection$iterator$1(CaseInsensitiveMap.this);
        }
    }

    public final int a(String str) {
        if (this.l != 0) {
            int a = Companion.a(str);
            int length = this.j.length;
            while (true) {
                int i = a & (length - 1);
                String str2 = this.j[i];
                if (str2 == null) {
                    return -1;
                }
                if (str2.equalsIgnoreCase(str)) {
                    return i;
                }
                a = i + 1;
                length = this.j.length;
            }
        } else {
            return -1;
        }
    }

    @Override // java.util.Map
    /* renamed from: b, reason: merged with bridge method [inline-methods] */
    public final Object put(Object obj, String str) {
        int i;
        int[] iArr;
        String str2;
        str.getClass();
        obj.getClass();
        int i2 = 0;
        if (this.j == r) {
            this.j = new String[8];
            this.k = new Object[8];
            int[] iArr2 = new int[8];
            for (int i3 = 0; i3 < 8; i3++) {
                iArr2[i3] = -1;
            }
            this.m = iArr2;
        }
        int a = Companion.a(str);
        int length = (this.j.length - 1) & a;
        while (true) {
            String str3 = this.j[length];
            if (str3 == null) {
                int i4 = this.l * 4;
                String[] strArr = this.j;
                if (i4 >= strArr.length * 3) {
                    int length2 = strArr.length * 2;
                    Object[] objArr = this.k;
                    int[] iArr3 = this.m;
                    int i5 = this.n;
                    this.j = new String[length2];
                    this.k = new Object[length2];
                    int[] iArr4 = new int[length2];
                    for (int i6 = 0; i6 < length2; i6++) {
                        iArr4[i6] = -1;
                    }
                    this.m = iArr4;
                    this.l = 0;
                    this.n = 0;
                    for (int i7 = 0; i7 < i5; i7++) {
                        int i8 = iArr3[i7];
                        if (i8 >= 0 && (str2 = strArr[i8]) != null) {
                            Object obj2 = objArr[i8];
                            obj2.getClass();
                            put(obj2, str2);
                        }
                    }
                }
                int length3 = this.j.length;
                while (true) {
                    i = a & (length3 - 1);
                    String[] strArr2 = this.j;
                    if (strArr2[i] == null) {
                        break;
                    }
                    a = i + 1;
                    length3 = strArr2.length;
                }
                int i9 = this.n;
                if (i9 == this.m.length && i9 != 0) {
                    int i10 = 0;
                    while (true) {
                        iArr = this.m;
                        if (i2 >= i9) {
                            break;
                        }
                        int i11 = iArr[i2];
                        if (i11 >= 0 && this.j[i11] != null) {
                            iArr[i10] = i11;
                            i10++;
                        }
                        i2++;
                    }
                    int length4 = iArr.length;
                    for (int i12 = i10; i12 < length4; i12++) {
                        this.m[i12] = -1;
                    }
                    this.n = i10;
                }
                this.j[i] = str;
                this.k[i] = obj;
                int[] iArr5 = this.m;
                int i13 = this.n;
                this.n = i13 + 1;
                iArr5[i13] = i;
                this.l++;
                return null;
            }
            if (str3.equalsIgnoreCase(str)) {
                Object[] objArr2 = this.k;
                Object obj3 = objArr2[length];
                objArr2[length] = obj;
                return obj3;
            }
            length = (length + 1) & (this.j.length - 1);
        }
    }

    @Override // java.util.Map
    public final void clear() {
        if (this.l > 0) {
            ArraysKt.m(0, r0.length, null, this.j);
            ArraysKt.m(0, r0.length, null, this.k);
            int[] iArr = this.m;
            int length = iArr.length;
            iArr.getClass();
            Arrays.fill(iArr, 0, length, -1);
            this.l = 0;
            this.n = 0;
        }
    }

    @Override // java.util.Map
    public final boolean containsKey(Object obj) {
        if (!(obj instanceof String) || a((String) obj) < 0) {
            return false;
        }
        return true;
    }

    @Override // java.util.Map
    public final boolean containsValue(Object obj) {
        if (obj == null || this.l == 0) {
            return false;
        }
        int length = this.k.length;
        for (int i = 0; i < length; i++) {
            if (this.j[i] != null && Intrinsics.a(this.k[i], obj)) {
                return true;
            }
        }
        return false;
    }

    @Override // java.util.Map
    public final Set entrySet() {
        EntrySet entrySet = this.p;
        if (entrySet != null) {
            return entrySet;
        }
        EntrySet entrySet2 = new EntrySet();
        this.p = entrySet2;
        return entrySet2;
    }

    @Override // java.util.Map
    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof CaseInsensitiveMap)) {
            return false;
        }
        CaseInsensitiveMap caseInsensitiveMap = (CaseInsensitiveMap) obj;
        if (caseInsensitiveMap.l != this.l) {
            return false;
        }
        int length = this.j.length;
        for (int i = 0; i < length; i++) {
            String str = this.j[i];
            if (str != null) {
                if (!Intrinsics.a(caseInsensitiveMap.get(str), this.k[i])) {
                    return false;
                }
            }
        }
        return true;
    }

    @Override // java.util.Map
    public final Object get(Object obj) {
        int a;
        if (!(obj instanceof String) || (a = a((String) obj)) < 0) {
            return null;
        }
        return this.k[a];
    }

    @Override // java.util.Map
    public final int hashCode() {
        int i;
        int length = this.j.length;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            String str = this.j[i3];
            if (str != null) {
                int a = Companion.a(str);
                Object obj = this.k[i3];
                if (obj != null) {
                    i = obj.hashCode();
                } else {
                    i = 0;
                }
                i2 += a ^ i;
            }
        }
        return i2;
    }

    @Override // java.util.Map
    public final boolean isEmpty() {
        if (this.l == 0) {
            return true;
        }
        return false;
    }

    @Override // java.util.Map
    public final Set<String> keySet() {
        KeySet keySet = this.o;
        if (keySet != null) {
            return keySet;
        }
        KeySet keySet2 = new KeySet();
        this.o = keySet2;
        return keySet2;
    }

    @Override // java.util.Map
    public final void putAll(Map map) {
        map.getClass();
        for (Map.Entry entry : map.entrySet()) {
            put(entry.getValue(), (String) entry.getKey());
        }
    }

    @Override // java.util.Map
    public final Object remove(Object obj) {
        int a;
        int i;
        if (!(obj instanceof String) || (a = a((String) obj)) < 0) {
            return null;
        }
        Object obj2 = this.k[a];
        int i2 = this.n;
        int i3 = 0;
        while (true) {
            if (i3 >= i2) {
                break;
            }
            int[] iArr = this.m;
            if (iArr[i3] == a) {
                iArr[i3] = -1;
                break;
            }
            i3++;
        }
        String[] strArr = this.j;
        strArr[a] = null;
        this.k[a] = null;
        this.l--;
        int i4 = a + 1;
        int length = strArr.length;
        while (true) {
            int i5 = i4 & (length - 1);
            String[] strArr2 = this.j;
            String str = strArr2[i5];
            if (str != null) {
                Object[] objArr = this.k;
                Object obj3 = objArr[i5];
                strArr2[i5] = null;
                objArr[i5] = null;
                this.l--;
                obj3.getClass();
                int a2 = Companion.a(str);
                int length2 = this.j.length;
                while (true) {
                    i = a2 & (length2 - 1);
                    String[] strArr3 = this.j;
                    String str2 = strArr3[i];
                    if (str2 == null) {
                        strArr3[i] = str;
                        this.k[i] = obj3;
                        this.l++;
                        break;
                    }
                    if (str2.equalsIgnoreCase(str)) {
                        this.k[i] = obj3;
                        break;
                    }
                    a2 = i + 1;
                    length2 = this.j.length;
                }
                int i6 = this.n;
                int i7 = 0;
                while (true) {
                    if (i7 < i6) {
                        int[] iArr2 = this.m;
                        if (iArr2[i7] == i5) {
                            iArr2[i7] = i;
                            break;
                        }
                        i7++;
                    }
                }
                i4 = i5 + 1;
                length = this.j.length;
            } else {
                return obj2;
            }
        }
    }

    @Override // java.util.Map
    public final int size() {
        return this.l;
    }

    @Override // java.util.Map
    public final Collection values() {
        ValueCollection valueCollection = this.q;
        if (valueCollection != null) {
            return valueCollection;
        }
        ValueCollection valueCollection2 = new ValueCollection();
        this.q = valueCollection2;
        return valueCollection2;
    }
}
