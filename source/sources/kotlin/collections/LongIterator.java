package kotlin.collections;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.LongProgressionIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LongIterator implements Iterator<Long>, KMappedMarker {
    @Override // java.util.Iterator
    public final Long next() {
        LongProgressionIterator longProgressionIterator = (LongProgressionIterator) this;
        long j = longProgressionIterator.m;
        if (j == longProgressionIterator.k) {
            if (longProgressionIterator.l) {
                longProgressionIterator.l = false;
            } else {
                k8.o();
                return null;
            }
        } else {
            longProgressionIterator.m = longProgressionIterator.j + j;
        }
        return Long.valueOf(j);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
