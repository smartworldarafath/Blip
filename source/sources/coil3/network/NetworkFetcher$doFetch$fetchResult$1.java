package coil3.network;

import coil3.decode.DataSource;
import coil3.decode.FileImageSource;
import coil3.decode.SourceImageSource;
import coil3.disk.DiskCache;
import coil3.fetch.SourceFetchResult;
import coil3.network.internal.UtilsKt;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import okio.Buffer;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.network.NetworkFetcher$doFetch$fetchResult$1", f = "NetworkFetcher.kt", l = {110, 124}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class NetworkFetcher$doFetch$fetchResult$1 extends SuspendLambda implements Function2<NetworkResponse, Continuation<? super SourceFetchResult>, Object> {
    public Ref$ObjectRef n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Ref$ObjectRef q;
    public final /* synthetic */ NetworkFetcher r;
    public final /* synthetic */ Ref$ObjectRef s;
    public final /* synthetic */ NetworkRequest t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkFetcher$doFetch$fetchResult$1(Ref$ObjectRef ref$ObjectRef, NetworkFetcher networkFetcher, Ref$ObjectRef ref$ObjectRef2, NetworkRequest networkRequest, Continuation continuation) {
        super(2, continuation);
        this.q = ref$ObjectRef;
        this.r = networkFetcher;
        this.s = ref$ObjectRef2;
        this.t = networkRequest;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NetworkFetcher$doFetch$fetchResult$1) s((NetworkResponse) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NetworkFetcher$doFetch$fetchResult$1 networkFetcher$doFetch$fetchResult$1 = new NetworkFetcher$doFetch$fetchResult$1(this.q, this.r, this.s, this.t, continuation);
        networkFetcher$doFetch$fetchResult$1.p = obj;
        return networkFetcher$doFetch$fetchResult$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x008a, code lost:
    
        if (r10 == r1) goto L27;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        NetworkHeaders networkHeaders;
        NetworkResponse networkResponse = (NetworkResponse) this.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        String str = null;
        Ref$ObjectRef ref$ObjectRef2 = this.s;
        Ref$ObjectRef ref$ObjectRef3 = this.q;
        NetworkFetcher networkFetcher = this.r;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    Buffer buffer = (Buffer) obj;
                    if (buffer.k <= 0) {
                        return null;
                    }
                    return new SourceFetchResult(new SourceImageSource(buffer, networkFetcher.e(), null), NetworkFetcher.f(networkFetcher.a, networkResponse.d.a()), DataSource.m);
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ref$ObjectRef = this.n;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            DiskCache.Snapshot snapshot = (DiskCache.Snapshot) ref$ObjectRef3.j;
            NetworkResponse networkResponse2 = (NetworkResponse) ref$ObjectRef2.j;
            this.p = networkResponse;
            this.n = ref$ObjectRef3;
            this.o = 1;
            obj = NetworkFetcher.d(networkFetcher, snapshot, networkResponse2, networkResponse, this);
            if (obj != coroutineSingletons) {
                ref$ObjectRef = ref$ObjectRef3;
            }
            return coroutineSingletons;
        }
        ref$ObjectRef.j = obj;
        networkFetcher.getClass();
        NetworkFetcher.h(networkResponse);
        Object obj2 = ref$ObjectRef3.j;
        if (obj2 != null) {
            ref$ObjectRef2.j = networkFetcher.j((DiskCache.Snapshot) obj2);
            Object obj3 = ref$ObjectRef3.j;
            obj3.getClass();
            FileImageSource i2 = networkFetcher.i((DiskCache.Snapshot) obj3);
            String str2 = networkFetcher.a;
            NetworkResponse networkResponse3 = (NetworkResponse) ref$ObjectRef2.j;
            if (networkResponse3 != null && (networkHeaders = networkResponse3.d) != null) {
                str = networkHeaders.a();
            }
            return new SourceFetchResult(i2, NetworkFetcher.f(str2, str), DataSource.m);
        }
        NetworkResponseBody networkResponseBody = networkResponse.e;
        if (networkResponseBody != null) {
            this.p = networkResponse;
            this.n = null;
            this.o = 2;
            obj = UtilsKt.a(networkResponseBody, this);
        } else {
            u2.l("body == null");
            return null;
        }
    }
}
