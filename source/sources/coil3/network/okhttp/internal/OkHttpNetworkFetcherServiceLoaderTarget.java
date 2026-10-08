package coil3.network.okhttp.internal;

import coil3.Uri;
import coil3.fetch.Fetcher;
import coil3.network.NetworkFetcher;
import coil3.util.FetcherServiceLoaderTarget;
import defpackage.x9;
import kotlin.jvm.internal.ClassReference;
import kotlin.jvm.internal.Reflection;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OkHttpNetworkFetcherServiceLoaderTarget implements FetcherServiceLoaderTarget<Uri> {
    @Override // coil3.util.FetcherServiceLoaderTarget
    public final Fetcher.Factory a() {
        return new NetworkFetcher.Factory(new x9(28));
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public final int b() {
        return 2;
    }

    @Override // coil3.util.FetcherServiceLoaderTarget
    public final ClassReference type() {
        return Reflection.a(Uri.class);
    }
}
