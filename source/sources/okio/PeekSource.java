package okio;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PeekSource implements Source {
    public final BufferedSource j;
    public final Buffer k;
    public Segment l;
    public int m;
    public boolean n;
    public long o;

    public PeekSource(BufferedSource bufferedSource) {
        int i;
        this.j = bufferedSource;
        Buffer H = bufferedSource.H();
        this.k = H;
        Segment segment = H.j;
        this.l = segment;
        if (segment != null) {
            i = segment.b;
        } else {
            i = -1;
        }
        this.m = i;
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x001e, code lost:
    
        if (r3 == r5.b) goto L15;
     */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long J0(long j, Buffer buffer) {
        Segment segment;
        buffer.getClass();
        if (j >= 0) {
            if (!this.n) {
                Segment segment2 = this.l;
                Buffer buffer2 = this.k;
                if (segment2 != null) {
                    Segment segment3 = buffer2.j;
                    if (segment2 == segment3) {
                        int i = this.m;
                        segment3.getClass();
                    }
                    u2.l("Peek source is invalid because upstream source was used");
                    return 0L;
                }
                if (j == 0) {
                    return 0L;
                }
                if (!this.j.t0(this.o + 1)) {
                    return -1L;
                }
                if (this.l == null && (segment = buffer2.j) != null) {
                    this.l = segment;
                    this.m = segment.b;
                }
                long min = Math.min(j, buffer2.k - this.o);
                this.k.h(buffer, this.o, min);
                this.o += min;
                return min;
            }
            u2.l("closed");
            return 0L;
        }
        fe.l(q.h(j, "byteCount < 0: "));
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.n = true;
    }

    @Override // okio.Source
    public final Timeout i() {
        return this.j.i();
    }
}
