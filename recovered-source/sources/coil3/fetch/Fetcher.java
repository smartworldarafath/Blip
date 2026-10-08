package coil3.fetch;

import coil3.RealImageLoader;
import coil3.request.Options;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Fetcher {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Factory<T> {
        Fetcher a(Object obj, Options options, RealImageLoader realImageLoader);
    }

    Object a(Continuation continuation);
}
