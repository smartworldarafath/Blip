package coil3.network.okhttp.internal;

import coil3.network.NetworkClient;
import coil3.network.NetworkRequest;
import defpackage.u2;
import java.io.Closeable;
import java.util.Iterator;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.io.CloseableKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.CancellableContinuationImpl;
import okhttp3.Call;
import okhttp3.Dispatcher;
import okhttp3.OkHttpClient;
import okhttp3.Request;
import okhttp3.Response;
import okhttp3.internal.connection.RealCall;
import okhttp3.internal.platform.Platform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CallFactoryNetworkClient implements NetworkClient {
    public final OkHttpClient a;

    public /* synthetic */ CallFactoryNetworkClient(OkHttpClient okHttpClient) {
        this.a = okHttpClient;
    }

    /* JADX WARN: Code restructure failed: missing block: B:74:0x005a, code lost:
    
        if (r13 == r1) goto L52;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:33:0x0126  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x004d  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Object a(OkHttpClient okHttpClient, NetworkRequest networkRequest, Function2 function2, ContinuationImpl continuationImpl) {
        CallFactoryNetworkClient$executeRequest$1 callFactoryNetworkClient$executeRequest$1;
        int i;
        Object obj;
        final RealCall realCall;
        RealCall.AsyncCall asyncCall;
        Function2 function22;
        Closeable closeable;
        Throwable th;
        Closeable closeable2;
        if (continuationImpl instanceof CallFactoryNetworkClient$executeRequest$1) {
            CallFactoryNetworkClient$executeRequest$1 callFactoryNetworkClient$executeRequest$12 = (CallFactoryNetworkClient$executeRequest$1) continuationImpl;
            int i2 = callFactoryNetworkClient$executeRequest$12.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                callFactoryNetworkClient$executeRequest$12.p = i2 - Integer.MIN_VALUE;
                callFactoryNetworkClient$executeRequest$1 = callFactoryNetworkClient$executeRequest$12;
                Object obj2 = callFactoryNetworkClient$executeRequest$1.o;
                Object obj3 = CoroutineSingletons.j;
                i = callFactoryNetworkClient$executeRequest$1.p;
                if (i == 0) {
                    if (i != 1) {
                        if (i != 2) {
                            if (i == 3) {
                                closeable2 = (Closeable) callFactoryNetworkClient$executeRequest$1.n;
                                try {
                                    ResultKt.b(obj2);
                                    CloseableKt.a(closeable2, null);
                                    return obj2;
                                } catch (Throwable th2) {
                                    th = th2;
                                    try {
                                        throw th;
                                    } catch (Throwable th3) {
                                        CloseableKt.a(closeable2, th);
                                        throw th3;
                                    }
                                }
                            }
                            u2.l("call to 'resume' before 'invoke' with coroutine");
                            return null;
                        }
                        Function2 function23 = callFactoryNetworkClient$executeRequest$1.m;
                        ResultKt.b(obj2);
                        function22 = function23;
                        closeable = (Closeable) obj2;
                        try {
                            Object a = CallFactoryNetworkClientKt.a((Response) closeable);
                            callFactoryNetworkClient$executeRequest$1.m = null;
                            callFactoryNetworkClient$executeRequest$1.n = closeable;
                            callFactoryNetworkClient$executeRequest$1.p = 3;
                            obj2 = function22.n(a, callFactoryNetworkClient$executeRequest$1);
                            if (obj2 != obj3) {
                                closeable2 = closeable;
                                CloseableKt.a(closeable2, null);
                                return obj2;
                            }
                            return obj3;
                        } catch (Throwable th4) {
                            th = th4;
                            closeable2 = closeable;
                            throw th;
                        }
                    }
                    Object obj4 = (Call.Factory) callFactoryNetworkClient$executeRequest$1.n;
                    function2 = callFactoryNetworkClient$executeRequest$1.m;
                    ResultKt.b(obj2);
                    obj = obj4;
                } else {
                    ResultKt.b(obj2);
                    callFactoryNetworkClient$executeRequest$1.m = function2;
                    callFactoryNetworkClient$executeRequest$1.n = okHttpClient;
                    callFactoryNetworkClient$executeRequest$1.p = 1;
                    obj2 = CallFactoryNetworkClientKt.b(networkRequest, callFactoryNetworkClient$executeRequest$1);
                    obj = okHttpClient;
                }
                Request request = (Request) obj2;
                OkHttpClient okHttpClient2 = (OkHttpClient) obj;
                okHttpClient2.getClass();
                request.getClass();
                realCall = new RealCall(okHttpClient2, request);
                callFactoryNetworkClient$executeRequest$1.m = function2;
                callFactoryNetworkClient$executeRequest$1.n = null;
                callFactoryNetworkClient$executeRequest$1.p = 2;
                CancellableContinuationImpl cancellableContinuationImpl = new CancellableContinuationImpl(1, IntrinsicsKt.b(callFactoryNetworkClient$executeRequest$1));
                cancellableContinuationImpl.v();
                cancellableContinuationImpl.x(new Function1<Throwable, Unit>() { // from class: coil3.network.okhttp.internal.CallsKt$await$2$1
                    @Override // kotlin.jvm.functions.Function1
                    public final Object b(Object obj5) {
                        RealCall.this.d();
                        return Unit.a;
                    }
                });
                CallsKt$await$2$2 callsKt$await$2$2 = new CallsKt$await$2$2(cancellableContinuationImpl);
                if (!realCall.o.compareAndSet(false, true)) {
                    Platform platform = Platform.a;
                    realCall.p = Platform.a.g();
                    realCall.m.getClass();
                    Dispatcher dispatcher = okHttpClient2.j;
                    RealCall.AsyncCall asyncCall2 = new RealCall.AsyncCall(callsKt$await$2$2);
                    dispatcher.getClass();
                    synchronized (dispatcher) {
                        dispatcher.b.add(asyncCall2);
                        String str = request.a.d;
                        Iterator it = dispatcher.c.iterator();
                        while (true) {
                            if (it.hasNext()) {
                                asyncCall = (RealCall.AsyncCall) it.next();
                                if (Intrinsics.a(RealCall.this.k.a.d, str)) {
                                    break;
                                }
                            } else {
                                Iterator it2 = dispatcher.b.iterator();
                                while (true) {
                                    if (it2.hasNext()) {
                                        asyncCall = (RealCall.AsyncCall) it2.next();
                                        if (Intrinsics.a(RealCall.this.k.a.d, str)) {
                                            break;
                                        }
                                    } else {
                                        asyncCall = null;
                                        break;
                                    }
                                }
                            }
                        }
                        if (asyncCall != null) {
                            asyncCall2.k = asyncCall.k;
                        }
                    }
                    dispatcher.b();
                    obj2 = cancellableContinuationImpl.u();
                    CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                    if (obj2 != obj3) {
                        function22 = function2;
                        closeable = (Closeable) obj2;
                        Object a2 = CallFactoryNetworkClientKt.a((Response) closeable);
                        callFactoryNetworkClient$executeRequest$1.m = null;
                        callFactoryNetworkClient$executeRequest$1.n = closeable;
                        callFactoryNetworkClient$executeRequest$1.p = 3;
                        obj2 = function22.n(a2, callFactoryNetworkClient$executeRequest$1);
                        if (obj2 != obj3) {
                        }
                    }
                    return obj3;
                }
                u2.l("Already Executed");
                return null;
            }
        }
        callFactoryNetworkClient$executeRequest$1 = new ContinuationImpl(continuationImpl);
        Object obj22 = callFactoryNetworkClient$executeRequest$1.o;
        Object obj32 = CoroutineSingletons.j;
        i = callFactoryNetworkClient$executeRequest$1.p;
        if (i == 0) {
        }
        Request request2 = (Request) obj22;
        OkHttpClient okHttpClient22 = (OkHttpClient) obj;
        okHttpClient22.getClass();
        request2.getClass();
        realCall = new RealCall(okHttpClient22, request2);
        callFactoryNetworkClient$executeRequest$1.m = function2;
        callFactoryNetworkClient$executeRequest$1.n = null;
        callFactoryNetworkClient$executeRequest$1.p = 2;
        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(1, IntrinsicsKt.b(callFactoryNetworkClient$executeRequest$1));
        cancellableContinuationImpl2.v();
        cancellableContinuationImpl2.x(new Function1<Throwable, Unit>() { // from class: coil3.network.okhttp.internal.CallsKt$await$2$1
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj5) {
                RealCall.this.d();
                return Unit.a;
            }
        });
        CallsKt$await$2$2 callsKt$await$2$22 = new CallsKt$await$2$2(cancellableContinuationImpl2);
        if (!realCall.o.compareAndSet(false, true)) {
        }
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof CallFactoryNetworkClient)) {
            return false;
        }
        if (this.a != ((CallFactoryNetworkClient) obj).a) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "CallFactoryNetworkClient(callFactory=" + this.a + ")";
    }
}
