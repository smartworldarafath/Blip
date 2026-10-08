package kotlin.time;

import kotlin.time.Duration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LongSaturatedMathKt {
    public static final long a(long j) {
        if (j < 0) {
            Duration.Companion companion = Duration.k;
            return Duration.m;
        }
        Duration.Companion companion2 = Duration.k;
        return Duration.l;
    }

    public static final long b(long j, long j2) {
        DurationUnit durationUnit = DurationUnit.k;
        long j3 = j - j2;
        if (((j3 ^ j) & (~(j3 ^ j2))) < 0) {
            DurationUnit durationUnit2 = DurationUnit.l;
            if (durationUnit.compareTo(durationUnit2) < 0) {
                long j4 = (j / 1000000) - (j2 / 1000000);
                long j5 = (j % 1000000) - (j2 % 1000000);
                Duration.Companion companion = Duration.k;
                return Duration.g(DurationKt.e(j4, durationUnit2), DurationKt.e(j5, durationUnit));
            }
            return Duration.i(a(j3));
        }
        return DurationKt.e(j3, durationUnit);
    }
}
