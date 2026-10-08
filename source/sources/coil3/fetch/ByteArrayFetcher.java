package coil3.fetch;

import coil3.RealImageLoader;
import coil3.decode.DataSource;
import coil3.decode.SourceImageSource;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ByteArrayFetcher implements Fetcher {
    public final byte[] a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<byte[]> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            return new ByteArrayFetcher((byte[]) obj, options);
        }
    }

    public ByteArrayFetcher(byte[] bArr, Options options) {
        this.a = bArr;
        this.b = options;
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [okio.BufferedSource, okio.Buffer, java.lang.Object] */
    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        ?? obj = new Object();
        byte[] bArr = this.a;
        bArr.getClass();
        obj.X(bArr.length, bArr);
        return new SourceFetchResult(new SourceImageSource(obj, this.b.f, null), null, DataSource.k);
    }
}
