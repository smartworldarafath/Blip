package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership;
import defpackage.g;
import defpackage.u2;
import java.util.AbstractList;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import kotlin.collections.AbstractMutableList;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.ArrayIteratorKt;
import kotlin.jvm.internal.markers.KMutableCollection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentVectorBuilder<E> extends AbstractMutableList<E> implements List, Collection, KMutableCollection {
    public static final /* synthetic */ int r = 0;
    public PersistentList j;
    public Object[] k;
    public Object[] l;
    public int m;
    public MutabilityOwnership n = new Object();
    public Object[] o;
    public Object[] p;
    public int q;

    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership, java.lang.Object] */
    public PersistentVectorBuilder(AbstractPersistentList abstractPersistentList, Object[] objArr, Object[] objArr2, int i) {
        this.j = abstractPersistentList;
        this.k = objArr;
        this.l = objArr2;
        this.m = i;
        this.o = objArr;
        this.p = objArr2;
        this.q = abstractPersistentList.size();
    }

    public static void e(Object[] objArr, int i, Iterator it) {
        while (i < 32 && it.hasNext()) {
            objArr[i] = it.next();
            i++;
        }
    }

    public final Object[] A(int i, Object[] objArr, Object[] objArr2) {
        int a = UtilsKt.a(b() - 1, i);
        Object[] m = m(objArr);
        if (i == 5) {
            m[a] = objArr2;
            return m;
        }
        m[a] = A(i - 5, (Object[]) m[a], objArr2);
        return m;
    }

    public final int B(Function1 function1, Object[] objArr, int i, int i2, ObjectRef objectRef, ArrayList arrayList, ArrayList arrayList2) {
        Object[] p;
        if (k(objArr)) {
            arrayList.add(objArr);
        }
        Object obj = objectRef.a;
        obj.getClass();
        Object[] objArr2 = (Object[]) obj;
        Object[] objArr3 = objArr2;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj2 = objArr[i3];
            if (!((Boolean) function1.b(obj2)).booleanValue()) {
                if (i2 == 32) {
                    if (!arrayList.isEmpty()) {
                        p = (Object[]) arrayList.remove(arrayList.size() - 1);
                    } else {
                        p = p();
                    }
                    objArr3 = p;
                    i2 = 0;
                }
                objArr3[i2] = obj2;
                i2++;
            }
        }
        objectRef.a = objArr3;
        if (objArr2 != objArr3) {
            arrayList2.add(objArr2);
        }
        return i2;
    }

    public final int C(Function1 function1, Object[] objArr, int i, ObjectRef objectRef) {
        Object[] objArr2 = objArr;
        int i2 = i;
        boolean z = false;
        for (int i3 = 0; i3 < i; i3++) {
            Object obj = objArr[i3];
            if (((Boolean) function1.b(obj)).booleanValue()) {
                if (!z) {
                    objArr2 = m(objArr);
                    z = true;
                    i2 = i3;
                }
            } else if (z) {
                objArr2[i2] = obj;
                i2++;
            }
        }
        objectRef.a = objArr2;
        return i2;
    }

    public final int D(Function1 function1, int i, ObjectRef objectRef) {
        int C = C(function1, this.p, i, objectRef);
        Object obj = objectRef.a;
        if (C == i) {
            return i;
        }
        obj.getClass();
        Object[] objArr = (Object[]) obj;
        Arrays.fill(objArr, C, i, (Object) null);
        this.p = objArr;
        this.q -= i - C;
        return C;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0049, code lost:
    
        if (r0 != r8) goto L6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:4:0x0016, code lost:
    
        if (D(r1, r8, r5) != r8) goto L6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean E(Function1 function1) {
        int i;
        Function1 function12 = function1;
        int K = K();
        Object[] objArr = null;
        ObjectRef objectRef = new ObjectRef(null);
        boolean z = false;
        if (this.o != null) {
            AbstractListIterator l = l(0);
            int i2 = 32;
            while (i2 == 32 && l.hasNext()) {
                i2 = C(function12, (Object[]) l.next(), 32, objectRef);
            }
            if (i2 == 32) {
                l.hasNext();
                int D = D(function12, K, objectRef);
                if (D == 0) {
                    u(this.o, this.q, this.m);
                }
            } else {
                int previousIndex = l.previousIndex() << 5;
                ArrayList arrayList = new ArrayList();
                ArrayList arrayList2 = new ArrayList();
                int i3 = i2;
                while (l.hasNext()) {
                    i3 = B(function12, (Object[]) l.next(), 32, i3, objectRef, arrayList2, arrayList);
                    function12 = function1;
                }
                int B = B(function1, this.p, K, i3, objectRef, arrayList2, arrayList);
                Object obj = objectRef.a;
                obj.getClass();
                Object[] objArr2 = (Object[]) obj;
                Arrays.fill(objArr2, B, 32, (Object) null);
                boolean isEmpty = arrayList.isEmpty();
                Object[] objArr3 = this.o;
                if (isEmpty) {
                    objArr3.getClass();
                } else {
                    objArr3 = x(objArr3, previousIndex, this.m, arrayList.iterator());
                }
                int size = previousIndex + (arrayList.size() << 5);
                if ((size & 31) != 0) {
                    PreconditionsKt.a("invalid size");
                }
                if (size == 0) {
                    this.m = 0;
                } else {
                    int i4 = size - 1;
                    while (true) {
                        i = this.m;
                        if ((i4 >> i) != 0) {
                            break;
                        }
                        this.m = i - 5;
                        Object[] objArr4 = objArr3[0];
                        objArr4.getClass();
                        objArr3 = objArr4;
                    }
                    objArr = s(objArr3, i4, i);
                }
                this.o = objArr;
                this.p = objArr2;
                this.q = size + B;
            }
            z = true;
        }
        if (z) {
            ((AbstractList) this).modCount++;
        }
        return z;
    }

    public final Object[] F(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        int a = UtilsKt.a(i2, i);
        int i3 = 31;
        if (i == 0) {
            Object obj = objArr[a];
            Object[] m = m(objArr);
            ArraysKt.g(a, a + 1, 32, objArr, m);
            m[31] = objectRef.a;
            objectRef.a = obj;
            return m;
        }
        if (objArr[31] == null) {
            i3 = UtilsKt.a(H() - 1, i);
        }
        Object[] m2 = m(objArr);
        int i4 = i - 5;
        int i5 = a + 1;
        if (i5 <= i3) {
            while (true) {
                Object obj2 = m2[i3];
                obj2.getClass();
                m2[i3] = F((Object[]) obj2, i4, 0, objectRef);
                if (i3 == i5) {
                    break;
                }
                i3--;
            }
        }
        Object obj3 = m2[a];
        obj3.getClass();
        m2[a] = F((Object[]) obj3, i4, i2, objectRef);
        return m2;
    }

    public final Object G(Object[] objArr, int i, int i2, int i3) {
        int i4 = this.q - i;
        Object[] objArr2 = this.p;
        if (i4 == 1) {
            Object obj = objArr2[0];
            u(objArr, i, i2);
            return obj;
        }
        Object obj2 = objArr2[i3];
        Object[] m = m(objArr2);
        ArraysKt.g(i3, i3 + 1, i4, objArr2, m);
        m[i4 - 1] = null;
        this.o = objArr;
        this.p = m;
        this.q = (i + i4) - 1;
        this.m = i2;
        return obj2;
    }

    public final int H() {
        int i = this.q;
        if (i <= 32) {
            return 0;
        }
        return (i - 1) & (-32);
    }

    public final Object[] I(Object[] objArr, int i, int i2, Object obj, ObjectRef objectRef) {
        int a = UtilsKt.a(i2, i);
        Object[] m = m(objArr);
        if (i == 0) {
            if (m != objArr) {
                ((AbstractList) this).modCount++;
            }
            objectRef.a = m[a];
            m[a] = obj;
            return m;
        }
        Object obj2 = m[a];
        obj2.getClass();
        m[a] = I((Object[]) obj2, i - 5, i2, obj, objectRef);
        return m;
    }

    public final void J(Collection collection, int i, Object[] objArr, int i2, Object[][] objArr2, int i3, Object[] objArr3) {
        Object[] p;
        if (i3 < 1) {
            PreconditionsKt.a("requires at least one nullBuffer");
        }
        Object[] m = m(objArr);
        objArr2[0] = m;
        int i4 = i & 31;
        int size = ((collection.size() + i) - 1) & 31;
        int i5 = (i2 - i4) + size;
        if (i5 < 32) {
            ArraysKt.g(size + 1, i4, i2, m, objArr3);
        } else {
            int i6 = i5 - 31;
            if (i3 == 1) {
                p = m;
            } else {
                p = p();
                i3--;
                objArr2[i3] = p;
            }
            int i7 = i2 - i6;
            ArraysKt.g(0, i7, i2, m, objArr3);
            ArraysKt.g(size + 1, i4, i7, m, p);
            objArr3 = p;
        }
        Iterator<E> it = collection.iterator();
        e(m, i4, it);
        for (int i8 = 1; i8 < i3; i8++) {
            Object[] p2 = p();
            e(p2, 0, it);
            objArr2[i8] = p2;
        }
        e(objArr3, 0, it);
    }

    public final int K() {
        int i = this.q;
        if (i <= 32) {
            return i;
        }
        return i - ((i - 1) & (-32));
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        ListImplementation.b(i, b());
        if (i == b()) {
            add(obj);
            return;
        }
        ((AbstractList) this).modCount++;
        int H = H();
        if (i >= H) {
            j(i - H, obj, this.o);
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.o;
        objArr.getClass();
        j(0, objectRef.a, i(objArr, this.m, i, obj, objectRef));
    }

    @Override // java.util.AbstractList, java.util.List
    public final boolean addAll(int i, Collection collection) {
        Collection collection2;
        Object[] p;
        ListImplementation.b(i, this.q);
        if (i == this.q) {
            return addAll(collection);
        }
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int i2 = (i >> 5) << 5;
        int size = ((collection.size() + (this.q - i2)) - 1) / 32;
        if (size == 0) {
            int i3 = i & 31;
            int size2 = ((collection.size() + i) - 1) & 31;
            Object[] objArr = this.p;
            Object[] m = m(objArr);
            ArraysKt.g(size2 + 1, i3, K(), objArr, m);
            e(m, i3, collection.iterator());
            this.p = m;
            this.q = collection.size() + this.q;
            return true;
        }
        Object[][] objArr2 = new Object[size];
        int K = K();
        int size3 = collection.size() + this.q;
        if (size3 > 32) {
            size3 -= (size3 - 1) & (-32);
        }
        if (i >= H()) {
            p = p();
            collection2 = collection;
            J(collection2, i, this.p, K, objArr2, size, p);
            objArr2 = objArr2;
        } else {
            collection2 = collection;
            Object[] objArr3 = this.p;
            if (size3 > K) {
                int i4 = size3 - K;
                Object[] o = o(i4, objArr3);
                g(collection2, i, i4, objArr2, size, o);
                objArr2 = objArr2;
                p = o;
            } else {
                p = p();
                int i5 = K - size3;
                ArraysKt.g(0, i5, K, objArr3, p);
                int i6 = 32 - i5;
                Object[] o2 = o(i6, this.p);
                int i7 = size - 1;
                objArr2[i7] = o2;
                g(collection2, i, i6, objArr2, i7, o2);
                collection2 = collection2;
            }
        }
        this.o = y(this.o, i2, objArr2);
        this.p = p;
        this.q = collection2.size() + this.q;
        return true;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final int b() {
        return this.q;
    }

    @Override // kotlin.collections.AbstractMutableList
    public final Object c(int i) {
        ListImplementation.a(i, b());
        ((AbstractList) this).modCount++;
        int H = H();
        if (i >= H) {
            return G(this.o, H, this.m, i - H);
        }
        ObjectRef objectRef = new ObjectRef(this.p[0]);
        Object[] objArr = this.o;
        objArr.getClass();
        G(F(objArr, this.m, i, objectRef), H, this.m, 0);
        return objectRef.a;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [androidx.compose.runtime.external.kotlinx.collections.immutable.internal.MutabilityOwnership, java.lang.Object] */
    public final PersistentList d() {
        PersistentList persistentVector;
        Object[] objArr = this.o;
        if (objArr == this.k && this.p == this.l) {
            persistentVector = this.j;
        } else {
            this.n = new Object();
            this.k = objArr;
            Object[] objArr2 = this.p;
            this.l = objArr2;
            if (objArr == null) {
                if (objArr2.length == 0) {
                    persistentVector = SmallPersistentVector.k;
                } else {
                    persistentVector = new SmallPersistentVector(Arrays.copyOf(objArr2, this.q));
                }
            } else {
                persistentVector = new PersistentVector(objArr, objArr2, this.q, this.m);
            }
        }
        this.j = persistentVector;
        return persistentVector;
    }

    public final int f() {
        return ((AbstractList) this).modCount;
    }

    public final void g(Collection collection, int i, int i2, Object[][] objArr, int i3, Object[] objArr2) {
        if (this.o != null) {
            int i4 = i >> 5;
            AbstractListIterator l = l(H() >> 5);
            int i5 = i3;
            Object[] objArr3 = objArr2;
            while (l.previousIndex() != i4) {
                Object[] objArr4 = (Object[]) l.previous();
                ArraysKt.g(0, 32 - i2, 32, objArr4, objArr3);
                objArr3 = o(i2, objArr4);
                i5--;
                objArr[i5] = objArr3;
            }
            Object[] objArr5 = (Object[]) l.previous();
            int H = i3 - (((H() >> 5) - 1) - i4);
            if (H < i3) {
                objArr2 = objArr[H];
                objArr2.getClass();
            }
            J(collection, i, objArr5, 32, objArr, H, objArr2);
            return;
        }
        u2.l("root is null");
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        Object[] objArr;
        ListImplementation.a(i, b());
        if (H() <= i) {
            objArr = this.p;
        } else {
            Object[] objArr2 = this.o;
            objArr2.getClass();
            for (int i2 = this.m; i2 > 0; i2 -= 5) {
                Object[] objArr3 = objArr2[UtilsKt.a(i, i2)];
                objArr3.getClass();
                objArr2 = objArr3;
            }
            objArr = objArr2;
        }
        return objArr[i & 31];
    }

    public final Object[] i(Object[] objArr, int i, int i2, Object obj, ObjectRef objectRef) {
        Object obj2;
        int a = UtilsKt.a(i2, i);
        if (i == 0) {
            objectRef.a = objArr[31];
            Object[] m = m(objArr);
            ArraysKt.g(a + 1, a, 31, objArr, m);
            m[a] = obj;
            return m;
        }
        Object[] m2 = m(objArr);
        int i3 = i - 5;
        Object obj3 = m2[a];
        obj3.getClass();
        m2[a] = i((Object[]) obj3, i3, i2, obj, objectRef);
        while (true) {
            a++;
            if (a >= 32 || (obj2 = m2[a]) == null) {
                break;
            }
            m2[a] = i((Object[]) obj2, i3, 0, objectRef.a, objectRef);
        }
        return m2;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
    public final Iterator iterator() {
        return listIterator(0);
    }

    public final void j(int i, Object obj, Object[] objArr) {
        int K = K();
        Object[] m = m(this.p);
        Object[] objArr2 = this.p;
        if (K < 32) {
            ArraysKt.g(i + 1, i, K, objArr2, m);
            m[i] = obj;
            this.o = objArr;
            this.p = m;
            this.q++;
            return;
        }
        Object obj2 = objArr2[31];
        ArraysKt.g(i + 1, i, 31, objArr2, m);
        m[i] = obj;
        z(objArr, m, r(obj2));
    }

    public final boolean k(Object[] objArr) {
        if (objArr.length == 33 && objArr[32] == this.n) {
            return true;
        }
        return false;
    }

    public final AbstractListIterator l(int i) {
        Object[] objArr = this.o;
        if (objArr != null) {
            int H = H() >> 5;
            ListImplementation.b(i, H);
            int i2 = this.m;
            if (i2 == 0) {
                return new SingleElementListIterator(i, objArr);
            }
            return new TrieIterator(objArr, i, H, i2 / 5);
        }
        u2.l("Invalid root");
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        ListImplementation.b(i, this.q);
        return new PersistentVectorMutableIterator(this, i);
    }

    public final Object[] m(Object[] objArr) {
        if (objArr == null) {
            return p();
        }
        if (k(objArr)) {
            return objArr;
        }
        Object[] p = p();
        int length = objArr.length;
        if (length > 32) {
            length = 32;
        }
        ArraysKt.j(0, length, 6, objArr, p);
        return p;
    }

    public final Object[] o(int i, Object[] objArr) {
        if (k(objArr)) {
            ArraysKt.g(i, 0, 32 - i, objArr, objArr);
            return objArr;
        }
        Object[] p = p();
        ArraysKt.g(i, 0, 32 - i, objArr, p);
        return p;
    }

    public final Object[] p() {
        Object[] objArr = new Object[33];
        objArr[32] = this.n;
        return objArr;
    }

    public final Object[] r(Object obj) {
        Object[] objArr = new Object[33];
        objArr[0] = obj;
        objArr[32] = this.n;
        return objArr;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean removeAll(Collection collection) {
        return E(new g(1, collection));
    }

    public final Object[] s(Object[] objArr, int i, int i2) {
        if (i2 < 0) {
            PreconditionsKt.a("shift should be positive");
        }
        if (i2 == 0) {
            return objArr;
        }
        int a = UtilsKt.a(i, i2);
        Object obj = objArr[a];
        obj.getClass();
        Object s = s((Object[]) obj, i, i2 - 5);
        if (a < 31) {
            int i3 = a + 1;
            if (objArr[i3] != null) {
                if (k(objArr)) {
                    Arrays.fill(objArr, i3, 32, (Object) null);
                }
                Object[] p = p();
                ArraysKt.g(0, 0, i3, objArr, p);
                objArr = p;
            }
        }
        if (s != objArr[a]) {
            Object[] m = m(objArr);
            m[a] = s;
            return m;
        }
        return objArr;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        ListImplementation.a(i, b());
        if (H() <= i) {
            Object[] m = m(this.p);
            if (m != this.p) {
                ((AbstractList) this).modCount++;
            }
            int i2 = i & 31;
            Object obj2 = m[i2];
            m[i2] = obj;
            this.p = m;
            return obj2;
        }
        ObjectRef objectRef = new ObjectRef(null);
        Object[] objArr = this.o;
        objArr.getClass();
        this.o = I(objArr, this.m, i, obj, objectRef);
        return objectRef.a;
    }

    public final Object[] t(Object[] objArr, int i, int i2, ObjectRef objectRef) {
        Object[] t;
        int a = UtilsKt.a(i2 - 1, i);
        if (i == 5) {
            objectRef.a = objArr[a];
            t = null;
        } else {
            Object obj = objArr[a];
            obj.getClass();
            t = t((Object[]) obj, i - 5, i2, objectRef);
        }
        if (t == null && a == 0) {
            return null;
        }
        Object[] m = m(objArr);
        m[a] = t;
        return m;
    }

    public final void u(Object[] objArr, int i, int i2) {
        if (i2 == 0) {
            this.o = null;
            if (objArr == null) {
                objArr = new Object[0];
            }
            this.p = objArr;
            this.q = i;
            this.m = i2;
            return;
        }
        ObjectRef objectRef = new ObjectRef(null);
        objArr.getClass();
        Object[] t = t(objArr, i2, i, objectRef);
        t.getClass();
        Object obj = objectRef.a;
        obj.getClass();
        this.p = (Object[]) obj;
        this.q = i;
        if (t[1] == null) {
            this.o = (Object[]) t[0];
            this.m = i2 - 5;
        } else {
            this.o = t;
            this.m = i2;
        }
    }

    public final Object[] x(Object[] objArr, int i, int i2, Iterator it) {
        boolean z;
        if (!it.hasNext()) {
            PreconditionsKt.a("invalid buffersIterator");
        }
        if (i2 >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            PreconditionsKt.a("negative shift");
        }
        if (i2 == 0) {
            return (Object[]) it.next();
        }
        Object[] m = m(objArr);
        int a = UtilsKt.a(i, i2);
        int i3 = i2 - 5;
        m[a] = x((Object[]) m[a], i, i3, it);
        while (true) {
            a++;
            if (a >= 32 || !it.hasNext()) {
                break;
            }
            m[a] = x((Object[]) m[a], 0, i3, it);
        }
        return m;
    }

    public final Object[] y(Object[] objArr, int i, Object[][] objArr2) {
        Object[] m;
        Iterator a = ArrayIteratorKt.a(objArr2);
        int i2 = i >> 5;
        int i3 = this.m;
        if (i2 < (1 << i3)) {
            m = x(objArr, i, i3, a);
        } else {
            m = m(objArr);
        }
        while (a.hasNext()) {
            this.m += 5;
            m = r(m);
            int i4 = this.m;
            x(m, 1 << i4, i4, a);
        }
        return m;
    }

    public final void z(Object[] objArr, Object[] objArr2, Object[] objArr3) {
        int i = this.q;
        int i2 = i >> 5;
        int i3 = this.m;
        if (i2 > (1 << i3)) {
            this.o = A(this.m + 5, r(objArr), objArr2);
            this.p = objArr3;
            this.m += 5;
            this.q++;
            return;
        }
        if (objArr == null) {
            this.o = objArr2;
            this.p = objArr3;
            this.q = i + 1;
        } else {
            this.o = A(i3, objArr, objArr2);
            this.p = objArr3;
            this.q++;
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public final ListIterator listIterator() {
        return listIterator(0);
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        ((AbstractList) this).modCount++;
        int K = K();
        if (K < 32) {
            Object[] m = m(this.p);
            m[K] = obj;
            this.p = m;
            this.q = b() + 1;
        } else {
            z(this.o, this.p, r(obj));
        }
        return true;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean addAll(Collection collection) {
        if (collection.isEmpty()) {
            return false;
        }
        ((AbstractList) this).modCount++;
        int K = K();
        Iterator<E> it = collection.iterator();
        if (32 - K >= collection.size()) {
            Object[] m = m(this.p);
            e(m, K, it);
            this.p = m;
            this.q = collection.size() + this.q;
            return true;
        }
        int size = ((collection.size() + K) - 1) / 32;
        Object[][] objArr = new Object[size];
        Object[] m2 = m(this.p);
        e(m2, K, it);
        objArr[0] = m2;
        for (int i = 1; i < size; i++) {
            Object[] p = p();
            e(p, 0, it);
            objArr[i] = p;
        }
        this.o = y(this.o, H(), objArr);
        Object[] p2 = p();
        e(p2, 0, it);
        this.p = p2;
        this.q = collection.size() + this.q;
        return true;
    }
}
