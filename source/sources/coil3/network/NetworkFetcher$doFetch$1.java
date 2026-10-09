package coil3.network;

import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.network.NetworkFetcher", f = "NetworkFetcher.kt", l = {84, 108, 139}, m = "doFetch", v = 1)
/* loaded from: classes.dex */
public final class NetworkFetcher$doFetch$1 extends ContinuationImpl {
    public Ref$ObjectRef m;
    public Ref$ObjectRef n;
    public /* synthetic */ Object o;
    public final /* synthetic */ NetworkFetcher p;
    public int q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$doFetch$1(NetworkFetcher networkFetcher, Continuation continuation) {
        super(continuation);
        this.p = networkFetcher;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.q |= Integer.MIN_VALUE;
        return NetworkFetcher.b(this.p, this);
    }
}
