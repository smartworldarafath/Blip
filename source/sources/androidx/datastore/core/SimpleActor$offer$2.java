package androidx.datastore.core;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.SimpleActor$offer$2", f = "SimpleActor.kt", l = {121, 121}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class SimpleActor$offer$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Object n;
    public int o;
    public final /* synthetic */ SimpleActor p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SimpleActor$offer$2(SimpleActor simpleActor, Continuation continuation) {
        super(2, continuation);
        this.p = simpleActor;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SimpleActor$offer$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SimpleActor$offer$2(this.p, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x004e, code lost:
    
        if (r1.n(r7, r6) == r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x0050, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0043, code lost:
    
        if (r7 != r0) goto L15;
     */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:11:0x004e -> B:6:0x0051). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Function2 function2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        SimpleActor simpleActor = this.p;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    if (simpleActor.d.a.decrementAndGet() == 0) {
                        return Unit.a;
                    }
                    JobKt.c(simpleActor.a.getCoroutineContext());
                    function2 = simpleActor.b;
                    BufferedChannel bufferedChannel = simpleActor.c;
                    this.n = function2;
                    this.o = 1;
                    obj = bufferedChannel.i(this);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                function2 = (Function2) this.n;
                ResultKt.b(obj);
                this.n = null;
                this.o = 2;
            }
        } else {
            ResultKt.b(obj);
            if (simpleActor.d.a.get() <= 0) {
                u2.l("Check failed.");
                return null;
            }
            JobKt.c(simpleActor.a.getCoroutineContext());
            function2 = simpleActor.b;
            BufferedChannel bufferedChannel2 = simpleActor.c;
            this.n = function2;
            this.o = 1;
            obj = bufferedChannel2.i(this);
        }
    }
}
