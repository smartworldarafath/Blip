package coil3.network;

import okio.Buffer;
import okio.BufferedSource;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SourceResponseBody implements NetworkResponseBody {
    public final BufferedSource j;

    @Override // coil3.network.NetworkResponseBody
    public final void B0(Buffer buffer) {
        this.j.S0(buffer);
    }

    @Override // java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    public final boolean equals(Object obj) {
        if (obj instanceof SourceResponseBody) {
            if (!this.j.equals(((SourceResponseBody) obj).j)) {
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.j.hashCode();
    }

    public final String toString() {
        return "SourceResponseBody(source=" + this.j + ")";
    }
}
