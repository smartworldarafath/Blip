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
import kotlinx.coroutines.CoroutineScopeKt;
import kotlinx.coroutines.channels.BufferedChannel;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2", f = "MouseWheelScrollingLogic.kt", l = {201}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super MouseWheelScrollingLogic.MouseWheelScrollDelta>, Object> {
    public int n;
    public final /* synthetic */ MouseWheelScrollingLogic o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2(MouseWheelScrollingLogic mouseWheelScrollingLogic, Continuation continuation) {
        super(2, continuation);
        this.o = mouseWheelScrollingLogic;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new MouseWheelScrollingLogic$dispatchMouseWheelScroll$waitNextScrollDelta$2(this.o, continuation);
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
        BufferedChannel bufferedChannel = this.o.g;
        this.n = 1;
        Object c = CoroutineScopeKt.c(new NonTouchScrollingLogicKt$busyReceive$2(bufferedChannel, null), this);
        if (c == coroutineSingletons) {
            return coroutineSingletons;
        }
        return c;
    }
}
