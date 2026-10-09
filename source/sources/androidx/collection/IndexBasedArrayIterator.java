package androidx.collection;

import defpackage.k8;
import defpackage.u2;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IndexBasedArrayIterator<T> implements Iterator<T>, KMappedMarker {
    public int j;
    public int k;
    public boolean l;

    public IndexBasedArrayIterator(int i) {
        this.j = i;
    }

    public abstract Object a(int i);

    public abstract void b(int i);

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.k < this.j) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (hasNext()) {
            Object a = a(this.k);
            this.k++;
            this.l = true;
            return a;
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        if (this.l) {
            int i = this.k - 1;
            this.k = i;
            b(i);
            this.j--;
            this.l = false;
            return;
        }
        u2.l("Call next() before removing an element.");
    }
}
