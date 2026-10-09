package kotlinx.coroutines.flow;

import defpackage.u2;
import java.util.NoSuchElementException;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlinx.coroutines.CompletableDeferred;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.JobKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1", f = "Share.kt", l = {337}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class FlowKt__ShareKt$launchSharingDeferred$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public Ref$ObjectRef n;
    public int o;
    public /* synthetic */ Object p;
    public final /* synthetic */ Flow q;
    public final /* synthetic */ CompletableDeferred r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public FlowKt__ShareKt$launchSharingDeferred$1(Flow flow, CompletableDeferred completableDeferred, Continuation continuation) {
        super(2, continuation);
        this.q = flow;
        this.r = completableDeferred;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((FlowKt__ShareKt$launchSharingDeferred$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        FlowKt__ShareKt$launchSharingDeferred$1 flowKt__ShareKt$launchSharingDeferred$1 = new FlowKt__ShareKt$launchSharingDeferred$1(this.q, this.r, continuation);
        flowKt__ShareKt$launchSharingDeferred$1.p = obj;
        return flowKt__ShareKt$launchSharingDeferred$1;
    }

    /* JADX WARN: Type inference failed for: r8v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Ref$ObjectRef ref$ObjectRef;
        final CoroutineScope coroutineScope = (CoroutineScope) this.p;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        final CompletableDeferred completableDeferred = this.r;
        try {
            if (i != 0) {
                if (i == 1) {
                    ref$ObjectRef = this.n;
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                final ?? obj2 = new Object();
                Flow flow = this.q;
                FlowCollector flowCollector = new FlowCollector() { // from class: kotlinx.coroutines.flow.FlowKt__ShareKt$launchSharingDeferred$1.1
                    @Override // kotlinx.coroutines.flow.FlowCollector
                    public final Object r(Object obj3, Continuation continuation) {
                        Ref$ObjectRef ref$ObjectRef2 = Ref$ObjectRef.this;
                        MutableStateFlow mutableStateFlow = (MutableStateFlow) ref$ObjectRef2.j;
                        if (mutableStateFlow != null) {
                            ((StateFlowImpl) mutableStateFlow).setValue(obj3);
                        } else {
                            MutableStateFlow a = StateFlowKt.a(obj3);
                            completableDeferred.E0(new Result(new ReadonlyStateFlow(a, JobKt.d(coroutineScope.getCoroutineContext()))));
                            ref$ObjectRef2.j = a;
                        }
                        return Unit.a;
                    }
                };
                this.p = null;
                this.n = obj2;
                this.o = 1;
                if (flow.a(flowCollector, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
                ref$ObjectRef = obj2;
            }
            if (ref$ObjectRef.j == null) {
                completableDeferred.E0(new Result(new Result.Failure(new NoSuchElementException("Flow is empty"))));
            }
            return Unit.a;
        } catch (Throwable th) {
            completableDeferred.C0(th);
            throw th;
        }
    }
}
