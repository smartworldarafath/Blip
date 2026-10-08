package androidx.room;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.TriggerBasedInvalidationTracker$refreshInvalidationAsync$3", f = "InvalidationTracker.kt", l = {389}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class TriggerBasedInvalidationTracker$refreshInvalidationAsync$3 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ TriggerBasedInvalidationTracker o;
    public final /* synthetic */ Function0 p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(TriggerBasedInvalidationTracker triggerBasedInvalidationTracker, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.o = triggerBasedInvalidationTracker;
        this.p = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TriggerBasedInvalidationTracker$refreshInvalidationAsync$3) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new TriggerBasedInvalidationTracker$refreshInvalidationAsync$3(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Function0 function0 = this.p;
        try {
            if (i != 0) {
                if (i == 1) {
                    ResultKt.b(obj);
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                TriggerBasedInvalidationTracker triggerBasedInvalidationTracker = this.o;
                this.n = 1;
                obj = TriggerBasedInvalidationTracker.b(triggerBasedInvalidationTracker, this);
                if (obj == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            function0.a();
            return Unit.a;
        } catch (Throwable th) {
            function0.a();
            throw th;
        }
    }
}
