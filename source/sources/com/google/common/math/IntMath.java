package com.google.common.math;

import androidx.datastore.preferences.PreferencesProto$Value;
import defpackage.jb;
import defpackage.u2;
import java.math.RoundingMode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IntMath {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* renamed from: com.google.common.math.IntMath$1, reason: invalid class name */
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
                a[RoundingMode.DOWN.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                a[RoundingMode.FLOOR.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                a[RoundingMode.UP.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                a[RoundingMode.CEILING.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                a[RoundingMode.HALF_DOWN.ordinal()] = 6;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                a[RoundingMode.HALF_UP.ordinal()] = 7;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                a[RoundingMode.HALF_EVEN.ordinal()] = 8;
            } catch (NoSuchFieldError unused8) {
            }
        }
    }

    public static int a(int i, int i2) {
        boolean z;
        long j = i + i2;
        int i3 = (int) j;
        if (j == i3) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            return i3;
        }
        throw new ArithmeticException(jb.e("overflow: checkedAdd(", i, ", ", i2, ")"));
    }

    public static int b(int i, int i2) {
        RoundingMode roundingMode = RoundingMode.CEILING;
        roundingMode.getClass();
        if (i2 != 0) {
            int i3 = i / i2;
            int i4 = i - (i2 * i3);
            if (i4 != 0) {
                boolean z = true;
                int i5 = ((i ^ i2) >> 31) | 1;
                switch (AnonymousClass1.a[roundingMode.ordinal()]) {
                    case 1:
                        if (i4 != 0) {
                            z = false;
                        }
                        MathPreconditions.b(z);
                        return i3;
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        return i3;
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        if (i5 >= 0) {
                            return i3;
                        }
                        break;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        break;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        if (i5 <= 0) {
                            return i3;
                        }
                        break;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                        int abs = Math.abs(i4);
                        int abs2 = abs - (Math.abs(i2) - abs);
                        if (abs2 == 0) {
                            RoundingMode roundingMode2 = RoundingMode.HALF_UP;
                            RoundingMode roundingMode3 = RoundingMode.HALF_EVEN;
                            return i3;
                        }
                        if (abs2 <= 0) {
                            return i3;
                        }
                        break;
                    default:
                        throw new AssertionError();
                }
                return i3 + i5;
            }
            return i3;
        }
        throw new ArithmeticException("/ by zero");
    }

    public static int c(int i) {
        boolean z;
        RoundingMode roundingMode = RoundingMode.UNNECESSARY;
        if (i > 0) {
            boolean z2 = true;
            switch (AnonymousClass1.a[roundingMode.ordinal()]) {
                case 1:
                    if (i > 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (((i - 1) & i) != 0) {
                        z2 = false;
                    }
                    MathPreconditions.b(z & z2);
                    break;
                case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                    break;
                case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                    return 32 - Integer.numberOfLeadingZeros(i - 1);
                case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                    int numberOfLeadingZeros = Integer.numberOfLeadingZeros(i);
                    return (31 - numberOfLeadingZeros) + ((~(~(((-1257966797) >>> numberOfLeadingZeros) - i))) >>> 31);
                default:
                    throw new AssertionError();
            }
            return 31 - Integer.numberOfLeadingZeros(i);
        }
        u2.g(jb.d("x (", i, ") must be > 0"));
        return 0;
    }
}
