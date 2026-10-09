package kotlin.time;

import defpackage.a7;
import defpackage.jb;
import defpackage.u2;
import java.io.Serializable;
import kotlin.jvm.internal.Intrinsics;
import kotlin.time.InstantParseResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Instant implements Comparable<Instant>, Serializable {
    public static final Instant l = new Instant(0, -31557014167219200L);
    public static final Instant m = new Instant(999999999, 31556889864403199L);
    public final long j;
    public final int k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static Instant a(int i, long j) {
            long j2 = i;
            long j3 = j2 / 1000000000;
            if ((j2 ^ 1000000000) < 0 && j3 * 1000000000 != j2) {
                j3--;
            }
            long j4 = j + j3;
            if ((j ^ j4) < 0 && (j3 ^ j) >= 0) {
                if (j > 0) {
                    return Instant.m;
                }
                return Instant.l;
            }
            if (j4 < -31557014167219200L) {
                return Instant.l;
            }
            if (j4 > 31556889864403199L) {
                return Instant.m;
            }
            long j5 = j2 % 1000000000;
            return new Instant((int) (j5 + ((((j5 ^ 1000000000) & ((-j5) | j5)) >> 63) & 1000000000)), j4);
        }

        public static Instant b(String str) {
            int i;
            InstantParseResult b;
            int i2;
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            boolean z;
            int i8;
            long j;
            char charAt;
            char charAt2;
            str.getClass();
            if (str.length() == 0) {
                b = new InstantParseResult.Failure(str, "An empty string is not a valid Instant");
            } else {
                char charAt3 = str.charAt(0);
                if (charAt3 != '+' && charAt3 != '-') {
                    i = 0;
                    charAt3 = ' ';
                } else {
                    i = 1;
                }
                int i9 = 0;
                int i10 = i;
                while (i10 < str.length() && '0' <= (charAt2 = str.charAt(i10)) && charAt2 < ':') {
                    i9 = (i9 * 10) + (str.charAt(i10) - '0');
                    i10++;
                }
                int i11 = i10 - i;
                if (i11 > 10) {
                    b = InstantKt.c(str, "Expected at most 10 digits for the year number, got " + i11 + " digits");
                } else if (i11 == 10 && str.charAt(i) >= '2') {
                    b = InstantKt.c(str, "Expected at most 9 digits for the year number or year 1000000000, got " + i11 + " digits");
                } else if (i11 < 4) {
                    b = InstantKt.c(str, "The year number must be padded to 4 digits, got " + i11 + " digits");
                } else if (charAt3 == '+' && i11 == 4) {
                    b = InstantKt.c(str, "The '+' sign at the start is only valid for year numbers longer than 4 digits");
                } else if (charAt3 == ' ' && i11 != 4) {
                    b = InstantKt.c(str, "A '+' or '-' sign is required for year numbers longer than 4 digits");
                } else {
                    if (charAt3 == '-') {
                        i9 = -i9;
                    }
                    int i12 = i10 + 16;
                    if (str.length() < i12) {
                        b = InstantKt.c(str, "The input string is too short");
                    } else {
                        InstantParseResult.Failure b2 = InstantKt.b(str, "'-'", i10, new a7(16));
                        if (b2 == null) {
                            b = InstantKt.b(str, "'-'", i10 + 3, new a7(17));
                            if (b == null && (b = InstantKt.b(str, "'T' or 't'", i10 + 6, new a7(18))) == null && (b = InstantKt.b(str, "':'", i10 + 9, new a7(19))) == null && (b = InstantKt.b(str, "':'", i10 + 12, new a7(20))) == null) {
                                for (int i13 = 0; i13 < 10; i13++) {
                                    b2 = InstantKt.b(str, "an ASCII digit", InstantKt.b[i13] + i10, new a7(21));
                                    if (b2 == null) {
                                    }
                                }
                                int d = InstantKt.d(str, i10 + 1);
                                int d2 = InstantKt.d(str, i10 + 4);
                                int d3 = InstantKt.d(str, i10 + 7);
                                int d4 = InstantKt.d(str, i10 + 10);
                                int d5 = InstantKt.d(str, i10 + 13);
                                int i14 = i10 + 15;
                                if (str.charAt(i14) == '.') {
                                    i14 = i12;
                                    int i15 = 0;
                                    while (i14 < str.length() && '0' <= (charAt = str.charAt(i14)) && charAt < ':') {
                                        i15 = (i15 * 10) + (str.charAt(i14) - '0');
                                        i14++;
                                    }
                                    int i16 = i14 - i12;
                                    if (1 <= i16 && i16 < 10) {
                                        i2 = i15 * InstantKt.a[9 - i16];
                                    } else {
                                        b = InstantKt.c(str, "1..9 digits are supported for the fraction of the second, got " + i16 + " digits");
                                    }
                                } else {
                                    i2 = 0;
                                }
                                if (i14 >= str.length()) {
                                    b = InstantKt.c(str, "The UTC offset at the end of the string is missing");
                                } else {
                                    char charAt4 = str.charAt(i14);
                                    if (charAt4 != '+' && charAt4 != '-') {
                                        if (charAt4 != 'Z' && charAt4 != 'z') {
                                            b = InstantKt.c(str, "Expected the UTC offset at position " + i14 + ", got '" + charAt4 + '\'');
                                        } else {
                                            int i17 = i14 + 1;
                                            if (str.length() == i17) {
                                                i6 = 0;
                                                if (1 > d) {
                                                }
                                                b = InstantKt.c(str, "Expected a month number in 1..12, got " + d);
                                            } else {
                                                b = InstantKt.c(str, "Extra text after the instant at position " + i17);
                                            }
                                        }
                                    } else {
                                        int length = str.length() - i14;
                                        if (length > 9) {
                                            b = InstantKt.c(str, "The UTC offset string \"" + InstantKt.e(str.subSequence(i14, str.length()).toString(), 16) + "\" is too long");
                                        } else if (length % 3 != 0) {
                                            b = InstantKt.c(str, "Invalid UTC offset string \"" + str.subSequence(i14, str.length()).toString() + '\"');
                                        } else {
                                            int i18 = 0;
                                            for (int i19 = 2; i18 < i19; i19 = 2) {
                                                int i20 = i14 + InstantKt.c[i18];
                                                if (i20 >= str.length()) {
                                                    break;
                                                }
                                                if (str.charAt(i20) != ':') {
                                                    StringBuilder j2 = jb.j("Expected ':' at index ", i20, ", got '");
                                                    j2.append(str.charAt(i20));
                                                    j2.append('\'');
                                                    b = InstantKt.c(str, j2.toString());
                                                    break;
                                                }
                                                i18++;
                                            }
                                            int i21 = 0;
                                            while (i21 < 6 && (i7 = InstantKt.d[i21] + i14) < str.length()) {
                                                char charAt5 = str.charAt(i7);
                                                int i22 = i21;
                                                if ('0' <= charAt5 && charAt5 < ':') {
                                                    i21 = i22 + 1;
                                                } else {
                                                    StringBuilder j3 = jb.j("Expected an ASCII digit at index ", i7, ", got '");
                                                    j3.append(str.charAt(i7));
                                                    j3.append('\'');
                                                    b = InstantKt.c(str, j3.toString());
                                                    break;
                                                }
                                            }
                                            int d6 = InstantKt.d(str, i14 + 1);
                                            if (length > 3) {
                                                i3 = InstantKt.d(str, i14 + 4);
                                            } else {
                                                i3 = 0;
                                            }
                                            if (length > 6) {
                                                i4 = InstantKt.d(str, i14 + 7);
                                            } else {
                                                i4 = 0;
                                            }
                                            if (i3 > 59) {
                                                b = InstantKt.c(str, "Expected offset-minute-of-hour in 0..59, got " + i3);
                                            } else if (i4 > 59) {
                                                b = InstantKt.c(str, "Expected offset-second-of-minute in 0..59, got " + i4);
                                            } else if (d6 > 17 && (d6 != 18 || i3 != 0 || i4 != 0)) {
                                                b = InstantKt.c(str, "Expected an offset in -18:00..+18:00, got " + str.subSequence(i14, str.length()).toString());
                                            } else {
                                                int i23 = (i3 * 60) + (d6 * 3600) + i4;
                                                if (charAt4 == '-') {
                                                    i5 = -1;
                                                } else {
                                                    i5 = 1;
                                                }
                                                i6 = i23 * i5;
                                                if (1 > d && d < 13) {
                                                    if (1 <= d2) {
                                                        int i24 = i9 & 3;
                                                        if (i24 == 0 && (i9 % 100 != 0 || i9 % 400 == 0)) {
                                                            z = true;
                                                        } else {
                                                            z = false;
                                                        }
                                                        if (d != 2) {
                                                            if (d != 4 && d != 6 && d != 9 && d != 11) {
                                                                i8 = 31;
                                                            } else {
                                                                i8 = 30;
                                                            }
                                                        } else if (z) {
                                                            i8 = 29;
                                                        } else {
                                                            i8 = 28;
                                                        }
                                                        if (d2 <= i8) {
                                                            if (d3 > 23) {
                                                                b = InstantKt.c(str, "Expected hour in 0..23, got " + d3);
                                                            } else if (d4 > 59) {
                                                                b = InstantKt.c(str, "Expected minute-of-hour in 0..59, got " + d4);
                                                            } else if (d5 > 59) {
                                                                b = InstantKt.c(str, "Expected second-of-minute in 0..59, got " + d5);
                                                            } else {
                                                                long j4 = i9;
                                                                long j5 = 365 * j4;
                                                                if (j4 >= 0) {
                                                                    j = ((j4 + 399) / 400) + (((j4 + 3) / 4) - ((j4 + 99) / 100)) + j5;
                                                                } else {
                                                                    j = j5 - ((j4 / (-400)) + ((j4 / (-4)) - (j4 / (-100))));
                                                                }
                                                                long j6 = j + (((d * 367) - 362) / 12) + (d2 - 1);
                                                                if (d > 2) {
                                                                    j6 = (i24 == 0 && (i9 % 100 != 0 || i9 % 400 == 0)) ? (-1) + j6 : j6 - 2;
                                                                }
                                                                b = new InstantParseResult.Success(i2, (((j6 - 719528) * 86400) + (((d4 * 60) + (d3 * 3600)) + d5)) - i6);
                                                            }
                                                        }
                                                    }
                                                    StringBuilder k = jb.k("Expected a valid day-of-month for month ", d, " of year ", i9, ", got ");
                                                    k.append(d2);
                                                    b = InstantKt.c(str, k.toString());
                                                } else {
                                                    b = InstantKt.c(str, "Expected a month number in 1..12, got " + d);
                                                }
                                            }
                                        }
                                    }
                                }
                            }
                        }
                        b = b2;
                        break;
                    }
                }
            }
            return b.toInstant();
        }
    }

    public Instant(int i, long j) {
        this.j = j;
        this.k = i;
        if (-31557014167219200L <= j && j < 31556889864403200L) {
            return;
        }
        u2.g("Instant exceeds minimum or maximum instant");
        throw null;
    }

    @Override // java.lang.Comparable
    public final int compareTo(Instant instant) {
        Instant instant2 = instant;
        instant2.getClass();
        int c = Intrinsics.c(this.j, instant2.j);
        if (c != 0) {
            return c;
        }
        return Intrinsics.b(this.k, instant2.k);
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof Instant) {
                Instant instant = (Instant) obj;
                if (this.j != instant.j || this.k != instant.k) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return (this.k * 51) + Long.hashCode(this.j);
    }

    public final String toString() {
        long j;
        int[] iArr;
        int i;
        StringBuilder sb = new StringBuilder();
        long j2 = this.j;
        long j3 = j2 / 86400;
        if ((j2 ^ 86400) < 0 && j3 * 86400 != j2) {
            j3--;
        }
        long j4 = j2 % 86400;
        int i2 = (int) (j4 + (86400 & (((j4 ^ 86400) & ((-j4) | j4)) >> 63)));
        long j5 = 719468 + j3;
        if (j5 < 0) {
            long j6 = ((j3 + 719469) / 146097) - 1;
            j = j6 * 400;
            j5 += (-j6) * 146097;
        } else {
            j = 0;
        }
        long j7 = ((400 * j5) + 591) / 146097;
        long j8 = j5 - ((j7 / 400) + (((j7 / 4) + (365 * j7)) - (j7 / 100)));
        if (j8 < 0) {
            j7--;
            j8 = j5 - ((j7 / 400) + (((j7 / 4) + (365 * j7)) - (j7 / 100)));
        }
        int i3 = (int) j8;
        int i4 = ((i3 * 5) + 2) / 153;
        int i5 = ((i4 + 2) % 12) + 1;
        int i6 = (i3 - (((i4 * 306) + 5) / 10)) + 1;
        int i7 = (int) (j7 + j + (i4 / 10));
        int i8 = i2 / 3600;
        int i9 = i2 - (i8 * 3600);
        int i10 = i9 / 60;
        int i11 = i9 - (i10 * 60);
        int i12 = this.k;
        UnboundLocalDateTime unboundLocalDateTime = new UnboundLocalDateTime(i7, i5, i6, i8, i10, i11, i12);
        int i13 = 0;
        if (Math.abs(i7) < 1000) {
            StringBuilder sb2 = new StringBuilder();
            if (i7 >= 0) {
                sb2.append(i7 + 10000);
                sb2.deleteCharAt(0).getClass();
            } else {
                sb2.append(i7 - 10000);
                sb2.deleteCharAt(1).getClass();
            }
            sb.append((CharSequence) sb2);
        } else {
            if (i7 >= 10000) {
                sb.append('+');
            }
            sb.append(i7);
        }
        sb.append('-');
        InstantKt.a(sb, sb, i5);
        sb.append('-');
        InstantKt.a(sb, sb, i6);
        sb.append('T');
        InstantKt.a(sb, sb, i8);
        sb.append(':');
        InstantKt.a(sb, sb, i10);
        sb.append(':');
        InstantKt.a(sb, sb, i11);
        if (i12 != 0) {
            sb.append('.');
            while (true) {
                int i14 = i13 + 1;
                iArr = InstantKt.a;
                int i15 = iArr[i14];
                i = unboundLocalDateTime.g;
                if (i % i15 != 0) {
                    break;
                }
                i13 = i14;
            }
            int i16 = i13 - (i13 % 3);
            String valueOf = String.valueOf((i / iArr[i16]) + iArr[9 - i16]);
            valueOf.getClass();
            sb.append(valueOf.substring(1));
        }
        sb.append('Z');
        return sb.toString();
    }
}
