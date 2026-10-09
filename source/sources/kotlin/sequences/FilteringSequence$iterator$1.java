package kotlin.sequences;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FilteringSequence$iterator$1 implements Iterator<Object>, KMappedMarker {
    public final Iterator j;
    public int k = -1;
    public Object l;
    public final /* synthetic */ FilteringSequence m;

    public FilteringSequence$iterator$1(FilteringSequence filteringSequence) {
        this.m = filteringSequence;
        this.j = new TransformingSequence$iterator$1(filteringSequence.a);
    }

    public final void a() {
        Object next;
        do {
            Iterator it = this.j;
            if (it.hasNext()) {
                next = it.next();
            } else {
                this.k = 0;
                return;
            }
        } while (((Boolean) this.m.b.b(next)).booleanValue());
        this.l = next;
        this.k = 1;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.k == -1) {
            a();
        }
        if (this.k == 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.k == -1) {
            a();
        }
        if (this.k != 0) {
            Object obj = this.l;
            this.l = null;
            this.k = -1;
            return obj;
        }
        k8.o();
        return null;
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
