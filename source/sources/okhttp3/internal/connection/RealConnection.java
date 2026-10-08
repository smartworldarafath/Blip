package okhttp3.internal.connection;

import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ConnectException;
import java.net.InetSocketAddress;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.Socket;
import java.net.SocketTimeoutException;
import java.net.UnknownServiceException;
import java.security.cert.Certificate;
import java.security.cert.CertificateException;
import java.security.cert.X509Certificate;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLException;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSession;
import javax.net.ssl.SSLSocket;
import javax.net.ssl.SSLSocketFactory;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okhttp3.Address;
import okhttp3.Call;
import okhttp3.CertificatePinner;
import okhttp3.ConnectionSpec;
import okhttp3.EventListener;
import okhttp3.Handshake;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.OkHttpClient;
import okhttp3.Protocol;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.concurrent.Task;
import okhttp3.internal.concurrent.TaskQueue;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http.ExchangeCodec;
import okhttp3.internal.http.RealInterceptorChain;
import okhttp3.internal.http1.Http1ExchangeCodec;
import okhttp3.internal.http2.ErrorCode;
import okhttp3.internal.http2.Http2;
import okhttp3.internal.http2.Http2Connection;
import okhttp3.internal.http2.Http2ExchangeCodec;
import okhttp3.internal.http2.Http2Stream;
import okhttp3.internal.http2.Http2Writer;
import okhttp3.internal.http2.Settings;
import okhttp3.internal.platform.Platform;
import okhttp3.internal.tls.CertificateChainCleaner;
import okhttp3.internal.tls.OkHostnameVerifier;
import okio.ByteString;
import okio.Okio;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealConnection extends Http2Connection.Listener {
    public final Route b;
    public Socket c;
    public Socket d;
    public Handshake e;
    public Protocol f;
    public Http2Connection g;
    public RealBufferedSource h;
    public RealBufferedSink i;
    public boolean j;
    public boolean k;
    public int l;
    public int m;
    public int n;
    public int o;
    public final ArrayList p;
    public long q;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public /* synthetic */ class WhenMappings {
        public static final /* synthetic */ int[] a;

        static {
            int[] iArr = new int[Proxy.Type.values().length];
            try {
                iArr[Proxy.Type.DIRECT.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                iArr[Proxy.Type.HTTP.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            a = iArr;
        }
    }

    public RealConnection(RealConnectionPool realConnectionPool, Route route) {
        realConnectionPool.getClass();
        route.getClass();
        this.b = route;
        this.o = 1;
        this.p = new ArrayList();
        this.q = Long.MAX_VALUE;
    }

    public static void d(OkHttpClient okHttpClient, Route route, IOException iOException) {
        route.getClass();
        iOException.getClass();
        if (route.b.type() != Proxy.Type.DIRECT) {
            Address address = route.a;
            address.g.connectFailed(address.h.g(), route.b.address(), iOException);
        }
        RouteDatabase routeDatabase = okHttpClient.H;
        synchronized (routeDatabase) {
            routeDatabase.a.add(route);
        }
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final synchronized void a(Http2Connection http2Connection, Settings settings) {
        int i;
        settings.getClass();
        if ((settings.a & 16) != 0) {
            i = settings.b[4];
        } else {
            i = Integer.MAX_VALUE;
        }
        this.o = i;
    }

    @Override // okhttp3.internal.http2.Http2Connection.Listener
    public final void b(Http2Stream http2Stream) {
        http2Stream.c(ErrorCode.REFUSED_STREAM, null);
    }

    public final void c(int i, int i2, int i3, boolean z, Call call, EventListener eventListener) {
        boolean z2;
        Call call2;
        EventListener eventListener2;
        Route route;
        eventListener.getClass();
        if (this.f == null) {
            List list = this.b.a.j;
            ConnectionSpecSelector connectionSpecSelector = new ConnectionSpecSelector(list);
            Address address = this.b.a;
            if (address.c == null) {
                if (list.contains(ConnectionSpec.f)) {
                    String str = this.b.a.h.d;
                    Platform platform = Platform.a;
                    if (!Platform.a.h(str)) {
                        throw new RouteException(new UnknownServiceException(q.i("CLEARTEXT communication to ", str, " not permitted by network security policy")));
                    }
                } else {
                    throw new RouteException(new UnknownServiceException("CLEARTEXT communication not enabled for client"));
                }
            } else if (address.i.contains(Protocol.H2_PRIOR_KNOWLEDGE)) {
                throw new RouteException(new UnknownServiceException("H2_PRIOR_KNOWLEDGE cannot be used with HTTPS"));
            }
            RouteException routeException = null;
            do {
                try {
                    Route route2 = this.b;
                    if (route2.a.c != null && route2.b.type() == Proxy.Type.HTTP) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    try {
                        if (z2) {
                            call2 = call;
                            eventListener2 = eventListener;
                            f(i, i2, i3, call2, eventListener2);
                            if (this.c == null) {
                                route = this.b;
                                if (route.a.c == null && route.b.type() == Proxy.Type.HTTP && this.c == null) {
                                    throw new RouteException(new ProtocolException("Too many tunnel connections attempted: 21"));
                                }
                                this.q = System.nanoTime();
                                return;
                            }
                        } else {
                            call2 = call;
                            eventListener2 = eventListener;
                            e(i, i2, call2, eventListener2);
                        }
                        g(connectionSpecSelector, call2, eventListener2);
                        this.b.c.getClass();
                        route = this.b;
                        if (route.a.c == null) {
                        }
                        this.q = System.nanoTime();
                        return;
                    } catch (IOException e) {
                        e = e;
                        Socket socket = this.d;
                        if (socket != null) {
                            Util.c(socket);
                        }
                        Socket socket2 = this.c;
                        if (socket2 != null) {
                            Util.c(socket2);
                        }
                        this.d = null;
                        this.c = null;
                        this.h = null;
                        this.i = null;
                        this.e = null;
                        this.f = null;
                        this.g = null;
                        this.o = 1;
                        this.b.c.getClass();
                        if (routeException == null) {
                            routeException = new RouteException(e);
                        } else {
                            ExceptionsKt.a(routeException.j, e);
                            routeException.k = e;
                        }
                        if (z) {
                            connectionSpecSelector.d = true;
                            if (connectionSpecSelector.c) {
                                if (!(e instanceof ProtocolException)) {
                                    if (!(e instanceof InterruptedIOException)) {
                                        if (!(e instanceof SSLHandshakeException) || !(e.getCause() instanceof CertificateException)) {
                                            if (e instanceof SSLPeerUnverifiedException) {
                                                throw routeException;
                                            }
                                        } else {
                                            throw routeException;
                                        }
                                    } else {
                                        throw routeException;
                                    }
                                } else {
                                    throw routeException;
                                }
                            } else {
                                throw routeException;
                            }
                        } else {
                            throw routeException;
                        }
                    }
                } catch (IOException e2) {
                    e = e2;
                }
            } while (e instanceof SSLException);
            throw routeException;
        }
        u2.l("already connected");
    }

    public final void e(int i, int i2, Call call, EventListener eventListener) {
        int i3;
        Socket createSocket;
        Route route = this.b;
        Proxy proxy = route.b;
        Address address = route.a;
        Proxy.Type type = proxy.type();
        if (type == null) {
            i3 = -1;
        } else {
            i3 = WhenMappings.a[type.ordinal()];
        }
        if (i3 != 1 && i3 != 2) {
            createSocket = new Socket(proxy);
        } else {
            createSocket = address.b.createSocket();
            createSocket.getClass();
        }
        this.c = createSocket;
        InetSocketAddress inetSocketAddress = this.b.c;
        eventListener.getClass();
        inetSocketAddress.getClass();
        createSocket.setSoTimeout(i2);
        try {
            Platform platform = Platform.a;
            Platform.a.e(createSocket, this.b.c, i);
            try {
                this.h = new RealBufferedSource(Okio.c(createSocket));
                this.i = new RealBufferedSink(Okio.b(createSocket));
            } catch (NullPointerException e) {
                if (!Intrinsics.a(e.getMessage(), "throw with null exception")) {
                } else {
                    throw new IOException(e);
                }
            }
        } catch (ConnectException e2) {
            ConnectException connectException = new ConnectException("Failed to connect to " + this.b.c);
            connectException.initCause(e2);
            throw connectException;
        }
    }

    public final void f(int i, int i2, int i3, Call call, EventListener eventListener) {
        int i4;
        Request.Builder builder = new Request.Builder();
        Route route = this.b;
        HttpUrl httpUrl = route.a.h;
        httpUrl.getClass();
        builder.a = httpUrl;
        OkHttpClient okHttpClient = null;
        builder.c("CONNECT", null);
        Address address = route.a;
        boolean z = true;
        builder.b("Host", Util.s(address.h, true));
        builder.b("Proxy-Connection", "Keep-Alive");
        builder.b("User-Agent", "okhttp/4.12.0");
        Request a = builder.a();
        Response.Builder builder2 = new Response.Builder();
        builder2.a = a;
        builder2.b = Protocol.HTTP_1_1;
        builder2.c = 407;
        builder2.d = "Preemptive Authenticate";
        builder2.g = Util.c;
        builder2.k = -1L;
        builder2.l = -1L;
        Headers.Builder builder3 = builder2.f;
        builder3.getClass();
        Headers.Companion.a("Proxy-Authenticate");
        Headers.Companion.b("OkHttp-Preemptive", "Proxy-Authenticate");
        builder3.c("Proxy-Authenticate");
        builder3.a("Proxy-Authenticate", "OkHttp-Preemptive");
        Request a2 = address.f.a(route, builder2.a());
        if (a2 != null) {
            a = a2;
        }
        HttpUrl httpUrl2 = a.a;
        int i5 = 0;
        while (i5 < 21) {
            e(i, i2, call, eventListener);
            String str = "CONNECT " + Util.s(httpUrl2, z) + " HTTP/1.1";
            while (true) {
                RealBufferedSource realBufferedSource = this.h;
                realBufferedSource.getClass();
                RealBufferedSink realBufferedSink = this.i;
                realBufferedSink.getClass();
                Http1ExchangeCodec http1ExchangeCodec = new Http1ExchangeCodec(okHttpClient, this, realBufferedSource, realBufferedSink);
                i4 = i5;
                realBufferedSource.j.i().g(i2);
                realBufferedSink.j.i().g(i3);
                http1ExchangeCodec.k(a.c, str);
                http1ExchangeCodec.a();
                Response.Builder d = http1ExchangeCodec.d(false);
                d.getClass();
                d.a = a;
                Response a3 = d.a();
                int i6 = a3.m;
                http1ExchangeCodec.j(a3);
                if (i6 != 200) {
                    if (i6 == 407) {
                        Request a4 = address.f.a(route, a3);
                        if (a4 != null) {
                            if ("close".equalsIgnoreCase(Response.a("Connection", a3))) {
                                a = a4;
                                break;
                            } else {
                                a = a4;
                                i5 = i4;
                                okHttpClient = null;
                            }
                        } else {
                            k8.j("Failed to authenticate with proxy");
                            return;
                        }
                    } else {
                        k8.j(q.g(i6, "Unexpected response code for CONNECT: "));
                        return;
                    }
                } else if (realBufferedSource.k.J() && realBufferedSink.k.J()) {
                    a = null;
                } else {
                    k8.j("TLS tunnel buffered too many bytes!");
                    return;
                }
            }
            if (a != null) {
                Socket socket = this.c;
                if (socket != null) {
                    Util.c(socket);
                }
                this.c = null;
                this.i = null;
                this.h = null;
                route.c.getClass();
                i5 = i4 + 1;
                okHttpClient = null;
                z = true;
            } else {
                return;
            }
        }
    }

    public final void g(ConnectionSpecSelector connectionSpecSelector, Call call, EventListener eventListener) {
        SSLSocket sSLSocket;
        Protocol protocol = Protocol.HTTP_1_1;
        Address address = this.b.a;
        if (address.c == null) {
            List list = address.i;
            Protocol protocol2 = Protocol.H2_PRIOR_KNOWLEDGE;
            boolean contains = list.contains(protocol2);
            Socket socket = this.c;
            if (contains) {
                this.d = socket;
                this.f = protocol2;
                l();
                return;
            } else {
                this.d = socket;
                this.f = protocol;
                return;
            }
        }
        eventListener.getClass();
        final Address address2 = this.b.a;
        SSLSocketFactory sSLSocketFactory = address2.c;
        SSLSocket sSLSocket2 = null;
        String str = null;
        try {
            sSLSocketFactory.getClass();
            Socket socket2 = this.c;
            HttpUrl httpUrl = address2.h;
            Socket createSocket = sSLSocketFactory.createSocket(socket2, httpUrl.d, httpUrl.e, true);
            createSocket.getClass();
            sSLSocket = (SSLSocket) createSocket;
        } catch (Throwable th) {
            th = th;
        }
        try {
            ConnectionSpec a = connectionSpecSelector.a(sSLSocket);
            if (a.b) {
                Platform platform = Platform.a;
                Platform.a.d(sSLSocket, address2.h.d, address2.i);
            }
            sSLSocket.startHandshake();
            SSLSession session = sSLSocket.getSession();
            session.getClass();
            final Handshake a2 = Handshake.Companion.a(session);
            HostnameVerifier hostnameVerifier = address2.d;
            hostnameVerifier.getClass();
            if (!hostnameVerifier.verify(address2.h.d, session)) {
                List a3 = a2.a();
                if (!a3.isEmpty()) {
                    Object obj = a3.get(0);
                    obj.getClass();
                    X509Certificate x509Certificate = (X509Certificate) obj;
                    StringBuilder sb = new StringBuilder("\n              |Hostname ");
                    sb.append(address2.h.d);
                    sb.append(" not verified:\n              |    certificate: ");
                    CertificatePinner certificatePinner = CertificatePinner.c;
                    ByteString byteString = ByteString.m;
                    byte[] encoded = x509Certificate.getPublicKey().getEncoded();
                    encoded.getClass();
                    sb.append("sha256/".concat(ByteString.Companion.c(encoded).d("SHA-256").a()));
                    sb.append("\n              |    DN: ");
                    sb.append(x509Certificate.getSubjectDN().getName());
                    sb.append("\n              |    subjectAltNames: ");
                    sb.append(CollectionsKt.F(OkHostnameVerifier.a(x509Certificate, 7), OkHostnameVerifier.a(x509Certificate, 2)));
                    sb.append("\n              ");
                    throw new SSLPeerUnverifiedException(StringsKt.W(sb.toString()));
                }
                throw new SSLPeerUnverifiedException("Hostname " + address2.h.d + " not verified (no certificates)");
            }
            final CertificatePinner certificatePinner2 = address2.e;
            certificatePinner2.getClass();
            this.e = new Handshake(a2.a, a2.b, a2.c, new Function0<List<? extends Certificate>>() { // from class: okhttp3.internal.connection.RealConnection$connectTls$1
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    CertificateChainCleaner certificateChainCleaner = CertificatePinner.this.b;
                    certificateChainCleaner.getClass();
                    return certificateChainCleaner.a(address2.h.d, a2.a());
                }
            });
            address2.h.d.getClass();
            Iterator it = certificatePinner2.a.iterator();
            if (!it.hasNext()) {
                if (a.b) {
                    Platform platform2 = Platform.a;
                    str = Platform.a.f(sSLSocket);
                }
                this.d = sSLSocket;
                this.h = new RealBufferedSource(Okio.c(sSLSocket));
                this.i = new RealBufferedSink(Okio.b(sSLSocket));
                if (str != null) {
                    protocol = Protocol.Companion.a(str);
                }
                this.f = protocol;
                Platform platform3 = Platform.a;
                Platform.a.a(sSLSocket);
                if (this.f == Protocol.HTTP_2) {
                    l();
                    return;
                }
                return;
            }
            it.next().getClass();
            throw new ClassCastException();
        } catch (Throwable th2) {
            th = th2;
            sSLSocket2 = sSLSocket;
            if (sSLSocket2 != null) {
                Platform platform4 = Platform.a;
                Platform.a.a(sSLSocket2);
            }
            if (sSLSocket2 != null) {
                Util.c(sSLSocket2);
            }
            throw th;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a9, code lost:
    
        if (okhttp3.internal.tls.OkHostnameVerifier.b(r5, (java.security.cert.X509Certificate) r10) != false) goto L54;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(Address address, List list) {
        Handshake handshake;
        HttpUrl httpUrl = address.h;
        byte[] bArr = Util.a;
        if (this.p.size() < this.o && !this.j) {
            Route route = this.b;
            Address address2 = route.a;
            Address address3 = route.a;
            if (address2.a(address)) {
                String str = httpUrl.d;
                String str2 = httpUrl.d;
                if (!Intrinsics.a(str, address3.h.d)) {
                    if (this.g != null && list != null && !list.isEmpty()) {
                        Iterator it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                break;
                            }
                            Route route2 = (Route) it.next();
                            Proxy.Type type = route2.b.type();
                            Proxy.Type type2 = Proxy.Type.DIRECT;
                            if (type == type2 && route.b.type() == type2 && Intrinsics.a(route.c, route2.c)) {
                                if (address.d == OkHostnameVerifier.a) {
                                    byte[] bArr2 = Util.a;
                                    HttpUrl httpUrl2 = address3.h;
                                    if (httpUrl.e == httpUrl2.e) {
                                        if (!Intrinsics.a(str2, httpUrl2.d)) {
                                            if (!this.k && (handshake = this.e) != null) {
                                                List a = handshake.a();
                                                if (!a.isEmpty()) {
                                                    Object obj = a.get(0);
                                                    obj.getClass();
                                                }
                                            }
                                        }
                                        try {
                                            CertificatePinner certificatePinner = address.e;
                                            certificatePinner.getClass();
                                            Handshake handshake2 = this.e;
                                            handshake2.getClass();
                                            List a2 = handshake2.a();
                                            str2.getClass();
                                            a2.getClass();
                                            Iterator it2 = certificatePinner.a.iterator();
                                            if (!it2.hasNext()) {
                                                return true;
                                            }
                                            it2.next().getClass();
                                            throw new ClassCastException();
                                        } catch (SSLPeerUnverifiedException unused) {
                                        }
                                    }
                                }
                            }
                        }
                    }
                } else {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean i(boolean z) {
        long j;
        byte[] bArr = Util.a;
        long nanoTime = System.nanoTime();
        Socket socket = this.c;
        socket.getClass();
        Socket socket2 = this.d;
        socket2.getClass();
        this.h.getClass();
        if (socket.isClosed() || socket2.isClosed() || socket2.isInputShutdown() || socket2.isOutputShutdown()) {
            return false;
        }
        Http2Connection http2Connection = this.g;
        if (http2Connection != null) {
            synchronized (http2Connection) {
                if (http2Connection.o) {
                    return false;
                }
                if (http2Connection.w < http2Connection.v) {
                    if (nanoTime >= http2Connection.x) {
                        return false;
                    }
                }
                return true;
            }
        }
        synchronized (this) {
            j = nanoTime - this.q;
        }
        if (j < 10000000000L || !z) {
            return true;
        }
        try {
            int soTimeout = socket2.getSoTimeout();
            try {
                socket2.setSoTimeout(1);
                return !r4.J();
            } finally {
                socket2.setSoTimeout(soTimeout);
            }
        } catch (SocketTimeoutException unused) {
            return true;
        } catch (IOException unused2) {
            return false;
        }
    }

    public final ExchangeCodec j(OkHttpClient okHttpClient, RealInterceptorChain realInterceptorChain) {
        int i = realInterceptorChain.g;
        Socket socket = this.d;
        socket.getClass();
        RealBufferedSource realBufferedSource = this.h;
        realBufferedSource.getClass();
        RealBufferedSink realBufferedSink = this.i;
        realBufferedSink.getClass();
        Http2Connection http2Connection = this.g;
        if (http2Connection != null) {
            return new Http2ExchangeCodec(okHttpClient, this, realInterceptorChain, http2Connection);
        }
        socket.setSoTimeout(i);
        realBufferedSource.j.i().g(i);
        realBufferedSink.j.i().g(realInterceptorChain.h);
        return new Http1ExchangeCodec(okHttpClient, this, realBufferedSource, realBufferedSink);
    }

    public final synchronized void k() {
        this.j = true;
    }

    public final void l() {
        int i;
        int i2;
        Socket socket = this.d;
        socket.getClass();
        RealBufferedSource realBufferedSource = this.h;
        realBufferedSource.getClass();
        RealBufferedSink realBufferedSink = this.i;
        realBufferedSink.getClass();
        socket.setSoTimeout(0);
        TaskRunner taskRunner = TaskRunner.h;
        Http2Connection.Builder builder = new Http2Connection.Builder(taskRunner);
        String str = this.b.a.h.d;
        str.getClass();
        builder.b = socket;
        builder.c = Util.f + ' ' + str;
        builder.d = realBufferedSource;
        builder.e = realBufferedSink;
        builder.f = this;
        Http2Connection http2Connection = new Http2Connection(builder);
        this.g = http2Connection;
        Settings settings = Http2Connection.I;
        if ((settings.a & 16) != 0) {
            i = settings.b[4];
        } else {
            i = Integer.MAX_VALUE;
        }
        this.o = i;
        Http2Writer http2Writer = http2Connection.F;
        synchronized (http2Writer) {
            try {
                if (!http2Writer.m) {
                    Logger logger = Http2Writer.o;
                    if (logger.isLoggable(Level.FINE)) {
                        logger.fine(Util.f(">> CONNECTION " + Http2.a.f(), new Object[0]));
                    }
                    http2Writer.j.M0(Http2.a);
                    http2Writer.j.flush();
                } else {
                    throw new IOException("closed");
                }
            } finally {
            }
        }
        Http2Writer http2Writer2 = http2Connection.F;
        Settings settings2 = http2Connection.y;
        synchronized (http2Writer2) {
            try {
                settings2.getClass();
                if (!http2Writer2.m) {
                    http2Writer2.n(0, Integer.bitCount(settings2.a) * 6, 4, 0);
                    for (int i3 = 0; i3 < 10; i3++) {
                        boolean z = true;
                        if (((1 << i3) & settings2.a) == 0) {
                            z = false;
                        }
                        if (z) {
                            if (i3 != 4) {
                                if (i3 != 7) {
                                    i2 = i3;
                                } else {
                                    i2 = 4;
                                }
                            } else {
                                i2 = 3;
                            }
                            http2Writer2.j.writeShort(i2);
                            http2Writer2.j.writeInt(settings2.b[i3]);
                        }
                    }
                    http2Writer2.j.flush();
                } else {
                    throw new IOException("closed");
                }
            } finally {
            }
        }
        if (http2Connection.y.a() != 65535) {
            http2Connection.F.E(0, r9 - 65535);
        }
        TaskQueue e = taskRunner.e();
        final String str2 = http2Connection.l;
        final Http2Connection.ReaderRunnable readerRunnable = http2Connection.G;
        e.c(new Task(str2) { // from class: okhttp3.internal.concurrent.TaskQueue$execute$1
            @Override // okhttp3.internal.concurrent.Task
            public final long a() {
                readerRunnable.a();
                return -1L;
            }
        }, 0L);
    }

    public final String toString() {
        Object obj;
        StringBuilder sb = new StringBuilder("Connection{");
        Route route = this.b;
        sb.append(route.a.h.d);
        sb.append(':');
        sb.append(route.a.h.e);
        sb.append(", proxy=");
        sb.append(route.b);
        sb.append(" hostAddress=");
        sb.append(route.c);
        sb.append(" cipherSuite=");
        Handshake handshake = this.e;
        if (handshake != null) {
            obj = handshake.b;
        } else {
            obj = "none";
        }
        sb.append(obj);
        sb.append(" protocol=");
        sb.append(this.f);
        sb.append('}');
        return sb.toString();
    }
}
