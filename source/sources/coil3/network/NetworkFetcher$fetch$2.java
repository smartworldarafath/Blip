package coil3.network;

import coil3.fetch.FetchResult;
import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class NetworkFetcher$fetch$2 extends FunctionReferenceImpl implements Function1<Continuation<? super FetchResult>, Object> {
    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        return NetworkFetcher.b((NetworkFetcher) this.k, (Continuation) obj);
    }
}
