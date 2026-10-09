package okhttp3.internal.platform.android;

import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.CopyOnWriteArraySet;
import kotlin.collections.MapsKt;
import okhttp3.OkHttpClient;
import okhttp3.internal.concurrent.TaskRunner;
import okhttp3.internal.http2.Http2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AndroidLog {
    public static final CopyOnWriteArraySet a = new CopyOnWriteArraySet();
    public static final Map b;

    static {
        String str;
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        Package r2 = OkHttpClient.class.getPackage();
        if (r2 != null) {
            str = r2.getName();
        } else {
            str = null;
        }
        if (str != null) {
            linkedHashMap.put(str, "OkHttp");
        }
        linkedHashMap.put(OkHttpClient.class.getName(), "okhttp.OkHttpClient");
        linkedHashMap.put(Http2.class.getName(), "okhttp.Http2");
        linkedHashMap.put(TaskRunner.class.getName(), "okhttp.TaskRunner");
        linkedHashMap.put("okhttp3.mockwebserver.MockWebServer", "okhttp.MockWebServer");
        b = MapsKt.i(linkedHashMap);
    }
}
