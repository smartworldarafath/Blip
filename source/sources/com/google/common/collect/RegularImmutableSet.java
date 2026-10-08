package com.google.common.collect;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RegularImmutableSet<E> extends ImmutableSet<E> {
    public static final Object[] r;
    public static final RegularImmutableSet s;
    public final transient Object[] m;
    public final transient int n;
    public final transient Object[] o;
    public final transient int p;
    public final transient int q;

    static {
        Object[] objArr = new Object[0];
        r = objArr;
        s = new RegularImmutableSet(0, 0, 0, objArr, objArr);
    }

    public RegularImmutableSet(int i, int i2, int i3, Object[] objArr, Object[] objArr2) {
        this.m = objArr;
        this.n = i;
        this.o = objArr2;
        this.p = i2;
        this.q = i3;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int c(int i, Object[] objArr) {
        Object[] objArr2 = this.m;
        int i2 = this.q;
        System.arraycopy(objArr2, 0, objArr, i, i2);
        return i + i2;
    }

    @Override // com.google.common.collect.ImmutableCollection, java.util.AbstractCollection, java.util.Collection
    public final boolean contains(Object obj) {
        int hashCode;
        if (obj != null) {
            Object[] objArr = this.o;
            if (objArr.length != 0) {
                if (obj == null) {
                    hashCode = 0;
                } else {
                    hashCode = obj.hashCode();
                }
                int a = Hashing.a(hashCode);
                while (true) {
                    int i = a & this.p;
                    Object obj2 = objArr[i];
                    if (obj2 == null) {
                        return false;
                    }
                    if (obj2.equals(obj)) {
                        return true;
                    }
                    a = i + 1;
                }
            }
        }
        return false;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final Object[] d() {
        return this.m;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int e() {
        return this.q;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final int f() {
        return 0;
    }

    @Override // com.google.common.collect.ImmutableCollection
    public final boolean g() {
        return false;
    }

    @Override // com.google.common.collect.ImmutableSet, java.util.Collection, java.util.Set
    public final int hashCode() {
        return this.n;
    }

    @Override // com.google.common.collect.ImmutableCollection
    /* renamed from: i */
    public final UnmodifiableIterator iterator() {
        return b().listIterator(0);
    }

    @Override // com.google.common.collect.ImmutableSet
    public final ImmutableList p() {
        return ImmutableList.j(this.q, this.m);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
    public final int size() {
        return this.q;
    }
}
