package coil3.video.internal;

import android.media.MediaDataSource;
import coil3.fetch.Fetcher;
import coil3.util.FetcherServiceLoaderTarget;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MediaDataSourceFetcherServiceLoaderTarget implements FetcherServiceLoaderTarget<MediaDataSource> {
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, coil3.fetch.Fetcher$Factory] */
    @Override // coil3.util.FetcherServiceLoaderTarget
    public final Fetcher.Factory a() {
        return new Object();
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public final ClassReference type() {
        return Reflection.a(MediaDataSource.class);
    }
}
