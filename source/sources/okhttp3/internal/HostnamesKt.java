package okhttp3.internal;

import java.net.IDN;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HostnamesKt {
    /* JADX WARN: Removed duplicated region for block: B:14:0x00a2  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final InetAddress a(String str, int i, int i2) {
        int i3;
        byte[] bArr = new byte[16];
        int i4 = i;
        int i5 = 0;
        int i6 = -1;
        int i7 = -1;
        while (true) {
            if (i4 >= i2) {
                break;
            }
            if (i5 != 16) {
                int i8 = i4 + 2;
                if (i8 <= i2 && StringsKt.I(i4, str, "::", false)) {
                    if (i6 == -1) {
                        i5 += 2;
                        i6 = i5;
                        if (i8 == i2) {
                            break;
                        }
                        i7 = i8;
                        int i9 = 0;
                        i4 = i7;
                        while (i4 < i2) {
                        }
                        i3 = i4 - i7;
                        return i3 == 0 ? null : null;
                    }
                    return null;
                }
                if (i5 != 0) {
                    if (StringsKt.I(i4, str, ":", false)) {
                        i4++;
                    } else if (StringsKt.I(i4, str, ".", false)) {
                        int i10 = i5 - 2;
                        int i11 = i10;
                        while (i7 < i2) {
                            if (i11 != 16) {
                                if (i11 != i10) {
                                    if (str.charAt(i7) == '.') {
                                        i7++;
                                    } else {
                                        return null;
                                    }
                                }
                                int i12 = 0;
                                int i13 = i7;
                                while (i13 < i2) {
                                    char charAt = str.charAt(i13);
                                    if (Intrinsics.b(charAt, 48) < 0 || Intrinsics.b(charAt, 57) > 0) {
                                        break;
                                    }
                                    if ((i12 != 0 || i7 == i13) && ((i12 * 10) + charAt) - 48 <= 255) {
                                        i13++;
                                    } else {
                                        return null;
                                    }
                                }
                                if (i13 - i7 != 0) {
                                    bArr[i11] = (byte) i12;
                                    i11++;
                                    i7 = i13;
                                } else {
                                    return null;
                                }
                            } else {
                                return null;
                            }
                        }
                        if (i11 == i5 + 2) {
                            i5 += 2;
                        } else {
                            return null;
                        }
                    } else {
                        return null;
                    }
                }
                i7 = i4;
                int i92 = 0;
                i4 = i7;
                while (i4 < i2) {
                    int o = Util.o(str.charAt(i4));
                    if (o == -1) {
                        break;
                    }
                    i92 = (i92 << 4) + o;
                    i4++;
                }
                i3 = i4 - i7;
                if (i3 == 0 && i3 <= 4) {
                    int i14 = i5 + 1;
                    bArr[i5] = (byte) (255 & (i92 >>> 8));
                    i5 += 2;
                    bArr[i14] = (byte) (i92 & 255);
                }
            } else {
                return null;
            }
        }
        if (i5 != 16) {
            if (i6 == -1) {
                return null;
            }
            int i15 = i5 - i6;
            System.arraycopy(bArr, i6, bArr, 16 - i15, i15);
            Arrays.fill(bArr, i6, (16 - i5) + i6, (byte) 0);
        }
        return InetAddress.getByAddress(bArr);
    }

    /* JADX WARN: Type inference failed for: r8v14, types: [okio.Buffer, java.lang.Object] */
    public static final String b(String str) {
        InetAddress a;
        str.getClass();
        int i = 0;
        int i2 = -1;
        if (StringsKt.i(str, ":", false)) {
            if (StringsKt.J(str, "[", false) && StringsKt.l(str, "]", false)) {
                a = a(str, 1, str.length() - 1);
            } else {
                a = a(str, 0, str.length());
            }
            if (a != null) {
                byte[] address = a.getAddress();
                if (address.length == 16) {
                    int i3 = 0;
                    int i4 = 0;
                    while (i3 < address.length) {
                        int i5 = i3;
                        while (i5 < 16 && address[i5] == 0 && address[i5 + 1] == 0) {
                            i5 += 2;
                        }
                        int i6 = i5 - i3;
                        if (i6 > i4 && i6 >= 4) {
                            i2 = i3;
                            i4 = i6;
                        }
                        i3 = i5 + 2;
                    }
                    ?? obj = new Object();
                    while (i < address.length) {
                        if (i == i2) {
                            obj.g0(58);
                            i += i4;
                            if (i == 16) {
                                obj.g0(58);
                            }
                        } else {
                            if (i > 0) {
                                obj.g0(58);
                            }
                            byte b = address[i];
                            byte[] bArr = Util.a;
                            obj.o0(((b & 255) << 8) | (address[i + 1] & 255));
                            i += 2;
                        }
                    }
                    return obj.P();
                }
                if (address.length == 4) {
                    return a.getHostAddress();
                }
                throw new AssertionError("Invalid IPv6 address: '" + str + '\'');
            }
            return null;
        }
        try {
            String ascii = IDN.toASCII(str);
            ascii.getClass();
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = ascii.toLowerCase(locale);
            lowerCase.getClass();
            if (lowerCase.length() != 0) {
                int length = lowerCase.length();
                for (int i7 = 0; i7 < length; i7++) {
                    char charAt = lowerCase.charAt(i7);
                    if (Intrinsics.b(charAt, 31) <= 0 || Intrinsics.b(charAt, 127) >= 0 || StringsKt.q(" #%/:?@[\\]", charAt, 0, 6) != -1) {
                        return null;
                    }
                }
                return lowerCase;
            }
            return null;
        } catch (IllegalArgumentException unused) {
            return null;
        }
    }
}
