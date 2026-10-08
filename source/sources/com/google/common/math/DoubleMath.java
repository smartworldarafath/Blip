package com.google.common.math;

import androidx.datastore.preferences.PreferencesProto$Value;
import com.google.common.base.Preconditions;
import java.math.RoundingMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DoubleMath {
    public static final /* synthetic */ int a = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.common.math.DoubleMath$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[RoundingMode.values().length];
            a = iArr;
            try {
                iArr[RoundingMode.UNNECESSARY.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                a[RoundingMode.FLOOR.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[RoundingMode.CEILING.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[RoundingMode.DOWN.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[RoundingMode.UP.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[RoundingMode.HALF_EVEN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[RoundingMode.HALF_DOWN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    static {
        Math.log(2.0d);
    }

    public static boolean a(double d) {
        if (DoubleUtils.b(d)) {
            if (d == 0.0d || 52 - Long.numberOfTrailingZeros(DoubleUtils.a(d)) <= Math.getExponent(d)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public static boolean b(double d) {
        if (d > 0.0d && DoubleUtils.b(d)) {
            long a2 = DoubleUtils.a(d);
            if ((a2 & (a2 - 1)) == 0) {
                return true;
            }
        }
        return false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Failed to find 'out' block for switch in B:9:0x002c. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0071  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static int c(double d) {
        boolean z;
        boolean b;
        RoundingMode roundingMode = RoundingMode.CEILING;
        boolean z2 = false;
        if (d > 0.0d && DoubleUtils.b(d)) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.d("x must be positive and finite", z);
        int exponent = Math.getExponent(d);
        if (Math.getExponent(d) >= -1022) {
            switch (AnonymousClass1.a[roundingMode.ordinal()]) {
                case 1:
                    MathPreconditions.b(b(d));
                    if (!z2) {
                        return exponent + 1;
                    }
                    return exponent;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    if (!z2) {
                    }
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    z2 = !b(d);
                    if (!z2) {
                    }
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    if (exponent < 0) {
                        z2 = true;
                    }
                    b = b(d);
                    z2 &= !b;
                    if (!z2) {
                    }
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    if (exponent >= 0) {
                        z2 = true;
                    }
                    b = b(d);
                    z2 &= !b;
                    if (!z2) {
                    }
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    double longBitsToDouble = Double.longBitsToDouble((Double.doubleToRawLongBits(d) & 4503599627370495L) | 4607182418800017408L);
                    if (longBitsToDouble * longBitsToDouble > 2.0d) {
                        z2 = true;
                    }
                    if (!z2) {
                    }
                    break;
                default:
                    throw new AssertionError();
            }
        } else {
            return c(d * 4.503599627370496E15d) - 52;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x002a, code lost:
    
        if (java.lang.Math.abs(r8 - r2) == 0.5d) goto L36;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:4:0x0015. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:12:0x008a  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0094  */
    /* JADX WARN: Removed duplicated region for block: B:18:0x0098  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x009a  */
    /* JADX WARN: Removed duplicated region for block: B:22:0x008c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static long d(double d, RoundingMode roundingMode) {
        double d2;
        long j;
        int i;
        boolean z;
        if (DoubleUtils.b(d)) {
            boolean z2 = true;
            switch (AnonymousClass1.a[roundingMode.ordinal()]) {
                case 1:
                    MathPreconditions.b(a(d));
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (d2 >= 9.223372036854776E18d) {
                        z2 = false;
                    }
                    if (!(z & z2)) {
                        return (long) d2;
                    }
                    throw new ArithmeticException("rounded value is out of range for input " + d + " and rounding mode " + roundingMode);
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                    if (d < 0.0d && !a(d)) {
                        j = ((long) d) - 1;
                        d2 = j;
                        if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        }
                        if (d2 >= 9.223372036854776E18d) {
                        }
                        if (!(z & z2)) {
                        }
                    }
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    if (d > 0.0d && !a(d)) {
                        j = ((long) d) + 1;
                        d2 = j;
                        if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        }
                        if (d2 >= 9.223372036854776E18d) {
                        }
                        if (!(z & z2)) {
                        }
                    }
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    if (!a(d)) {
                        long j2 = (long) d;
                        if (d > 0.0d) {
                            i = 1;
                        } else {
                            i = -1;
                        }
                        d2 = j2 + i;
                        if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                        }
                        if (d2 >= 9.223372036854776E18d) {
                        }
                        if (!(z & z2)) {
                        }
                    }
                    d2 = d;
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    d2 = Math.rint(d);
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    d2 = Math.rint(d);
                    if (Math.abs(d - d2) == 0.5d) {
                        d2 = Math.copySign(0.5d, d) + d;
                    }
                    if ((-9.223372036854776E18d) - d2 >= 1.0d) {
                    }
                    if (d2 >= 9.223372036854776E18d) {
                    }
                    if (!(z & z2)) {
                    }
                    break;
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    d2 = Math.rint(d);
                    break;
                default:
                    throw new AssertionError();
            }
        } else {
            throw new ArithmeticException("input is infinite or NaN");
        }
    }
}
