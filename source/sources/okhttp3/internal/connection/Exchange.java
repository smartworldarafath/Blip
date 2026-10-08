package okhttp3.internal.connection;

import defpackage.u2;
import java.io.IOException;
import java.net.ProtocolException;
import okhttp3.EventListener;
import okhttp3.EventListener$Companion$NONE$1;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealResponseBody;
import okhttp3.internal.http2.ConnectionShutdownException;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.StreamResetException;
import okio.Buffer;
import okio.ForwardingSink;
import okio.ForwardingSource;
import okio.RealBufferedSource;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Exchange {
    public final RealCall a;
    public final EventListener b;
    public final ExchangeFinder c;
    public final ExchangeCodec d;
    public boolean e;
    public final RealConnection f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class RequestBodySink extends ForwardingSink {
        public final long k;
        public boolean l;
        public long m;
        public boolean n;
        public final /* synthetic */ Exchange o;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public RequestBodySink(Exchange exchange, Sink sink, long j) {
            super(sink);
            sink.getClass();
            this.o = exchange;
            this.k = j;
        }

        public final IOException a(IOException iOException) {
            if (this.l) {
                return iOException;
            }
            this.l = true;
            return this.o.a(false, true, iOException);
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.n) {
                return;
            }
            this.n = true;
            long j = this.k;
            if (j != -1 && this.m != j) {
                throw new ProtocolException("unexpected end of stream");
            }
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                throw a(e);
            }
        }

        @Override // okio.ForwardingSink, okio.Sink, java.io.Flushable
        public final void flush() {
            try {
                super.flush();
            } catch (IOException e) {
                throw a(e);
            }
        }

        @Override // okio.Sink
        public final void l0(long j, Buffer buffer) {
            if (!this.n) {
                long j2 = this.k;
                if (j2 != -1 && this.m + j > j2) {
                    throw new ProtocolException("expected " + j2 + " bytes but received " + (this.m + j));
                }
                try {
                    this.j.l0(j, buffer);
                    this.m += j;
                    return;
                } catch (IOException e) {
                    throw a(e);
                }
            }
            u2.l("closed");
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ResponseBodySource extends ForwardingSource {
        public final long k;
        public long l;
        public boolean m;
        public boolean n;
        public boolean o;
        public final /* synthetic */ Exchange p;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public ResponseBodySource(Exchange exchange, Source source, long j) {
            super(source);
            source.getClass();
            this.p = exchange;
            this.k = j;
            this.m = true;
            if (j == 0) {
                a(null);
            }
        }

        @Override // okio.ForwardingSource, okio.Source
        public final long J0(long j, Buffer buffer) {
            buffer.getClass();
            if (!this.o) {
                try {
                    long J0 = this.j.J0(j, buffer);
                    if (this.m) {
                        this.m = false;
                        this.p.b.getClass();
                    }
                    if (J0 == -1) {
                        a(null);
                        return -1L;
                    }
                    long j2 = this.l + J0;
                    long j3 = this.k;
                    if (j3 != -1 && j2 > j3) {
                        throw new ProtocolException("expected " + j3 + " bytes but received " + j2);
                    }
                    this.l = j2;
                    if (j2 == j3) {
                        a(null);
                    }
                    return J0;
                } catch (IOException e) {
                    throw a(e);
                }
            }
            u2.l("closed");
            return 0L;
        }

        public final IOException a(IOException iOException) {
            if (this.n) {
                return iOException;
            }
            this.n = true;
            Exchange exchange = this.p;
            if (iOException == null && this.m) {
                this.m = false;
                exchange.b.getClass();
            }
            return exchange.a(true, false, iOException);
        }

        @Override // okio.ForwardingSource, java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.o) {
                return;
            }
            this.o = true;
            try {
                super.close();
                a(null);
            } catch (IOException e) {
                throw a(e);
            }
        }
    }

    public Exchange(RealCall realCall, EventListener$Companion$NONE$1 eventListener$Companion$NONE$1, ExchangeFinder exchangeFinder, ExchangeCodec exchangeCodec) {
        eventListener$Companion$NONE$1.getClass();
        exchangeFinder.getClass();
        this.a = realCall;
        this.b = eventListener$Companion$NONE$1;
        this.c = exchangeFinder;
        this.d = exchangeCodec;
        this.f = exchangeCodec.e();
    }

    public final IOException a(boolean z, boolean z2, IOException iOException) {
        if (iOException != null) {
            e(iOException);
        }
        EventListener eventListener = this.b;
        if (z2) {
            if (iOException != null) {
                eventListener.getClass();
            } else {
                eventListener.getClass();
            }
        }
        if (z) {
            if (iOException != null) {
                eventListener.getClass();
            } else {
                eventListener.getClass();
            }
        }
        return this.a.g(this, z2, z, iOException);
    }

    public final Sink b(Request request) {
        RequestBody requestBody = request.d;
        requestBody.getClass();
        long a = requestBody.a();
        this.b.getClass();
        return new RequestBodySink(this, this.d.h(request, a), a);
    }

    public final RealResponseBody c(Response response) {
        ExchangeCodec exchangeCodec = this.d;
        try {
            Response.a("Content-Type", response);
            long g = exchangeCodec.g(response);
            return new RealResponseBody(g, new RealBufferedSource(new ResponseBodySource(this, exchangeCodec.c(response), g)));
        } catch (IOException e) {
            this.b.getClass();
            e(e);
            throw e;
        }
    }

    public final Response.Builder d(boolean z) {
        try {
            Response.Builder d = this.d.d(z);
            if (d != null) {
                d.m = this;
                return d;
            }
            return d;
        } catch (IOException e) {
            this.b.getClass();
            e(e);
            throw e;
        }
    }

    public final void e(IOException iOException) {
        boolean z;
        this.e = true;
        this.c.b(iOException);
        RealConnection e = this.d.e();
        RealCall realCall = this.a;
        synchronized (e) {
            try {
                if (iOException instanceof StreamResetException) {
                    if (((StreamResetException) iOException).j == ErrorCode.REFUSED_STREAM) {
                        int i = e.n + 1;
                        e.n = i;
                        if (i > 1) {
                            e.j = true;
                            e.l++;
                        }
                    } else if (((StreamResetException) iOException).j != ErrorCode.CANCEL || !realCall.w) {
                        e.j = true;
                        e.l++;
                    }
                } else {
                    if (e.g != null) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z || (iOException instanceof ConnectionShutdownException)) {
                        e.j = true;
                        if (e.m == 0) {
                            RealConnection.d(realCall.j, e.b, iOException);
                            e.l++;
                        }
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
