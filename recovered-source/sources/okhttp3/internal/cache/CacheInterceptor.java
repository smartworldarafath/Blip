package okhttp3.internal.cache;

import kotlin.text.StringsKt;
import okhttp3.CacheControl;
import okhttp3.Headers;
import okhttp3.Interceptor;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okhttp3.internal.http.RealInterceptorChain;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CacheInterceptor implements Interceptor {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static final Response a(Response response) {
            ResponseBody responseBody;
            if (response != null) {
                responseBody = response.p;
            } else {
                responseBody = null;
            }
            if (responseBody != null) {
                Response.Builder h = response.h();
                h.g = null;
                return h.a();
            }
            return response;
        }

        public static boolean b(String str) {
            if (!"Connection".equalsIgnoreCase(str) && !"Keep-Alive".equalsIgnoreCase(str) && !"Proxy-Authenticate".equalsIgnoreCase(str) && !"Proxy-Authorization".equalsIgnoreCase(str) && !"TE".equalsIgnoreCase(str) && !"Trailers".equalsIgnoreCase(str) && !"Transfer-Encoding".equalsIgnoreCase(str) && !"Upgrade".equalsIgnoreCase(str)) {
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0059  */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Response a(RealInterceptorChain realInterceptorChain) {
        CacheStrategy cacheStrategy;
        CacheStrategy cacheStrategy2;
        Headers headers;
        String str;
        int i;
        CacheStrategy cacheStrategy3;
        Headers headers2;
        String str2;
        System.currentTimeMillis();
        Request request = realInterceptorChain.e;
        CacheStrategy cacheStrategy4 = new CacheStrategy(request, null);
        CacheControl cacheControl = request.f;
        if (cacheControl == null) {
            int i2 = CacheControl.n;
            Headers headers3 = request.c;
            int size = headers3.size();
            boolean z = true;
            String str3 = null;
            boolean z2 = true;
            int i3 = 0;
            boolean z3 = false;
            boolean z4 = false;
            int i4 = -1;
            int i5 = -1;
            boolean z5 = false;
            boolean z6 = false;
            boolean z7 = false;
            int i6 = -1;
            int i7 = -1;
            boolean z8 = false;
            boolean z9 = false;
            boolean z10 = false;
            while (i3 < size) {
                String c = headers3.c(i3);
                String e = headers3.e(i3);
                if (StringsKt.o(c, "Cache-Control", z)) {
                    if (str3 == null) {
                        str3 = e;
                        i = 0;
                        while (i < e.length()) {
                            int length = e.length();
                            boolean z11 = z;
                            int i8 = i;
                            while (true) {
                                if (i8 < length) {
                                    cacheStrategy3 = cacheStrategy4;
                                    headers2 = headers3;
                                    if (StringsKt.j("=,;", e.charAt(i8))) {
                                        break;
                                    }
                                    i8++;
                                    cacheStrategy4 = cacheStrategy3;
                                    headers3 = headers2;
                                } else {
                                    cacheStrategy3 = cacheStrategy4;
                                    headers2 = headers3;
                                    i8 = e.length();
                                    break;
                                }
                            }
                            String obj = StringsKt.U(e.substring(i, i8)).toString();
                            if (i8 != e.length() && e.charAt(i8) != ',' && e.charAt(i8) != ';') {
                                int i9 = i8 + 1;
                                byte[] bArr = Util.a;
                                int length2 = e.length();
                                while (true) {
                                    if (i9 < length2) {
                                        char charAt = e.charAt(i9);
                                        if (charAt != ' ' && charAt != '\t') {
                                            break;
                                        }
                                        i9++;
                                    } else {
                                        i9 = e.length();
                                        break;
                                    }
                                }
                                if (i9 < e.length() && e.charAt(i9) == '\"') {
                                    int i10 = i9 + 1;
                                    int q = StringsKt.q(e, '\"', i10, 4);
                                    i = q + 1;
                                    str2 = e.substring(i10, q);
                                } else {
                                    int length3 = e.length();
                                    i = i9;
                                    while (true) {
                                        if (i < length3) {
                                            int i11 = length3;
                                            if (StringsKt.j(",;", e.charAt(i))) {
                                                break;
                                            }
                                            i++;
                                            length3 = i11;
                                        } else {
                                            i = e.length();
                                            break;
                                        }
                                    }
                                    str2 = StringsKt.U(e.substring(i9, i)).toString();
                                }
                            } else {
                                i = i8 + 1;
                                str2 = null;
                            }
                            if ("no-cache".equalsIgnoreCase(obj)) {
                                z = z11;
                                z3 = z;
                            } else if ("no-store".equalsIgnoreCase(obj)) {
                                z = z11;
                                z4 = z;
                            } else {
                                if ("max-age".equalsIgnoreCase(obj)) {
                                    i4 = Util.u(-1, str2);
                                } else if ("s-maxage".equalsIgnoreCase(obj)) {
                                    i5 = Util.u(-1, str2);
                                } else if ("private".equalsIgnoreCase(obj)) {
                                    z = z11;
                                    z5 = z;
                                } else if ("public".equalsIgnoreCase(obj)) {
                                    z = z11;
                                    z6 = z;
                                } else if ("must-revalidate".equalsIgnoreCase(obj)) {
                                    z = z11;
                                    z7 = z;
                                } else if ("max-stale".equalsIgnoreCase(obj)) {
                                    i6 = Util.u(Integer.MAX_VALUE, str2);
                                } else if ("min-fresh".equalsIgnoreCase(obj)) {
                                    i7 = Util.u(-1, str2);
                                } else if ("only-if-cached".equalsIgnoreCase(obj)) {
                                    z = z11;
                                    z8 = z;
                                } else if ("no-transform".equalsIgnoreCase(obj)) {
                                    z = z11;
                                    z9 = z;
                                } else {
                                    z = z11;
                                    if ("immutable".equalsIgnoreCase(obj)) {
                                        z10 = z;
                                    }
                                }
                                z = z11;
                            }
                            cacheStrategy4 = cacheStrategy3;
                            headers3 = headers2;
                        }
                        i3++;
                        z = z;
                        cacheStrategy4 = cacheStrategy4;
                        headers3 = headers3;
                    }
                } else if (!StringsKt.o(c, "Pragma", z)) {
                    i3++;
                    z = z;
                    cacheStrategy4 = cacheStrategy4;
                    headers3 = headers3;
                }
                z2 = false;
                i = 0;
                while (i < e.length()) {
                }
                i3++;
                z = z;
                cacheStrategy4 = cacheStrategy4;
                headers3 = headers3;
            }
            cacheStrategy = cacheStrategy4;
            if (!z2) {
                str = null;
            } else {
                str = str3;
            }
            CacheControl cacheControl2 = new CacheControl(z3, z4, i4, i5, z5, z6, z7, i6, i7, z8, z9, z10, str);
            request.f = cacheControl2;
            cacheControl = cacheControl2;
        } else {
            cacheStrategy = cacheStrategy4;
        }
        if (cacheControl.j) {
            cacheStrategy2 = new CacheStrategy(null, null);
        } else {
            cacheStrategy2 = cacheStrategy;
        }
        Request request2 = cacheStrategy2.a;
        Response response = cacheStrategy2.b;
        if (request2 == null && response == null) {
            Response.Builder builder = new Response.Builder();
            builder.a = request;
            builder.b = Protocol.HTTP_1_1;
            builder.c = 504;
            builder.d = "Unsatisfiable Request (only-if-cached)";
            builder.g = Util.c;
            builder.k = -1L;
            builder.l = System.currentTimeMillis();
            return builder.a();
        }
        if (request2 == null) {
            response.getClass();
            Response.Builder h = response.h();
            Response a = Companion.a(response);
            Response.Builder.b("cacheResponse", a);
            h.i = a;
            return h.a();
        }
        Response b = realInterceptorChain.b(request2);
        if (response != null) {
            if (b.m == 304) {
                Response.Builder h2 = response.h();
                Headers headers4 = response.o;
                Headers headers5 = b.o;
                Headers.Builder builder2 = new Headers.Builder();
                int size2 = headers4.size();
                int i12 = 0;
                while (i12 < size2) {
                    String c2 = headers4.c(i12);
                    String e2 = headers4.e(i12);
                    if ("Warning".equalsIgnoreCase(c2)) {
                        headers = headers4;
                        if (StringsKt.J(e2, "1", false)) {
                            i12++;
                            headers4 = headers;
                        }
                    } else {
                        headers = headers4;
                    }
                    if ("Content-Length".equalsIgnoreCase(c2) || "Content-Encoding".equalsIgnoreCase(c2) || "Content-Type".equalsIgnoreCase(c2) || !Companion.b(c2) || headers5.b(c2) == null) {
                        builder2.a(c2, e2);
                    }
                    i12++;
                    headers4 = headers;
                }
                int size3 = headers5.size();
                for (int i13 = 0; i13 < size3; i13++) {
                    String c3 = headers5.c(i13);
                    if (!"Content-Length".equalsIgnoreCase(c3) && !"Content-Encoding".equalsIgnoreCase(c3) && !"Content-Type".equalsIgnoreCase(c3) && Companion.b(c3)) {
                        builder2.a(c3, headers5.e(i13));
                    }
                }
                h2.f = builder2.b().d();
                h2.k = b.t;
                h2.l = b.u;
                Response a2 = Companion.a(response);
                Response.Builder.b("cacheResponse", a2);
                h2.i = a2;
                Response a3 = Companion.a(b);
                Response.Builder.b("networkResponse", a3);
                h2.h = a3;
                h2.a();
                ResponseBody responseBody = b.p;
                responseBody.getClass();
                responseBody.close();
                throw null;
            }
            ResponseBody responseBody2 = response.p;
            if (responseBody2 != null) {
                Util.b(responseBody2);
            }
        }
        Response.Builder h3 = b.h();
        Response a4 = Companion.a(response);
        Response.Builder.b("cacheResponse", a4);
        h3.i = a4;
        Response a5 = Companion.a(b);
        Response.Builder.b("networkResponse", a5);
        h3.h = a5;
        return h3.a();
    }
}
