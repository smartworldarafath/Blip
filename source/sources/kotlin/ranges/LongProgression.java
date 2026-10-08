package kotlin.ranges;

import defpackage.jb;
import defpackage.u2;
import java.util.Iterator;
import kotlin.jvm.internal.markers.KMappedMarker;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class LongProgression implements Iterable<Long>, KMappedMarker {
    public final long j;
    public final long k;
    public final long l;

    public LongProgression(long j, long j2, long j3) {
        if (j3 != 0) {
            if (j3 != Long.MIN_VALUE) {
                this.j = j;
                if (j3 > 0) {
                    if (j < j2) {
                        long j4 = j2 % j3;
                        long j5 = j % j3;
                        long j6 = ((j4 < 0 ? j4 + j3 : j4) - (j5 < 0 ? j5 + j3 : j5)) % j3;
                        j2 -= j6 < 0 ? j6 + j3 : j6;
                    }
                } else if (j3 < 0) {
                    if (j > j2) {
                        long j7 = -j3;
                        long j8 = j % j7;
                        long j9 = j2 % j7;
                        long j10 = ((j8 < 0 ? j8 + j7 : j8) - (j9 < 0 ? j9 + j7 : j9)) % j7;
                        j2 += j10 < 0 ? j10 + j7 : j10;
                    }
                } else {
                    u2.g("Step is zero.");
                    throw null;
                }
                this.k = j2;
                this.l = j3;
                return;
            }
            u2.g("Step must be greater than Long.MIN_VALUE to avoid overflow on negation.");
            throw null;
        }
        u2.g("Step must be non-zero.");
        throw null;
    }

    public boolean equals(Object obj) {
        if (obj instanceof LongProgression) {
            if (!isEmpty() || !((LongProgression) obj).isEmpty()) {
                LongProgression longProgression = (LongProgression) obj;
                if (this.j == longProgression.j && this.k == longProgression.k && this.l == longProgression.l) {
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
        return Long.hashCode(this.l) + jb.a(Long.hashCode(this.j) * 31, 31, this.k);
    }

    public boolean isEmpty() {
        long j = this.l;
        long j2 = this.k;
        long j3 = this.j;
        if (j > 0) {
            if (j3 <= j2) {
                return false;
            }
            return true;
        }
        if (j3 >= j2) {
            return false;
        }
        return true;
    }

    @Override // java.lang.Iterable
    public final Iterator<Long> iterator() {
        return new LongProgressionIterator(this.j, this.k, this.l);
    }

    public String toString() {
        StringBuilder sb;
        long j = this.l;
        long j2 = this.k;
        long j3 = this.j;
        if (j > 0) {
            sb = new StringBuilder();
            sb.append(j3);
            sb.append("..");
            sb.append(j2);
            sb.append(" step ");
            sb.append(j);
        } else {
            sb = new StringBuilder();
            sb.append(j3);
            sb.append(" downTo ");
            sb.append(j2);
            sb.append(" step ");
            sb.append(-j);
        }
        return sb.toString();
    }
}
