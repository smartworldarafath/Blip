package kotlin.ranges;

import defpackage.u2;
import java.util.Iterator;
import kotlin.internal.ProgressionUtilKt;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class IntProgression implements Iterable<Integer>, KMappedMarker {
    public final int j;
    public final int k;
    public final int l;

    public IntProgression(int i, int i2, int i3) {
        if (i3 != 0) {
            if (i3 != Integer.MIN_VALUE) {
                this.j = i;
                this.k = ProgressionUtilKt.a(i, i2, i3);
                this.l = i3;
                return;
            }
            u2.g("Step must be greater than Int.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        u2.g("Step must be non-zero.");
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof IntProgression) {
            if (!isEmpty() || !((IntProgression) obj).isEmpty()) {
                IntProgression intProgression = (IntProgression) obj;
                if (this.j == intProgression.j && this.k == intProgression.k && this.l == intProgression.l) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public int hashCode() {
        if (isEmpty()) {
            return -1;
        }
        return (((this.j * 31) + this.k) * 31) + this.l;
    }

    public boolean isEmpty() {
        int i = this.k;
        int i2 = this.l;
        int i3 = this.j;
        if (i2 > 0) {
            if (i3 <= i) {
                return false;
            }
            return true;
        }
        if (i3 >= i) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator<Integer> iterator() {
        return new IntProgressionIterator(this.j, this.k, this.l);
    }

    public String toString() {
        StringBuilder sb;
        int i = this.k;
        int i2 = this.l;
        int i3 = this.j;
        if (i2 > 0) {
            sb = new StringBuilder();
            sb.append(i3);
            sb.append("..");
            sb.append(i);
            sb.append(" step ");
            sb.append(i2);
        } else {
            sb = new StringBuilder();
            sb.append(i3);
            sb.append(" downTo ");
            sb.append(i);
            sb.append(" step ");
            sb.append(-i2);
        }
        return sb.toString();
    }
}
