package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.TrackpadScrollingLogic;
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

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.TrackpadScrollingLogic$startReceivingEvents$1", f = "TrackpadScrollingLogic.kt", l = {95, 95}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class TrackpadScrollingLogic$startReceivingEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public TrackpadScrollingLogic n;
    public ScrollingLogic o;
    public int p;
    public /* synthetic */ Object q;
    public final /* synthetic */ TrackpadScrollingLogic r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TrackpadScrollingLogic$startReceivingEvents$1(TrackpadScrollingLogic trackpadScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.r = trackpadScrollingLogic;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((TrackpadScrollingLogic$startReceivingEvents$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        TrackpadScrollingLogic$startReceivingEvents$1 trackpadScrollingLogic$startReceivingEvents$1 = new TrackpadScrollingLogic$startReceivingEvents$1(this.r, continuation);
        trackpadScrollingLogic$startReceivingEvents$1.q = obj;
        return trackpadScrollingLogic$startReceivingEvents$1;
    }

    /* JADX WARN: Removed duplicated region for block: B:19:0x0064  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:19:0x0064 -> B:9:0x0033). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineScope coroutineScope;
        CoroutineScope coroutineScope2;
        TrackpadScrollingLogic trackpadScrollingLogic;
        ScrollingLogic scrollingLogic;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.p;
        TrackpadScrollingLogic trackpadScrollingLogic2 = this.r;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        CoroutineScope coroutineScope3 = (CoroutineScope) this.q;
                        ResultKt.b(obj);
                        coroutineScope = coroutineScope3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    scrollingLogic = this.o;
                    trackpadScrollingLogic = this.n;
                    coroutineScope2 = (CoroutineScope) this.q;
                    ResultKt.b(obj);
                    this.q = coroutineScope2;
                    this.n = null;
                    this.o = null;
                    this.p = 2;
                    if (TrackpadScrollingLogic.c(trackpadScrollingLogic, scrollingLogic, (TrackpadScrollingLogic.TrackpadScrollDelta) obj, this) != coroutineSingletons) {
                        coroutineScope = coroutineScope2;
                    }
                    return coroutineSingletons;
                }
            } else {
                ResultKt.b(obj);
                coroutineScope = (CoroutineScope) this.q;
            }
            if (JobKt.f(coroutineScope.getCoroutineContext())) {
                scrollingLogic = trackpadScrollingLogic2.a;
                BufferedChannel bufferedChannel = trackpadScrollingLogic2.f;
                this.q = coroutineScope;
                this.n = trackpadScrollingLogic2;
                this.o = scrollingLogic;
                this.p = 1;
                Object i2 = bufferedChannel.i(this);
                if (i2 != coroutineSingletons) {
                    coroutineScope2 = coroutineScope;
                    obj = i2;
                    trackpadScrollingLogic = trackpadScrollingLogic2;
                    this.q = coroutineScope2;
                    this.n = null;
                    this.o = null;
                    this.p = 2;
                    if (TrackpadScrollingLogic.c(trackpadScrollingLogic, scrollingLogic, (TrackpadScrollingLogic.TrackpadScrollDelta) obj, this) != coroutineSingletons) {
                    }
                    return coroutineSingletons;
                }
                return coroutineSingletons;
            }
            trackpadScrollingLogic2.g = null;
            return Unit.a;
        } catch (Throwable th) {
            trackpadScrollingLogic2.g = null;
            throw th;
        }
    }
}
