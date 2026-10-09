package kotlin.time;

import defpackage.f7;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class DurationUnitKt__DurationUnitKt extends DurationUnitKt__DurationUnitJvmKt {
    public static final long a(long j, DurationUnit durationUnit) {
        long j2;
        int ordinal = durationUnit.ordinal();
        if (ordinal != 2) {
            if (ordinal != 3) {
                if (ordinal != 4) {
                    if (ordinal != 5) {
                        if (ordinal == 6) {
                            j2 = 86400000;
                        } else {
                            f7.i(durationUnit, "Wrong unit for millisMultiplier: ");
                            return 0L;
                        }
                    } else {
                        j2 = 3600000;
                    }
                } else {
                    j2 = 60000;
                }
            } else {
                j2 = 1000;
            }
        } else {
            j2 = 1;
        }
        if (j == 0) {
            return 0L;
        }
        if (j == 1) {
            if (j2 <= 4611686018427387903L) {
                return j2;
            }
        } else if (j2 == 1) {
            if (j <= 4611686018427387903L) {
                return j;
            }
        } else {
            int numberOfLeadingZeros = (128 - Long.numberOfLeadingZeros(j)) - Long.numberOfLeadingZeros(j2);
            if (numberOfLeadingZeros < 63) {
                return j * j2;
            }
            if (numberOfLeadingZeros <= 63) {
                long j3 = j * j2;
                if (j3 <= 4611686018427387903L) {
                    return j3;
                }
            }
        }
        return 4611686018427387903L;
    }
}
