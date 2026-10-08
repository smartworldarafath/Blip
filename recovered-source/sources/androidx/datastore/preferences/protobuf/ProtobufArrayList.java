package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.Internal;
import defpackage.fe;
import defpackage.jb;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.RandomAccess;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ProtobufArrayList<E> extends AbstractProtobufList<E> implements RandomAccess {
    public static final ProtobufArrayList m = new ProtobufArrayList(new Object[0], 0, false);
    public Object[] k;
    public int l;

    public ProtobufArrayList(Object[] objArr, int i, boolean z) {
        super(z);
        this.k = objArr;
        this.l = i;
    }

    @Override // java.util.AbstractList, java.util.List
    public final void add(int i, Object obj) {
        int i2;
        b();
        if (i >= 0 && i <= (i2 = this.l)) {
            Object[] objArr = this.k;
            if (i2 < objArr.length) {
                System.arraycopy(objArr, i, objArr, i + 1, i2 - i);
            } else {
                Object[] objArr2 = new Object[((i2 * 3) / 2) + 1];
                System.arraycopy(objArr, 0, objArr2, 0, i);
                System.arraycopy(this.k, i, objArr2, i + 1, this.l - i);
                this.k = objArr2;
            }
            this.k[i] = obj;
            this.l++;
            ((AbstractList) this).modCount++;
            return;
        }
        fe.k(this.l, jb.j("Index:", i, ", Size:"));
    }

    public final void c(int i) {
        if (i >= 0 && i < this.l) {
            return;
        }
        fe.k(this.l, jb.j("Index:", i, ", Size:"));
    }

    public final Internal.ProtobufList d(int i) {
        if (i >= this.l) {
            return new ProtobufArrayList(Arrays.copyOf(this.k, i), this.l, true);
        }
        fe.h();
        return null;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object get(int i) {
        c(i);
        return this.k[i];
    }

    @Override // androidx.datastore.preferences.protobuf.AbstractProtobufList, java.util.AbstractList, java.util.List
    public final Object remove(int i) {
        b();
        c(i);
        Object[] objArr = this.k;
        Object obj = objArr[i];
        if (i < this.l - 1) {
            System.arraycopy(objArr, i + 1, objArr, i, (r2 - i) - 1);
        }
        this.l--;
        ((AbstractList) this).modCount++;
        return obj;
    }

    @Override // java.util.AbstractList, java.util.List
    public final Object set(int i, Object obj) {
        b();
        c(i);
        Object[] objArr = this.k;
        Object obj2 = objArr[i];
        objArr[i] = obj;
        ((AbstractList) this).modCount++;
        return obj2;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.l;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public final boolean add(Object obj) {
        b();
        int i = this.l;
        Object[] objArr = this.k;
        if (i == objArr.length) {
            this.k = Arrays.copyOf(objArr, ((i * 3) / 2) + 1);
        }
        Object[] objArr2 = this.k;
        int i2 = this.l;
        this.l = i2 + 1;
        objArr2[i2] = obj;
        ((AbstractList) this).modCount++;
        return true;
    }
}
