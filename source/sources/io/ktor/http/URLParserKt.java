package io.ktor.http;

import defpackage.d;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import io.ktor.http.Parameters;
import io.ktor.util.StringValues;
import io.ktor.util.StringValuesBuilderImpl;
import io.ktor.util.StringValuesImpl;
import java.nio.charset.CharsetEncoder;
import java.util.List;
import java.util.Map;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.text.CharsKt;
import kotlin.text.Charsets;
import kotlin.text.StringsKt;
import kotlin.text.StringsKt__StringsKt;
import kotlinx.io.Segment;
import kotlinx.io.SegmentPool;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class URLParserKt {
    public static final List a = CollectionsKt.B("");

    public static final int a(String str, int i, int i2) {
        boolean z = false;
        while (i < i2) {
            char charAt = str.charAt(i);
            if (charAt != ':') {
                if (charAt != '[') {
                    if (charAt == ']') {
                        z = false;
                    }
                } else {
                    z = true;
                }
            } else if (!z) {
                return i;
            }
            i++;
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:81:0x0100, code lost:
    
        if (r14 >= 128) goto L90;
     */
    /* JADX WARN: Removed duplicated region for block: B:100:0x013e  */
    /* JADX WARN: Removed duplicated region for block: B:23:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x010c A[LOOP:4: B:71:0x00ee->B:78:0x010c, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0111 A[EDGE_INSN: B:79:0x0111->B:84:0x0111 BREAK  A[LOOP:4: B:71:0x00ee->B:78:0x010c], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:97:0x0137  */
    /* JADX WARN: Type inference failed for: r4v17, types: [io.ktor.util.StringValuesBuilderImpl, io.ktor.http.ParametersBuilderImpl] */
    /* JADX WARN: Type inference failed for: r9v10, types: [kotlinx.io.Buffer, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(URLBuilder uRLBuilder, String str) {
        int i;
        int i2;
        char charAt;
        int i3;
        int i4;
        int i5;
        int i6;
        List list;
        int d;
        int i7;
        int i8;
        Integer num;
        int i9;
        int i10;
        int i11;
        StringValues stringValuesImpl;
        List list2;
        int i12;
        List H;
        int d2;
        int i13;
        int i14;
        int i15;
        int i16;
        String str2;
        byte[] bytes;
        long j;
        int i17;
        char lowerCase;
        str.getClass();
        int length = str.length();
        int i18 = 0;
        while (true) {
            i = -1;
            if (i18 < length) {
                if (!CharsKt.c(str.charAt(i18))) {
                    break;
                } else {
                    i18++;
                }
            } else {
                i18 = -1;
                break;
            }
        }
        int length2 = str.length() - 1;
        if (length2 >= 0) {
            while (true) {
                int i19 = length2 - 1;
                if (!CharsKt.c(str.charAt(length2))) {
                    break;
                } else if (i19 < 0) {
                    break;
                } else {
                    length2 = i19;
                }
            }
            i2 = length2 + 1;
            charAt = str.charAt(i18);
            char c = 'A';
            if (('a' > charAt && charAt < '{') || ('A' <= charAt && charAt < '[')) {
                i3 = i18;
                i4 = -1;
            } else {
                i3 = i18;
                i4 = i3;
            }
            while (i3 < i2) {
                char charAt2 = str.charAt(i3);
                if (charAt2 == ':') {
                    if (i4 == -1) {
                        i5 = i3 - i18;
                        boolean z = true;
                        if (i5 > 0) {
                            String substring = str.substring(i18, i18 + i5);
                            URLProtocol uRLProtocol = URLProtocol.l;
                            int length3 = substring.length();
                            int i20 = 0;
                            while (true) {
                                if (i20 < length3) {
                                    char charAt3 = substring.charAt(i20);
                                    if ('A' <= charAt3 && charAt3 < '[') {
                                        lowerCase = (char) (charAt3 + ' ');
                                    } else if (charAt3 >= 0 && charAt3 < 128) {
                                        lowerCase = charAt3;
                                    } else {
                                        lowerCase = Character.toLowerCase(charAt3);
                                    }
                                    if (lowerCase != charAt3) {
                                        break;
                                    } else {
                                        i20++;
                                    }
                                } else {
                                    i20 = -1;
                                    break;
                                }
                            }
                            if (i20 != -1) {
                                StringBuilder sb = new StringBuilder(substring.length());
                                sb.append((CharSequence) substring, 0, i20);
                                int length4 = substring.length() - 1;
                                if (i20 <= length4) {
                                    while (true) {
                                        char charAt4 = substring.charAt(i20);
                                        if (c <= charAt4 && charAt4 < '[') {
                                            charAt4 = (char) (charAt4 + ' ');
                                            sb.append(charAt4);
                                            if (i20 != length4) {
                                                break;
                                            }
                                            i20++;
                                            c = 'A';
                                        }
                                        charAt4 = Character.toLowerCase(charAt4);
                                        sb.append(charAt4);
                                        if (i20 != length4) {
                                        }
                                    }
                                }
                                substring = sb.toString();
                            }
                            URLProtocol uRLProtocol2 = (URLProtocol) URLProtocol.m.get(substring);
                            if (uRLProtocol2 == null) {
                                uRLProtocol2 = new URLProtocol(substring, 0);
                            }
                            uRLBuilder.d = uRLProtocol2;
                            i18 += i5 + 1;
                        }
                        if (uRLBuilder.b().j.equals("data")) {
                            uRLBuilder.a = str.substring(i18, i2);
                            return;
                        }
                        int i21 = 0;
                        while (true) {
                            i6 = i18 + i21;
                            if (i6 >= i2 || str.charAt(i6) != '/') {
                                break;
                            } else {
                                i21++;
                            }
                        }
                        if (uRLBuilder.b().j.equals("file")) {
                            if (i21 != 1) {
                                if (i21 != 2) {
                                    if (i21 == 3) {
                                        uRLBuilder.a = "";
                                        URLBuilderKt.d(uRLBuilder, "/".concat(str.substring(i6, i2)));
                                        return;
                                    } else {
                                        u2.g("Invalid file url: ".concat(str));
                                        return;
                                    }
                                }
                                int q = StringsKt.q(str, '/', i6, 4);
                                if (q != -1 && q != i2) {
                                    uRLBuilder.a = str.substring(i6, q);
                                    URLBuilderKt.d(uRLBuilder, str.substring(q, i2));
                                    return;
                                } else {
                                    uRLBuilder.a = str.substring(i6, i2);
                                    return;
                                }
                            }
                            uRLBuilder.a = "";
                            URLBuilderKt.d(uRLBuilder, str.substring(i6, i2));
                            return;
                        }
                        if (uRLBuilder.b().j.equals("mailto")) {
                            if (i21 == 0) {
                                int r = StringsKt.r(str, "@", i6, false, 4);
                                if (r != -1) {
                                    String c2 = CodecsKt.c(str.substring(i6, r));
                                    if (c2 != null) {
                                        c2.getClass();
                                        StringBuilder sb2 = new StringBuilder();
                                        CharsetEncoder newEncoder = Charsets.a.newEncoder();
                                        newEncoder.getClass();
                                        int length5 = c2.length();
                                        ?? obj = new Object();
                                        if (length5 <= 0) {
                                            i16 = r;
                                            j = 0;
                                        } else {
                                            int i22 = 0;
                                            while (true) {
                                                if (i22 == 0 && length5 == c2.length()) {
                                                    bytes = c2.getBytes(newEncoder.charset());
                                                    bytes.getClass();
                                                } else {
                                                    bytes = c2.substring(i22, length5).getBytes(newEncoder.charset());
                                                    bytes.getClass();
                                                }
                                                int length6 = bytes.length;
                                                j = 0;
                                                long length7 = bytes.length;
                                                boolean z2 = z;
                                                String str3 = c2;
                                                long j2 = length6;
                                                if (j2 <= length7) {
                                                    if (0 <= j2) {
                                                        int i23 = 0;
                                                        while (i23 < length6) {
                                                            Segment segment = obj.k;
                                                            if (segment == null) {
                                                                segment = SegmentPool.a();
                                                                obj.j = segment;
                                                                obj.k = segment;
                                                                i17 = r;
                                                            } else {
                                                                i17 = r;
                                                                if (segment.c + 1 > 8192 || !segment.d) {
                                                                    Segment a2 = SegmentPool.a();
                                                                    a2.f = segment;
                                                                    a2.e = segment.e;
                                                                    Segment segment2 = segment.e;
                                                                    if (segment2 != null) {
                                                                        segment2.f = a2;
                                                                    }
                                                                    segment.e = a2;
                                                                    obj.k = a2;
                                                                    segment = a2;
                                                                }
                                                            }
                                                            byte[] bArr = segment.a;
                                                            CharsetEncoder charsetEncoder = newEncoder;
                                                            int min = Math.min(length6 - i23, bArr.length - segment.c) + i23;
                                                            ArraysKt.e(segment.c, i23, min, bytes, bArr);
                                                            segment.c = (min - i23) + segment.c;
                                                            i23 = min;
                                                            r = i17;
                                                            newEncoder = charsetEncoder;
                                                        }
                                                        i16 = r;
                                                        CharsetEncoder charsetEncoder2 = newEncoder;
                                                        obj.l += j2;
                                                        int length8 = bytes.length;
                                                        if (length8 >= 0) {
                                                            i22 += length8;
                                                            if (i22 < length5) {
                                                                c2 = str3;
                                                                z = z2;
                                                                r = i16;
                                                                newEncoder = charsetEncoder2;
                                                            }
                                                        } else {
                                                            u2.l("Check failed.");
                                                            break;
                                                        }
                                                    } else {
                                                        throw new IllegalArgumentException("startIndex (0) > endIndex (" + j2 + ')');
                                                    }
                                                } else {
                                                    i16 = r;
                                                    StringBuilder sb3 = new StringBuilder("startIndex (0) and endIndex (");
                                                    sb3.append(j2);
                                                    sb3.append(") are not within the range [0..size(");
                                                    u2.o(q.k(sb3, length7, "))"));
                                                    break;
                                                }
                                            }
                                        }
                                        while (obj.l != j) {
                                            while (obj.l != j) {
                                                byte readByte = obj.readByte();
                                                Byte valueOf = Byte.valueOf(readByte);
                                                if (!CodecsKt.a.contains(valueOf) && !CodecsKt.d.contains(valueOf)) {
                                                    sb2.append(CodecsKt.e(readByte));
                                                } else {
                                                    sb2.append((char) readByte);
                                                }
                                            }
                                        }
                                        str2 = sb2.toString();
                                        uRLBuilder.e = str2;
                                        uRLBuilder.a = str.substring(i16 + 1, i2);
                                        return;
                                    }
                                    i16 = r;
                                    str2 = null;
                                    uRLBuilder.e = str2;
                                    uRLBuilder.a = str.substring(i16 + 1, i2);
                                    return;
                                }
                                u2.g(q.i("Invalid mailto url: ", str, ", it should contain '@'."));
                                return;
                            }
                            u2.g("Failed requirement.");
                            return;
                        }
                        if (uRLBuilder.b().j.equals("about")) {
                            if (i21 == 0) {
                                uRLBuilder.a = str.substring(i6, i2);
                                return;
                            } else {
                                u2.g("Failed requirement.");
                                return;
                            }
                        }
                        if (uRLBuilder.b().j.equals("tel")) {
                            if (i21 == 0) {
                                uRLBuilder.a = str.substring(i6, i2);
                                return;
                            } else {
                                u2.g("Failed requirement.");
                                return;
                            }
                        }
                        if (i21 >= 2) {
                            while (true) {
                                char[] cArr = new char[5];
                                for (int i24 = 0; i24 < 5; i24++) {
                                    cArr[i24] = "@/\\?#".charAt(i24);
                                }
                                d2 = StringsKt__StringsKt.d(str, cArr, i6, false);
                                Integer valueOf2 = Integer.valueOf(d2);
                                if (d2 <= 0) {
                                    valueOf2 = null;
                                }
                                if (valueOf2 != null) {
                                    i13 = valueOf2.intValue();
                                } else {
                                    i13 = i2;
                                }
                                if (i13 >= i2 || str.charAt(i13) != '@') {
                                    break;
                                }
                                int a3 = a(str, i6, i13);
                                if (a3 != -1) {
                                    uRLBuilder.e = str.substring(i6, a3);
                                    uRLBuilder.f = str.substring(a3 + 1, i13);
                                } else {
                                    uRLBuilder.e = str.substring(i6, i13);
                                }
                                i6 = i13 + 1;
                            }
                            int a4 = a(str, i6, i13);
                            Integer valueOf3 = Integer.valueOf(a4);
                            if (a4 <= 0) {
                                valueOf3 = null;
                            }
                            if (valueOf3 != null) {
                                i14 = valueOf3.intValue();
                            } else {
                                i14 = i13;
                            }
                            String substring2 = str.substring(i6, i14);
                            for (int i25 = 0; i25 < substring2.length(); i25++) {
                                if (CharsKt.c(substring2.charAt(i25))) {
                                    k8.i(substring2, "Host cannot contain whitespace characters: \"");
                                    return;
                                }
                            }
                            uRLBuilder.a = substring2;
                            int i26 = i14 + 1;
                            if (i26 < i13) {
                                i15 = Integer.parseInt(str.substring(i26, i13));
                            } else {
                                i15 = 0;
                            }
                            uRLBuilder.c(i15);
                            i6 = i13;
                        }
                        List list3 = a;
                        EmptyList emptyList = EmptyList.j;
                        if (i6 >= i2) {
                            if (str.charAt(length2) != '/') {
                                list3 = emptyList;
                            }
                            list3.getClass();
                            uRLBuilder.h = list3;
                            return;
                        }
                        if (i21 == 0) {
                            list = CollectionsKt.q(uRLBuilder.h);
                        } else {
                            list = emptyList;
                        }
                        uRLBuilder.h = list;
                        char[] cArr2 = new char[2];
                        for (int i27 = 0; i27 < 2; i27++) {
                            cArr2[i27] = "?#".charAt(i27);
                        }
                        d = StringsKt__StringsKt.d(str, cArr2, i6, false);
                        Integer valueOf4 = Integer.valueOf(d);
                        if (d <= 0) {
                            valueOf4 = null;
                        }
                        if (valueOf4 != null) {
                            i7 = valueOf4.intValue();
                        } else {
                            i7 = i2;
                        }
                        if (i7 > i6) {
                            String substring3 = str.substring(i6, i7);
                            if (uRLBuilder.h.size() == 1 && ((CharSequence) CollectionsKt.s(uRLBuilder.h)).length() == 0) {
                                list2 = emptyList;
                            } else {
                                list2 = uRLBuilder.h;
                            }
                            if (substring3.equals("/")) {
                                H = list3;
                                i12 = 1;
                                i8 = 0;
                            } else {
                                i12 = 1;
                                i8 = 0;
                                H = StringsKt.H(substring3, new char[]{'/'});
                            }
                            if (i21 != i12) {
                                list3 = emptyList;
                            }
                            uRLBuilder.h = CollectionsKt.F(list2, CollectionsKt.F(list3, H));
                            i6 = i7;
                        } else {
                            i8 = 0;
                        }
                        if (i6 < i2 && str.charAt(i6) == '?') {
                            int i28 = i6 + 1;
                            if (i28 == i2) {
                                uRLBuilder.b = true;
                                i6 = i2;
                            } else {
                                int q2 = StringsKt.q(str, '#', i28, 4);
                                Integer valueOf5 = Integer.valueOf(q2);
                                if (q2 > 0) {
                                    num = valueOf5;
                                } else {
                                    num = null;
                                }
                                if (num != null) {
                                    i9 = num.intValue();
                                } else {
                                    i9 = i2;
                                }
                                String substring4 = str.substring(i28, i9);
                                if (substring4.length() - 1 < 0) {
                                    Parameters.a.getClass();
                                    stringValuesImpl = Parameters.Companion.b;
                                } else {
                                    Parameters.Companion companion = Parameters.a;
                                    ?? stringValuesBuilderImpl = new StringValuesBuilderImpl();
                                    int length9 = substring4.length() - 1;
                                    if (length9 >= 0) {
                                        int i29 = -1;
                                        i10 = i8;
                                        int i30 = i10;
                                        i11 = i30;
                                        while (i10 != 1000) {
                                            char charAt5 = substring4.charAt(i30);
                                            if (charAt5 != '&') {
                                                if (charAt5 == '=' && i29 == -1) {
                                                    i29 = i30;
                                                }
                                            } else {
                                                QueryKt.a(stringValuesBuilderImpl, substring4, i11, i29, i30);
                                                i11 = i30 + 1;
                                                i10++;
                                                i29 = -1;
                                            }
                                            if (i30 != length9) {
                                                i30++;
                                            } else {
                                                i = i29;
                                            }
                                        }
                                        Map map = stringValuesBuilderImpl.a;
                                        map.getClass();
                                        stringValuesImpl = new StringValuesImpl(true, map);
                                    } else {
                                        i10 = i8;
                                        i11 = i10;
                                    }
                                    if (i10 != 1000) {
                                        QueryKt.a(stringValuesBuilderImpl, substring4, i11, i, substring4.length());
                                    }
                                    Map map2 = stringValuesBuilderImpl.a;
                                    map2.getClass();
                                    stringValuesImpl = new StringValuesImpl(true, map2);
                                }
                                stringValuesImpl.c(new d(26, uRLBuilder));
                                i6 = i9;
                            }
                        }
                        if (i6 < i2 && str.charAt(i6) == '#') {
                            uRLBuilder.g = str.substring(i6 + 1, i2);
                            return;
                        }
                        return;
                    }
                    u2.g(q.g(i4, "Illegal character in scheme at position "));
                    return;
                }
                if (charAt2 == '#' || charAt2 == '/' || charAt2 == '?') {
                    break;
                }
                if (i4 == -1 && (('a' > charAt2 || charAt2 >= '{') && (('A' > charAt2 || charAt2 >= '[') && (('0' > charAt2 || charAt2 >= ':') && charAt2 != '.' && charAt2 != '+' && charAt2 != '-')))) {
                    i4 = i3;
                }
                i3++;
            }
            i5 = -1;
            boolean z3 = true;
            if (i5 > 0) {
            }
            if (uRLBuilder.b().j.equals("data")) {
            }
        }
        length2 = -1;
        i2 = length2 + 1;
        charAt = str.charAt(i18);
        char c3 = 'A';
        if ('a' > charAt) {
        }
        i3 = i18;
        i4 = i3;
        while (i3 < i2) {
        }
        i5 = -1;
        boolean z32 = true;
        if (i5 > 0) {
        }
        if (uRLBuilder.b().j.equals("data")) {
        }
    }
}
