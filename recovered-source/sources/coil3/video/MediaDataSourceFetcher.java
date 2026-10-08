package coil3.video;

import android.media.MediaDataSource;
import coil3.RealImageLoader;
import coil3.decode.DataSource;
import coil3.decode.ImageSource;
import coil3.decode.SourceImageSource;
import coil3.fetch.Fetcher;
import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.Continuation;
import okio.Buffer;
import okio.RealBufferedSource;
import okio.Source;
import okio.Timeout;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaDataSourceFetcher implements Fetcher {
    public final MediaDataSource a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<MediaDataSource> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            return new MediaDataSourceFetcher((MediaDataSource) obj, options);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaDataSourceOkioSource implements Source {
        public final MediaDataSource j;
        public final long k;
        public long l;

        public MediaDataSourceOkioSource(MediaDataSource mediaDataSource) {
            this.j = mediaDataSource;
            this.k = mediaDataSource.getSize();
        }

        @Override // okio.Source
        public final long J0(long j, Buffer buffer) {
            long j2 = this.l;
            long j3 = this.k;
            if (j2 >= j3) {
                return -1L;
            }
            int min = (int) Math.min(j, j3 - j2);
            byte[] bArr = new byte[min];
            int readAt = this.j.readAt(this.l, bArr, 0, min);
            long j4 = readAt;
            this.l += j4;
            buffer.X(readAt, bArr);
            return j4;
        }

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            this.j.close();
        }

        @Override // okio.Source
        public final Timeout i() {
            return Timeout.d;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MediaSourceMetadata extends ImageSource.Metadata {
        public final MediaDataSource a;

        public MediaSourceMetadata(MediaDataSource mediaDataSource) {
            this.a = mediaDataSource;
        }
    }

    public MediaDataSourceFetcher(MediaDataSource mediaDataSource, Options options) {
        this.a = mediaDataSource;
        this.b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        MediaDataSource mediaDataSource = this.a;
        return new SourceFetchResult(new SourceImageSource(new RealBufferedSource(new MediaDataSourceOkioSource(mediaDataSource)), this.b.f, new MediaSourceMetadata(mediaDataSource)), null, DataSource.l);
    }
}
