package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import defpackage.g;
import java.util.Arrays;
import java.util.ListIterator;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentVector<E> extends AbstractPersistentList<E> implements PersistentList<E> {
    public final Object[] j;
    public final Object[] k;
    public final int l;
    public final int m;

    public PersistentVector(Object[] objArr, Object[] objArr2, int i, int i2) {
        boolean z;
        this.j = objArr;
        this.k = objArr2;
        this.l = i;
        this.m = i2;
        if (b() > 32) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            PreconditionsKt.a("Trie-based persistent vector should have at least 33 elements, got " + b());
        }
        int length = objArr2.length;
    }

    public static Object[] c(Object[] objArr, int i, int i2, Object obj, ObjectRef objectRef) {
        Object[] copyOf;
        int a = UtilsKt.a(i2, i);
        if (i == 0) {
            if (a == 0) {
                copyOf = new Object[32];
            } else {
                copyOf = Arrays.copyOf(objArr, 32);
            }
            ArraysKt.g(a + 1, a, 31, objArr, copyOf);
            objectRef.a = objArr[31];
            copyOf[a] = obj;
            return copyOf;
        }
        Object[] copyOf2 = Arrays.copyOf(objArr, 32);
        int i3 = i - 5;
        Object obj2 = objArr[a];
        obj2.getClass();
        copyOf2[a] = c((Object[]) obj2, i3, i2, obj, objectRef);
        while (true) {
            a++;
            if (a >= 32 || copyOf2[a] == null) {
                break;
            }
            Object obj3 = objArr[a];
            obj3.getClass();
            copyOf2[a] = c((Object[]) obj3, i3, 0, objectRef.a, objectRef);
        }
        return copyOf2;
    }

    public static Object[] e(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        Object[] e;
        int a = UtilsKt.a(i2, i);
        if (i == 5) {
            objectRef.a = objArr[a];
            e = null;
        } else {
            Object obj = objArr[a];
            obj.getClass();
            e = e((Object[]) obj, i - 5, i2, objectRef);
        }
        if (e == null && a == 0) {
            return null;
        }
        Object[] copyOf = Arrays.copyOf(objArr, 32);
        copyOf[a] = e;
        return copyOf;
    }

    public static Object[] l(int i, int i2, Object obj, Object[] objArr) {
        int a = UtilsKt.a(i2, i);
        Object[] copyOf = Arrays.copyOf(objArr, 32);
        if (i == 0) {
            copyOf[a] = obj;
            return copyOf;
        }
        Object obj2 = copyOf[a];
        obj2.getClass();
        copyOf[a] = l(i - 5, i2, obj, (Object[]) obj2);
        return copyOf;
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList add(int i, Object obj) {
        int i2 = this.l;
        ListImplementation.b(i, i2);
        if (i == i2) {
            return add(obj);
        }
        int k = k();
        Object[] objArr = this.j;
        if (i >= k) {
            return d(i - k, obj, objArr);
        }
        ObjectRef objectRef = new ObjectRef(null);
        return d(0, objectRef.a, c(objArr, this.m, i, obj, objectRef));
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.l;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentVectorBuilder builder() {
        return new PersistentVectorBuilder(this, this.j, this.k, this.m);
    }

    public final PersistentVector d(int i, Object obj, Object[] objArr) {
        int k = k();
        int i2 = this.l;
        int i3 = i2 - k;
        Object[] objArr2 = this.k;
        Object[] copyOf = Arrays.copyOf(objArr2, 32);
        if (i3 < 32) {
            ArraysKt.g(i + 1, i, i3, objArr2, copyOf);
            copyOf[i] = obj;
            return new PersistentVector(objArr, copyOf, i2 + 1, this.m);
        }
        Object obj2 = objArr2[31];
        ArraysKt.g(i + 1, i, i3 - 1, objArr2, copyOf);
        copyOf[i] = obj;
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj2;
        return f(objArr, copyOf, objArr3);
    }

    public final PersistentVector f(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i = this.l;
        int i2 = i >> 5;
        int i3 = this.m;
        if (i2 > (1 << i3)) {
            Object[] objArr4 = new Object[32];
            objArr4[0] = objArr;
            int i4 = i3 + 5;
            return new PersistentVector(g(i4, objArr4, objArr2), objArr3, i + 1, i4);
        }
        return new PersistentVector(g(i3, objArr, objArr2), objArr3, i + 1, i3);
    }

    public final Object[] g(int i, Object[] objArr, Object[] objArr2) {
        Object[] objArr3;
        int a = UtilsKt.a(b() - 1, i);
        if (objArr != null) {
            objArr3 = Arrays.copyOf(objArr, 32);
        } else {
            objArr3 = new Object[32];
        }
        if (i == 5) {
            objArr3[a] = objArr2;
            return objArr3;
        }
        objArr3[a] = g(i - 5, (Object[]) objArr3[a], objArr2);
        return objArr3;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        Object[] objArr;
        ListImplementation.a(i, b());
        if (k() <= i) {
            objArr = this.k;
        } else {
            Object[] objArr2 = this.j;
            for (int i2 = this.m; i2 > 0; i2 -= 5) {
                Object[] objArr3 = objArr2[UtilsKt.a(i, i2)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i & 31];
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList h(int i) {
        ListImplementation.a(i, this.l);
        int k = k();
        int i2 = this.m;
        Object[] objArr = this.j;
        if (i >= k) {
            return j(objArr, k, i2, i - k);
        }
        return j(i(objArr, i2, i, new ObjectRef(this.k[0])), k, i2, 0);
    }

    public final Object[] i(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        Object[] copyOf;
        int a = UtilsKt.a(i2, i);
        int i3 = 31;
        if (i == 0) {
            if (a == 0) {
                copyOf = new Object[32];
            } else {
                copyOf = Arrays.copyOf(objArr, 32);
            }
            ArraysKt.g(a, a + 1, 32, objArr, copyOf);
            copyOf[31] = objectRef.a;
            objectRef.a = objArr[a];
            return copyOf;
        }
        if (objArr[31] == null) {
            i3 = UtilsKt.a(k() - 1, i);
        }
        Object[] copyOf2 = Arrays.copyOf(objArr, 32);
        int i4 = i - 5;
        int i5 = a + 1;
        if (i5 <= i3) {
            while (true) {
                Object obj = copyOf2[i3];
                obj.getClass();
                copyOf2[i3] = i((Object[]) obj, i4, 0, objectRef);
                if (i3 == i5) {
                    break;
                }
                i3--;
            }
        }
        Object obj2 = copyOf2[a];
        obj2.getClass();
        copyOf2[a] = i((Object[]) obj2, i4, i2, objectRef);
        return copyOf2;
    }

    public final AbstractPersistentList j(Object[] objArr, int i, int i2, int i3) {
        int i4 = this.l - i;
        if (i4 == 1) {
            if (i2 == 0) {
                if (objArr.length == 33) {
                    objArr = Arrays.copyOf(objArr, 32);
                }
                return new SmallPersistentVector(objArr);
            }
            ObjectRef objectRef = new ObjectRef(null);
            Object[] e = e(objArr, i2, i - 1, objectRef);
            e.getClass();
            Object obj = objectRef.a;
            obj.getClass();
            Object[] objArr2 = (Object[]) obj;
            if (e[1] == null) {
                Object obj2 = e[0];
                obj2.getClass();
                return new PersistentVector((Object[]) obj2, objArr2, i, i2 - 5);
            }
            return new PersistentVector(e, objArr2, i, i2);
        }
        Object[] objArr3 = this.k;
        Object[] copyOf = Arrays.copyOf(objArr3, 32);
        int i5 = i4 - 1;
        if (i3 < i5) {
            ArraysKt.g(i3, i3 + 1, i4, objArr3, copyOf);
        }
        copyOf[i5] = null;
        return new PersistentVector(objArr, copyOf, (i + i4) - 1, i2);
    }

    public final int k() {
        return (this.l - 1) & (-32);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        ListImplementation.b(i, this.l);
        return new PersistentVectorIterator(i, this.l, (this.m / 5) + 1, this.j, this.k);
    }

    @Override // kotlin.collections.AbstractList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList set(int i, Object obj) {
        int i2 = this.l;
        ListImplementation.a(i, i2);
        int k = k();
        Object[] objArr = this.j;
        Object[] objArr2 = this.k;
        int i3 = this.m;
        if (k <= i) {
            Object[] copyOf = Arrays.copyOf(objArr2, 32);
            copyOf[i & 31] = obj;
            return new PersistentVector(objArr, copyOf, i2, i3);
        }
        return new PersistentVector(l(i3, i, obj, objArr), objArr2, i2, i3);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList v(g gVar) {
        PersistentVectorBuilder persistentVectorBuilder = new PersistentVectorBuilder(this, this.j, this.k, this.m);
        persistentVectorBuilder.E(gVar);
        return persistentVectorBuilder.d();
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList add(Object obj) {
        int k = k();
        int i = this.l;
        int i2 = i - k;
        Object[] objArr = this.j;
        Object[] objArr2 = this.k;
        if (i2 < 32) {
            Object[] copyOf = Arrays.copyOf(objArr2, 32);
            copyOf[i2] = obj;
            return new PersistentVector(objArr, copyOf, i + 1, this.m);
        }
        Object[] objArr3 = new Object[32];
        objArr3[0] = obj;
        return f(objArr, objArr2, objArr3);
    }
}
