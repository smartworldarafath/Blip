package okhttp3.internal.connection;

import defpackage.k8;
import java.io.IOException;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.Interceptor;
import okhttp3.OkHttpClient;
import okhttp3.Response;
import okhttp3.internal.http.RealInterceptorChain;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ConnectInterceptor implements Interceptor {
    public static final ConnectInterceptor a = new Object();

    @Override // okhttp3.Interceptor
    public final Response a(RealInterceptorChain realInterceptorChain) {
        RealCall realCall = realInterceptorChain.a;
        synchronized (realCall) {
            try {
                if (realCall.v) {
                    if (!realCall.u) {
                        if (realCall.t) {
                            throw new IllegalStateException("Check failed.");
                        }
                    } else {
                        throw new IllegalStateException("Check failed.");
                    }
                } else {
                    throw new IllegalStateException("released");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        ExchangeFinder exchangeFinder = realCall.q;
        exchangeFinder.getClass();
        OkHttpClient okHttpClient = realCall.j;
        try {
            Exchange exchange = new Exchange(realCall, realCall.m, exchangeFinder, exchangeFinder.a(realInterceptorChain.f, realInterceptorChain.g, realInterceptorChain.h, okHttpClient.o, !Intrinsics.a(realInterceptorChain.e.b, "GET")).j(okHttpClient, realInterceptorChain));
            realCall.s = exchange;
            realCall.x = exchange;
            synchronized (realCall) {
                realCall.t = true;
                realCall.u = true;
            }
            if (!realCall.w) {
                return RealInterceptorChain.a(realInterceptorChain, 0, exchange, null, 61).b(realInterceptorChain.e);
            }
            k8.j("Canceled");
            return null;
        } catch (IOException e) {
            exchangeFinder.b(e);
            throw new RouteException(e);
        } catch (RouteException e2) {
            exchangeFinder.b(e2.k);
            throw e2;
        }
    }
}
