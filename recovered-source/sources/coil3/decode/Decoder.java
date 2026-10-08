package coil3.decode;

import coil3.fetch.SourceFetchResult;
import coil3.request.Options;
import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface Decoder {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface Factory {
        Decoder a(SourceFetchResult sourceFetchResult, Options options);
    }

    Object a(Continuation continuation);
}
