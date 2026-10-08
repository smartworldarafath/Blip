package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TrieIterator<E> extends AbstractListIterator<E> {
    public int l;
    public Object[] m;
    public boolean n;

    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v2, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r5v3 */
    public TrieIterator(Object[] objArr, int i, int i2, int i3) {
        super(i, i2);
        ?? r5;
        this.l = i3;
        Object[] objArr2 = new Object[i3];
        this.m = objArr2;
        if (i == i2) {
            r5 = 1;
        } else {
            r5 = 0;
        }
        this.n = r5;
        objArr2[0] = objArr;
        b(i - r5, 1);
    }

    public final Object a() {
        int i = this.j & 31;
        Object obj = this.m[this.l - 1];
        obj.getClass();
        return ((Object[]) obj)[i];
    }

    public final void b(int i, int i2) {
        int i3 = (this.l - i2) * 5;
        while (i2 < this.l) {
            Object[] objArr = this.m;
            Object obj = objArr[i2 - 1];
            obj.getClass();
            objArr[i2] = ((Object[]) obj)[UtilsKt.a(i, i3)];
            i3 -= 5;
            i2++;
        }
    }

    public final void c(int i) {
        int i2 = 0;
        while (UtilsKt.a(this.j, i2) == i) {
            i2 += 5;
        }
        if (i2 > 0) {
            b(this.j, ((this.l - 1) - (i2 / 5)) + 1);
        }
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            Object a = a();
            int i = this.j + 1;
            this.j = i;
            if (i == this.k) {
                this.n = true;
                return a;
            }
            c(0);
            return a;
        }
        k8.o();
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        if (hasPrevious()) {
            this.j--;
            if (this.n) {
                this.n = false;
                return a();
            }
            c(31);
            return a();
        }
        k8.o();
        return null;
    }
}
