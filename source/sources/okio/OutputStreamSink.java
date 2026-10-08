package okio;

import java.io.OutputStream;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OutputStreamSink implements Sink {
    public final OutputStream j;
    public final Timeout k;

    public OutputStreamSink(OutputStream outputStream, Timeout timeout) {
        this.j = outputStream;
        this.k = timeout;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.j.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        this.j.flush();
    }

    @Override // okio.Sink
    public final Timeout i() {
        return this.k;
    }

    @Override // okio.Sink
    public final void l0(long j, Buffer buffer) {
        SegmentedByteString.b(buffer.k, 0L, j);
        while (j > 0) {
            this.k.f();
            Segment segment = buffer.j;
            segment.getClass();
            int min = (int) Math.min(j, segment.c - segment.b);
            this.j.write(segment.a, segment.b, min);
            int i = segment.b + min;
            segment.b = i;
            long j2 = min;
            j -= j2;
            buffer.k -= j2;
            if (i == segment.c) {
                buffer.j = segment.a();
                SegmentPool.a(segment);
            }
        }
    }

    public final String toString() {
        return "sink(" + this.j + ')';
    }
}
