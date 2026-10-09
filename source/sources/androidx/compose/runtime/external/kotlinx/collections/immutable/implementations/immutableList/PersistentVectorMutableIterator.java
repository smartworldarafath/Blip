package androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList;

import defpackage.k8;
import defpackage.u2;
import io.sentry.d;
import java.util.ListIterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PersistentVectorMutableIterator<T> extends AbstractListIterator<T> implements ListIterator<T>, KMappedMarker {
    public final PersistentVectorBuilder l;
    public int m;
    public TrieIterator n;
    public int o;

    public PersistentVectorMutableIterator(PersistentVectorBuilder persistentVectorBuilder, int i) {
        super(i, persistentVectorBuilder.q);
        this.l = persistentVectorBuilder;
        this.m = persistentVectorBuilder.f();
        this.o = -1;
        b();
    }

    public final void a() {
        if (this.m == this.l.f()) {
            return;
        }
        u2.d();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public final void add(Object obj) {
        a();
        int i = this.j;
        PersistentVectorBuilder persistentVectorBuilder = this.l;
        persistentVectorBuilder.add(i, obj);
        this.j++;
        this.k = persistentVectorBuilder.b();
        this.m = persistentVectorBuilder.f();
        this.o = -1;
        b();
    }

    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r0v6 */
    public final void b() {
        PersistentVectorBuilder persistentVectorBuilder = this.l;
        Object[] objArr = persistentVectorBuilder.o;
        if (objArr == null) {
            this.n = null;
            return;
        }
        int i = (persistentVectorBuilder.q - 1) & (-32);
        int i2 = this.j;
        if (i2 > i) {
            i2 = i;
        }
        int i3 = (persistentVectorBuilder.m / 5) + 1;
        TrieIterator trieIterator = this.n;
        if (trieIterator == null) {
            this.n = new TrieIterator(objArr, i2, i, i3);
            return;
        }
        trieIterator.j = i2;
        trieIterator.k = i;
        trieIterator.l = i3;
        if (trieIterator.m.length < i3) {
            trieIterator.m = new Object[i3];
        }
        ?? r0 = 0;
        trieIterator.m[0] = objArr;
        if (i2 == i) {
            r0 = 1;
        }
        trieIterator.n = r0;
        trieIterator.b(i2 - r0, 1);
    }

    @Override // java.util.ListIterator, java.util.Iterator
    public final Object next() {
        a();
        if (hasNext()) {
            int i = this.j;
            this.o = i;
            TrieIterator trieIterator = this.n;
            PersistentVectorBuilder persistentVectorBuilder = this.l;
            if (trieIterator == null) {
                Object[] objArr = persistentVectorBuilder.p;
                this.j = i + 1;
                return objArr[i];
            }
            if (trieIterator.hasNext()) {
                this.j++;
                return trieIterator.next();
            }
            Object[] objArr2 = persistentVectorBuilder.p;
            int i2 = this.j;
            this.j = i2 + 1;
            return objArr2[i2 - trieIterator.k];
        }
        k8.o();
        return null;
    }

    @Override // java.util.ListIterator
    public final Object previous() {
        a();
        if (hasPrevious()) {
            int i = this.j;
            this.o = i - 1;
            TrieIterator trieIterator = this.n;
            PersistentVectorBuilder persistentVectorBuilder = this.l;
            if (trieIterator == null) {
                Object[] objArr = persistentVectorBuilder.p;
                int i2 = i - 1;
                this.j = i2;
                return objArr[i2];
            }
            int i3 = trieIterator.k;
            if (i > i3) {
                Object[] objArr2 = persistentVectorBuilder.p;
                int i4 = i - 1;
                this.j = i4;
                return objArr2[i4 - i3];
            }
            this.j = i - 1;
            return trieIterator.previous();
        }
        k8.o();
        return null;
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator, java.util.Iterator
    public final void remove() {
        a();
        int i = this.o;
        if (i != -1) {
            PersistentVectorBuilder persistentVectorBuilder = this.l;
            persistentVectorBuilder.c(i);
            int i2 = this.o;
            if (i2 < this.j) {
                this.j = i2;
            }
            this.k = persistentVectorBuilder.b();
            this.m = persistentVectorBuilder.f();
            this.o = -1;
            b();
            return;
        }
        d.d();
    }

    @Override // androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableList.AbstractListIterator, java.util.ListIterator
    public final void set(Object obj) {
        a();
        int i = this.o;
        if (i != -1) {
            PersistentVectorBuilder persistentVectorBuilder = this.l;
            persistentVectorBuilder.set(i, obj);
            this.m = persistentVectorBuilder.f();
            b();
            return;
        }
        d.d();
    }
}
