package kotlin.ranges;

import kotlin.collections.LongIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LongProgressionIterator extends LongIterator {
    public final long j;
    public final long k;
    public boolean l;
    public long m;

    public LongProgressionIterator(long j, long j2, long j3) {
        this.j = j3;
        this.k = j2;
        boolean z = false;
        if (j3 <= 0 ? j >= j2 : j <= j2) {
            z = true;
        }
        this.l = z;
        this.m = z ? j : j2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.l;
    }
}
