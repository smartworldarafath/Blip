package coil3;

import java.util.ArrayList;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.CharsKt;
import kotlin.text.StringsKt;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UriKt {
    public static Uri a(String str) {
        String str2 = Path.k;
        StringBuilder sb = new StringBuilder();
        sb.append("file");
        sb.append(':');
        if (str != null) {
            sb.append(str);
        }
        return new Uri(sb.toString(), str2, "file", null, str);
    }

    public static final String b(Uri uri) {
        List c = c(uri);
        String str = uri.b;
        if (c.isEmpty()) {
            return null;
        }
        String str2 = uri.e;
        str2.getClass();
        if (!StringsKt.J(str2, str, false)) {
            str = "";
        }
        return CollectionsKt.y(c, uri.b, str, null, null, 60);
    }

    public static final List c(Uri uri) {
        String str = uri.e;
        if (str == null) {
            return EmptyList.j;
        }
        ArrayList arrayList = new ArrayList();
        int i = -1;
        while (i < str.length()) {
            int i2 = i + 1;
            int q = StringsKt.q(str, '/', i2, 4);
            if (q == -1) {
                q = str.length();
            }
            String substring = str.substring(i2, q);
            if (substring.length() > 0) {
                arrayList.add(substring);
            }
            i = q;
        }
        return arrayList;
    }

    public static final String d(String str, byte[] bArr) {
        int length = str.length();
        int max = Math.max(0, length - 2);
        int i = 0;
        int i2 = 0;
        while (true) {
            if (i >= max) {
                if (i == i2) {
                    return str;
                }
                if (i >= length) {
                    return StringsKt.k(0, i2, 5, bArr);
                }
            } else if (str.charAt(i) == '%') {
                int i3 = i + 3;
                try {
                    String substring = str.substring(i + 1, i3);
                    CharsKt.b(16);
                    bArr[i2] = (byte) Integer.parseInt(substring, 16);
                    i2++;
                    i = i3;
                } catch (NumberFormatException unused) {
                }
            }
            bArr[i2] = (byte) str.charAt(i);
            i2++;
            i++;
        }
    }

    public static Uri e(String str) {
        String str2;
        int i;
        int i2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        String str8;
        String str9;
        String str10 = Path.k;
        if (!Intrinsics.a(str10, "/")) {
            str2 = StringsKt.F(str, str10, "/");
        } else {
            str2 = str;
        }
        int i8 = 0;
        boolean z = true;
        int i9 = -1;
        int i10 = -1;
        int i11 = -1;
        int i12 = -1;
        int i13 = -1;
        while (i8 < str2.length()) {
            char charAt = str2.charAt(i8);
            if (charAt != '#') {
                if (charAt != '/') {
                    if (charAt != ':') {
                        if (charAt == '?' && i11 == -1 && i9 == -1) {
                            i11 = i8 + 1;
                        }
                    } else if (z && i11 == -1 && i9 == -1) {
                        int i14 = i8 + 2;
                        if (i14 < str.length() && str.charAt(i8 + 1) == '/' && str.charAt(i14) == '/' && i10 == -1) {
                            i12 = i8 + 3;
                            z = false;
                            i13 = i8;
                            i8 = i14;
                        } else if (str2.equals(str)) {
                            i10 = i8 + 1;
                            i13 = i8;
                            i8 = i10;
                            i12 = i8;
                        }
                    }
                } else if (i10 == -1 && i11 == -1 && i9 == -1) {
                    if (i12 == -1) {
                        i10 = 0;
                    } else {
                        i10 = i8;
                    }
                    z = false;
                }
            } else if (i9 == -1) {
                i9 = i8 + 1;
            }
            i8++;
        }
        int i15 = Integer.MAX_VALUE;
        if (i9 == -1) {
            i = Integer.MAX_VALUE;
        } else {
            i = i9 - 1;
        }
        int min = Math.min(i, str2.length());
        if (i11 == -1) {
            i2 = Integer.MAX_VALUE;
        } else {
            i2 = i11 - 1;
        }
        int min2 = Math.min(i2, min);
        String str11 = null;
        if (i12 != -1) {
            str4 = str2.substring(0, i13);
            if (i10 != -1) {
                i15 = i10;
            }
            str3 = str2.substring(i12, Math.min(i15, min2));
        } else {
            str3 = null;
            str4 = null;
        }
        if (i10 != -1) {
            str5 = str2.substring(i10, min2);
        } else {
            str5 = null;
        }
        if (i11 != -1) {
            str6 = str2.substring(i11, min);
        } else {
            str6 = null;
        }
        if (i9 != -1) {
            str7 = str2.substring(i9, str2.length());
        } else {
            str7 = null;
        }
        if (str4 != null) {
            i3 = str4.length();
        } else {
            i3 = 0;
        }
        if (str3 != null) {
            i4 = str3.length();
        } else {
            i4 = 0;
        }
        if (str5 != null) {
            i5 = str5.length();
        } else {
            i5 = 0;
        }
        if (str6 != null) {
            i6 = str6.length();
        } else {
            i6 = 0;
        }
        if (str7 != null) {
            i7 = str7.length();
        } else {
            i7 = 0;
        }
        byte[] bArr = new byte[Math.max(0, Math.max(i3, Math.max(i4, Math.max(i5, Math.max(i6, i7)))) - 2)];
        if (str4 != null) {
            str8 = d(str4, bArr);
        } else {
            str8 = null;
        }
        if (str3 != null) {
            str9 = d(str3, bArr);
        } else {
            str9 = null;
        }
        if (str5 != null) {
            str11 = d(str5, bArr);
        }
        String str12 = str11;
        if (str6 != null) {
            d(str6, bArr);
        }
        if (str7 != null) {
            d(str7, bArr);
        }
        return new Uri(str2, str10, str8, str9, str12);
    }
}
