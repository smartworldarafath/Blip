package okhttp3.internal.http1;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.io.EOFException;
import java.io.IOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.util.concurrent.TimeUnit;
import kotlin.text.StringsKt;
import okhttp3.CookieJar;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.Util;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.HttpHeaders;
import okhttp3.internal.http.RequestLine;
import okhttp3.internal.http.StatusLine;
import okio.Buffer;
import okio.BufferedSink;
import okio.BufferedSource;
import okio.ForwardingTimeout;
import okio.RealBufferedSink;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;
import okio.Timeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Http1ExchangeCodec implements ExchangeCodec {
    public final OkHttpClient a;
    public final RealConnection b;
    public final BufferedSource c;
    public final BufferedSink d;
    public int e;
    public final HeadersReader f;
    public Headers g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public abstract class AbstractSource implements Source {
        public final ForwardingTimeout j;
        public boolean k;

        public AbstractSource() {
            this.j = new ForwardingTimeout(Http1ExchangeCodec.this.c.i());
        }

        @Override // okio.Source
        public long J0(long j, Buffer buffer) {
            Http1ExchangeCodec http1ExchangeCodec = Http1ExchangeCodec.this;
            buffer.getClass();
            try {
                return http1ExchangeCodec.c.J0(j, buffer);
            } catch (IOException e) {
                http1ExchangeCodec.b.k();
                this.a();
                throw e;
            }
        }

        public final void a() {
            Http1ExchangeCodec http1ExchangeCodec = Http1ExchangeCodec.this;
            int i = http1ExchangeCodec.e;
            if (i == 6) {
                return;
            }
            if (i == 5) {
                ForwardingTimeout forwardingTimeout = this.j;
                Timeout timeout = forwardingTimeout.e;
                forwardingTimeout.e = Timeout.d;
                timeout.a();
                timeout.b();
                http1ExchangeCodec.e = 6;
                return;
            }
            throw new IllegalStateException("state: " + http1ExchangeCodec.e);
        }

        @Override // okio.Source
        public final Timeout i() {
            return this.j;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ChunkedSink implements Sink {
        public final ForwardingTimeout j;
        public boolean k;

        public ChunkedSink() {
            this.j = new ForwardingTimeout(Http1ExchangeCodec.this.d.i());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final synchronized void close() {
            if (this.k) {
                return;
            }
            this.k = true;
            Http1ExchangeCodec.this.d.f0("0\r\n\r\n");
            ForwardingTimeout forwardingTimeout = this.j;
            Timeout timeout = forwardingTimeout.e;
            forwardingTimeout.e = Timeout.d;
            timeout.a();
            timeout.b();
            Http1ExchangeCodec.this.e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public final synchronized void flush() {
            if (this.k) {
                return;
            }
            Http1ExchangeCodec.this.d.flush();
        }

        @Override // okio.Sink
        public final Timeout i() {
            return this.j;
        }

        @Override // okio.Sink
        public final void l0(long j, Buffer buffer) {
            BufferedSink bufferedSink = Http1ExchangeCodec.this.d;
            if (!this.k) {
                if (j == 0) {
                    return;
                }
                bufferedSink.q0(j);
                bufferedSink.f0("\r\n");
                bufferedSink.l0(j, buffer);
                bufferedSink.f0("\r\n");
                return;
            }
            u2.l("closed");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ChunkedSource extends AbstractSource {
        public final HttpUrl m;
        public long n;
        public boolean o;
        public final /* synthetic */ Http1ExchangeCodec p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ChunkedSource(Http1ExchangeCodec http1ExchangeCodec, HttpUrl httpUrl) {
            super();
            httpUrl.getClass();
            this.p = http1ExchangeCodec;
            this.m = httpUrl;
            this.n = -1L;
            this.o = true;
        }

        /* JADX WARN: Code restructure failed: missing block: B:32:0x0078, code lost:
        
            if (r11.o == false) goto L27;
         */
        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final long J0(long j, Buffer buffer) {
            Http1ExchangeCodec http1ExchangeCodec = this.p;
            BufferedSource bufferedSource = http1ExchangeCodec.c;
            buffer.getClass();
            if (j >= 0) {
                if (!this.k) {
                    if (this.o) {
                        long j2 = this.n;
                        if (j2 == 0 || j2 == -1) {
                            if (j2 != -1) {
                                bufferedSource.A0();
                            }
                            try {
                                this.n = bufferedSource.Y0();
                                String obj = StringsKt.U(bufferedSource.A0()).toString();
                                if (this.n >= 0 && (obj.length() <= 0 || StringsKt.J(obj, ";", false))) {
                                    if (this.n == 0) {
                                        this.o = false;
                                        http1ExchangeCodec.g = http1ExchangeCodec.f.a();
                                        OkHttpClient okHttpClient = http1ExchangeCodec.a;
                                        okHttpClient.getClass();
                                        CookieJar cookieJar = okHttpClient.s;
                                        Headers headers = http1ExchangeCodec.g;
                                        headers.getClass();
                                        HttpHeaders.b(cookieJar, this.m, headers);
                                        a();
                                    }
                                } else {
                                    throw new ProtocolException("expected chunk size and optional extensions but was \"" + this.n + obj + '\"');
                                }
                            } catch (NumberFormatException e) {
                                throw new ProtocolException(e.getMessage());
                            }
                        }
                        long J0 = super.J0(Math.min(j, this.n), buffer);
                        if (J0 != -1) {
                            this.n -= J0;
                            return J0;
                        }
                        http1ExchangeCodec.b.k();
                        ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                        a();
                        throw protocolException;
                    }
                    return -1L;
                }
                u2.l("closed");
                return 0L;
            }
            fe.l(q.h(j, "byteCount < 0: "));
            return 0L;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (this.k) {
                return;
            }
            if (this.o) {
                byte[] bArr = Util.a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    z = Util.q(this, 100);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    this.p.b.k();
                    a();
                }
            }
            this.k = true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class FixedLengthSource extends AbstractSource {
        public long m;

        public FixedLengthSource(long j) {
            super();
            this.m = j;
            if (j == 0) {
                a();
            }
        }

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long J0(long j, Buffer buffer) {
            buffer.getClass();
            if (j >= 0) {
                if (!this.k) {
                    long j2 = this.m;
                    if (j2 == 0) {
                        return -1L;
                    }
                    long J0 = super.J0(Math.min(j2, j), buffer);
                    if (J0 != -1) {
                        long j3 = this.m - J0;
                        this.m = j3;
                        if (j3 == 0) {
                            a();
                        }
                        return J0;
                    }
                    Http1ExchangeCodec.this.b.k();
                    ProtocolException protocolException = new ProtocolException("unexpected end of stream");
                    a();
                    throw protocolException;
                }
                u2.l("closed");
                return 0L;
            }
            fe.l(q.h(j, "byteCount < 0: "));
            return 0L;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            boolean z;
            if (this.k) {
                return;
            }
            if (this.m != 0) {
                byte[] bArr = Util.a;
                TimeUnit.MILLISECONDS.getClass();
                try {
                    z = Util.q(this, 100);
                } catch (IOException unused) {
                    z = false;
                }
                if (!z) {
                    Http1ExchangeCodec.this.b.k();
                    a();
                }
            }
            this.k = true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class KnownLengthSink implements Sink {
        public final ForwardingTimeout j;
        public boolean k;

        public KnownLengthSink() {
            this.j = new ForwardingTimeout(Http1ExchangeCodec.this.d.i());
        }

        @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.k) {
                return;
            }
            this.k = true;
            ForwardingTimeout forwardingTimeout = this.j;
            Timeout timeout = forwardingTimeout.e;
            forwardingTimeout.e = Timeout.d;
            timeout.a();
            timeout.b();
            Http1ExchangeCodec.this.e = 3;
        }

        @Override // okio.Sink, java.io.Flushable
        public final void flush() {
            if (this.k) {
                return;
            }
            Http1ExchangeCodec.this.d.flush();
        }

        @Override // okio.Sink
        public final Timeout i() {
            return this.j;
        }

        @Override // okio.Sink
        public final void l0(long j, Buffer buffer) {
            if (!this.k) {
                long j2 = buffer.k;
                byte[] bArr = Util.a;
                if (j >= 0 && 0 <= j2 && j2 >= j) {
                    Http1ExchangeCodec.this.d.l0(j, buffer);
                    return;
                }
                throw new ArrayIndexOutOfBoundsException();
            }
            u2.l("closed");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class UnknownLengthSource extends AbstractSource {
        public boolean m;

        @Override // okhttp3.internal.http1.Http1ExchangeCodec.AbstractSource, okio.Source
        public final long J0(long j, Buffer buffer) {
            buffer.getClass();
            if (j >= 0) {
                if (!this.k) {
                    if (this.m) {
                        return -1L;
                    }
                    long J0 = super.J0(j, buffer);
                    if (J0 == -1) {
                        this.m = true;
                        a();
                        return -1L;
                    }
                    return J0;
                }
                u2.l("closed");
                return 0L;
            }
            fe.l(q.h(j, "byteCount < 0: "));
            return 0L;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.k) {
                return;
            }
            if (!this.m) {
                a();
            }
            this.k = true;
        }
    }

    public Http1ExchangeCodec(OkHttpClient okHttpClient, RealConnection realConnection, RealBufferedSource realBufferedSource, RealBufferedSink realBufferedSink) {
        realBufferedSource.getClass();
        realBufferedSink.getClass();
        this.a = okHttpClient;
        this.b = realConnection;
        this.c = realBufferedSource;
        this.d = realBufferedSink;
        this.f = new HeadersReader(realBufferedSource);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void a() {
        this.d.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void b(Request request) {
        Proxy.Type type = this.b.b.b.type();
        type.getClass();
        StringBuilder sb = new StringBuilder();
        sb.append(request.b);
        sb.append(' ');
        HttpUrl httpUrl = request.a;
        if (!httpUrl.i && type == Proxy.Type.HTTP) {
            sb.append(httpUrl);
        } else {
            sb.append(RequestLine.a(httpUrl));
        }
        sb.append(" HTTP/1.1");
        k(request.c, sb.toString());
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Source c(Response response) {
        if (!HttpHeaders.a(response)) {
            return i(0L);
        }
        if ("chunked".equalsIgnoreCase(Response.a("Transfer-Encoding", response))) {
            HttpUrl httpUrl = response.j.a;
            if (this.e == 4) {
                this.e = 5;
                return new ChunkedSource(this, httpUrl);
            }
            fe.j(this.e, "state: ");
            return null;
        }
        long h = Util.h(response);
        if (h != -1) {
            return i(h);
        }
        if (this.e == 4) {
            this.e = 5;
            this.b.k();
            return new AbstractSource();
        }
        fe.j(this.e, "state: ");
        return null;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void cancel() {
        Socket socket = this.b.c;
        if (socket != null) {
            Util.c(socket);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Response.Builder d(boolean z) {
        HeadersReader headersReader = this.f;
        int i = this.e;
        if (i != 1 && i != 2 && i != 3) {
            fe.j(this.e, "state: ");
            return null;
        }
        try {
            String U = headersReader.a.U(headersReader.b);
            headersReader.b -= U.length();
            StatusLine a = StatusLine.Companion.a(U);
            int i2 = a.b;
            Response.Builder builder = new Response.Builder();
            builder.b = a.a;
            builder.c = i2;
            builder.d = a.c;
            builder.f = headersReader.a().d();
            if (z && i2 == 100) {
                return null;
            }
            if (i2 == 100) {
                this.e = 3;
                return builder;
            }
            if (102 <= i2 && i2 < 200) {
                this.e = 3;
                return builder;
            }
            this.e = 4;
            return builder;
        } catch (EOFException e) {
            throw new IOException("unexpected end of stream on ".concat(this.b.b.a.h.f()), e);
        }
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final RealConnection e() {
        return this.b;
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final void f() {
        this.d.flush();
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final long g(Response response) {
        if (!HttpHeaders.a(response)) {
            return 0L;
        }
        if ("chunked".equalsIgnoreCase(Response.a("Transfer-Encoding", response))) {
            return -1L;
        }
        return Util.h(response);
    }

    @Override // okhttp3.internal.http.ExchangeCodec
    public final Sink h(Request request, long j) {
        if ("chunked".equalsIgnoreCase(request.c.b("Transfer-Encoding"))) {
            if (this.e == 1) {
                this.e = 2;
                return new ChunkedSink();
            }
            fe.j(this.e, "state: ");
            return null;
        }
        if (j != -1) {
            if (this.e == 1) {
                this.e = 2;
                return new KnownLengthSink();
            }
            fe.j(this.e, "state: ");
            return null;
        }
        u2.l("Cannot stream a request body without chunked encoding or a known content length!");
        return null;
    }

    public final Source i(long j) {
        if (this.e == 4) {
            this.e = 5;
            return new FixedLengthSource(j);
        }
        fe.j(this.e, "state: ");
        return null;
    }

    public final void j(Response response) {
        long h = Util.h(response);
        if (h == -1) {
            return;
        }
        Source i = i(h);
        Util.q(i, Integer.MAX_VALUE);
        ((FixedLengthSource) i).close();
    }

    public final void k(Headers headers, String str) {
        if (this.e == 0) {
            BufferedSink bufferedSink = this.d;
            bufferedSink.f0(str).f0("\r\n");
            int size = headers.size();
            for (int i = 0; i < size; i++) {
                bufferedSink.f0(headers.c(i)).f0(": ").f0(headers.e(i)).f0("\r\n");
            }
            bufferedSink.f0("\r\n");
            this.e = 1;
            return;
        }
        fe.j(this.e, "state: ");
    }
}
