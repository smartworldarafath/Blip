package kotlin.sequences;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TakeWhileSequence$iterator$1 implements Iterator<Object>, KMappedMarker {
    public final Iterator j;
    public int k = -1;
    public Object l;
    public final /* synthetic */ TakeWhileSequence m;

    public TakeWhileSequence$iterator$1(TakeWhileSequence takeWhileSequence) {
        this.m = takeWhileSequence;
        this.j = takeWhileSequence.a.iterator();
    }

    public final void a() {
        Iterator it = this.j;
        if (it.hasNext()) {
            Object next = it.next();
            if (((Boolean) this.m.b.b(next)).booleanValue()) {
                this.k = 1;
                this.l = next;
                return;
            }
        }
        this.k = 0;
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
