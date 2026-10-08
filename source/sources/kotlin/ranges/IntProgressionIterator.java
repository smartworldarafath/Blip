package kotlin.ranges;

import defpackage.k8;
import kotlin.collections.IntIterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntProgressionIterator extends IntIterator {
    public final int j;
    public final int k;
    public boolean l;
    public int m;

    public IntProgressionIterator(int i, int i2, int i3) {
        this.j = i3;
        this.k = i2;
        boolean z = false;
        if (i3 <= 0 ? i >= i2 : i <= i2) {
            z = true;
        }
        this.l = z;
        this.m = z ? i : i2;
    }

    @Override // java.util.Iterator
    public final boolean hasNext() {
        return this.l;
    }

    @Override // kotlin.collections.IntIterator
    public final int nextInt() {
        int i = this.m;
        if (i == this.k) {
            if (this.l) {
                this.l = false;
                return i;
            }
            k8.o();
            return 0;
        }
        this.m = this.j + i;
        return i;
    }
}
