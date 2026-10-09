package okhttp3;

import java.io.Closeable;
import okhttp3.internal.Util;
import okio.BufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ResponseBody implements Closeable {
    public abstract BufferedSource U0();

    public abstract long a();

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Util.b(U0());
    }
}
