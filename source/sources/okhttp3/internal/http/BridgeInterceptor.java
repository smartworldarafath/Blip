package okhttp3.internal.http;

import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.Util;
import okio.GzipSource;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BridgeInterceptor implements Interceptor {
    public final CookieJar a;

    public BridgeInterceptor(CookieJar cookieJar) {
        cookieJar.getClass();
        this.a = cookieJar;
    }

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        ResponseBody responseBody;
        Request request = realInterceptorChain.e;
        Request.Builder a = request.a();
        HttpUrl httpUrl = request.a;
        Headers headers = request.c;
        RequestBody requestBody = request.d;
        if (requestBody != null) {
            long a2 = requestBody.a();
            if (a2 != -1) {
                a.b("Content-Length", String.valueOf(a2));
                a.c.c("Transfer-Encoding");
            } else {
                a.b("Transfer-Encoding", "chunked");
                a.c.c("Content-Length");
            }
        }
        boolean z = false;
        if (headers.b("Host") == null) {
            a.b("Host", Util.s(httpUrl, false));
        }
        if (headers.b("Connection") == null) {
            a.b("Connection", "Keep-Alive");
        }
        if (headers.b("Accept-Encoding") == null && headers.b("Range") == null) {
            a.b("Accept-Encoding", "gzip");
            z = true;
        }
        CookieJar cookieJar = this.a;
        cookieJar.a(httpUrl);
        if (headers.b("User-Agent") == null) {
            a.b("User-Agent", "okhttp/4.12.0");
        }
        Response b = realInterceptorChain.b(a.a());
        Headers headers2 = b.o;
        HttpHeaders.b(cookieJar, httpUrl, headers2);
        Response.Builder h = b.h();
        h.a = request;
        if (z && "gzip".equalsIgnoreCase(Response.a("Content-Encoding", b)) && HttpHeaders.a(b) && (responseBody = b.p) != null) {
            GzipSource gzipSource = new GzipSource(responseBody.U0());
            Headers.Builder d = headers2.d();
            d.c("Content-Encoding");
            d.c("Content-Length");
            h.f = d.b().d();
            Response.a("Content-Type", b);
            h.g = new RealResponseBody(-1L, new RealBufferedSource(gzipSource));
        }
        return h.a();
    }
}
