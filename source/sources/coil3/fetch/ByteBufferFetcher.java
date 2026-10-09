package coil3.fetch;

import coil3.RealImageLoader;
import coil3.decode.ByteBufferMetadata;
import coil3.decode.DataSource;
import coil3.decode.SourceImageSource;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import java.nio.ByteBuffer;
import kotlin.coroutines.Continuation;
import okio.Buffer;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ByteBufferFetcher implements Fetcher {
    public final ByteBuffer a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<ByteBuffer> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            return new ByteBufferFetcher((ByteBuffer) obj, options);
        }
    }

    public ByteBufferFetcher(ByteBuffer byteBuffer, Options options) {
        this.a = byteBuffer;
        this.b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        final ByteBuffer byteBuffer = this.a;
        return new SourceFetchResult(new SourceImageSource(new RealBufferedSource(new Source(byteBuffer) { // from class: coil3.fetch.ByteBufferFetcherKt$asSource$1
            public final ByteBuffer j;
            public final int k;

            {
                ByteBuffer slice = byteBuffer.slice();
                this.j = slice;
                this.k = slice.capacity();
            }

            @Override // okio.Source
            public final long J0(long j, Buffer buffer) {
                ByteBuffer byteBuffer2 = this.j;
                int position = byteBuffer2.position();
                int i = this.k;
                if (position == i) {
                    return -1L;
                }
                int position2 = (int) (byteBuffer2.position() + j);
                if (position2 <= i) {
                    i = position2;
                }
                byteBuffer2.limit(i);
                return buffer.write(byteBuffer2);
            }

            @Override // okio.Source
            public final Timeout i() {
                return Timeout.d;
            }

            @Override // java.io.Closeable, java.lang.AutoCloseable
            public final void close() {
            }
        }), this.b.f, new ByteBufferMetadata(byteBuffer)), null, DataSource.k);
    }
}
