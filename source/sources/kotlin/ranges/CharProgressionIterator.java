package kotlin.ranges;

import kotlin.collections.CharIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CharProgressionIterator extends CharIterator {
    public final int j;
    public final int k;
    public boolean l;
    public int m;

    public CharProgressionIterator(char c, char c2, int i) {
        this.j = i;
        this.k = c2;
        boolean z = false;
        if (i <= 0 ? c >= c2 : c <= c2) {
            z = true;
        }
        this.l = z;
        this.m = z ? c : c2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.l;
    }
}
