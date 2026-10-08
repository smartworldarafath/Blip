package coil3.util;

import coil3.fetch.Fetcher;
import kotlin.jvm.internal.ClassReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface FetcherServiceLoaderTarget<T> {
    Fetcher.Factory a();

    default int b() {
        return 0;
    }

    ClassReference type();
}
