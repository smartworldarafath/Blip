package coil3.network;

import coil3.decode.DataSource;
import coil3.decode.ImageSource;
import coil3.fetch.SourceFetchResult;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.network.NetworkFetcher$doFetch$2", f = "NetworkFetcher.kt", l = {141}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class NetworkFetcher$doFetch$2 extends SuspendLambda implements Function2<NetworkResponse, Continuation<? super SourceFetchResult>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ NetworkFetcher p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$doFetch$2(NetworkFetcher networkFetcher, Continuation continuation) {
        super(2, continuation);
        this.p = networkFetcher;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NetworkFetcher$doFetch$2) s((NetworkResponse) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NetworkFetcher$doFetch$2 networkFetcher$doFetch$2 = new NetworkFetcher$doFetch$2(this.p, continuation);
        networkFetcher$doFetch$2.o = obj;
        return networkFetcher$doFetch$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        NetworkResponse networkResponse = (NetworkResponse) this.o;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        NetworkFetcher networkFetcher = this.p;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            NetworkResponseBody networkResponseBody = networkResponse.e;
            if (networkResponseBody != null) {
                this.o = networkResponse;
                this.n = 1;
                obj = NetworkFetcher.c(networkFetcher, networkResponseBody, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            } else {
                u2.l("body == null");
                return null;
            }
        }
        return new SourceFetchResult((ImageSource) obj, NetworkFetcher.f(networkFetcher.a, networkResponse.d.a()), DataSource.m);
    }
}
