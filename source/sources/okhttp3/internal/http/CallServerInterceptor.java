package okhttp3.internal.http;

import java.io.IOException;
import java.net.ProtocolException;
import kotlin.ExceptionsKt;
import okhttp3.EventListener;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.http2.ConnectionShutdownException;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CallServerInterceptor implements Interceptor {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ce  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x010c A[Catch: IOException -> 0x00dd, TryCatch #10 {IOException -> 0x00dd, blocks: (B:34:0x00cf, B:36:0x00d8, B:44:0x00e0, B:47:0x0103, B:49:0x010c, B:50:0x010f, B:51:0x0123, B:53:0x0145, B:60:0x015e, B:62:0x0162, B:65:0x016f, B:67:0x0182, B:68:0x018c, B:69:0x0196, B:73:0x014f), top: B:33:0x00cf }] */
    /* JADX WARN: Removed duplicated region for block: B:53:0x0145 A[Catch: IOException -> 0x00dd, TryCatch #10 {IOException -> 0x00dd, blocks: (B:34:0x00cf, B:36:0x00d8, B:44:0x00e0, B:47:0x0103, B:49:0x010c, B:50:0x010f, B:51:0x0123, B:53:0x0145, B:60:0x015e, B:62:0x0162, B:65:0x016f, B:67:0x0182, B:68:0x018c, B:69:0x0196, B:73:0x014f), top: B:33:0x00cf }] */
    /* JADX WARN: Removed duplicated region for block: B:57:0x015a  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x0162 A[Catch: IOException -> 0x00dd, TryCatch #10 {IOException -> 0x00dd, blocks: (B:34:0x00cf, B:36:0x00d8, B:44:0x00e0, B:47:0x0103, B:49:0x010c, B:50:0x010f, B:51:0x0123, B:53:0x0145, B:60:0x015e, B:62:0x0162, B:65:0x016f, B:67:0x0182, B:68:0x018c, B:69:0x0196, B:73:0x014f), top: B:33:0x00cf }] */
    /* JADX WARN: Removed duplicated region for block: B:65:0x016f A[Catch: IOException -> 0x00dd, TryCatch #10 {IOException -> 0x00dd, blocks: (B:34:0x00cf, B:36:0x00d8, B:44:0x00e0, B:47:0x0103, B:49:0x010c, B:50:0x010f, B:51:0x0123, B:53:0x0145, B:60:0x015e, B:62:0x0162, B:65:0x016f, B:67:0x0182, B:68:0x018c, B:69:0x0196, B:73:0x014f), top: B:33:0x00cf }] */
    /* JADX WARN: Removed duplicated region for block: B:72:0x0167  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x00fa  */
    /* JADX WARN: Removed duplicated region for block: B:88:0x00c6  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x01a0  */
    /* JADX WARN: Type inference failed for: r6v0, types: [okhttp3.internal.http.ExchangeCodec] */
    /* JADX WARN: Type inference failed for: r6v10 */
    /* JADX WARN: Type inference failed for: r6v2 */
    /* JADX WARN: Type inference failed for: r6v3 */
    /* JADX WARN: Type inference failed for: r6v5 */
    /* JADX WARN: Type inference failed for: r6v6 */
    /* JADX WARN: Type inference failed for: r6v7 */
    /* JADX WARN: Type inference failed for: r6v8 */
    /* JADX WARN: Type inference failed for: r6v9 */
    @Override // okhttp3.Interceptor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Response a(RealInterceptorChain realInterceptorChain) {
        Response.Builder builder;
        ExchangeCodec exchangeCodec;
        IOException iOException;
        Long l;
        boolean z;
        int i;
        Response a;
        Request request;
        ResponseBody responseBody;
        long j;
        Long l2;
        Response.Builder builder2;
        boolean z2;
        Exchange exchange = realInterceptorChain.d;
        exchange.getClass();
        RealCall realCall = exchange.a;
        ?? r6 = exchange.d;
        RealConnection realConnection = exchange.f;
        EventListener eventListener = exchange.b;
        Request request2 = realInterceptorChain.e;
        RequestBody requestBody = request2.d;
        long currentTimeMillis = System.currentTimeMillis();
        boolean z3 = true;
        try {
            try {
                eventListener.getClass();
                r6.b(request2);
                try {
                    if (HttpMethod.a(request2.b) && requestBody != null) {
                        try {
                        } catch (IOException e) {
                            e = e;
                        }
                        try {
                            if ("100-continue".equalsIgnoreCase(request2.c.b("Expect"))) {
                                try {
                                    r6.f();
                                    builder = exchange.d(true);
                                    try {
                                        eventListener.getClass();
                                        builder2 = builder;
                                        z2 = false;
                                    } catch (IOException e2) {
                                        e = e2;
                                        exchangeCodec = r6;
                                        r6 = 0;
                                        if (e instanceof ConnectionShutdownException) {
                                        }
                                    }
                                } catch (IOException e3) {
                                    eventListener.getClass();
                                    exchange.e(e3);
                                    throw e3;
                                }
                            } else {
                                z2 = true;
                                builder2 = null;
                            }
                            if (builder2 == null) {
                                try {
                                    RealBufferedSink realBufferedSink = new RealBufferedSink(exchange.b(request2));
                                    requestBody.b(realBufferedSink);
                                    realBufferedSink.close();
                                    exchangeCodec = r6;
                                } catch (IOException e4) {
                                    e = e4;
                                    exchangeCodec = r6;
                                    z3 = z2;
                                    builder = builder2;
                                    r6 = 0;
                                    if (e instanceof ConnectionShutdownException) {
                                    }
                                }
                            } else {
                                exchangeCodec = r6;
                                try {
                                    realCall.g(exchange, true, false, null);
                                    if (realConnection.g == null) {
                                        z3 = false;
                                    }
                                    if (!z3) {
                                        exchangeCodec.e().k();
                                    }
                                } catch (IOException e5) {
                                    e = e5;
                                    z3 = z2;
                                    builder = builder2;
                                    r6 = 0;
                                    if (e instanceof ConnectionShutdownException) {
                                        if (exchange.e) {
                                            iOException = e;
                                            l = r6;
                                            z = z3;
                                            if (builder == null) {
                                            }
                                            builder.a = request2;
                                            builder.e = realConnection.e;
                                            builder.k = currentTimeMillis;
                                            builder.l = System.currentTimeMillis();
                                            Response a2 = builder.a();
                                            i = a2.m;
                                            if (i != 100) {
                                            }
                                            Response.Builder d = exchange.d(false);
                                            d.getClass();
                                            if (z) {
                                            }
                                            d.a = request2;
                                            d.e = realConnection.e;
                                            d.k = currentTimeMillis;
                                            d.l = System.currentTimeMillis();
                                            a2 = d.a();
                                            i = a2.m;
                                            eventListener.getClass();
                                            Response.Builder h = a2.h();
                                            h.g = exchange.c(a2);
                                            a = h.a();
                                            request = a.j;
                                            request.getClass();
                                            if (!"close".equalsIgnoreCase(request.c.b("Connection"))) {
                                            }
                                            exchangeCodec.e().k();
                                            if (i != 204) {
                                            }
                                            responseBody = a.p;
                                            if (responseBody != null) {
                                            }
                                            if (j > 0) {
                                            }
                                            return a;
                                        }
                                        throw e;
                                    }
                                    throw e;
                                }
                            }
                            z3 = z2;
                            builder = builder2;
                            r6 = 0;
                        } catch (IOException e6) {
                            e = e6;
                            exchangeCodec = r6;
                            r6 = 0;
                            builder = null;
                            if (e instanceof ConnectionShutdownException) {
                            }
                        }
                    } else {
                        exchangeCodec = r6;
                        r6 = 0;
                        realCall.g(exchange, true, false, null);
                        builder = null;
                    }
                    try {
                        exchangeCodec.a();
                        iOException = r6;
                        l = r6;
                    } catch (IOException e7) {
                        try {
                            exchange.e(e7);
                            throw e7;
                        } catch (IOException e8) {
                            e = e8;
                            if (e instanceof ConnectionShutdownException) {
                            }
                        }
                    }
                } catch (IOException e9) {
                    e = e9;
                    exchangeCodec = r6;
                    r6 = 0;
                    builder = r6;
                    if (e instanceof ConnectionShutdownException) {
                    }
                }
            } catch (IOException e10) {
                eventListener.getClass();
                exchange.e(e10);
                throw e10;
            }
        } catch (IOException e11) {
            e = e11;
        }
        z = z3;
        if (builder == null) {
            try {
                builder = exchange.d(false);
                builder.getClass();
                if (z) {
                    eventListener.getClass();
                    z = false;
                }
            } catch (IOException e12) {
                if (iOException != null) {
                    ExceptionsKt.a(iOException, e12);
                    throw iOException;
                }
                throw e12;
            }
        }
        builder.a = request2;
        builder.e = realConnection.e;
        builder.k = currentTimeMillis;
        builder.l = System.currentTimeMillis();
        Response a22 = builder.a();
        i = a22.m;
        if (i != 100) {
            if (102 <= i && i < 200) {
            }
            eventListener.getClass();
            Response.Builder h2 = a22.h();
            h2.g = exchange.c(a22);
            a = h2.a();
            request = a.j;
            request.getClass();
            if (!"close".equalsIgnoreCase(request.c.b("Connection")) || "close".equalsIgnoreCase(Response.a("Connection", a))) {
                exchangeCodec.e().k();
            }
            if (i != 204 || i == 205) {
                responseBody = a.p;
                if (responseBody != null) {
                    j = responseBody.a();
                } else {
                    j = -1;
                }
                if (j > 0) {
                    StringBuilder sb = new StringBuilder("HTTP ");
                    sb.append(i);
                    sb.append(" had non-zero Content-Length: ");
                    ResponseBody responseBody2 = a.p;
                    if (responseBody2 != null) {
                        l2 = Long.valueOf(responseBody2.a());
                    } else {
                        l2 = l;
                    }
                    sb.append(l2);
                    throw new ProtocolException(sb.toString());
                }
            }
            return a;
        }
        Response.Builder d2 = exchange.d(false);
        d2.getClass();
        if (z) {
            eventListener.getClass();
        }
        d2.a = request2;
        d2.e = realConnection.e;
        d2.k = currentTimeMillis;
        d2.l = System.currentTimeMillis();
        a22 = d2.a();
        i = a22.m;
        eventListener.getClass();
        Response.Builder h22 = a22.h();
        h22.g = exchange.c(a22);
        a = h22.a();
        request = a.j;
        request.getClass();
        if (!"close".equalsIgnoreCase(request.c.b("Connection"))) {
        }
        exchangeCodec.e().k();
        if (i != 204) {
        }
        responseBody = a.p;
        if (responseBody != null) {
        }
        if (j > 0) {
        }
        return a;
    }
}
