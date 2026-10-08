package okio;

import defpackage.fe;
import defpackage.q;
import java.io.IOException;
import java.io.InputStream;
import java.util.logging.Logger;
import kotlin.text.StringsKt;
import okio.internal._JavaIoKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class InputStreamSource implements Source {
    public final InputStream j;
    public final Timeout k;

    public InputStreamSource(InputStream inputStream, Timeout timeout) {
        inputStream.getClass();
        this.j = inputStream;
        this.k = timeout;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0065, code lost:
    
        if (r5 != false) goto L27;
     */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long J0(long j, Buffer buffer) {
        boolean z;
        buffer.getClass();
        if (j == 0) {
            return 0L;
        }
        if (j >= 0) {
            boolean z2 = true;
            try {
                this.k.f();
                Segment S = buffer.S(1);
                int read = this.j.read(S.a, S.c, (int) Math.min(j, 8192 - S.c));
                if (read == -1) {
                    if (S.b == S.c) {
                        buffer.j = S.a();
                        SegmentPool.a(S);
                        return -1L;
                    }
                    return -1L;
                }
                S.c += read;
                long j2 = read;
                buffer.k += j2;
                return j2;
            } catch (AssertionError e) {
                Logger logger = _JavaIoKt.a;
                if (e.getCause() != null) {
                    String message = e.getMessage();
                    if (message != null) {
                        z = StringsKt.i(message, "getsockname failed", false);
                    } else {
                        z = false;
                    }
                }
                z2 = false;
                if (z2) {
                    throw new IOException(e);
                }
                throw e;
            }
        }
        fe.l(q.h(j, "byteCount < 0: "));
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // okio.Source
    public final Timeout i() {
        return this.k;
    }

    public final String toString() {
        return "source(" + this.j + ')';
    }
}
