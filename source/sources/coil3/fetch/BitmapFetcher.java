package coil3.fetch;

import android.graphics.Bitmap;
import coil3.BitmapImage;
import coil3.RealImageLoader;
import coil3.decode.DataSource;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BitmapFetcher implements Fetcher {
    public final Bitmap a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Bitmap> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            return new BitmapFetcher((Bitmap) obj);
        }
    }

    public BitmapFetcher(Bitmap bitmap) {
        this.a = bitmap;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        return new ImageFetchResult(new BitmapImage(this.a), false, DataSource.k);
    }
}
