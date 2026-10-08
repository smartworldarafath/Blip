package coil3.fetch;

import android.graphics.Bitmap;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.VectorDrawable;
import coil3.ExtrasKt;
import coil3.Image_androidKt;
import coil3.RealImageLoader;
import coil3.decode.DataSource;
import coil3.fetch.Fetcher;
import coil3.request.ImageRequestsKt;
import coil3.request.ImageRequests_androidKt;
import coil3.request.Options;
import coil3.size.Precision;
import coil3.size.Scale;
import coil3.size.Size;
import coil3.util.DrawableUtils;
import coil3.util.Utils_androidKt;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DrawableFetcher implements Fetcher {
    public final Drawable a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Drawable> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            return new DrawableFetcher((Drawable) obj, options);
        }
    }

    public DrawableFetcher(Drawable drawable, Options options) {
        this.a = drawable;
        this.b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        boolean z;
        Bitmap.Config[] configArr = Utils_androidKt.a;
        Drawable drawable = this.a;
        boolean z2 = drawable instanceof VectorDrawable;
        if (z2) {
            Options options = this.b;
            Bitmap.Config a = ImageRequests_androidKt.a(options);
            Size size = options.b;
            Scale scale = options.c;
            Size size2 = (Size) ExtrasKt.b(options, ImageRequestsKt.b);
            if (options.d == Precision.k) {
                z = true;
            } else {
                z = false;
            }
            drawable = new BitmapDrawable(options.a.getResources(), DrawableUtils.a(drawable, a, size, scale, size2, z));
        }
        return new ImageFetchResult(Image_androidKt.b(drawable), z2, DataSource.k);
    }
}
