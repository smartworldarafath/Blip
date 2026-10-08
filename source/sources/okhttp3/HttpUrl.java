package okhttp3;

import defpackage.k8;
import defpackage.u2;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.ranges.IntProgression;
import kotlin.ranges.RangesKt;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HttpUrl {
    public static final char[] j = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    public final String a;
    public final String b;
    public final String c;
    public final String d;
    public final int e;
    public final List f;
    public final String g;
    public final String h;
    public final boolean i;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Builder {
        public String a;
        public String d;
        public final ArrayList f;
        public ArrayList g;
        public String h;
        public String b = "";
        public String c = "";
        public int e = -1;

        public Builder() {
            ArrayList arrayList = new ArrayList();
            this.f = arrayList;
            arrayList.add("");
        }

        public final HttpUrl a() {
            ArrayList arrayList;
            String str;
            String str2 = this.a;
            String str3 = null;
            if (str2 != null) {
                String d = Companion.d(this.b, 0, 0, 7);
                String d2 = Companion.d(this.c, 0, 0, 7);
                String str4 = this.d;
                if (str4 != null) {
                    int i = this.e;
                    if (i == -1) {
                        String str5 = this.a;
                        str5.getClass();
                        i = Companion.b(str5);
                    }
                    ArrayList arrayList2 = this.f;
                    ArrayList arrayList3 = new ArrayList(CollectionsKt.m(arrayList2, 10));
                    Iterator it = arrayList2.iterator();
                    while (it.hasNext()) {
                        arrayList3.add(Companion.d((String) it.next(), 0, 0, 7));
                    }
                    ArrayList<String> arrayList4 = this.g;
                    if (arrayList4 != null) {
                        arrayList = new ArrayList(CollectionsKt.m(arrayList4, 10));
                        for (String str6 : arrayList4) {
                            if (str6 != null) {
                                str = Companion.d(str6, 0, 0, 3);
                            } else {
                                str = null;
                            }
                            arrayList.add(str);
                        }
                    } else {
                        arrayList = null;
                    }
                    String str7 = this.h;
                    if (str7 != null) {
                        str3 = Companion.d(str7, 0, 0, 7);
                    }
                    return new HttpUrl(str2, d, d2, str4, i, arrayList3, arrayList, str3, toString());
                }
                u2.l("host == null");
                return null;
            }
            u2.l("scheme == null");
            return null;
        }

        /* JADX WARN: Code restructure failed: missing block: B:171:0x01f1, code lost:
        
            if (r7 < 65536) goto L124;
         */
        /* JADX WARN: Code restructure failed: missing block: B:29:0x0075, code lost:
        
            if (r12 == ':') goto L40;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final void b(HttpUrl httpUrl, String str) {
            int i;
            String str2;
            char c;
            char c2;
            int d;
            char c3;
            int i2;
            boolean z;
            ArrayList arrayList;
            char charAt;
            byte[] bArr = Util.a;
            int k = Util.k(str, 0, str.length());
            int l = Util.l(str, k, str.length());
            if (l - k >= 2) {
                char charAt2 = str.charAt(k);
                if ((Intrinsics.b(charAt2, 97) >= 0 && Intrinsics.b(charAt2, 122) <= 0) || (Intrinsics.b(charAt2, 65) >= 0 && Intrinsics.b(charAt2, 90) <= 0)) {
                    i = k + 1;
                    while (true) {
                        if (i >= l) {
                            break;
                        }
                        char charAt3 = str.charAt(i);
                        if (('a' <= charAt3 && charAt3 < '{') || (('A' <= charAt3 && charAt3 < '[') || (('0' <= charAt3 && charAt3 < ':') || charAt3 == '+' || charAt3 == '-' || charAt3 == '.'))) {
                            i++;
                        }
                    }
                }
            }
            i = -1;
            if (i != -1) {
                if (StringsKt.I(k, str, "https:", true)) {
                    this.a = "https";
                    k += 6;
                } else if (StringsKt.I(k, str, "http:", true)) {
                    this.a = "http";
                    k += 5;
                } else {
                    throw new IllegalArgumentException("Expected URL scheme 'http' or 'https' but was '" + str.substring(0, i) + '\'');
                }
            } else if (httpUrl != null) {
                this.a = httpUrl.a;
            } else {
                if (str.length() > 6) {
                    str2 = StringsKt.Q(6, str).concat("...");
                } else {
                    str2 = str;
                }
                u2.g("Expected URL scheme 'http' or 'https' but no scheme was found for ".concat(str2));
                return;
            }
            int i3 = k;
            int i4 = 0;
            while (true) {
                c = '/';
                c2 = '\\';
                if (i3 >= l || !((charAt = str.charAt(i3)) == '\\' || charAt == '/')) {
                    break;
                }
                i4++;
                i3++;
            }
            ArrayList arrayList2 = this.f;
            char c4 = '#';
            if (i4 < 2 && httpUrl != null && Intrinsics.a(httpUrl.a, this.a)) {
                this.b = httpUrl.e();
                this.c = httpUrl.a();
                this.d = httpUrl.d;
                this.e = httpUrl.e;
                arrayList2.clear();
                arrayList2.addAll(httpUrl.c());
                if (k == l || str.charAt(k) == '#') {
                    String d2 = httpUrl.d();
                    if (d2 != null) {
                        arrayList = Companion.e(Companion.a(d2, 0, 0, " \"'<>#", 211));
                    } else {
                        arrayList = null;
                    }
                    this.g = arrayList;
                }
            } else {
                int i5 = k + i4;
                boolean z2 = false;
                boolean z3 = false;
                while (true) {
                    d = Util.d(i5, l, str, "@/\\?#");
                    if (d != l) {
                        c3 = str.charAt(d);
                    } else {
                        c3 = 65535;
                    }
                    if (c3 == 65535 || c3 == c4 || c3 == c || c3 == c2 || c3 == '?') {
                        break;
                    }
                    if (c3 == '@') {
                        if (!z2) {
                            int e = Util.e(str, ':', i5, d);
                            String a = Companion.a(str, i5, e, " \"':;<=>@[]^`{}|/\\?#", 240);
                            if (z3) {
                                a = this.b + "%40" + a;
                            }
                            this.b = a;
                            if (e != d) {
                                this.c = Companion.a(str, e + 1, d, " \"':;<=>@[]^`{}|/\\?#", 240);
                                z2 = true;
                            }
                            z3 = true;
                        } else {
                            this.c += "%40" + Companion.a(str, i5, d, " \"':;<=>@[]^`{}|/\\?#", 240);
                        }
                        i5 = d + 1;
                        c4 = '#';
                        c = '/';
                        c2 = '\\';
                    }
                }
                int i6 = i5;
                while (true) {
                    if (i6 < d) {
                        char charAt4 = str.charAt(i6);
                        if (charAt4 != '[') {
                            if (charAt4 == ':') {
                                break;
                            } else {
                                i6++;
                            }
                        }
                        do {
                            i6++;
                            if (i6 >= d) {
                                break;
                            }
                        } while (str.charAt(i6) != ']');
                        i6++;
                    } else {
                        i6 = d;
                        break;
                    }
                }
                int i7 = i6 + 1;
                if (i7 < d) {
                    this.d = HostnamesKt.b(Companion.d(str, i5, i6, 4));
                    try {
                        i2 = Integer.parseInt(Companion.a(str, i7, d, "", 248));
                        if (1 <= i2) {
                        }
                    } catch (NumberFormatException unused) {
                    }
                    i2 = -1;
                    this.e = i2;
                    if (i2 == -1) {
                        k8.i(str.substring(i7, d), "Invalid URL port: \"");
                        return;
                    }
                } else {
                    this.d = HostnamesKt.b(Companion.d(str, i5, i6, 4));
                    String str3 = this.a;
                    str3.getClass();
                    this.e = Companion.b(str3);
                }
                if (this.d != null) {
                    k = d;
                } else {
                    k8.i(str.substring(i5, i6), "Invalid URL host: \"");
                    return;
                }
            }
            int d3 = Util.d(k, l, str, "?#");
            if (k != d3) {
                char charAt5 = str.charAt(k);
                if (charAt5 != '/' && charAt5 != '\\') {
                    arrayList2.set(arrayList2.size() - 1, "");
                } else {
                    arrayList2.clear();
                    arrayList2.add("");
                    k++;
                }
                while (k < d3) {
                    int d4 = Util.d(k, d3, str, "/\\");
                    if (d4 < d3) {
                        z = true;
                    } else {
                        z = false;
                    }
                    String a2 = Companion.a(str, k, d4, " \"<>^`{}|/\\?#", 240);
                    if (!a2.equals(".") && !a2.equalsIgnoreCase("%2e")) {
                        if (!a2.equals("..") && !a2.equalsIgnoreCase("%2e.") && !a2.equalsIgnoreCase(".%2e") && !a2.equalsIgnoreCase("%2e%2e")) {
                            if (((CharSequence) arrayList2.get(arrayList2.size() - 1)).length() == 0) {
                                arrayList2.set(arrayList2.size() - 1, a2);
                            } else {
                                arrayList2.add(a2);
                            }
                            if (z) {
                                arrayList2.add("");
                            }
                        } else if (((String) arrayList2.remove(arrayList2.size() - 1)).length() == 0 && !arrayList2.isEmpty()) {
                            arrayList2.set(arrayList2.size() - 1, "");
                        } else {
                            arrayList2.add("");
                        }
                    }
                    if (z) {
                        k = d4 + 1;
                    } else {
                        k = d4;
                    }
                }
            }
            if (d3 < l && str.charAt(d3) == '?') {
                int e2 = Util.e(str, '#', d3, l);
                this.g = Companion.e(Companion.a(str, d3 + 1, e2, " \"'<>#", 208));
                d3 = e2;
            }
            if (d3 < l && str.charAt(d3) == '#') {
                this.h = Companion.a(str, d3 + 1, l, "", 176);
            }
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder();
            String str = this.a;
            if (str != null) {
                sb.append(str);
                sb.append("://");
            } else {
                sb.append("//");
            }
            if (this.b.length() > 0 || this.c.length() > 0) {
                sb.append(this.b);
                if (this.c.length() > 0) {
                    sb.append(':');
                    sb.append(this.c);
                }
                sb.append('@');
            }
            String str2 = this.d;
            if (str2 != null) {
                if (StringsKt.j(str2, ':')) {
                    sb.append('[');
                    sb.append(this.d);
                    sb.append(']');
                } else {
                    sb.append(this.d);
                }
            }
            int i = this.e;
            if (i != -1 || this.a != null) {
                if (i == -1) {
                    String str3 = this.a;
                    str3.getClass();
                    i = Companion.b(str3);
                }
                String str4 = this.a;
                if (str4 == null || i != Companion.b(str4)) {
                    sb.append(':');
                    sb.append(i);
                }
            }
            ArrayList arrayList = this.f;
            arrayList.getClass();
            int size = arrayList.size();
            for (int i2 = 0; i2 < size; i2++) {
                sb.append('/');
                sb.append((String) arrayList.get(i2));
            }
            if (this.g != null) {
                sb.append('?');
                ArrayList arrayList2 = this.g;
                arrayList2.getClass();
                IntProgression h = RangesKt.h(RangesKt.j(0, arrayList2.size()), 2);
                int i3 = h.j;
                int i4 = h.k;
                int i5 = h.l;
                if ((i5 > 0 && i3 <= i4) || (i5 < 0 && i4 <= i3)) {
                    while (true) {
                        String str5 = (String) arrayList2.get(i3);
                        String str6 = (String) arrayList2.get(i3 + 1);
                        if (i3 > 0) {
                            sb.append('&');
                        }
                        sb.append(str5);
                        if (str6 != null) {
                            sb.append('=');
                            sb.append(str6);
                        }
                        if (i3 == i4) {
                            break;
                        }
                        i3 += i5;
                    }
                }
            }
            if (this.h != null) {
                sb.append('#');
                sb.append(this.h);
            }
            return sb.toString();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r2v3 */
        /* JADX WARN: Type inference failed for: r2v4 */
        /* JADX WARN: Type inference failed for: r2v5, types: [okio.Buffer] */
        /* JADX WARN: Type inference failed for: r2v6, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r2v7 */
        /* JADX WARN: Type inference failed for: r2v9 */
        /* JADX WARN: Type inference failed for: r9v2, types: [okio.Buffer, java.lang.Object] */
        public static String a(String str, int i, int i2, String str2, int i3) {
            int i4;
            int i5;
            boolean z;
            boolean z2;
            boolean z3;
            String str3;
            boolean z4 = false;
            if ((i3 & 1) != 0) {
                i4 = 0;
            } else {
                i4 = i;
            }
            if ((i3 & 2) != 0) {
                i5 = str.length();
            } else {
                i5 = i2;
            }
            if ((i3 & 8) != 0) {
                z = false;
            } else {
                z = true;
            }
            if ((i3 & 16) != 0) {
                z2 = false;
            } else {
                z2 = true;
            }
            if ((i3 & 32) != 0) {
                z3 = false;
            } else {
                z3 = true;
            }
            if ((i3 & 64) == 0) {
                z4 = true;
            }
            str.getClass();
            int i6 = i4;
            while (i6 < i5) {
                int codePointAt = str.codePointAt(i6);
                int i7 = 128;
                int i8 = 32;
                if (codePointAt >= 32 && codePointAt != 127 && ((codePointAt < 128 || z4) && !StringsKt.j(str2, (char) codePointAt) && ((codePointAt != 37 || (z && (!z2 || c(str, i6, i5)))) && (codePointAt != 43 || !z3)))) {
                    i6 += Character.charCount(codePointAt);
                } else {
                    ?? obj = new Object();
                    obj.K0(str, i4, i6);
                    ?? r2 = 0;
                    while (i6 < i5) {
                        int codePointAt2 = str.codePointAt(i6);
                        if (!z || (codePointAt2 != 9 && codePointAt2 != 10 && codePointAt2 != 12 && codePointAt2 != 13)) {
                            if (codePointAt2 == 43 && z3) {
                                if (z) {
                                    str3 = "+";
                                } else {
                                    str3 = "%2B";
                                }
                                obj.E0(str3);
                            } else if (codePointAt2 >= i8 && codePointAt2 != 127 && ((codePointAt2 < i7 || z4) && !StringsKt.j(str2, (char) codePointAt2) && (codePointAt2 != 37 || (z && (!z2 || c(str, i6, i5)))))) {
                                obj.P0(codePointAt2);
                            } else {
                                if (r2 == 0) {
                                    r2 = new Object();
                                }
                                r2.P0(codePointAt2);
                                while (!r2.J()) {
                                    byte readByte = r2.readByte();
                                    obj.g0(37);
                                    char[] cArr = HttpUrl.j;
                                    obj.g0(cArr[((readByte & 255) >> 4) & 15]);
                                    obj.g0(cArr[readByte & 15]);
                                }
                            }
                        }
                        i6 += Character.charCount(codePointAt2);
                        i7 = 128;
                        i8 = 32;
                        r2 = r2;
                    }
                    return obj.P();
                }
            }
            return str.substring(i4, i5);
        }

        public static int b(String str) {
            str.getClass();
            if (str.equals("http")) {
                return 80;
            }
            if (str.equals("https")) {
                return 443;
            }
            return -1;
        }

        public static boolean c(String str, int i, int i2) {
            int i3 = i + 2;
            if (i3 < i2 && str.charAt(i) == '%' && Util.o(str.charAt(i + 1)) != -1 && Util.o(str.charAt(i3)) != -1) {
                return true;
            }
            return false;
        }

        /* JADX WARN: Type inference failed for: r0v3, types: [okio.Buffer, java.lang.Object] */
        public static String d(String str, int i, int i2, int i3) {
            int i4;
            boolean z = false;
            if ((i3 & 1) != 0) {
                i = 0;
            }
            if ((i3 & 2) != 0) {
                i2 = str.length();
            }
            if ((i3 & 4) == 0) {
                z = true;
            }
            str.getClass();
            int i5 = i;
            while (i5 < i2) {
                char charAt = str.charAt(i5);
                if (charAt != '%' && (charAt != '+' || !z)) {
                    i5++;
                } else {
                    ?? obj = new Object();
                    obj.K0(str, i, i5);
                    while (i5 < i2) {
                        int codePointAt = str.codePointAt(i5);
                        if (codePointAt == 37 && (i4 = i5 + 2) < i2) {
                            int o = Util.o(str.charAt(i5 + 1));
                            int o2 = Util.o(str.charAt(i4));
                            if (o != -1 && o2 != -1) {
                                obj.g0((o << 4) + o2);
                                i5 = Character.charCount(codePointAt) + i4;
                            }
                            obj.P0(codePointAt);
                            i5 += Character.charCount(codePointAt);
                        } else {
                            if (codePointAt == 43 && z) {
                                obj.g0(32);
                                i5++;
                            }
                            obj.P0(codePointAt);
                            i5 += Character.charCount(codePointAt);
                        }
                    }
                    return obj.P();
                }
            }
            return str.substring(i, i2);
        }

        public static ArrayList e(String str) {
            ArrayList arrayList = new ArrayList();
            int i = 0;
            while (i <= str.length()) {
                int q = StringsKt.q(str, '&', i, 4);
                if (q == -1) {
                    q = str.length();
                }
                int q2 = StringsKt.q(str, '=', i, 4);
                if (q2 != -1 && q2 <= q) {
                    arrayList.add(str.substring(i, q2));
                    arrayList.add(str.substring(q2 + 1, q));
                } else {
                    arrayList.add(str.substring(i, q));
                    arrayList.add(null);
                }
                i = q + 1;
            }
            return arrayList;
        }
    }

    public HttpUrl(String str, String str2, String str3, String str4, int i, ArrayList arrayList, ArrayList arrayList2, String str5, String str6) {
        str.getClass();
        str4.getClass();
        this.a = str;
        this.b = str2;
        this.c = str3;
        this.d = str4;
        this.e = i;
        this.f = arrayList2;
        this.g = str5;
        this.h = str6;
        this.i = str.equals("https");
    }

    public final String a() {
        if (this.c.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.h;
        return str.substring(StringsKt.q(str, ':', length, 4) + 1, StringsKt.q(str, '@', 0, 6));
    }

    public final String b() {
        int length = this.a.length() + 3;
        String str = this.h;
        int q = StringsKt.q(str, '/', length, 4);
        return str.substring(q, Util.d(q, str.length(), str, "?#"));
    }

    public final ArrayList c() {
        int length = this.a.length() + 3;
        String str = this.h;
        int q = StringsKt.q(str, '/', length, 4);
        int d = Util.d(q, str.length(), str, "?#");
        ArrayList arrayList = new ArrayList();
        while (q < d) {
            int i = q + 1;
            int e = Util.e(str, '/', i, d);
            arrayList.add(str.substring(i, e));
            q = e;
        }
        return arrayList;
    }

    public final String d() {
        if (this.f == null) {
            return null;
        }
        String str = this.h;
        int q = StringsKt.q(str, '?', 0, 6) + 1;
        return str.substring(q, Util.e(str, '#', q, str.length()));
    }

    public final String e() {
        if (this.b.length() == 0) {
            return "";
        }
        int length = this.a.length() + 3;
        String str = this.h;
        return str.substring(length, Util.d(length, str.length(), str, ":@"));
    }

    public final boolean equals(Object obj) {
        if ((obj instanceof HttpUrl) && ((HttpUrl) obj).h.equals(this.h)) {
            return true;
        }
        return false;
    }

    public final String f() {
        Builder builder;
        try {
            builder = new Builder();
            builder.b(this, "/...");
        } catch (IllegalArgumentException unused) {
            builder = null;
        }
        builder.getClass();
        builder.b = Companion.a("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 251);
        builder.c = Companion.a("", 0, 0, " \"':;<=>@[]^`{}|/\\?#", 251);
        return builder.a().h;
    }

    public final URI g() {
        ArrayList arrayList;
        String substring;
        String str;
        String str2;
        Builder builder = new Builder();
        String str3 = this.a;
        builder.a = str3;
        builder.b = e();
        builder.c = a();
        builder.d = this.d;
        int b = Companion.b(str3);
        int i = this.e;
        if (i == b) {
            i = -1;
        }
        builder.e = i;
        ArrayList arrayList2 = builder.f;
        arrayList2.clear();
        arrayList2.addAll(c());
        String d = d();
        String str4 = null;
        if (d != null) {
            arrayList = Companion.e(Companion.a(d, 0, 0, " \"'<>#", 211));
        } else {
            arrayList = null;
        }
        builder.g = arrayList;
        if (this.g == null) {
            substring = null;
        } else {
            String str5 = this.h;
            substring = str5.substring(StringsKt.q(str5, '#', 0, 6) + 1);
        }
        builder.h = substring;
        String str6 = builder.d;
        if (str6 != null) {
            str = new Regex("[\"<>^`{|}]").j.matcher(str6).replaceAll("");
            str.getClass();
        } else {
            str = null;
        }
        builder.d = str;
        int size = arrayList2.size();
        for (int i2 = 0; i2 < size; i2++) {
            arrayList2.set(i2, Companion.a((String) arrayList2.get(i2), 0, 0, "[]", 227));
        }
        ArrayList arrayList3 = builder.g;
        if (arrayList3 != null) {
            int size2 = arrayList3.size();
            for (int i3 = 0; i3 < size2; i3++) {
                String str7 = (String) arrayList3.get(i3);
                if (str7 != null) {
                    str2 = Companion.a(str7, 0, 0, "\\^`{|}", 195);
                } else {
                    str2 = null;
                }
                arrayList3.set(i3, str2);
            }
        }
        String str8 = builder.h;
        if (str8 != null) {
            str4 = Companion.a(str8, 0, 0, " \"#<>\\^`{|}", 163);
        }
        builder.h = str4;
        String builder2 = builder.toString();
        try {
            return new URI(builder2);
        } catch (URISyntaxException e) {
            try {
                String replaceAll = new Regex("[\\u0000-\\u001F\\u007F-\\u009F\\p{javaWhitespace}]").j.matcher(builder2).replaceAll("");
                replaceAll.getClass();
                URI create = URI.create(replaceAll);
                create.getClass();
                return create;
            } catch (Exception unused) {
                throw new RuntimeException(e);
            }
        }
    }

    public final int hashCode() {
        return this.h.hashCode();
    }

    public final String toString() {
        return this.h;
    }
}
