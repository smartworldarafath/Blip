package io.ktor.util;

import defpackage.d;
import io.ktor.util.CaseInsensitiveMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptySet;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class StringValuesImpl implements StringValues {
    public static final /* synthetic */ int h = 0;
    public final boolean b;
    public final String[] c;
    public final List[] d;
    public final int e;
    public final int[] f;
    public final int[] g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final int a(int i) {
            int i2 = StringValuesImpl.h;
            int i3 = i - 1;
            int i4 = i3 | (i3 >>> 1);
            int i5 = i4 | (i4 >>> 2);
            int i6 = i5 | (i5 >>> 4);
            int i7 = i6 | (i6 >>> 8);
            int i8 = i7 | (i7 >>> 16);
            if (i8 < 4) {
                return 4;
            }
            return i8 + 1;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StringValuesEntry implements Map.Entry<String, List<? extends String>>, KMappedMarker {
        public final String j;
        public final List k;

        public StringValuesEntry(String str, List list) {
            str.getClass();
            list.getClass();
            this.j = str;
            this.k = list;
        }

        @Override // java.util.Map.Entry
        public final boolean equals(Object obj) {
            if (obj instanceof Map.Entry) {
                Map.Entry entry = (Map.Entry) obj;
                if (Intrinsics.a(entry.getKey(), this.j) && Intrinsics.a(entry.getValue(), this.k)) {
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
        public final List<? extends String> getValue() {
            return this.k;
        }

        @Override // java.util.Map.Entry
        public final int hashCode() {
            return this.k.hashCode() ^ this.j.hashCode();
        }

        @Override // java.util.Map.Entry
        public final /* bridge */ /* synthetic */ List<? extends String> setValue(List<? extends String> list) {
            throw new UnsupportedOperationException("Operation is not supported for read-only collection");
        }

        public final String toString() {
            return this.j + '=' + this.k;
        }
    }

    /* JADX WARN: Type inference failed for: r10v1, types: [java.lang.Object, io.ktor.util.CaseInsensitiveMap] */
    public StringValuesImpl(boolean z, Map map) {
        map.getClass();
        this.b = z;
        if (map.isEmpty()) {
            this.e = 0;
            this.c = new String[0];
            this.d = new List[0];
            this.f = new int[0];
            this.g = new int[0];
            return;
        }
        if (!z) {
            int size = map.size();
            this.e = size;
            this.c = new String[size];
            this.d = new List[size];
            int a = Companion.a(size);
            int[] iArr = new int[a];
            for (int i = 0; i < a; i++) {
                iArr[i] = -1;
            }
            this.f = iArr;
            int i2 = this.e;
            int[] iArr2 = new int[i2];
            for (int i3 = 0; i3 < i2; i3++) {
                iArr2[i3] = -1;
            }
            this.g = iArr2;
            int i4 = 0;
            for (Map.Entry entry : map.entrySet()) {
                String str = (String) entry.getKey();
                List list = (List) entry.getValue();
                this.c[i4] = str;
                List[] listArr = this.d;
                int size2 = list.size();
                ArrayList arrayList = new ArrayList(size2);
                for (int i5 = 0; i5 < size2; i5++) {
                    arrayList.add((String) list.get(i5));
                }
                listArr[i4] = arrayList;
                int d = d(str) & (a - 1);
                int[] iArr3 = this.g;
                int[] iArr4 = this.f;
                iArr3[i4] = iArr4[d];
                iArr4[d] = i4;
                i4++;
            }
            return;
        }
        ?? obj = new Object();
        obj.j = CaseInsensitiveMap.r;
        obj.k = CaseInsensitiveMap.s;
        obj.m = CaseInsensitiveMap.t;
        for (Map.Entry entry2 : map.entrySet()) {
            String str2 = (String) entry2.getKey();
            List list2 = (List) entry2.getValue();
            List list3 = (List) obj.get(str2);
            if (list3 != null) {
                obj.put(CollectionsKt.F(list3, list2), str2);
            } else {
                obj.put(list2, str2);
            }
        }
        int i6 = obj.l;
        this.e = i6;
        this.c = new String[i6];
        this.d = new List[i6];
        int a2 = Companion.a(i6);
        int[] iArr5 = new int[a2];
        for (int i7 = 0; i7 < a2; i7++) {
            iArr5[i7] = -1;
        }
        this.f = iArr5;
        int i8 = this.e;
        int[] iArr6 = new int[i8];
        for (int i9 = 0; i9 < i8; i9++) {
            iArr6[i9] = -1;
        }
        this.g = iArr6;
        Iterator it = ((CaseInsensitiveMap.EntrySet) obj.entrySet()).iterator();
        int i10 = 0;
        while (it.hasNext()) {
            Map.Entry entry3 = (Map.Entry) it.next();
            String str3 = (String) entry3.getKey();
            List list4 = (List) entry3.getValue();
            this.c[i10] = str3;
            List[] listArr2 = this.d;
            int size3 = list4.size();
            ArrayList arrayList2 = new ArrayList(size3);
            for (int i11 = 0; i11 < size3; i11++) {
                arrayList2.add((String) list4.get(i11));
            }
            listArr2[i10] = arrayList2;
            int d2 = d(str3) & (a2 - 1);
            int[] iArr7 = this.g;
            int[] iArr8 = this.f;
            iArr7[i10] = iArr8[d2];
            iArr8[d2] = i10;
            i10++;
        }
    }

    @Override // io.ktor.util.StringValues
    public final Set a() {
        int i = this.e;
        if (i == 0) {
            return EmptySet.j;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (int i2 = 0; i2 < i; i2++) {
            linkedHashSet.add(new StringValuesEntry(this.c[i2], this.d[i2]));
        }
        return linkedHashSet;
    }

    @Override // io.ktor.util.StringValues
    public final boolean b() {
        return this.b;
    }

    @Override // io.ktor.util.StringValues
    public final void c(d dVar) {
        for (int i = 0; i < this.e; i++) {
            dVar.n(this.c[i], this.d[i]);
        }
    }

    public final int d(String str) {
        if (this.b) {
            int length = str.length();
            int i = 0;
            for (int i2 = 0; i2 < length; i2++) {
                i = (i * 31) + Character.toLowerCase(str.charAt(i2));
            }
            return i;
        }
        return str.hashCode();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj instanceof StringValues) {
            StringValues stringValues = (StringValues) obj;
            if (this.b != stringValues.b()) {
                return false;
            }
            return a().equals(stringValues.a());
        }
        return false;
    }

    public final int hashCode() {
        Set a = a();
        return a.hashCode() + (Boolean.hashCode(this.b) * 961);
    }

    @Override // io.ktor.util.StringValues
    public final boolean isEmpty() {
        if (this.e == 0) {
            return true;
        }
        return false;
    }

    public String toString() {
        StringBuilder sb = new StringBuilder("StringValues(case=");
        sb.append(!this.b);
        sb.append(") ");
        sb.append(a());
        return sb.toString();
    }
}
