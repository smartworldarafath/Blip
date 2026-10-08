package okio;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingSink implements Sink {
    public final Sink j;

    public ForwardingSink(Sink sink) {
        sink.getClass();
        this.j = sink;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.j.close();
    }

    @Override // okio.Sink, java.io.Flushable
    public void flush() {
        this.j.flush();
    }

    @Override // okio.Sink
    public final Timeout i() {
        return this.j.i();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.j + ')';
    }
}
