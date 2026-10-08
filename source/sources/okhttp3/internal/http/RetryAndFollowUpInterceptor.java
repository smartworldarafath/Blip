package okhttp3.internal.http;

import defpackage.u2;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InterruptedIOException;
import java.net.ProtocolException;
import java.net.Proxy;
import java.net.SocketTimeoutException;
import java.security.cert.CertificateException;
import java.util.Iterator;
import java.util.List;
import javax.net.ssl.HostnameVerifier;
import javax.net.ssl.SSLHandshakeException;
import javax.net.ssl.SSLPeerUnverifiedException;
import javax.net.ssl.SSLSocketFactory;
import kotlin.ExceptionsKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.Regex;
import okhttp3.Address;
import okhttp3.CertificatePinner;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okhttp3.Route;
import okhttp3.internal.Util;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.connection.RealConnection;
import okhttp3.internal.connection.RealConnectionPool;
import okhttp3.internal.connection.RouteException;
import okhttp3.internal.connection.RouteSelector;
import okhttp3.internal.http2.ConnectionShutdownException;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RetryAndFollowUpInterceptor implements Interceptor {
    public final OkHttpClient a;

    public RetryAndFollowUpInterceptor(OkHttpClient okHttpClient) {
        this.a = okHttpClient;
    }

    public static int d(Response response, int i) {
        String a = Response.a("Retry-After", response);
        if (a == null) {
            return i;
        }
        if (new Regex("\\d+").d(a)) {
            Integer valueOf = Integer.valueOf(a);
            valueOf.getClass();
            return valueOf.intValue();
        }
        return Integer.MAX_VALUE;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r21v1, types: [javax.net.ssl.SSLSocketFactory] */
    /* JADX WARN: Type inference failed for: r21v2 */
    /* JADX WARN: Type inference failed for: r21v3 */
    /* JADX WARN: Type inference failed for: r22v0 */
    /* JADX WARN: Type inference failed for: r22v1, types: [javax.net.ssl.HostnameVerifier] */
    /* JADX WARN: Type inference failed for: r22v2 */
    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        ?? r22;
        CertificatePinner certificatePinner;
        ?? r21;
        Request request = realInterceptorChain.e;
        RealCall realCall = realInterceptorChain.a;
        Response response = null;
        List list = EmptyList.j;
        Response response2 = null;
        int i = 0;
        Request request2 = request;
        boolean z = true;
        while (realCall.s == null) {
            synchronized (realCall) {
                try {
                    if (!realCall.u) {
                        if (realCall.t) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } else {
                        throw new IllegalStateException("cannot make a new request because the previous response is still open: please call response.close()");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            if (z) {
                RealConnectionPool realConnectionPool = realCall.l;
                HttpUrl httpUrl = request2.a;
                OkHttpClient okHttpClient = realCall.j;
                if (httpUrl.i) {
                    SSLSocketFactory sSLSocketFactory = okHttpClient.x;
                    if (sSLSocketFactory != null) {
                        HostnameVerifier hostnameVerifier = okHttpClient.B;
                        certificatePinner = okHttpClient.C;
                        r21 = sSLSocketFactory;
                        r22 = hostnameVerifier;
                    } else {
                        u2.l("CLEARTEXT-only client");
                        return response;
                    }
                } else {
                    Response response3 = response;
                    r22 = response3;
                    certificatePinner = r22;
                    r21 = response3;
                }
                realCall.q = new ExchangeFinder(realConnectionPool, new Address(httpUrl.d, httpUrl.e, okHttpClient.t, okHttpClient.w, r21, r22, certificatePinner, okHttpClient.v, okHttpClient.A, okHttpClient.z, okHttpClient.u), realCall, realCall.m);
            }
            try {
                if (!realCall.w) {
                    try {
                        Response b = realInterceptorChain.b(request2);
                        if (response2 != null) {
                            Response.Builder h = b.h();
                            Response.Builder h2 = response2.h();
                            h2.g = null;
                            Response a = h2.a();
                            if (a.p == null) {
                                h.j = a;
                                b = h.a();
                            } else {
                                throw new IllegalArgumentException("priorResponse.body != null");
                            }
                        }
                        response2 = b;
                        request2 = b(response2, realCall.s);
                    } catch (IOException e) {
                        if (c(e, realCall, request2, !(e instanceof ConnectionShutdownException))) {
                            list = CollectionsKt.G(list, e);
                            realCall.e(true);
                            z = false;
                        } else {
                            Iterator it = list.iterator();
                            while (it.hasNext()) {
                                ExceptionsKt.a(e, (Exception) it.next());
                            }
                            throw e;
                        }
                    } catch (RouteException e2) {
                        boolean c = c(e2.k, realCall, request2, false);
                        IOException iOException = e2.j;
                        if (c) {
                            list = CollectionsKt.G(list, iOException);
                            realCall.e(true);
                            z = false;
                        } else {
                            iOException.getClass();
                            Iterator it2 = list.iterator();
                            while (it2.hasNext()) {
                                ExceptionsKt.a(iOException, (Exception) it2.next());
                            }
                            throw iOException;
                        }
                    }
                    if (request2 == null) {
                        realCall.e(false);
                        return response2;
                    }
                    ResponseBody responseBody = response2.p;
                    if (responseBody != null) {
                        Util.b(responseBody);
                    }
                    i++;
                    if (i <= 20) {
                        realCall.e(true);
                        z = true;
                        response = null;
                    } else {
                        throw new ProtocolException("Too many follow-up requests: " + i);
                    }
                } else {
                    throw new IOException("Canceled");
                }
            } catch (Throwable th2) {
                realCall.e(true);
                throw th2;
            }
        }
        u2.l("Check failed.");
        return null;
    }

    public final Request b(Response response, Exchange exchange) {
        Route route;
        HttpUrl.Builder builder;
        HttpUrl httpUrl;
        Response response2;
        RealConnection realConnection;
        RequestBody requestBody = null;
        if (exchange != null && (realConnection = exchange.f) != null) {
            route = realConnection.b;
        } else {
            route = null;
        }
        int i = response.m;
        String str = response.j.b;
        boolean z = false;
        if (i != 307 && i != 308) {
            if (i != 401) {
                if (i != 421) {
                    if (i != 503) {
                        if (i != 407) {
                            if (i != 408) {
                                switch (i) {
                                }
                            } else if (this.a.o && (((response2 = response.s) == null || response2.m != 408) && d(response, 0) <= 0)) {
                                return response.j;
                            }
                        } else {
                            route.getClass();
                            if (route.b.type() == Proxy.Type.HTTP) {
                                return this.a.v.a(route, response);
                            }
                            throw new ProtocolException("Received HTTP_PROXY_AUTH (407) code while not using proxy");
                        }
                    } else {
                        Response response3 = response.s;
                        if ((response3 == null || response3.m != 503) && d(response, Integer.MAX_VALUE) == 0) {
                            return response.j;
                        }
                    }
                } else if (exchange != null && !Intrinsics.a(exchange.c.b.h.d, exchange.f.b.a.h.d)) {
                    RealConnection realConnection2 = exchange.f;
                    synchronized (realConnection2) {
                        realConnection2.k = true;
                    }
                    return response.j;
                }
                return null;
            }
            return this.a.p.a(route, response);
        }
        OkHttpClient okHttpClient = this.a;
        if (okHttpClient.q) {
            String a = Response.a("Location", response);
            Request request = response.j;
            if (a != null) {
                HttpUrl httpUrl2 = request.a;
                httpUrl2.getClass();
                try {
                    builder = new HttpUrl.Builder();
                    builder.b(httpUrl2, a);
                } catch (IllegalArgumentException unused) {
                    builder = null;
                }
                if (builder != null) {
                    httpUrl = builder.a();
                } else {
                    httpUrl = null;
                }
                if (httpUrl != null && (Intrinsics.a(httpUrl.a, request.a.a) || okHttpClient.r)) {
                    Request.Builder a2 = request.a();
                    if (HttpMethod.a(str)) {
                        int i2 = response.m;
                        if (str.equals("PROPFIND") || i2 == 308 || i2 == 307) {
                            z = true;
                        }
                        if (!str.equals("PROPFIND") && i2 != 308 && i2 != 307) {
                            a2.c("GET", null);
                        } else {
                            if (z) {
                                requestBody = request.d;
                            }
                            a2.c(str, requestBody);
                        }
                        if (!z) {
                            a2.c.c("Transfer-Encoding");
                            a2.c.c("Content-Length");
                            a2.c.c("Content-Type");
                        }
                    }
                    if (!Util.a(request.a, httpUrl)) {
                        a2.c.c("Authorization");
                    }
                    a2.a = httpUrl;
                    return a2.a();
                }
            }
        }
        return null;
    }

    /* JADX WARN: Code restructure failed: missing block: B:15:0x001d, code lost:
    
        if (r6 == false) goto L26;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean c(IOException iOException, RealCall realCall, Request request, boolean z) {
        boolean z2;
        RouteSelector routeSelector;
        RealConnection realConnection;
        if (!this.a.o || ((z && (iOException instanceof FileNotFoundException)) || (iOException instanceof ProtocolException))) {
            return false;
        }
        if (iOException instanceof InterruptedIOException) {
            if (iOException instanceof SocketTimeoutException) {
            }
            return false;
        }
        if (((iOException instanceof SSLHandshakeException) && (iOException.getCause() instanceof CertificateException)) || (iOException instanceof SSLPeerUnverifiedException)) {
            return false;
        }
        ExchangeFinder exchangeFinder = realCall.q;
        exchangeFinder.getClass();
        int i = exchangeFinder.g;
        if (i == 0 && exchangeFinder.h == 0 && exchangeFinder.i == 0) {
            z2 = false;
        } else {
            if (exchangeFinder.j == null) {
                Route route = null;
                if (i <= 1 && exchangeFinder.h <= 1 && exchangeFinder.i <= 0 && (realConnection = exchangeFinder.c.r) != null) {
                    synchronized (realConnection) {
                        if (realConnection.l == 0) {
                            if (Util.a(realConnection.b.a.h, exchangeFinder.b.h)) {
                                route = realConnection.b;
                            }
                        }
                    }
                }
                if (route != null) {
                    exchangeFinder.j = route;
                } else {
                    RouteSelector.Selection selection = exchangeFinder.e;
                    if ((selection == null || !selection.a()) && (routeSelector = exchangeFinder.f) != null) {
                        z2 = routeSelector.a();
                    }
                }
            }
            z2 = true;
        }
        if (!z2) {
            return false;
        }
        return true;
    }
}
