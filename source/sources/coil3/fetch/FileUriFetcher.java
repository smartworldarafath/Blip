package coil3.fetch;

import android.graphics.Bitmap;
import coil3.RealImageLoader;
import coil3.Uri;
import coil3.UriKt;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import coil3.util.Utils_androidKt;
import defpackage.u2;
import kotlin.collections.CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.Path;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FileUriFetcher implements Fetcher {
    public final Uri a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            String str = uri.c;
            if ((str == null || str.equals("file")) && uri.e != null) {
                Bitmap.Config[] configArr = Utils_androidKt.a;
                if (!Intrinsics.a(uri.c, "file") || !Intrinsics.a(CollectionsKt.t(UriKt.c(uri)), "android_asset")) {
                    return new FileUriFetcher(uri, options);
                }
                return null;
            }
            return null;
        }
    }

    public FileUriFetcher(Uri uri, Options options) {
        this.a = uri;
        this.b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        String str = Path.k;
        String b = UriKt.b(this.a);
        if (b != null) {
            Path a = Path.Companion.a(b);
            return new SourceFetchResult(ImageSourceKt.a(a, this.b.f, null, null, 28), MimeTypeMap.a(StringsKt.M(a.b(), '.', "")), DataSource.l);
        }
        u2.l("filePath == null");
        return null;
    }
}
