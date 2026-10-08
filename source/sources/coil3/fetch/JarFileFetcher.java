package coil3.fetch;

import coil3.RealImageLoader;
import coil3.Uri;
import coil3.decode.DataSource;
import coil3.decode.ImageSourceKt;
import coil3.fetch.Fetcher;
import coil3.request.Options;
import coil3.util.MimeTypeMap;
import defpackage.ii;
import defpackage.k8;
import kotlin.coroutines.Continuation;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import okio.FileSystem;
import okio.Path;
import okio.internal.ZipFilesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class JarFileFetcher implements Fetcher {
    public final Uri a;
    public final Options b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Factory implements Fetcher.Factory<Uri> {
        @Override // coil3.fetch.Fetcher.Factory
        public final Fetcher a(Object obj, Options options, RealImageLoader realImageLoader) {
            Uri uri = (Uri) obj;
            if (!Intrinsics.a(uri.c, "jar:file")) {
                return null;
            }
            return new JarFileFetcher(uri, options);
        }
    }

    public JarFileFetcher(Uri uri, Options options) {
        this.a = uri;
        this.b = options;
    }

    @Override // coil3.fetch.Fetcher
    public final Object a(Continuation continuation) {
        Uri uri = this.a;
        String str = uri.e;
        if (str == null) {
            str = "";
        }
        int q = StringsKt.q(str, '!', 0, 6);
        if (q != -1) {
            String str2 = Path.k;
            Path a = Path.Companion.a(str.substring(0, q));
            Path a2 = Path.Companion.a(str.substring(q + 1, str.length()));
            FileSystem fileSystem = this.b.f;
            fileSystem.getClass();
            return new SourceFetchResult(ImageSourceKt.a(a2, ZipFilesKt.c(a, fileSystem, new ii(21)), null, null, 28), MimeTypeMap.a(StringsKt.M(a2.b(), '.', "")), DataSource.l);
        }
        k8.s(uri, "Invalid jar:file URI: ");
        return null;
    }
}
