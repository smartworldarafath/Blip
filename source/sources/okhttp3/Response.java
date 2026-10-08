package okhttp3;

import defpackage.fe;
import defpackage.u2;
import java.io.Closeable;
import okhttp3.Headers;
import okhttp3.internal.connection.Exchange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Response implements Closeable {
    public final Request j;
    public final Protocol k;
    public final String l;
    public final int m;
    public final Handshake n;
    public final Headers o;
    public final ResponseBody p;
    public final Response q;
    public final Response r;
    public final Response s;
    public final long t;
    public final long u;
    public final Exchange v;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public Request a;
        public Protocol b;
        public String d;
        public Handshake e;
        public ResponseBody g;
        public Response h;
        public Response i;
        public Response j;
        public long k;
        public long l;
        public Exchange m;
        public int c = -1;
        public Headers.Builder f = new Headers.Builder();

        public static void b(String str, Response response) {
            if (response != null) {
                if (response.p == null) {
                    if (response.q == null) {
                        if (response.r == null) {
                            if (response.s != null) {
                                fe.l(str.concat(".priorResponse != null"));
                                return;
                            }
                            return;
                        }
                        fe.l(str.concat(".cacheResponse != null"));
                        return;
                    }
                    fe.l(str.concat(".networkResponse != null"));
                    return;
                }
                fe.l(str.concat(".body != null"));
            }
        }

        public final Response a() {
            int i = this.c;
            if (i >= 0) {
                Request request = this.a;
                if (request != null) {
                    Protocol protocol = this.b;
                    if (protocol != null) {
                        String str = this.d;
                        if (str != null) {
                            return new Response(request, protocol, str, i, this.e, this.f.b(), this.g, this.h, this.i, this.j, this.k, this.l, this.m);
                        }
                        u2.l("message == null");
                        return null;
                    }
                    u2.l("protocol == null");
                    return null;
                }
                u2.l("request == null");
                return null;
            }
            fe.j(this.c, "code < 0: ");
            return null;
        }
    }

    public Response(Request request, Protocol protocol, String str, int i, Handshake handshake, Headers headers, ResponseBody responseBody, Response response, Response response2, Response response3, long j, long j2, Exchange exchange) {
        request.getClass();
        protocol.getClass();
        str.getClass();
        this.j = request;
        this.k = protocol;
        this.l = str;
        this.m = i;
        this.n = handshake;
        this.o = headers;
        this.p = responseBody;
        this.q = response;
        this.r = response2;
        this.s = response3;
        this.t = j;
        this.u = j2;
        this.v = exchange;
    }

    public static String a(String str, Response response) {
        response.getClass();
        String b = response.o.b(str);
        if (b == null) {
            return null;
        }
        return b;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        ResponseBody responseBody = this.p;
        if (responseBody != null) {
            responseBody.close();
        } else {
            u2.l("response is not eligible for a body and must not be closed");
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.Response$Builder, java.lang.Object] */
    public final Builder h() {
        ?? obj = new Object();
        obj.a = this.j;
        obj.b = this.k;
        obj.c = this.m;
        obj.d = this.l;
        obj.e = this.n;
        obj.f = this.o.d();
        obj.g = this.p;
        obj.h = this.q;
        obj.i = this.r;
        obj.j = this.s;
        obj.k = this.t;
        obj.l = this.u;
        obj.m = this.v;
        return obj;
    }

    public final String toString() {
        return "Response{protocol=" + this.k + ", code=" + this.m + ", message=" + this.l + ", url=" + this.j.a + '}';
    }
}
