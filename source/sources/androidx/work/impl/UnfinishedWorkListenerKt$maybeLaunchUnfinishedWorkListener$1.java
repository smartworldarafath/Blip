package androidx.work.impl;

import androidx.work.Logger;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;
import kotlinx.coroutines.DelayKt;
import kotlinx.coroutines.flow.FlowCollector;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1", f = "UnfinishedWorkListener.kt", l = {59}, m = "invokeSuspend")
/* loaded from: classes.dex */
public final class UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1 extends SuspendLambda implements Function4<FlowCollector<? super Boolean>, Throwable, Long, Continuation<? super Boolean>, Object> {
    public int n;
    public /* synthetic */ Throwable o;
    public /* synthetic */ long p;

    /* JADX WARN: Type inference failed for: r4v2, types: [androidx.work.impl.UnfinishedWorkListenerKt$maybeLaunchUnfinishedWorkListener$1, kotlin.coroutines.jvm.internal.SuspendLambda] */
    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        long longValue = ((Number) obj3).longValue();
        ?? suspendLambda = new SuspendLambda(4, (Continuation) obj4);
        suspendLambda.o = (Throwable) obj2;
        suspendLambda.p = longValue;
        return suspendLambda.v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
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
            Throwable th = this.o;
            long j = this.p;
            Logger.d().c(UnfinishedWorkListenerKt.a, "Cannot check for unfinished work", th);
            long min = Math.min(j * 30000, UnfinishedWorkListenerKt.b);
            this.n = 1;
            if (DelayKt.b(min, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Boolean.TRUE;
    }
}
