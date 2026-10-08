package okio;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ForwardingSource implements Source {
    public final Source j;

    public ForwardingSource(Source source) {
        source.getClass();
        this.j = source;
    }

    @Override // okio.Source
    public long J0(long j, Buffer buffer) {
        buffer.getClass();
        return this.j.J0(j, buffer);
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        this.j.close();
    }

    @Override // okio.Source
    public final Timeout i() {
        return this.j.i();
    }

    public final String toString() {
        return getClass().getSimpleName() + '(' + this.j + ')';
    }
}
