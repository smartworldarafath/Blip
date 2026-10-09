package androidx.compose.foundation.pager;

import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerKt$pagerSemantics$performForwardPaging$1", f = "Pager.kt", l = {569}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class PagerKt$pagerSemantics$performForwardPaging$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ PagerState o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerKt$pagerSemantics$performForwardPaging$1(PagerState pagerState, Continuation continuation) {
        super(2, continuation);
        this.o = pagerState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PagerKt$pagerSemantics$performForwardPaging$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PagerKt$pagerSemantics$performForwardPaging$1(this.o, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:11:0x002c, code lost:
    
        r5 = r6.f(r6.d.a() + 1, androidx.compose.animation.core.AnimationSpecKt.b(0.0f, 0.0f, null, 7), r5);
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        Object obj2;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return unit;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        this.n = 1;
        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.a;
        PagerState pagerState = this.o;
        if (pagerState.d.a() + 1 >= pagerState.l() || obj2 != coroutineSingletons) {
            obj2 = unit;
        }
        if (obj2 == coroutineSingletons) {
            return coroutineSingletons;
        }
        return unit;
    }
}
