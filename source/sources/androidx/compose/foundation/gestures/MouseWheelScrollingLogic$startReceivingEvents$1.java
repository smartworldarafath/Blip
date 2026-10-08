package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.MouseWheelScrollingLogic;
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
@DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$startReceivingEvents$1", f = "MouseWheelScrollingLogic.kt", l = {109, 112}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class MouseWheelScrollingLogic$startReceivingEvents$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ MouseWheelScrollingLogic p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollingLogic$startReceivingEvents$1(MouseWheelScrollingLogic mouseWheelScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.p = mouseWheelScrollingLogic;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MouseWheelScrollingLogic$startReceivingEvents$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        MouseWheelScrollingLogic$startReceivingEvents$1 mouseWheelScrollingLogic$startReceivingEvents$1 = new MouseWheelScrollingLogic$startReceivingEvents$1(this.p, continuation);
        mouseWheelScrollingLogic$startReceivingEvents$1.o = obj;
        return mouseWheelScrollingLogic$startReceivingEvents$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0069, code lost:
    
        if (androidx.compose.foundation.gestures.MouseWheelScrollingLogic.c(r5, r6, r7, r8, r9, r10) != r0) goto L9;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x003b A[Catch: all -> 0x0019, TryCatch #0 {all -> 0x0019, blocks: (B:7:0x0013, B:11:0x0031, B:13:0x003b, B:19:0x004b, B:27:0x0026), top: B:2:0x0009 }] */
    /* JADX WARN: Removed duplicated region for block: B:21:0x006e  */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:20:0x0069 -> B:9:0x0017). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineScope coroutineScope;
        CoroutineScope coroutineScope2;
        MouseWheelScrollingLogic$startReceivingEvents$1 mouseWheelScrollingLogic$startReceivingEvents$1;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.p;
        try {
            if (i != 0) {
                if (i != 1) {
                    if (i == 2) {
                        coroutineScope2 = (CoroutineScope) this.o;
                        ResultKt.b(obj);
                        mouseWheelScrollingLogic$startReceivingEvents$1 = this;
                        coroutineScope = coroutineScope2;
                        this = mouseWheelScrollingLogic$startReceivingEvents$1;
                        if (!JobKt.f(coroutineScope.getCoroutineContext())) {
                            BufferedChannel bufferedChannel = mouseWheelScrollingLogic.g;
                            this.o = coroutineScope;
                            this.n = 1;
                            Object i2 = bufferedChannel.i(this);
                            if (i2 != coroutineSingletons) {
                                coroutineScope2 = coroutineScope;
                                obj = i2;
                                MouseWheelScrollingLogic.MouseWheelScrollDelta mouseWheelScrollDelta = (MouseWheelScrollingLogic.MouseWheelScrollDelta) obj;
                                float i0 = mouseWheelScrollingLogic.c.i0(6.0f);
                                float i02 = mouseWheelScrollingLogic.c.i0(1.0f);
                                ScrollingLogic scrollingLogic = mouseWheelScrollingLogic.a;
                                this.o = coroutineScope2;
                                this.n = 2;
                                mouseWheelScrollingLogic$startReceivingEvents$1 = this;
                            } else {
                                return coroutineSingletons;
                            }
                        } else {
                            mouseWheelScrollingLogic.h = null;
                            return Unit.a;
                        }
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    coroutineScope2 = (CoroutineScope) this.o;
                    ResultKt.b(obj);
                    MouseWheelScrollingLogic.MouseWheelScrollDelta mouseWheelScrollDelta2 = (MouseWheelScrollingLogic.MouseWheelScrollDelta) obj;
                    float i03 = mouseWheelScrollingLogic.c.i0(6.0f);
                    float i022 = mouseWheelScrollingLogic.c.i0(1.0f);
                    ScrollingLogic scrollingLogic2 = mouseWheelScrollingLogic.a;
                    this.o = coroutineScope2;
                    this.n = 2;
                    mouseWheelScrollingLogic$startReceivingEvents$1 = this;
                }
            } else {
                ResultKt.b(obj);
                coroutineScope = (CoroutineScope) this.o;
                if (!JobKt.f(coroutineScope.getCoroutineContext())) {
                }
            }
        } catch (Throwable th) {
            mouseWheelScrollingLogic.h = null;
            throw th;
        }
    }
}
