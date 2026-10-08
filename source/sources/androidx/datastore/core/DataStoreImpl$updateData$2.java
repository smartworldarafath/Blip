package androidx.datastore.core;

import androidx.datastore.core.Message;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CompletableDeferredKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.channels.ChannelResult;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl$updateData$2", f = "DataStoreImpl.kt", l = {169}, m = "invokeSuspend")
/* loaded from: classes.dex */
final class DataStoreImpl$updateData$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ DataStoreImpl p;
    public final /* synthetic */ Function2 q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$updateData$2(DataStoreImpl dataStoreImpl, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.p = dataStoreImpl;
        this.q = function2;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((DataStoreImpl$updateData$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        DataStoreImpl$updateData$2 dataStoreImpl$updateData$2 = new DataStoreImpl$updateData$2(this.p, this.q, continuation);
        dataStoreImpl$updateData$2.o = obj;
        return dataStoreImpl$updateData$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        CoroutineScope coroutineScope = (CoroutineScope) this.o;
        CompletableDeferred a = CompletableDeferredKt.a(null);
        DataStoreImpl dataStoreImpl = this.p;
        Message.Update update = new Message.Update(this.q, a, dataStoreImpl.h.a(), coroutineScope.getCoroutineContext());
        SimpleActor simpleActor = dataStoreImpl.l;
        Object j = simpleActor.c.j(update);
        if (j instanceof ChannelResult.Closed) {
            Throwable th = ((ChannelResult.Closed) j).a;
            if (th == null) {
                throw new IllegalStateException("Channel was closed normally");
            }
            throw th;
        }
        if (!(j instanceof ChannelResult.Failed)) {
            if (simpleActor.d.a.getAndIncrement() == 0) {
                BuildersKt.c(simpleActor.a, null, null, new SimpleActor$offer$2(simpleActor, null), 3);
            }
            this.n = 1;
            Object Z = a.Z(this);
            if (Z == coroutineSingletons) {
                return coroutineSingletons;
            }
            return Z;
        }
        u2.l("Check failed.");
        return null;
    }
}
