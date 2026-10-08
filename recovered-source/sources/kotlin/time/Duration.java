package kotlin.time;

import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.RangesKt;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Duration implements Comparable<Duration> {
    public static final Companion k = new Object();
    public static final long l = DurationKt.b(4611686018427387903L);
    public static final long m = DurationKt.b(-4611686018427387903L);
    public static final long n = 9223372036854759646L;
    public final long j;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public static final long a(long j, long j2) {
        long j3 = j2 / 1000000;
        long a = DurationKt.a(j, j3);
        if (-4611686018426L <= a && a < 4611686018427L) {
            long j4 = ((a * 1000000) + (j2 - (j3 * 1000000))) << 1;
            int i = DurationJvmKt.a;
            return j4;
        }
        return DurationKt.b(a);
    }

    public static final void b(StringBuilder sb, int i, int i2, int i3, String str, boolean z) {
        sb.append(i);
        if (i2 != 0) {
            sb.append('.');
            String y = StringsKt.y(i3, String.valueOf(i2));
            int i4 = -1;
            int length = y.length() - 1;
            if (length >= 0) {
                while (true) {
                    int i5 = length - 1;
                    if (y.charAt(length) != '0') {
                        i4 = length;
                        break;
                    } else if (i5 < 0) {
                        break;
                    } else {
                        length = i5;
                    }
                }
            }
            int i6 = i4 + 1;
            if (!z && i6 < 3) {
                sb.append((CharSequence) y, 0, i6);
            } else {
                sb.append((CharSequence) y, 0, ((i4 + 3) / 3) * 3);
            }
        }
        sb.append(str);
    }

    public static int c(long j, long j2) {
        long j3 = j ^ j2;
        if (j3 >= 0 && (((int) j3) & 1) != 0) {
            int i = (((int) j) & 1) - (((int) j2) & 1);
            if (j < 0) {
                return -i;
            }
            return i;
        }
        return Intrinsics.c(j, j2);
    }

    public static final long d(long j) {
        if ((((int) j) & 1) == 1 && !f(j)) {
            return j >> 1;
        }
        return h(j, DurationUnit.l);
    }

    public static final int e(long j) {
        long j2;
        if (f(j)) {
            return 0;
        }
        if ((((int) j) & 1) == 1) {
            j2 = ((j >> 1) % 1000) * 1000000;
        } else {
            j2 = (j >> 1) % 1000000000;
        }
        return (int) j2;
    }

    public static final boolean f(long j) {
        if (j != l && j != m) {
            return false;
        }
        return true;
    }

    public static final long g(long j, long j2) {
        int i = ((int) j) & 1;
        if (i == (((int) j2) & 1)) {
            if (i == 0) {
                long j3 = (j >> 1) + (j2 >> 1);
                if (-4611686018426999999L <= j3 && j3 < 4611686018427000000L) {
                    long j4 = j3 << 1;
                    int i2 = DurationJvmKt.a;
                    return j4;
                }
                return DurationKt.b(j3 / 1000000);
            }
            long a = DurationKt.a(j >> 1, j2 >> 1);
            if (a != 9223372036854759646L) {
                if (a != 4611686018427387903L && a != -4611686018427387903L) {
                    if (-4611686018426L <= a && a < 4611686018427L) {
                        long j5 = (a * 1000000) << 1;
                        int i3 = DurationJvmKt.a;
                        return j5;
                    }
                    return DurationKt.b(RangesKt.e(a, -4611686018427387903L, 4611686018427387903L));
                }
                return DurationKt.b(a);
            }
            u2.g("Summing infinite durations of different signs yields an undefined result.");
            return 0L;
        }
        if (i == 1) {
            return a(j >> 1, j2 >> 1);
        }
        return a(j2 >> 1, j >> 1);
    }

    public static final long h(long j, DurationUnit durationUnit) {
        DurationUnit durationUnit2;
        if (j == l) {
            return Long.MAX_VALUE;
        }
        if (j == m) {
            return Long.MIN_VALUE;
        }
        long j2 = j >> 1;
        if ((((int) j) & 1) == 0) {
            durationUnit2 = DurationUnit.k;
        } else {
            durationUnit2 = DurationUnit.l;
        }
        return durationUnit.j.convert(j2, durationUnit2.j);
    }

    public static final long i(long j) {
        long j2 = ((-(j >> 1)) << 1) + (((int) j) & 1);
        int i = DurationJvmKt.a;
        return j2;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Duration duration) {
        return c(this.j, duration.j);
    }

    public final boolean equals(Object obj) {
        if (obj instanceof Duration) {
            if (this.j != ((Duration) obj).j) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Long.hashCode(this.j);
    }

    public final String toString() {
        boolean z;
        int h;
        int h2;
        int h3;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        long j = this.j;
        if (j == 0) {
            return "0s";
        }
        if (j == l) {
            return "Infinity";
        }
        if (j == m) {
            return "-Infinity";
        }
        int i = 0;
        if (j < 0) {
            z = true;
        } else {
            z = false;
        }
        StringBuilder sb = new StringBuilder();
        if (z) {
            sb.append('-');
        }
        if (j < 0) {
            j = i(j);
        }
        long h4 = h(j, DurationUnit.p);
        if (f(j)) {
            h = 0;
        } else {
            h = (int) (h(j, DurationUnit.o) % 24);
        }
        if (f(j)) {
            h2 = 0;
        } else {
            h2 = (int) (h(j, DurationUnit.n) % 60);
        }
        if (f(j)) {
            h3 = 0;
        } else {
            h3 = (int) (h(j, DurationUnit.m) % 60);
        }
        int e = e(j);
        if (h4 != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (h != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        if (h2 != 0) {
            z4 = true;
        } else {
            z4 = false;
        }
        if (h3 == 0 && e == 0) {
            z5 = false;
        } else {
            z5 = true;
        }
        if (z2) {
            sb.append(h4);
            sb.append('d');
            i = 1;
        }
        if (z3 || (z2 && (z4 || z5))) {
            int i2 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(h);
            sb.append('h');
            i = i2;
        }
        if (z4 || (z5 && (z3 || z2))) {
            int i3 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            sb.append(h2);
            sb.append('m');
            i = i3;
        }
        if (z5) {
            int i4 = i + 1;
            if (i > 0) {
                sb.append(' ');
            }
            if (h3 == 0 && !z2 && !z3 && !z4) {
                if (e >= 1000000) {
                    b(sb, e / 1000000, e % 1000000, 6, "ms", false);
                } else if (e >= 1000) {
                    b(sb, e / 1000, e % 1000, 3, "us", false);
                } else {
                    sb.append(e);
                    sb.append("ns");
                }
            } else {
                b(sb, h3, e, 9, "s", false);
            }
            i = i4;
        }
        if (z && i > 1) {
            sb.insert(1, '(').append(')');
        }
        return sb.toString();
    }
}
