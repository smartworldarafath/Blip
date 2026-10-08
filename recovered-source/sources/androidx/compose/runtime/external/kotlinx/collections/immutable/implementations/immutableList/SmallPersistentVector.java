package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import androidx.compose.runtime.external.kotlinx.collections.immutable.ImmutableList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.ListImplementation;
import defpackage.g;
import java.util.Arrays;
import java.util.Collection;
import java.util.Iterator;
import java.util.ListIterator;
import kotlin.collections.ArraysKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SmallPersistentVector<E> extends AbstractPersistentList<E> implements ImmutableList<E> {
    public static final SmallPersistentVector k = new SmallPersistentVector(new Object[0]);
    public final Object[] j;

    public SmallPersistentVector(Object[] objArr) {
        this.j = objArr;
    }

    @Override // java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList add(int i, Object obj) {
        Object[] objArr = this.j;
        ListImplementation.b(i, objArr.length);
        if (i == objArr.length) {
            return add(obj);
        }
        if (objArr.length < 32) {
            Object[] objArr2 = new Object[objArr.length + 1];
            ArraysKt.j(0, i, 6, objArr, objArr2);
            ArraysKt.g(i + 1, i, objArr.length, objArr, objArr2);
            objArr2[i] = obj;
            return new SmallPersistentVector(objArr2);
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        ArraysKt.g(i + 1, i, objArr.length - 1, objArr, copyOf);
        copyOf[i] = obj;
        Object[] objArr3 = new Object[32];
        objArr3[0] = objArr[31];
        return new PersistentVector(copyOf, objArr3, objArr.length + 1, 0);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractPersistentList, java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList addAll(Collection collection) {
        Object[] objArr = this.j;
        if (collection.size() + objArr.length <= 32) {
            Object[] copyOf = Arrays.copyOf(objArr, collection.size() + objArr.length);
            int length = objArr.length;
            Iterator<E> it = collection.iterator();
            while (it.hasNext()) {
                copyOf[length] = it.next();
                length++;
            }
            return new SmallPersistentVector(copyOf);
        }
        PersistentVectorBuilder builder = builder();
        builder.addAll(collection);
        return builder.d();
    }

    @Override // kotlin.collections.AbstractCollection
    public final int b() {
        return this.j.length;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentVectorBuilder builder() {
        return new PersistentVectorBuilder(this, null, this.j, 0);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final Object get(int i) {
        Object[] objArr = this.j;
        ListImplementation.a(i, objArr.length);
        return objArr[i];
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList h(int i) {
        Object[] objArr = this.j;
        ListImplementation.a(i, objArr.length);
        if (objArr.length == 1) {
            return k;
        }
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length - 1);
        ArraysKt.g(i, i + 1, objArr.length, objArr, copyOf);
        return new SmallPersistentVector(copyOf);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int indexOf(Object obj) {
        return ArraysKt.t(this.j, obj);
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final int lastIndexOf(Object obj) {
        Object[] objArr = this.j;
        if (obj == null) {
            int length = objArr.length - 1;
            if (length >= 0) {
                while (true) {
                    int i = length - 1;
                    if (objArr[length] == null) {
                        return length;
                    }
                    if (i < 0) {
                        break;
                    }
                    length = i;
                }
            }
        } else {
            int length2 = objArr.length - 1;
            if (length2 >= 0) {
                while (true) {
                    int i2 = length2 - 1;
                    if (obj.equals(objArr[length2])) {
                        return length2;
                    }
                    if (i2 < 0) {
                        break;
                    }
                    length2 = i2;
                }
            }
        }
        return -1;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public final ListIterator listIterator(int i) {
        Object[] objArr = this.j;
        ListImplementation.b(i, objArr.length);
        return new BufferIterator(objArr, i, objArr.length);
    }

    @Override // kotlin.collections.AbstractList, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList set(int i, Object obj) {
        Object[] objArr = this.j;
        ListImplementation.a(i, objArr.length);
        Object[] copyOf = Arrays.copyOf(objArr, objArr.length);
        copyOf[i] = obj;
        return new SmallPersistentVector(copyOf);
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList v(g gVar) {
        Object[] objArr = this.j;
        int length = objArr.length;
        int length2 = objArr.length;
        Object[] objArr2 = objArr;
        boolean z = false;
        for (int i = 0; i < length2; i++) {
            Object obj = objArr[i];
            if (((Boolean) gVar.b(obj)).booleanValue()) {
                if (!z) {
                    objArr2 = Arrays.copyOf(objArr, objArr.length);
                    z = true;
                    length = i;
                }
            } else if (z) {
                objArr2[length] = obj;
                length++;
            }
        }
        if (length == objArr.length) {
            return this;
        }
        if (length == 0) {
            return k;
        }
        return new SmallPersistentVector(ArraysKt.l(objArr2, 0, length));
    }

    @Override // java.util.Collection, java.util.List, androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList
    public final PersistentList add(Object obj) {
        Object[] objArr = this.j;
        if (objArr.length < 32) {
            Object[] copyOf = Arrays.copyOf(objArr, objArr.length + 1);
            copyOf[objArr.length] = obj;
            return new SmallPersistentVector(copyOf);
        }
        Object[] objArr2 = new Object[32];
        objArr2[0] = obj;
        return new PersistentVector(objArr, objArr2, objArr.length + 1, 0);
    }
}
