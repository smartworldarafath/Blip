package androidx.compose.foundation.gestures;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.channels.Channel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.NonTouchScrollingLogicKt$busyReceive$2", f = "NonTouchScrollingLogic.kt", l = {80}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class NonTouchScrollingLogicKt$busyReceive$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<Object>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ Channel p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NonTouchScrollingLogicKt$busyReceive$2(Channel channel, Continuation continuation) {
        super(2, continuation);
        this.p = channel;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NonTouchScrollingLogicKt$busyReceive$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NonTouchScrollingLogicKt$busyReceive$2 nonTouchScrollingLogicKt$busyReceive$2 = new NonTouchScrollingLogicKt$busyReceive$2(this.p, continuation);
        nonTouchScrollingLogicKt$busyReceive$2.o = obj;
        return nonTouchScrollingLogicKt$busyReceive$2;
    }

    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        Throwable th;
        Job job;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                job = (Job) this.o;
                try {
                    ResultKt.b(obj);
                } catch (Throwable th2) {
                    th = th2;
                    job.n(null);
                    throw th;
                }
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            Job c = BuildersKt.c((CoroutineScope) this.o, null, null, new SuspendLambda(2, null), 3);
            try {
                Channel channel = this.p;
                this.o = c;
                this.n = 1;
                Object i2 = channel.i(this);
                if (i2 == coroutineSingletons) {
                    return coroutineSingletons;
                }
                obj = i2;
                job = c;
            } catch (Throwable th3) {
                th = th3;
                job = c;
                job.n(null);
                throw th;
            }
        }
        job.n(null);
        return obj;
    }
}
