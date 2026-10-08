package okhttp3.internal.http;

import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealConnection;
import okio.Sink;
import okio.Source;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface ExchangeCodec {
    void a();

    void b(Request request);

    Source c(Response response);

    void cancel();

    Response.Builder d(boolean z);

    RealConnection e();

    void f();

    long g(Response response);

    Sink h(Request request, long j);
}
