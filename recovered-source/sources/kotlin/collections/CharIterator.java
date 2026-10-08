package kotlin.collections;

import defpackage.k8;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.ranges.CharProgressionIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CharIterator implements Iterator<Character>, KMappedMarker {
    @Override // java.util.Iterator
    public final Character next() {
        CharProgressionIterator charProgressionIterator = (CharProgressionIterator) this;
        int i = charProgressionIterator.m;
        if (i == charProgressionIterator.k) {
            if (charProgressionIterator.l) {
                charProgressionIterator.l = false;
            } else {
                k8.o();
                return null;
            }
        } else {
            charProgressionIterator.m = charProgressionIterator.j + i;
        }
        return Character.valueOf((char) i);
    }

    @Override // java.util.Iterator
    public final void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }
}
