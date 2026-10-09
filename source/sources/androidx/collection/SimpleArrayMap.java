package androidx.collection;

import androidx.collection.internal.ContainerHelpersKt;
import defpackage.q;
import defpackage.u2;
import java.util.Arrays;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class SimpleArrayMap<K, V> {
    public int[] j;
    public Object[] k;
    public int l;

    public SimpleArrayMap(int i) {
        int[] iArr;
        Object[] objArr;
        if (i == 0) {
            iArr = ContainerHelpersKt.a;
        } else {
            iArr = new int[i];
        }
        this.j = iArr;
        if (i == 0) {
            objArr = ContainerHelpersKt.c;
        } else {
            objArr = new Object[i << 1];
        }
        this.k = objArr;
    }

    public final int a(Object obj) {
        int i = this.l * 2;
        Object[] objArr = this.k;
        if (obj == null) {
            for (int i2 = 1; i2 < i; i2 += 2) {
                if (objArr[i2] == null) {
                    return i2 >> 1;
                }
            }
            return -1;
        }
        for (int i3 = 1; i3 < i; i3 += 2) {
            if (obj.equals(objArr[i3])) {
                return i3 >> 1;
            }
        }
        return -1;
    }

    public final int b(int i, Object obj) {
        int i2 = this.l;
        if (i2 == 0) {
            return -1;
        }
        int a = ContainerHelpersKt.a(i2, i, this.j);
        if (a < 0 || Intrinsics.a(obj, this.k[a << 1])) {
            return a;
        }
        int i3 = a + 1;
        while (i3 < i2 && this.j[i3] == i) {
            if (Intrinsics.a(obj, this.k[i3 << 1])) {
                return i3;
            }
            i3++;
        }
        for (int i4 = a - 1; i4 >= 0 && this.j[i4] == i; i4--) {
            if (Intrinsics.a(obj, this.k[i4 << 1])) {
                return i4;
            }
        }
        return ~i3;
    }

    public final int c(Object obj) {
        if (obj == null) {
            return d();
        }
        return b(obj.hashCode(), obj);
    }

    public final void clear() {
        if (this.l > 0) {
            this.j = ContainerHelpersKt.a;
            this.k = ContainerHelpersKt.c;
            this.l = 0;
        }
        if (this.l <= 0) {
            return;
        }
        u2.d();
    }

    public boolean containsKey(Object obj) {
        if (c(obj) >= 0) {
            return true;
        }
        return false;
    }

    public boolean containsValue(Object obj) {
        if (a(obj) >= 0) {
            return true;
        }
        return false;
    }

    public final int d() {
        int i = this.l;
        if (i == 0) {
            return -1;
        }
        int a = ContainerHelpersKt.a(i, 0, this.j);
        if (a < 0 || this.k[a << 1] == null) {
            return a;
        }
        int i2 = a + 1;
        while (i2 < i && this.j[i2] == 0) {
            if (this.k[i2 << 1] == null) {
                return i2;
            }
            i2++;
        }
        for (int i3 = a - 1; i3 >= 0 && this.j[i3] == 0; i3--) {
            if (this.k[i3 << 1] == null) {
                return i3;
            }
        }
        return ~i2;
    }

    public final Object e(int i) {
        boolean z = false;
        if (i >= 0 && i < this.l) {
            z = true;
        }
        if (z) {
            return this.k[i << 1];
        }
        u2.g(q.g(i, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        try {
            if (obj instanceof SimpleArrayMap) {
                int i = this.l;
                if (i != ((SimpleArrayMap) obj).l) {
                    return false;
                }
                SimpleArrayMap simpleArrayMap = (SimpleArrayMap) obj;
                for (int i2 = 0; i2 < i; i2++) {
                    Object e = e(i2);
                    Object h = h(i2);
                    Object obj2 = simpleArrayMap.get(e);
                    if (h == null) {
                        if (obj2 != null || !simpleArrayMap.containsKey(e)) {
                            return false;
                        }
                    } else if (!h.equals(obj2)) {
                        return false;
                    }
                }
                return true;
            }
            if (!(obj instanceof Map) || this.l != ((Map) obj).size()) {
                return false;
            }
            int i3 = this.l;
            for (int i4 = 0; i4 < i3; i4++) {
                Object e2 = e(i4);
                Object h2 = h(i4);
                Object obj3 = ((Map) obj).get(e2);
                if (h2 == null) {
                    if (obj3 != null || !((Map) obj).containsKey(e2)) {
                        return false;
                    }
                } else if (!h2.equals(obj3)) {
                    return false;
                }
            }
            return true;
        } catch (ClassCastException | NullPointerException unused) {
        }
        return false;
    }

    public final Object f(int i) {
        int i2;
        if (i >= 0 && i < (i2 = this.l)) {
            Object[] objArr = this.k;
            int i3 = i << 1;
            Object obj = objArr[i3 + 1];
            if (i2 <= 1) {
                clear();
                return obj;
            }
            int i4 = i2 - 1;
            int[] iArr = this.j;
            int i5 = 8;
            if (iArr.length > 8 && i2 < iArr.length / 3) {
                if (i2 > 8) {
                    i5 = i2 + (i2 >> 1);
                }
                this.j = Arrays.copyOf(iArr, i5);
                this.k = Arrays.copyOf(this.k, i5 << 1);
                if (i2 == this.l) {
                    if (i > 0) {
                        ArraysKt.f(0, 0, i, iArr, this.j);
                        ArraysKt.g(0, 0, i3, objArr, this.k);
                    }
                    if (i < i4) {
                        int i6 = i + 1;
                        ArraysKt.f(i, i6, i2, iArr, this.j);
                        ArraysKt.g(i3, i6 << 1, i2 << 1, objArr, this.k);
                    }
                } else {
                    u2.d();
                    return null;
                }
            } else {
                if (i < i4) {
                    int i7 = i + 1;
                    ArraysKt.f(i, i7, i2, iArr, iArr);
                    Object[] objArr2 = this.k;
                    ArraysKt.g(i3, i7 << 1, i2 << 1, objArr2, objArr2);
                }
                Object[] objArr3 = this.k;
                int i8 = i4 << 1;
                objArr3[i8] = null;
                objArr3[i8 + 1] = null;
            }
            if (i2 == this.l) {
                this.l = i4;
                return obj;
            }
            u2.d();
            return null;
        }
        u2.g(q.g(i, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public final Object g(int i, Object obj) {
        boolean z = false;
        if (i >= 0 && i < this.l) {
            z = true;
        }
        if (z) {
            int i2 = (i << 1) + 1;
            Object[] objArr = this.k;
            Object obj2 = objArr[i2];
            objArr[i2] = obj;
            return obj2;
        }
        u2.g(q.g(i, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public Object get(Object obj) {
        int c = c(obj);
        if (c >= 0) {
            return this.k[(c << 1) + 1];
        }
        return null;
    }

    public final Object getOrDefault(Object obj, Object obj2) {
        int c = c(obj);
        if (c >= 0) {
            return this.k[(c << 1) + 1];
        }
        return obj2;
    }

    public final Object h(int i) {
        boolean z = false;
        if (i >= 0 && i < this.l) {
            z = true;
        }
        if (z) {
            return this.k[(i << 1) + 1];
        }
        u2.g(q.g(i, "Expected index to be within 0..size()-1, but was "));
        return null;
    }

    public final int hashCode() {
        int i;
        int[] iArr = this.j;
        Object[] objArr = this.k;
        int i2 = this.l;
        int i3 = 1;
        int i4 = 0;
        int i5 = 0;
        while (i4 < i2) {
            Object obj = objArr[i3];
            int i6 = iArr[i4];
            if (obj != null) {
                i = obj.hashCode();
            } else {
                i = 0;
            }
            i5 += i ^ i6;
            i4++;
            i3 += 2;
        }
        return i5;
    }

    public final boolean isEmpty() {
        if (this.l <= 0) {
            return true;
        }
        return false;
    }

    public final Object put(Object obj, Object obj2) {
        int i;
        int d;
        int i2 = this.l;
        if (obj != null) {
            i = obj.hashCode();
        } else {
            i = 0;
        }
        if (obj != null) {
            d = b(i, obj);
        } else {
            d = d();
        }
        if (d >= 0) {
            int i3 = (d << 1) + 1;
            Object[] objArr = this.k;
            Object obj3 = objArr[i3];
            objArr[i3] = obj2;
            return obj3;
        }
        int i4 = ~d;
        int[] iArr = this.j;
        if (i2 >= iArr.length) {
            int i5 = 8;
            if (i2 >= 8) {
                i5 = (i2 >> 1) + i2;
            } else if (i2 < 4) {
                i5 = 4;
            }
            this.j = Arrays.copyOf(iArr, i5);
            this.k = Arrays.copyOf(this.k, i5 << 1);
            if (i2 != this.l) {
                u2.d();
                return null;
            }
        }
        if (i4 < i2) {
            int[] iArr2 = this.j;
            int i6 = i4 + 1;
            ArraysKt.f(i6, i4, i2, iArr2, iArr2);
            Object[] objArr2 = this.k;
            ArraysKt.g(i6 << 1, i4 << 1, this.l << 1, objArr2, objArr2);
        }
        int i7 = this.l;
        if (i2 == i7) {
            int[] iArr3 = this.j;
            if (i4 < iArr3.length) {
                iArr3[i4] = i;
                Object[] objArr3 = this.k;
                int i8 = i4 << 1;
                objArr3[i8] = obj;
                objArr3[i8 + 1] = obj2;
                this.l = i7 + 1;
                return null;
            }
        }
        u2.d();
        return null;
    }

    public final Object putIfAbsent(Object obj, Object obj2) {
        Object obj3 = get(obj);
        if (obj3 == null) {
            return put(obj, obj2);
        }
        return obj3;
    }

    public final boolean remove(Object obj, Object obj2) {
        int c = c(obj);
        if (c >= 0 && Intrinsics.a(obj2, h(c))) {
            f(c);
            return true;
        }
        return false;
    }

    public final boolean replace(Object obj, Object obj2, Object obj3) {
        int c = c(obj);
        if (c >= 0 && Intrinsics.a(obj2, h(c))) {
            g(c, obj3);
            return true;
        }
        return false;
    }

    public final int size() {
        return this.l;
    }

    public final String toString() {
        if (isEmpty()) {
            return "{}";
        }
        StringBuilder sb = new StringBuilder(this.l * 28);
        sb.append('{');
        int i = this.l;
        for (int i2 = 0; i2 < i; i2++) {
            if (i2 > 0) {
                sb.append(", ");
            }
            Object e = e(i2);
            if (e != sb) {
                sb.append(e);
            } else {
                sb.append("(this Map)");
            }
            sb.append('=');
            Object h = h(i2);
            if (h != sb) {
                sb.append(h);
            } else {
                sb.append("(this Map)");
            }
        }
        sb.append('}');
        return sb.toString();
    }

    public Object remove(Object obj) {
        int c = c(obj);
        if (c >= 0) {
            return f(c);
        }
        return null;
    }

    public final Object replace(Object obj, Object obj2) {
        int c = c(obj);
        if (c >= 0) {
            return g(c, obj2);
        }
        return null;
    }
}
