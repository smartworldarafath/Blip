package coil3.network;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import okio.Buffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {273}, m = "toImageSource", v = 1)
/* loaded from: classes.dex */
public final class NetworkFetcher$toImageSource$1 extends ContinuationImpl {
    public Buffer m;
    public /* synthetic */ Object n;
    public final /* synthetic */ NetworkFetcher o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$toImageSource$1(NetworkFetcher networkFetcher, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = networkFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return NetworkFetcher.c(this.o, null, this);
    }
}
