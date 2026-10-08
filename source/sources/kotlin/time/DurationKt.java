package kotlin.time;

import defpackage.u2;
import java.util.concurrent.TimeUnit;
import kotlin.ranges.RangesKt;
import kotlin.time.Duration;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DurationKt {
    public static final long a(long j, long j2) {
        if (j != 4611686018427387903L && j != -4611686018427387903L) {
            if (j2 != 4611686018427387903L && j2 != -4611686018427387903L) {
                return RangesKt.e(j + j2, -4611686018427387903L, 4611686018427387903L);
            }
            return j2;
        }
        if (-4611686018427387903L < j2 && j2 < 4611686018427387903L) {
            return j;
        }
        if ((j2 ^ j) >= 0) {
            return j;
        }
        return 9223372036854759646L;
    }

    public static final long b(long j) {
        long j2 = (j << 1) + 1;
        Duration.k.getClass();
        int i = DurationJvmKt.a;
        return j2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:100:0x01b8, code lost:
    
        if (r5 == r26.length()) goto L201;
     */
    /* JADX WARN: Code restructure failed: missing block: B:102:0x01c0, code lost:
    
        if (r26.charAt(r5) != 'S') goto L202;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01c2, code lost:
    
        r2 = (r14 * 1000000000) + r15;
        r14 = r9;
        r4 = kotlin.time.DurationUnit.m;
        r2 = r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:104:0x01d2, code lost:
    
        switch(r4.ordinal()) {
            case 0: goto L128;
            case 1: goto L127;
            case 2: goto L126;
            case 3: goto L125;
            case 4: goto L124;
            case 5: goto L123;
            case 6: goto L122;
            default: goto L121;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01d5, code lost:
    
        defpackage.f7.i(r4, "Unknown unit: ");
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x020c, code lost:
    
        r14 = r2 * r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01dd, code lost:
    
        r21 = 0.0864d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:108:0x0206, code lost:
    
        r2 = kotlin.math.MathKt.c(r2 * r21);
     */
    /* JADX WARN: Code restructure failed: missing block: B:109:0x01e3, code lost:
    
        r21 = 0.0036d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01e9, code lost:
    
        r21 = 6.0E-5d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01ef, code lost:
    
        r21 = 1.0E-6d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:112:0x01f5, code lost:
    
        r21 = 1.0E-9d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01fb, code lost:
    
        r21 = 1.0E-12d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:114:0x0201, code lost:
    
        r21 = 1.0E-15d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0104, code lost:
    
        defpackage.u2.g("");
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x0107, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x00f2, code lost:
    
        r2 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x00b1, code lost:
    
        r25 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00d1, code lost:
    
        if (r5 >= r26.length()) goto L218;
     */
    /* JADX WARN: Code restructure failed: missing block: B:47:0x00d3, code lost:
    
        r3 = r26.charAt(r5);
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00d9, code lost:
    
        if ('0' > r3) goto L219;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x00dd, code lost:
    
        if (r3 >= ':') goto L220;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00df, code lost:
    
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e6, code lost:
    
        if (r5 == r26.length()) goto L203;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x00ea, code lost:
    
        if (r2 == '+') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00ee, code lost:
    
        if (r2 == '-') goto L67;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x00f0, code lost:
    
        r2 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x00f6, code lost:
    
        if (r5 == (r23 + r2)) goto L204;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x00f8, code lost:
    
        r20 = 4611686018427387903L;
     */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0112  */
    /* JADX WARN: Removed duplicated region for block: B:194:0x029a A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0108 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:76:0x015c A[LOOP:5: B:75:0x015a->B:76:0x015c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:80:0x0172  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x0195 A[LOOP:7: B:87:0x0193->B:88:0x0195, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a3  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long c(String str) {
        int i;
        int i2;
        int i3;
        int i4;
        long j;
        int i5;
        int i6;
        DurationUnit durationUnit;
        long a;
        int i7;
        int min;
        int i8;
        char charAt;
        int i9;
        int i10;
        if (str.length() != 0) {
            char charAt2 = str.charAt(0);
            int i11 = 1;
            char c = '-';
            char c2 = '+';
            if (charAt2 != '+') {
                if (charAt2 != '-') {
                    i2 = 0;
                } else {
                    i2 = 1;
                }
                i = i2;
            } else {
                i = 0;
                i2 = 1;
            }
            if (str.length() > i2) {
                if (str.charAt(i2) == 'P') {
                    int i12 = i2 + 1;
                    if (i12 != str.length()) {
                        int i13 = 0;
                        DurationUnit durationUnit2 = null;
                        long j2 = 0;
                        long j3 = 0;
                        while (i12 < str.length()) {
                            char charAt3 = str.charAt(i12);
                            if (charAt3 == 'T') {
                                if (i13 == 0 && (i12 = i12 + 1) != str.length()) {
                                    i13 = i11;
                                } else {
                                    u2.g("");
                                    return 0L;
                                }
                            } else {
                                LongParser longParser = LongParser.c;
                                int i14 = i11;
                                char charAt4 = str.charAt(i12);
                                if (charAt4 != c2) {
                                    if (charAt4 != c) {
                                        i3 = i12;
                                    } else {
                                        i3 = i12 + 1;
                                        i4 = -1;
                                        while (i3 < str.length() && str.charAt(i3) == '0') {
                                            i3++;
                                        }
                                        j = 0;
                                        while (true) {
                                            if (i3 >= str.length()) {
                                                char charAt5 = str.charAt(i3);
                                                i5 = i12;
                                                if ('0' <= charAt5 && charAt5 < ':') {
                                                    i9 = charAt5 - '0';
                                                    i10 = i;
                                                    long j4 = longParser.a;
                                                    if (j <= j4 && (j != j4 || i9 <= longParser.b)) {
                                                        j = (j << 3) + (j << i14) + i9;
                                                        i3++;
                                                        i12 = i5;
                                                        longParser = longParser;
                                                        i = i10;
                                                    }
                                                }
                                            } else {
                                                i5 = i12;
                                            }
                                        }
                                        int i15 = i;
                                        if (i3 != str.length()) {
                                            if (charAt3 != '+' && charAt3 != '-') {
                                                i6 = 0;
                                            } else {
                                                i6 = i14;
                                            }
                                            if (i3 == i5 + i6) {
                                            }
                                            long j5 = j;
                                            if (str.charAt(i3) == '.') {
                                                int i16 = i3 + 1;
                                                int min2 = Math.min(i3 + 7, str.length());
                                                int i17 = 0;
                                                for (int i18 = i16; i18 < min2; i18++) {
                                                    char charAt6 = str.charAt(i18);
                                                    if ('0' <= charAt6 && charAt6 < ':') {
                                                        i17 = (charAt6 - '0') + (i17 << 3) + (i17 << 1);
                                                    }
                                                    for (i7 = 0; i7 < 6 - (i18 - i16); i7++) {
                                                        i17 = (i17 << 1) + (i17 << 3);
                                                    }
                                                    min = Math.min(i18 + 9, str.length());
                                                    i3 = i18;
                                                    int i19 = 0;
                                                    while (i3 < min) {
                                                        char charAt7 = str.charAt(i3);
                                                        int i20 = min;
                                                        if ('0' <= charAt7 && charAt7 < ':') {
                                                            i19 = (charAt7 - '0') + (i19 << 3) + (i19 << 1);
                                                            i3++;
                                                            min = i20;
                                                        }
                                                        for (i8 = 0; i8 < 9 - (i3 - i18); i8++) {
                                                            i19 = (i19 << 1) + (i19 << 3);
                                                        }
                                                        while (i3 < str.length() && '0' <= (charAt = str.charAt(i3)) && charAt < ':') {
                                                            i3++;
                                                        }
                                                        u2.g("");
                                                        return 0L;
                                                    }
                                                    while (i8 < 9 - (i3 - i18)) {
                                                    }
                                                    while (i3 < str.length()) {
                                                        i3++;
                                                    }
                                                    u2.g("");
                                                    return 0L;
                                                }
                                                while (i7 < 6 - (i18 - i16)) {
                                                }
                                                min = Math.min(i18 + 9, str.length());
                                                i3 = i18;
                                                int i192 = 0;
                                                while (i3 < min) {
                                                }
                                                while (i8 < 9 - (i3 - i18)) {
                                                }
                                                while (i3 < str.length()) {
                                                }
                                                u2.g("");
                                                return 0L;
                                            }
                                            char charAt8 = str.charAt(i3);
                                            if (charAt8 != 'D') {
                                                if (charAt8 != 'H') {
                                                    if (charAt8 != 'M') {
                                                        if (charAt8 != 'S') {
                                                            durationUnit = null;
                                                        } else {
                                                            durationUnit = DurationUnit.m;
                                                        }
                                                    } else {
                                                        durationUnit = DurationUnit.n;
                                                    }
                                                } else {
                                                    durationUnit = DurationUnit.o;
                                                }
                                            } else {
                                                durationUnit = DurationUnit.p;
                                            }
                                            if (durationUnit != null) {
                                                if (durationUnit2 != null && durationUnit2.compareTo(durationUnit) <= 0) {
                                                    u2.g("Unexpected order of duration components");
                                                    return 0L;
                                                }
                                                if (durationUnit == DurationUnit.p) {
                                                    if (i13 == 0) {
                                                        a = i4 * DurationUnitKt__DurationUnitKt.a(j5, durationUnit);
                                                    } else {
                                                        u2.g("");
                                                        return 0L;
                                                    }
                                                } else if (i13 != 0) {
                                                    a = a(j2, i4 * DurationUnitKt__DurationUnitKt.a(j5, durationUnit));
                                                    if (a == 9223372036854759646L) {
                                                        u2.g("");
                                                        return 0L;
                                                    }
                                                } else {
                                                    u2.g("");
                                                    return 0L;
                                                }
                                                j2 = a;
                                                i12 = i3 + 1;
                                                durationUnit2 = durationUnit;
                                                i11 = i14;
                                                i = i15;
                                                c = '-';
                                                c2 = '+';
                                            } else {
                                                throw new IllegalArgumentException("Unknown duration unit short name: " + str.charAt(i3));
                                            }
                                        }
                                        u2.g("");
                                        return 0L;
                                    }
                                } else {
                                    i3 = i12 + 1;
                                }
                                i4 = i14;
                                while (i3 < str.length()) {
                                    i3++;
                                }
                                j = 0;
                                while (true) {
                                    if (i3 >= str.length()) {
                                    }
                                    j = (j << 3) + (j << i14) + i9;
                                    i3++;
                                    i12 = i5;
                                    longParser = longParser;
                                    i = i10;
                                }
                                int i152 = i;
                                if (i3 != str.length()) {
                                }
                                u2.g("");
                                return 0L;
                            }
                        }
                        int i21 = i;
                        long g = Duration.g(e(j2, DurationUnit.l), e(j3, DurationUnit.k));
                        if (i21 != 0) {
                            if (g == Duration.n) {
                                return g;
                            }
                            return Duration.i(g);
                        }
                        return g;
                    }
                    u2.g("");
                    return 0L;
                }
                u2.g("");
                return 0L;
            }
            u2.g("No components");
            return 0L;
        }
        u2.g("The string is empty");
        return 0L;
    }

    public static final long d(int i, DurationUnit durationUnit) {
        if (durationUnit.compareTo(DurationUnit.m) <= 0) {
            long j = i;
            DurationUnit durationUnit2 = DurationUnit.k;
            long convert = TimeUnit.NANOSECONDS.convert(j, durationUnit.j);
            Duration.Companion companion = Duration.k;
            long j2 = convert << 1;
            int i2 = DurationJvmKt.a;
            return j2;
        }
        return e(i, durationUnit);
    }

    public static final long e(long j, DurationUnit durationUnit) {
        DurationUnit durationUnit2 = DurationUnit.k;
        TimeUnit timeUnit = durationUnit.j;
        TimeUnit timeUnit2 = TimeUnit.NANOSECONDS;
        long convert = timeUnit.convert(4611686018426999999L, timeUnit2);
        if ((-convert) <= j && j <= convert) {
            long convert2 = timeUnit2.convert(j, timeUnit);
            Duration.Companion companion = Duration.k;
            long j2 = convert2 << 1;
            int i = DurationJvmKt.a;
            return j2;
        }
        if (durationUnit.compareTo(DurationUnit.l) >= 0) {
            long signum = Long.signum(j);
            if (j < -9223372036854775807L) {
                j = -9223372036854775807L;
            }
            return b(signum * DurationUnitKt__DurationUnitKt.a(Math.abs(j), durationUnit));
        }
        return b(RangesKt.e(TimeUnit.MILLISECONDS.convert(j, timeUnit), -4611686018427387903L, 4611686018427387903L));
    }
}
