package kotlin.sequences;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GeneratorSequence$iterator$1 implements Iterator<Object>, KMappedMarker {
    public Object j;
    public int k = -2;
    public final /* synthetic */ GeneratorSequence l;

    public GeneratorSequence$iterator$1(GeneratorSequence generatorSequence) {
        this.l = generatorSequence;
    }

    public final void a() {
        Object b;
        int i;
        int i2 = this.k;
        GeneratorSequence generatorSequence = this.l;
        if (i2 == -2) {
            b = generatorSequence.a.a();
        } else {
            Function1 function1 = generatorSequence.b;
            Object obj = this.j;
            obj.getClass();
            b = function1.b(obj);
        }
        this.j = b;
        if (b == null) {
            i = 0;
        } else {
            i = 1;
        }
        this.k = i;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        if (this.k < 0) {
            a();
        }
        if (this.k == 1) {
            return true;
        }
        return false;
    }

    @Override // java.util.Iterator
    public final Object next() {
        if (this.k < 0) {
            a();
        }
        if (this.k != 0) {
            Object obj = this.j;
            obj.getClass();
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
