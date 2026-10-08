package coil3.network.okhttp.internal;

import coil3.network.NetworkClientKt;
import coil3.network.NetworkHeaders;
import coil3.network.NetworkRequest;
import coil3.network.NetworkResponse;
import coil3.network.NetworkResponseBody;
import defpackage.u2;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.text.StringsKt;
import okhttp3.Headers;
import okhttp3.HttpUrl;
import okhttp3.Request;
import okhttp3.RequestBody;
import okhttp3.Response;
import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.ByteString;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CallFactoryNetworkClientKt {
    public static final NetworkResponse a(Response response) {
        NetworkResponseBody networkResponseBody;
        BufferedSource U0;
        int i = response.m;
        long j = response.t;
        long j2 = response.u;
        Headers headers = response.o;
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder();
        Iterator<Pair<? extends String, ? extends String>> it = headers.iterator();
        while (it.hasNext()) {
            Pair<? extends String, ? extends String> next = it.next();
            builder.a((String) next.j, (String) next.k);
        }
        NetworkHeaders b = builder.b();
        ResponseBody responseBody = response.p;
        if (responseBody != null && (U0 = responseBody.U0()) != null) {
            networkResponseBody = NetworkClientKt.a(U0);
        } else {
            networkResponseBody = null;
        }
        return new NetworkResponse(i, j, j2, b, networkResponseBody, response);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:15:0x00a0  */
    /* JADX WARN: Removed duplicated region for block: B:28:0x003f  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final Request b(NetworkRequest networkRequest, ContinuationImpl continuationImpl) {
        CallFactoryNetworkClientKt$toRequest$1 callFactoryNetworkClientKt$toRequest$1;
        int i;
        Request.Builder builder;
        String str;
        Request.Builder builder2;
        NetworkRequest networkRequest2;
        RequestBody requestBody;
        if (continuationImpl instanceof CallFactoryNetworkClientKt$toRequest$1) {
            CallFactoryNetworkClientKt$toRequest$1 callFactoryNetworkClientKt$toRequest$12 = (CallFactoryNetworkClientKt$toRequest$1) continuationImpl;
            int i2 = callFactoryNetworkClientKt$toRequest$12.n;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                callFactoryNetworkClientKt$toRequest$12.n = i2 - Integer.MIN_VALUE;
                callFactoryNetworkClientKt$toRequest$1 = callFactoryNetworkClientKt$toRequest$12;
                Object obj = callFactoryNetworkClientKt$toRequest$1.m;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = callFactoryNetworkClientKt$toRequest$1.n;
                Request.Builder builder3 = null;
                if (i == 0) {
                    if (i == 1) {
                        ResultKt.b(obj);
                        final ByteString byteString = (ByteString) obj;
                        if (byteString != null) {
                            requestBody = new RequestBody() { // from class: okhttp3.RequestBody$Companion$toRequestBody$1
                                @Override // okhttp3.RequestBody
                                public final long a() {
                                    return ByteString.this.e();
                                }

                                @Override // okhttp3.RequestBody
                                public final void b(RealBufferedSink realBufferedSink) {
                                    realBufferedSink.M0(ByteString.this);
                                }
                            };
                            networkRequest2 = null;
                            builder2 = null;
                            str = null;
                            builder3.c(str, requestBody);
                            NetworkHeaders networkHeaders = networkRequest2.c;
                            Headers.Builder builder4 = new Headers.Builder();
                            for (Map.Entry entry : networkHeaders.a.entrySet()) {
                                String str2 = (String) entry.getKey();
                                for (String str3 : (List) entry.getValue()) {
                                    str2.getClass();
                                    str3.getClass();
                                    Headers.Companion.a(str2);
                                    builder4.a(str2, str3);
                                }
                            }
                            Headers b = builder4.b();
                            builder2.getClass();
                            builder2.c = b.d();
                            return builder2.a();
                        }
                        networkRequest = null;
                        builder = null;
                        builder2 = null;
                        str = null;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    builder = new Request.Builder();
                    String str4 = networkRequest.a;
                    if (StringsKt.J(str4, "ws:", true)) {
                        str4 = "http:".concat(str4.substring(3));
                    } else if (StringsKt.J(str4, "wss:", true)) {
                        str4 = "https:".concat(str4.substring(4));
                    }
                    HttpUrl.Builder builder5 = new HttpUrl.Builder();
                    builder5.b(null, str4);
                    builder.a = builder5.a();
                    str = networkRequest.b;
                    builder2 = builder;
                }
                Request.Builder builder6 = builder;
                networkRequest2 = networkRequest;
                requestBody = null;
                builder3 = builder6;
                builder3.c(str, requestBody);
                NetworkHeaders networkHeaders2 = networkRequest2.c;
                Headers.Builder builder42 = new Headers.Builder();
                while (r5.hasNext()) {
                }
                Headers b2 = builder42.b();
                builder2.getClass();
                builder2.c = b2.d();
                return builder2.a();
            }
        }
        callFactoryNetworkClientKt$toRequest$1 = new ContinuationImpl(continuationImpl);
        Object obj2 = callFactoryNetworkClientKt$toRequest$1.m;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = callFactoryNetworkClientKt$toRequest$1.n;
        Request.Builder builder32 = null;
        if (i == 0) {
        }
        Request.Builder builder62 = builder;
        networkRequest2 = networkRequest;
        requestBody = null;
        builder32 = builder62;
        builder32.c(str, requestBody);
        NetworkHeaders networkHeaders22 = networkRequest2.c;
        Headers.Builder builder422 = new Headers.Builder();
        while (r5.hasNext()) {
        }
        Headers b22 = builder422.b();
        builder2.getClass();
        builder2.c = b22.d();
        return builder2.a();
    }
}
