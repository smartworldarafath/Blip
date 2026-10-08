package coil3.request;

import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.request.ViewTargetRequestManager$dispose$1", f = "ViewTargetRequestManager.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class ViewTargetRequestManager$dispose$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ ViewTargetRequestManager n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ViewTargetRequestManager$dispose$1(ViewTargetRequestManager viewTargetRequestManager, Continuation continuation) {
        super(2, continuation);
        this.n = viewTargetRequestManager;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        ViewTargetRequestManager$dispose$1 viewTargetRequestManager$dispose$1 = (ViewTargetRequestManager$dispose$1) s((CoroutineScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        viewTargetRequestManager$dispose$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new ViewTargetRequestManager$dispose$1(this.n, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        ViewTargetRequestManager viewTargetRequestManager = this.n;
        ViewTargetRequestDelegate viewTargetRequestDelegate = viewTargetRequestManager.m;
        if (viewTargetRequestDelegate != null) {
            viewTargetRequestDelegate.d();
        }
        viewTargetRequestManager.m = null;
        return Unit.a;
    }
}
