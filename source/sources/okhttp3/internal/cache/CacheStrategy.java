package okhttp3.internal.cache;

import okhttp3.Request;
import okhttp3.Response;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CacheStrategy {
    public final Request a;
    public final Response b;

    public CacheStrategy(Request request, Response response) {
        this.a = request;
        this.b = response;
    }
}
