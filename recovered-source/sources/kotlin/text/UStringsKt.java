package kotlin.text;

import kotlin.UByte;
import kotlin.UInt;
import kotlin.ULong;
import kotlin.UShort;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UStringsKt {
    /* JADX WARN: Removed duplicated region for block: B:10:0x0022  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x001f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final byte a(String str) {
        UByte uByte;
        str.getClass();
        UInt c = c(str);
        if (c != null) {
            int i = c.j;
            if (Integer.compareUnsigned(i, 255) <= 0) {
                uByte = new UByte((byte) i);
                if (uByte == null) {
                    return uByte.j;
                }
                StringsKt__StringNumberConversionsKt.b(str);
                throw null;
            }
        }
        uByte = null;
        if (uByte == null) {
        }
    }

    public static final int b(String str) {
        str.getClass();
        UInt c = c(str);
        if (c != null) {
            return c.j;
        }
        StringsKt__StringNumberConversionsKt.b(str);
        throw null;
    }

    public static final UInt c(String str) {
        int i;
        str.getClass();
        CharsKt.b(10);
        int length = str.length();
        if (length != 0) {
            int i2 = 0;
            char charAt = str.charAt(0);
            if (charAt < '0') {
                i = 1;
                if (length == 1 || charAt != '+') {
                    return null;
                }
            } else {
                i = 0;
            }
            int i3 = 119304647;
            while (i < length) {
                int digit = Character.digit((int) str.charAt(i), 10);
                if (digit >= 0) {
                    if (Integer.compareUnsigned(i2, i3) > 0) {
                        if (i3 == 119304647) {
                            i3 = Integer.divideUnsigned(-1, 10);
                            if (Integer.compareUnsigned(i2, i3) > 0) {
                                return null;
                            }
                        } else {
                            return null;
                        }
                    }
                    int i4 = i2 * 10;
                    int i5 = digit + i4;
                    if (Integer.compareUnsigned(i5, i4) < 0) {
                        return null;
                    }
                    i++;
                    i2 = i5;
                } else {
                    return null;
                }
            }
            return new UInt(i2);
        }
        return null;
    }

    public static final long d(String str) {
        str.getClass();
        ULong e = e(str);
        if (e != null) {
            return e.j;
        }
        StringsKt__StringNumberConversionsKt.b(str);
        throw null;
    }

    public static final ULong e(String str) {
        str.getClass();
        CharsKt.b(10);
        int length = str.length();
        if (length != 0) {
            int i = 0;
            char charAt = str.charAt(0);
            if (charAt < '0') {
                i = 1;
                if (length == 1 || charAt != '+') {
                    return null;
                }
            }
            long j = 0;
            long j2 = 512409557603043100L;
            while (i < length) {
                int digit = Character.digit((int) str.charAt(i), 10);
                if (digit >= 0) {
                    if (Long.compareUnsigned(j, j2) > 0) {
                        if (j2 == 512409557603043100L) {
                            j2 = Long.divideUnsigned(-1L, 10L);
                            if (Long.compareUnsigned(j, j2) > 0) {
                                return null;
                            }
                        } else {
                            return null;
                        }
                    }
                    long j3 = j * 10;
                    long j4 = (digit & 4294967295L) + j3;
                    if (Long.compareUnsigned(j4, j3) < 0) {
                        return null;
                    }
                    i++;
                    j = j4;
                } else {
                    return null;
                }
            }
            return new ULong(j);
        }
        return null;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0023  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x0020  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final short f(String str) {
        UShort uShort;
        str.getClass();
        UInt c = c(str);
        if (c != null) {
            int i = c.j;
            if (Integer.compareUnsigned(i, 65535) <= 0) {
                uShort = new UShort((short) i);
                if (uShort == null) {
                    return uShort.j;
                }
                StringsKt__StringNumberConversionsKt.b(str);
                throw null;
            }
        }
        uShort = null;
        if (uShort == null) {
        }
    }
}
