package coil3.network;

import coil3.disk.DiskCache;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {184, 199}, m = "writeToDiskCache", v = 1)
/* loaded from: classes.dex */
public final class NetworkFetcher$writeToDiskCache$1 extends ContinuationImpl {
    public DiskCache.Snapshot m;
    public NetworkResponse n;
    public NetworkResponse o;
    public Object p;
    public /* synthetic */ Object q;
    public final /* synthetic */ NetworkFetcher r;
    public int s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$writeToDiskCache$1(NetworkFetcher networkFetcher, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.r = networkFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.q = obj;
        this.s |= Integer.MIN_VALUE;
        return NetworkFetcher.d(this.r, null, null, null, this);
    }
}
