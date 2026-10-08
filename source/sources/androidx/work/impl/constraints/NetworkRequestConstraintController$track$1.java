package androidx.work.impl.constraints;

import android.net.ConnectivityManager;
import android.net.NetworkCapabilities;
import android.net.NetworkRequest;
import android.os.Build;
import android.util.Log;
import androidx.work.Constraints;
import androidx.work.Logger;
import androidx.work.NetworkType;
import androidx.work.impl.constraints.ConstraintsState;
import defpackage.ec;
import defpackage.s;
import defpackage.u2;
import java.util.LinkedHashMap;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.text.StringsKt;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.channels.ChannelCoroutine;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.channels.ProducerScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.work.impl.constraints.NetworkRequestConstraintController$track$1", f = "WorkConstraintsTracker.kt", l = {191}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class NetworkRequestConstraintController$track$1 extends SuspendLambda implements Function2<ProducerScope<? super ConstraintsState>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Constraints p;
    public final /* synthetic */ NetworkRequestConstraintController q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NetworkRequestConstraintController$track$1(Constraints constraints, NetworkRequestConstraintController networkRequestConstraintController, Continuation continuation) {
        super(2, continuation);
        this.p = constraints;
        this.q = networkRequestConstraintController;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NetworkRequestConstraintController$track$1) s((ProducerScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NetworkRequestConstraintController$track$1 networkRequestConstraintController$track$1 = new NetworkRequestConstraintController$track$1(this.p, this.q, continuation);
        networkRequestConstraintController$track$1.o = obj;
        return networkRequestConstraintController$track$1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Function0 function0;
        Object constraintsNotMet;
        boolean canBeSatisfiedBy;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            ProducerScope producerScope = (ProducerScope) this.o;
            NetworkRequest a = this.p.a();
            int i2 = 0;
            if (a == null) {
                NetworkType networkType = this.p.a;
                networkType.getClass();
                if (networkType == NetworkType.j) {
                    a = null;
                } else {
                    NetworkRequest.Builder removeCapability = new NetworkRequest.Builder().addCapability(12).addCapability(16).removeCapability(15).removeCapability(13);
                    if (Build.VERSION.SDK_INT >= 30 && networkType == NetworkType.o) {
                        a = removeCapability.addCapability(25).build();
                    } else {
                        int ordinal = networkType.ordinal();
                        if (ordinal != 2) {
                            if (ordinal != 3) {
                                if (ordinal == 4) {
                                    removeCapability = removeCapability.addTransportType(0);
                                }
                            } else {
                                removeCapability = removeCapability.addCapability(18);
                            }
                        } else {
                            removeCapability = removeCapability.addCapability(11);
                        }
                        a = removeCapability.build();
                    }
                }
            }
            if (a == null) {
                producerScope.getClass();
                ((ChannelCoroutine) producerScope).m.o(null, false);
                return Unit.a;
            }
            final ec ecVar = new ec(i2, BuildersKt.c(producerScope, null, null, new NetworkRequestConstraintController$track$1$timeoutJob$1(this.q, producerScope, null), 3), producerScope);
            if (Build.VERSION.SDK_INT >= 30) {
                SharedNetworkCallback sharedNetworkCallback = SharedNetworkCallback.a;
                final ConnectivityManager connectivityManager = this.q.a;
                sharedNetworkCallback.getClass();
                synchronized (SharedNetworkCallback.b) {
                    try {
                        LinkedHashMap linkedHashMap = SharedNetworkCallback.c;
                        boolean isEmpty = linkedHashMap.isEmpty();
                        linkedHashMap.put(ecVar, a);
                        if (isEmpty) {
                            Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController register shared callback");
                            connectivityManager.registerDefaultNetworkCallback(sharedNetworkCallback);
                        } else if (SharedNetworkCallback.e && SharedNetworkCallback.f != null) {
                            Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController send initial capabilities");
                            NetworkCapabilities networkCapabilities = SharedNetworkCallback.d;
                            Boolean bool = SharedNetworkCallback.f;
                            bool.getClass();
                            if (!bool.booleanValue()) {
                                canBeSatisfiedBy = a.canBeSatisfiedBy(networkCapabilities);
                                if (canBeSatisfiedBy) {
                                    i2 = 1;
                                }
                            }
                            if (i2 != 0) {
                                constraintsNotMet = ConstraintsState.ConstraintsMet.a;
                            } else {
                                constraintsNotMet = new ConstraintsState.ConstraintsNotMet(7);
                            }
                            ecVar.b(constraintsNotMet);
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
                function0 = new Function0() { // from class: androidx.work.impl.constraints.b
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        ec ecVar2 = ec.this;
                        ConnectivityManager connectivityManager2 = connectivityManager;
                        synchronized (SharedNetworkCallback.b) {
                            LinkedHashMap linkedHashMap2 = SharedNetworkCallback.c;
                            linkedHashMap2.remove(ecVar2);
                            if (linkedHashMap2.isEmpty()) {
                                Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController unregister shared callback");
                                connectivityManager2.unregisterNetworkCallback(SharedNetworkCallback.a);
                                SharedNetworkCallback.f = null;
                                SharedNetworkCallback.d = null;
                                SharedNetworkCallback.e = false;
                            }
                        }
                        return Unit.a;
                    }
                };
            } else {
                int i3 = IndividualNetworkCallback.b;
                final ConnectivityManager connectivityManager2 = this.q.a;
                final IndividualNetworkCallback individualNetworkCallback = new IndividualNetworkCallback(ecVar);
                final ?? obj2 = new Object();
                try {
                    Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController register callback");
                    connectivityManager2.registerNetworkCallback(a, individualNetworkCallback);
                    obj2.j = true;
                } catch (RuntimeException e) {
                    if (StringsKt.l(e.getClass().getName(), "TooManyRequestsException", false)) {
                        Logger d = Logger.d();
                        String str = WorkConstraintsTrackerKt.a;
                        if (((Logger.LogcatLogger) d).c <= 3) {
                            Log.d(str, "NetworkRequestConstraintController couldn't register callback", e);
                        }
                        ecVar.b(new ConstraintsState.ConstraintsNotMet(7));
                    } else {
                        throw e;
                    }
                }
                function0 = new Function0() { // from class: androidx.work.impl.constraints.a
                    @Override // kotlin.jvm.functions.Function0
                    public final Object a() {
                        if (Ref$BooleanRef.this.j) {
                            Logger.d().a(WorkConstraintsTrackerKt.a, "NetworkRequestConstraintController unregister callback");
                            connectivityManager2.unregisterNetworkCallback(individualNetworkCallback);
                        }
                        return Unit.a;
                    }
                };
            }
            s sVar = new s(4, function0);
            this.n = 1;
            if (ProduceKt.a(producerScope, sVar, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
