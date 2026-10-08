package androidx.media3.common.util;

import java.math.RoundingMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TimestampAdjuster {
    public long a;
    public long b;
    public long c;
    public final ThreadLocal d = new ThreadLocal();

    public TimestampAdjuster(long j) {
        e(j);
    }

    public final synchronized long a(long j) {
        boolean z;
        long j2;
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            synchronized (this) {
                if (this.b != -9223372036854775807L) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z) {
                    long j3 = this.a;
                    if (j3 == 9223372036854775806L) {
                        Long l = (Long) this.d.get();
                        l.getClass();
                        j3 = l.longValue();
                    }
                    this.b = j3 - j;
                    notifyAll();
                }
                this.c = j;
                j2 = j + this.b;
            }
            return j2;
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long b(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j2 = this.c;
            if (j2 != -9223372036854775807L) {
                String str = Util.a;
                long J = Util.J(j2, 90000L, 1000000L, RoundingMode.DOWN);
                long j3 = (4294967296L + J) / 8589934592L;
                long j4 = ((j3 - 1) * 8589934592L) + j;
                long j5 = (j3 * 8589934592L) + j;
                if (Math.abs(j4 - J) < Math.abs(j5 - J)) {
                    j = j4;
                } else {
                    j = j5;
                }
            }
            long j6 = j;
            String str2 = Util.a;
            return a(Util.J(j6, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long c(long j) {
        if (j == -9223372036854775807L) {
            return -9223372036854775807L;
        }
        try {
            long j2 = this.c;
            if (j2 != -9223372036854775807L) {
                String str = Util.a;
                long J = Util.J(j2, 90000L, 1000000L, RoundingMode.DOWN);
                long j3 = J / 8589934592L;
                long j4 = (j3 * 8589934592L) + j;
                long j5 = ((j3 + 1) * 8589934592L) + j;
                if (j4 >= J) {
                    j = j4;
                } else {
                    j = j5;
                }
            }
            long j6 = j;
            String str2 = Util.a;
            return a(Util.J(j6, 1000000L, 90000L, RoundingMode.DOWN));
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized long d() {
        long j;
        j = this.a;
        if (j == Long.MAX_VALUE || j == 9223372036854775806L) {
            j = -9223372036854775807L;
        }
        return j;
    }

    public final synchronized void e(long j) {
        long j2;
        this.a = j;
        if (j == Long.MAX_VALUE) {
            j2 = 0;
        } else {
            j2 = -9223372036854775807L;
        }
        this.b = j2;
        this.c = -9223372036854775807L;
    }
}
