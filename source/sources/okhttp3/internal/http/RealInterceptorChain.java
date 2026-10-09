package okhttp3.internal.http;

import defpackage.u2;
import java.util.ArrayList;
import kotlin.jvm.internal.Intrinsics;
import okhttp3.HttpUrl;
import okhttp3.Interceptor;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.Exchange;
import okhttp3.internal.connection.ExchangeFinder;
import okhttp3.internal.connection.RealCall;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealInterceptorChain {
    public final RealCall a;
    public final ArrayList b;
    public final int c;
    public final Exchange d;
    public final Request e;
    public final int f;
    public final int g;
    public final int h;
    public int i;

    public RealInterceptorChain(RealCall realCall, ArrayList arrayList, int i, Exchange exchange, Request request, int i2, int i3, int i4) {
        this.a = realCall;
        this.b = arrayList;
        this.c = i;
        this.d = exchange;
        this.e = request;
        this.f = i2;
        this.g = i3;
        this.h = i4;
    }

    public static RealInterceptorChain a(RealInterceptorChain realInterceptorChain, int i, Exchange exchange, Request request, int i2) {
        if ((i2 & 1) != 0) {
            i = realInterceptorChain.c;
        }
        int i3 = i;
        if ((i2 & 2) != 0) {
            exchange = realInterceptorChain.d;
        }
        Exchange exchange2 = exchange;
        if ((i2 & 4) != 0) {
            request = realInterceptorChain.e;
        }
        Request request2 = request;
        int i4 = realInterceptorChain.f;
        int i5 = realInterceptorChain.g;
        int i6 = realInterceptorChain.h;
        request2.getClass();
        return new RealInterceptorChain(realInterceptorChain.a, realInterceptorChain.b, i3, exchange2, request2, i4, i5, i6);
    }

    public final Response b(Request request) {
        request.getClass();
        ArrayList arrayList = this.b;
        int size = arrayList.size();
        int i = this.c;
        if (i < size) {
            this.i++;
            Exchange exchange = this.d;
            if (exchange != null) {
                ExchangeFinder exchangeFinder = exchange.c;
                HttpUrl httpUrl = request.a;
                exchangeFinder.getClass();
                httpUrl.getClass();
                HttpUrl httpUrl2 = exchangeFinder.b.h;
                if (httpUrl.e == httpUrl2.e && Intrinsics.a(httpUrl.d, httpUrl2.d)) {
                    if (this.i != 1) {
                        u2.h("network interceptor ", arrayList.get(i - 1), " must call proceed() exactly once");
                        return null;
                    }
                } else {
                    u2.h("network interceptor ", arrayList.get(i - 1), " must retain the same host and port");
                    return null;
                }
            }
            int i2 = i + 1;
            RealInterceptorChain a = a(this, i2, null, request, 58);
            Interceptor interceptor = (Interceptor) arrayList.get(i);
            Response a2 = interceptor.a(a);
            if (a2 != null) {
                if (exchange != null && i2 < arrayList.size() && a.i != 1) {
                    u2.h("network interceptor ", interceptor, " must call proceed() exactly once");
                    return null;
                }
                if (a2.p != null) {
                    return a2;
                }
                u2.h("interceptor ", interceptor, " returned a response with no body");
                return null;
            }
            throw new NullPointerException("interceptor " + interceptor + " returned null");
        }
        u2.l("Check failed.");
        return null;
    }
}
