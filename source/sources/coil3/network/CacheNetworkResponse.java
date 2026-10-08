package coil3.network;

import coil3.network.NetworkHeaders;
import defpackage.fe;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import kotlin.text.StringsKt;
import okio.RealBufferedSink;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CacheNetworkResponse {
    public static NetworkResponse a(RealBufferedSource realBufferedSource) {
        int parseInt = Integer.parseInt(realBufferedSource.U(Long.MAX_VALUE));
        long parseLong = Long.parseLong(realBufferedSource.U(Long.MAX_VALUE));
        long parseLong2 = Long.parseLong(realBufferedSource.U(Long.MAX_VALUE));
        NetworkHeaders.Builder builder = new NetworkHeaders.Builder();
        int parseInt2 = Integer.parseInt(realBufferedSource.U(Long.MAX_VALUE));
        for (int i = 0; i < parseInt2; i++) {
            String U = realBufferedSource.U(Long.MAX_VALUE);
            int q = StringsKt.q(U, ':', 0, 6);
            if (q != -1) {
                builder.a(StringsKt.U(U.substring(0, q)).toString(), U.substring(q + 1));
            } else {
                fe.l("Unexpected header: ".concat(U));
                return null;
            }
        }
        return new NetworkResponse(parseInt, parseLong, parseLong2, builder.b(), null, null);
    }

    public static void b(NetworkResponse networkResponse, RealBufferedSink realBufferedSink) {
        realBufferedSink.h(networkResponse.a);
        realBufferedSink.writeByte(10);
        realBufferedSink.h(networkResponse.b);
        realBufferedSink.writeByte(10);
        realBufferedSink.h(networkResponse.c);
        realBufferedSink.writeByte(10);
        Set<Map.Entry> entrySet = networkResponse.d.a.entrySet();
        Iterator it = entrySet.iterator();
        int i = 0;
        while (it.hasNext()) {
            i += ((List) ((Map.Entry) it.next()).getValue()).size();
        }
        realBufferedSink.h(i);
        realBufferedSink.writeByte(10);
        for (Map.Entry entry : entrySet) {
            for (String str : (List) entry.getValue()) {
                realBufferedSink.f0((String) entry.getKey());
                realBufferedSink.f0(":");
                realBufferedSink.f0(str);
                realBufferedSink.writeByte(10);
            }
        }
    }
}
