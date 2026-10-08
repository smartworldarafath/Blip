package androidx.compose.runtime.saveable;

import androidx.collection.MutableScatterMap;
import androidx.collection.ScatterMapKt;
import androidx.compose.runtime.StaticProvidableCompositionLocal;
import androidx.compose.runtime.saveable.SaveableStateRegistry;
import defpackage.u2;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.text.CharsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SaveableStateRegistryImpl implements SaveableStateRegistry {
    public final Function1 j;
    public final MutableScatterMap k;
    public MutableScatterMap l;

    public SaveableStateRegistryImpl(Map map, Function1 function1) {
        MutableScatterMap mutableScatterMap;
        this.j = function1;
        if (map != null && !map.isEmpty()) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.a;
            mutableScatterMap = new MutableScatterMap(map.size());
            for (Map.Entry entry : map.entrySet()) {
                mutableScatterMap.o(entry.getKey(), entry.getValue());
            }
        } else {
            mutableScatterMap = null;
        }
        this.k = mutableScatterMap;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final boolean b(Object obj) {
        return ((Boolean) this.j.b(obj)).booleanValue();
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x009c  */
    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Map c() {
        int i;
        int i2;
        char c;
        long j;
        long j2;
        long j3;
        MutableScatterMap mutableScatterMap;
        long[] jArr;
        int i3;
        long[] jArr2;
        int i4;
        char c2;
        long j4;
        Map map;
        MutableScatterMap mutableScatterMap2 = this.k;
        if (mutableScatterMap2 == null && this.l == null) {
            map = EmptyMap.j;
            return map;
        }
        int i5 = 0;
        if (mutableScatterMap2 != null) {
            i = mutableScatterMap2.e;
        } else {
            i = 0;
        }
        MutableScatterMap mutableScatterMap3 = this.l;
        if (mutableScatterMap3 != null) {
            i2 = mutableScatterMap3.e;
        } else {
            i2 = 0;
        }
        HashMap hashMap = new HashMap(i + i2);
        char c3 = 7;
        long j5 = -9187201950435737472L;
        int i6 = 8;
        if (mutableScatterMap2 != null) {
            Object[] objArr = mutableScatterMap2.b;
            Object[] objArr2 = mutableScatterMap2.c;
            long[] jArr3 = mutableScatterMap2.a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i7 = 0;
                j2 = 128;
                while (true) {
                    long j6 = jArr3[i7];
                    j3 = 255;
                    if ((((~j6) << c3) & j6 & j5) != j5) {
                        int i8 = 8 - ((~(i7 - length)) >>> 31);
                        int i9 = 0;
                        while (i9 < i8) {
                            if ((j6 & 255) < 128) {
                                int i10 = (i7 << 3) + i9;
                                c2 = c3;
                                j4 = j5;
                                hashMap.put((String) objArr[i10], (List) objArr2[i10]);
                            } else {
                                c2 = c3;
                                j4 = j5;
                            }
                            j6 >>= 8;
                            i9++;
                            c3 = c2;
                            j5 = j4;
                        }
                        c = c3;
                        j = j5;
                        if (i8 != 8) {
                            break;
                        }
                    } else {
                        c = c3;
                        j = j5;
                    }
                    if (i7 == length) {
                        break;
                    }
                    i7++;
                    c3 = c;
                    j5 = j;
                }
                mutableScatterMap = this.l;
                if (mutableScatterMap != null) {
                    Object[] objArr3 = mutableScatterMap.b;
                    Object[] objArr4 = mutableScatterMap.c;
                    long[] jArr4 = mutableScatterMap.a;
                    int length2 = jArr4.length - 2;
                    if (length2 >= 0) {
                        int i11 = 0;
                        while (true) {
                            long j7 = jArr4[i11];
                            if ((((~j7) << c) & j7 & j) != j) {
                                int i12 = 8 - ((~(i11 - length2)) >>> 31);
                                int i13 = i5;
                                while (i13 < i12) {
                                    if ((j7 & j3) < j2) {
                                        int i14 = (i11 << 3) + i13;
                                        Object obj = objArr3[i14];
                                        List list = (List) objArr4[i14];
                                        String str = (String) obj;
                                        i4 = i6;
                                        if (list.size() == 1) {
                                            Object a = ((Function0) list.get(i5)).a();
                                            if (a != null) {
                                                if (b(a)) {
                                                    hashMap.put(str, CollectionsKt.h(a));
                                                } else {
                                                    u2.f(RememberSaveableKt.a(a));
                                                    return null;
                                                }
                                            }
                                            jArr2 = jArr4;
                                        } else {
                                            int size = list.size();
                                            ArrayList arrayList = new ArrayList(size);
                                            while (i5 < size) {
                                                long[] jArr5 = jArr4;
                                                Object a2 = ((Function0) list.get(i5)).a();
                                                if (a2 != null && !b(a2)) {
                                                    u2.f(RememberSaveableKt.a(a2));
                                                    return null;
                                                }
                                                arrayList.add(a2);
                                                i5++;
                                                jArr4 = jArr5;
                                            }
                                            jArr2 = jArr4;
                                            hashMap.put(str, arrayList);
                                        }
                                    } else {
                                        jArr2 = jArr4;
                                        i4 = i6;
                                    }
                                    j7 >>= i4;
                                    i13++;
                                    i6 = i4;
                                    jArr4 = jArr2;
                                    i5 = 0;
                                }
                                jArr = jArr4;
                                i3 = i6;
                                if (i12 != i3) {
                                    break;
                                }
                            } else {
                                jArr = jArr4;
                                i3 = i6;
                            }
                            if (i11 == length2) {
                                break;
                            }
                            i11++;
                            i6 = i3;
                            jArr4 = jArr;
                            i5 = 0;
                        }
                    }
                }
                return hashMap;
            }
        }
        c = 7;
        j = -9187201950435737472L;
        j2 = 128;
        j3 = 255;
        mutableScatterMap = this.l;
        if (mutableScatterMap != null) {
        }
        return hashMap;
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final Object d(String str) {
        List list;
        MutableScatterMap mutableScatterMap = this.k;
        if (mutableScatterMap != null) {
            list = (List) mutableScatterMap.m(str);
        } else {
            list = null;
        }
        if (list == null || list.isEmpty()) {
            return null;
        }
        if (list.size() > 1 && mutableScatterMap != null) {
            List subList = list.subList(1, list.size());
            int j = mutableScatterMap.j(str);
            if (j < 0) {
                j = ~j;
            }
            Object[] objArr = mutableScatterMap.c;
            Object obj = objArr[j];
            mutableScatterMap.b[j] = str;
            objArr[j] = subList;
        }
        return list.get(0);
    }

    @Override // androidx.compose.runtime.saveable.SaveableStateRegistry
    public final SaveableStateRegistry.Entry e(String str, Function0 function0) {
        StaticProvidableCompositionLocal staticProvidableCompositionLocal = SaveableStateRegistryKt.a;
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!CharsKt.c(str.charAt(i))) {
                MutableScatterMap mutableScatterMap = this.l;
                if (mutableScatterMap == null) {
                    long[] jArr = ScatterMapKt.a;
                    mutableScatterMap = new MutableScatterMap();
                    this.l = mutableScatterMap;
                }
                Object e = mutableScatterMap.e(str);
                if (e == null) {
                    e = new ArrayList();
                    mutableScatterMap.o(str, e);
                }
                ((List) e).add(function0);
                return new SaveableStateRegistryImpl$registerProvider$3(mutableScatterMap, str, function0);
            }
        }
        u2.g("Registered key is empty or blank");
        return null;
    }
}
