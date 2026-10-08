package okhttp3.internal.http;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.regex.Pattern;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import kotlin.text.StringsKt;
import okhttp3.Cookie;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Response;
import okhttp3.internal.HostnamesKt;
import okhttp3.internal.Util;
import okhttp3.internal.publicsuffix.PublicSuffixDatabase;
import okio.ByteString;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HttpHeaders {
    static {
        ByteString byteString = ByteString.m;
        ByteString.Companion.b("\"\\");
        ByteString.Companion.b("\t ,=");
    }

    public static final boolean a(Response response) {
        if (!Intrinsics.a(response.j.b, "HEAD")) {
            int i = response.m;
            if (((i >= 100 && i < 200) || i == 204 || i == 304) && Util.h(response) == -1 && !"chunked".equalsIgnoreCase(Response.a("Transfer-Encoding", response))) {
                return false;
            }
            return true;
        }
        return false;
    }

    /* JADX WARN: Code restructure failed: missing block: B:126:0x01f4, code lost:
    
        if (okhttp3.internal.Util.e.d(r0) == false) goto L106;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r23v2 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void b(CookieJar cookieJar, HttpUrl httpUrl, Headers headers) {
        List list;
        int i;
        Cookie cookie;
        HttpUrl httpUrl2;
        Cookie cookie2;
        String str;
        cookieJar.getClass();
        httpUrl.getClass();
        headers.getClass();
        if (cookieJar == CookieJar.a) {
            return;
        }
        Pattern pattern = Cookie.j;
        int size = headers.size();
        int i2 = 0;
        ArrayList arrayList = null;
        for (int i3 = 0; i3 < size; i3++) {
            if ("Set-Cookie".equalsIgnoreCase(headers.c(i3))) {
                if (arrayList == null) {
                    arrayList = new ArrayList(2);
                }
                arrayList.add(headers.e(i3));
            }
        }
        List list2 = EmptyList.j;
        if (arrayList != null) {
            List unmodifiableList = Collections.unmodifiableList(arrayList);
            unmodifiableList.getClass();
            list = unmodifiableList;
        } else {
            list = list2;
        }
        int size2 = list.size();
        int i4 = 0;
        ArrayList arrayList2 = null;
        while (i4 < size2) {
            String str2 = (String) list.get(i4);
            str2.getClass();
            long currentTimeMillis = System.currentTimeMillis();
            byte[] bArr = Util.a;
            char c = ';';
            int e = Util.e(str2, ';', i2, str2.length());
            char c2 = '=';
            int e2 = Util.e(str2, '=', i2, e);
            if (e2 != e) {
                int k = Util.k(str2, i2, e2);
                String substring = str2.substring(k, Util.l(str2, k, e2));
                if (substring.length() != 0 && Util.j(substring) == -1) {
                    int k2 = Util.k(str2, e2 + 1, e);
                    String substring2 = str2.substring(k2, Util.l(str2, k2, e));
                    if (Util.j(substring2) == -1) {
                        int i5 = e + 1;
                        int length = str2.length();
                        long j = 253402300799999L;
                        int i6 = i2;
                        boolean z = i6 == true ? 1 : 0;
                        boolean z2 = z;
                        long j2 = 253402300799999L;
                        String str3 = null;
                        String str4 = null;
                        long j3 = -1;
                        boolean z3 = true;
                        boolean z4 = i6;
                        while (true) {
                            long j4 = Long.MAX_VALUE;
                            if (i5 < length) {
                                int e3 = Util.e(str2, c, i5, length);
                                int e4 = Util.e(str2, c2, i5, e3);
                                int k3 = Util.k(str2, i5, e4);
                                String substring3 = str2.substring(k3, Util.l(str2, k3, e4));
                                if (e4 < e3) {
                                    int k4 = Util.k(str2, e4 + 1, e3);
                                    str = str2.substring(k4, Util.l(str2, k4, e3));
                                } else {
                                    str = "";
                                }
                                if (substring3.equalsIgnoreCase("expires")) {
                                    try {
                                        j2 = Cookie.Companion.b(str.length(), str);
                                        z2 = true;
                                    } catch (NumberFormatException | IllegalArgumentException unused) {
                                    }
                                    i5 = e3 + 1;
                                    c = ';';
                                    c2 = '=';
                                    z4 = z4;
                                } else if (substring3.equalsIgnoreCase("max-age")) {
                                    try {
                                        long parseLong = Long.parseLong(str);
                                        if (parseLong <= 0) {
                                            j3 = Long.MIN_VALUE;
                                        } else {
                                            j3 = parseLong;
                                        }
                                    } catch (NumberFormatException e5) {
                                        if (new Regex("-?\\d+").d(str)) {
                                            if (StringsKt.J(str, "-", false)) {
                                                j4 = Long.MIN_VALUE;
                                            }
                                            j3 = j4;
                                        } else {
                                            throw e5;
                                        }
                                    }
                                    z2 = true;
                                    i5 = e3 + 1;
                                    c = ';';
                                    c2 = '=';
                                    z4 = z4;
                                } else {
                                    if (substring3.equalsIgnoreCase("domain")) {
                                        if (!StringsKt.l(str, ".", false)) {
                                            String b = HostnamesKt.b(StringsKt.B(str, "."));
                                            if (b != null) {
                                                str3 = b;
                                                z3 = false;
                                            } else {
                                                throw new IllegalArgumentException();
                                            }
                                        } else {
                                            throw new IllegalArgumentException("Failed requirement.");
                                        }
                                    } else if (substring3.equalsIgnoreCase("path")) {
                                        str4 = str;
                                    } else if (substring3.equalsIgnoreCase("secure")) {
                                        z4 = 1;
                                    } else if (substring3.equalsIgnoreCase("httponly")) {
                                        z = true;
                                    }
                                    i5 = e3 + 1;
                                    c = ';';
                                    c2 = '=';
                                    z4 = z4;
                                }
                            } else {
                                if (j3 == Long.MIN_VALUE) {
                                    httpUrl2 = httpUrl;
                                    j = Long.MIN_VALUE;
                                } else if (j3 != -1) {
                                    if (j3 <= 9223372036854775L) {
                                        j4 = j3 * 1000;
                                    }
                                    long j5 = currentTimeMillis + j4;
                                    if (j5 >= currentTimeMillis && j5 <= 253402300799999L) {
                                        httpUrl2 = httpUrl;
                                        j = j5;
                                    } else {
                                        httpUrl2 = httpUrl;
                                    }
                                } else {
                                    httpUrl2 = httpUrl;
                                    j = j2;
                                }
                                String str5 = httpUrl2.d;
                                if (str3 == null) {
                                    str3 = str5;
                                } else if (!Intrinsics.a(str5, str3)) {
                                    if (StringsKt.l(str5, str3, false)) {
                                        if (str5.charAt((str5.length() - str3.length()) - 1) == '.') {
                                        }
                                    }
                                    i = 0;
                                    cookie2 = null;
                                    cookie = cookie2;
                                }
                                if (str5.length() == str3.length() || PublicSuffixDatabase.g.a(str3) != null) {
                                    String str6 = "/";
                                    i = 0;
                                    if (str4 == null || !StringsKt.J(str4, "/", false)) {
                                        String b2 = httpUrl2.b();
                                        int v = StringsKt.v(b2, '/', 0, 6);
                                        if (v != 0) {
                                            str6 = b2.substring(0, v);
                                        }
                                        str4 = str6;
                                    }
                                    cookie2 = new Cookie(substring, substring2, j, str3, str4, z4, z, z2, z3);
                                    cookie = cookie2;
                                }
                                i = 0;
                                cookie2 = null;
                                cookie = cookie2;
                            }
                        }
                    }
                }
            }
            i = i2;
            cookie = null;
            if (cookie != null) {
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList();
                }
                arrayList2.add(cookie);
            }
            i4++;
            i2 = i;
        }
        if (arrayList2 != null) {
            list2 = Collections.unmodifiableList(arrayList2);
            list2.getClass();
        }
        list2.isEmpty();
    }
}
