package okhttp3.internal.http;

import okhttp3.ResponseBody;
import okio.BufferedSource;
import okio.RealBufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealResponseBody extends ResponseBody {
    public final long j;
    public final RealBufferedSource k;

    public RealResponseBody(long j, RealBufferedSource realBufferedSource) {
        this.j = j;
        this.k = realBufferedSource;
    }

    @Override // okhttp3.ResponseBody
    public final BufferedSource U0() {
        return this.k;
    }

    @Override // okhttp3.ResponseBody
    public final long a() {
        return this.j;
    }
}
