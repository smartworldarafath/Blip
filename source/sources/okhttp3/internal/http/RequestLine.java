package okhttp3.internal.http;

import okhttp3.HttpUrl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class RequestLine {
    public static String a(HttpUrl httpUrl) {
        httpUrl.getClass();
        String b = httpUrl.b();
        String d = httpUrl.d();
        if (d != null) {
            return b + '?' + d;
        }
        return b;
    }
}
