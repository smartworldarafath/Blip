package okhttp3.internal.http2;

import defpackage.k8;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.util.ArrayList;
import java.util.List;
import java.util.Locale;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.ByteString;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Http2ExchangeCodec implements ExchangeCodec {
    public static final List g = Util.i("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade", ":method", ":path", ":scheme", ":authority");
    public static final List h = Util.i("connection", "host", "keep-alive", "proxy-connection", "te", "transfer-encoding", "encoding", "upgrade");
    public final RealConnection a;
    public final RealInterceptorChain b;
    public final Http2Connection c;
    public volatile Http2Stream d;
    public final Protocol e;
    public volatile boolean f;

    public Http2ExchangeCodec(OkHttpClient okHttpClient, RealConnection realConnection, RealInterceptorChain realInterceptorChain, Http2Connection http2Connection) {
        http2Connection.getClass();
        this.a = realConnection;
        this.b = realInterceptorChain;
        this.c = http2Connection;
        List list = okHttpClient.A;
        Protocol protocol = Protocol.H2_PRIOR_KNOWLEDGE;
        this.e = list.contains(protocol) ? protocol : Protocol.HTTP_2;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        http2Stream.f().close();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void b(Request request) {
        boolean z;
        int i;
        Http2Stream http2Stream;
        if (this.d != null) {
            return;
        }
        boolean z2 = false;
        if (request.d != null) {
            z = true;
        } else {
            z = false;
        }
        Headers headers = request.c;
        ArrayList arrayList = new ArrayList(headers.size() + 4);
        arrayList.add(new Header(request.b, Header.f));
        ByteString byteString = Header.g;
        HttpUrl httpUrl = request.a;
        arrayList.add(new Header(RequestLine.a(httpUrl), byteString));
        String b = headers.b("Host");
        if (b != null) {
            arrayList.add(new Header(b, Header.i));
        }
        arrayList.add(new Header(httpUrl.a, Header.h));
        int size = headers.size();
        for (int i2 = 0; i2 < size; i2++) {
            String c = headers.c(i2);
            Locale locale = Locale.US;
            locale.getClass();
            String lowerCase = c.toLowerCase(locale);
            lowerCase.getClass();
            if (!g.contains(lowerCase) || (lowerCase.equals("te") && Intrinsics.a(headers.e(i2), "trailers"))) {
                arrayList.add(new Header(lowerCase, headers.e(i2)));
            }
        }
        Http2Connection http2Connection = this.c;
        http2Connection.getClass();
        boolean z3 = !z;
        synchronized (http2Connection.F) {
            synchronized (http2Connection) {
                try {
                    if (http2Connection.n > 1073741823) {
                        http2Connection.v(ErrorCode.REFUSED_STREAM);
                    }
                    if (!http2Connection.o) {
                        i = http2Connection.n;
                        http2Connection.n = i + 2;
                        http2Stream = new Http2Stream(i, http2Connection, z3, false, null);
                        if (!z || http2Connection.C >= http2Connection.D || http2Stream.e >= http2Stream.f) {
                            z2 = true;
                        }
                        if (http2Stream.h()) {
                            http2Connection.k.put(Integer.valueOf(i), http2Stream);
                        }
                    } else {
                        throw new IOException();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            http2Connection.F.v(z3, i, arrayList);
        }
        if (z2) {
            http2Connection.F.flush();
        }
        this.d = http2Stream;
        boolean z4 = this.f;
        Http2Stream http2Stream2 = this.d;
        if (!z4) {
            http2Stream2.getClass();
            http2Stream2.k.g(this.b.g);
            Http2Stream http2Stream3 = this.d;
            http2Stream3.getClass();
            http2Stream3.l.g(this.b.h);
            return;
        }
        http2Stream2.getClass();
        http2Stream2.e(ErrorCode.CANCEL);
        k8.j("Canceled");
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source c(Response response) {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream.i;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        this.f = true;
        Http2Stream http2Stream = this.d;
        if (http2Stream != null) {
            http2Stream.e(ErrorCode.CANCEL);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder d(boolean z) {
        Headers headers;
        Http2Stream http2Stream = this.d;
        if (http2Stream != null) {
            synchronized (http2Stream) {
                http2Stream.k.h();
                while (http2Stream.g.isEmpty() && http2Stream.m == null) {
                    try {
                        try {
                            http2Stream.wait();
                        } catch (InterruptedException unused) {
                            Thread.currentThread().interrupt();
                            throw new InterruptedIOException();
                        }
                    } catch (Throwable th) {
                        http2Stream.k.k();
                        throw th;
                    }
                }
                http2Stream.k.k();
                if (!http2Stream.g.isEmpty()) {
                    Object removeFirst = http2Stream.g.removeFirst();
                    removeFirst.getClass();
                    headers = (Headers) removeFirst;
                } else {
                    IOException iOException = http2Stream.n;
                    if (iOException == null) {
                        ErrorCode errorCode = http2Stream.m;
                        errorCode.getClass();
                        throw new StreamResetException(errorCode);
                    }
                    throw iOException;
                }
            }
            Protocol protocol = this.e;
            protocol.getClass();
            Headers.Builder builder = new Headers.Builder();
            int size = headers.size();
            StatusLine statusLine = null;
            for (int i = 0; i < size; i++) {
                String c = headers.c(i);
                String e = headers.e(i);
                if (Intrinsics.a(c, ":status")) {
                    statusLine = StatusLine.Companion.a("HTTP/1.1 " + e);
                } else if (!h.contains(c)) {
                    builder.a(c, e);
                }
            }
            if (statusLine != null) {
                Response.Builder builder2 = new Response.Builder();
                builder2.b = protocol;
                builder2.c = statusLine.b;
                builder2.d = statusLine.c;
                builder2.f = builder.b().d();
                if (z && builder2.c == 100) {
                    return null;
                }
                return builder2;
            }
            throw new ProtocolException("Expected ':status' header not present");
        }
        k8.j("stream wasn't created");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final RealConnection e() {
        return this.a;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void f() {
        this.c.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long g(Response response) {
        if (!HttpHeaders.a(response)) {
            return 0L;
        }
        return Util.h(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink h(Request request, long j) {
        Http2Stream http2Stream = this.d;
        http2Stream.getClass();
        return http2Stream.f();
    }
}
