package okhttp3;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyMap;
import okhttp3.Headers;
import okhttp3.internal.Util;
import okhttp3.internal.http.HttpMethod;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Request {
    public final HttpUrl a;
    public final String b;
    public final Headers c;
    public final RequestBody d;
    public final Map e;
    public CacheControl f;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Builder {
        public HttpUrl a;
        public RequestBody d;
        public LinkedHashMap e = new LinkedHashMap();
        public String b = "GET";
        public Headers.Builder c = new Headers.Builder();

        public final Request a() {
            Map unmodifiableMap;
            HttpUrl httpUrl = this.a;
            if (httpUrl != null) {
                String str = this.b;
                Headers b = this.c.b();
                RequestBody requestBody = this.d;
                LinkedHashMap linkedHashMap = this.e;
                byte[] bArr = Util.a;
                linkedHashMap.getClass();
                if (linkedHashMap.isEmpty()) {
                    unmodifiableMap = EmptyMap.j;
                } else {
                    unmodifiableMap = Collections.unmodifiableMap(new LinkedHashMap(linkedHashMap));
                    unmodifiableMap.getClass();
                }
                return new Request(httpUrl, str, b, requestBody, unmodifiableMap);
            }
            u2.l("url == null");
            return null;
        }

        public final void b(String str, String str2) {
            str2.getClass();
            Headers.Builder builder = this.c;
            builder.getClass();
            Headers.Companion.a(str);
            Headers.Companion.b(str2, str);
            builder.c(str);
            builder.a(str, str2);
        }

        public final void c(String str, RequestBody requestBody) {
            str.getClass();
            if (str.length() > 0) {
                if (requestBody == null) {
                    if (str.equals("POST") || str.equals("PUT") || str.equals("PATCH") || str.equals("PROPPATCH") || str.equals("REPORT")) {
                        fe.l(q.i("method ", str, " must have a request body."));
                        return;
                    }
                } else if (!HttpMethod.a(str)) {
                    fe.l(q.i("method ", str, " must not have a request body."));
                    return;
                }
                this.b = str;
                this.d = requestBody;
                return;
            }
            u2.g("method.isEmpty() == true");
        }
    }

    public Request(HttpUrl httpUrl, String str, Headers headers, RequestBody requestBody, Map map) {
        httpUrl.getClass();
        str.getClass();
        this.a = httpUrl;
        this.b = str;
        this.c = headers;
        this.d = requestBody;
        this.e = map;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okhttp3.Request$Builder, java.lang.Object] */
    public final Builder a() {
        LinkedHashMap linkedHashMap;
        ?? obj = new Object();
        obj.e = new LinkedHashMap();
        obj.a = this.a;
        obj.b = this.b;
        obj.d = this.d;
        Map map = this.e;
        if (map.isEmpty()) {
            linkedHashMap = new LinkedHashMap();
        } else {
            linkedHashMap = new LinkedHashMap(map);
        }
        obj.e = linkedHashMap;
        obj.c = this.c.d();
        return obj;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Request{method=");
        sb.append(this.b);
        sb.append(", url=");
        sb.append(this.a);
        Headers headers = this.c;
        if (headers.size() != 0) {
            sb.append(", headers=[");
            Iterator<Pair<? extends String, ? extends String>> it = headers.iterator();
            int i = 0;
            while (it.hasNext()) {
                Pair<? extends String, ? extends String> next = it.next();
                int i2 = i + 1;
                if (i >= 0) {
                    Pair<? extends String, ? extends String> pair = next;
                    String str = (String) pair.j;
                    String str2 = (String) pair.k;
                    if (i > 0) {
                        sb.append(", ");
                    }
                    sb.append(str);
                    sb.append(':');
                    sb.append(str2);
                    i = i2;
                } else {
                    CollectionsKt.T();
                    throw null;
                }
            }
            sb.append(']');
        }
        Map map = this.e;
        if (!map.isEmpty()) {
            sb.append(", tags=");
            sb.append(map);
        }
        sb.append('}');
        return sb.toString();
    }
}
