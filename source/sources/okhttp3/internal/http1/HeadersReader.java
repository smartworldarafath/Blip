package okhttp3.internal.http1;

import kotlin.text.StringsKt;
import okhttp3.Headers;
import okio.BufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HeadersReader {
    public final BufferedSource a;
    public long b;

    public HeadersReader(BufferedSource bufferedSource) {
        bufferedSource.getClass();
        this.a = bufferedSource;
        this.b = 262144L;
    }

    public final Headers a() {
        Headers.Builder builder = new Headers.Builder();
        while (true) {
            String U = this.a.U(this.b);
            this.b -= U.length();
            if (U.length() == 0) {
                return builder.b();
            }
            int q = StringsKt.q(U, ':', 1, 4);
            if (q != -1) {
                builder.a(U.substring(0, q), U.substring(q + 1));
            } else if (U.charAt(0) == ':') {
                builder.a("", U.substring(1));
            } else {
                builder.a("", U);
            }
        }
    }
}
