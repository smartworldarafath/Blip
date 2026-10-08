package coil3.disk;

import defpackage.c;
import java.io.IOException;
import okio.Buffer;
import okio.Sink;
import okio.Timeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FaultHidingSink implements Sink {
    public final Sink j;
    public final c k;
    public boolean l;

    public FaultHidingSink(Sink sink, c cVar) {
        this.j = sink;
        this.k = cVar;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        try {
            this.j.close();
        } catch (IOException e) {
            this.l = true;
            this.k.b(e);
        }
    }

    @Override // okio.Sink, java.io.Flushable
    public final void flush() {
        try {
            this.j.flush();
        } catch (IOException e) {
            this.l = true;
            this.k.b(e);
        }
    }

    @Override // okio.Sink
    public final Timeout i() {
        return this.j.i();
    }

    @Override // okio.Sink
    public final void l0(long j, Buffer buffer) {
        if (this.l) {
            buffer.skip(j);
            return;
        }
        try {
            this.j.l0(j, buffer);
        } catch (IOException e) {
            this.l = true;
            this.k.b(e);
        }
    }
}
