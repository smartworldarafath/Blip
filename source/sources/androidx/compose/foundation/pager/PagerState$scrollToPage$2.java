package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.ScrollScope;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerState$scrollToPage$2", f = "PagerState.kt", l = {558}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class PagerState$scrollToPage$2 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ PagerState o;
    public final /* synthetic */ int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$scrollToPage$2(PagerState pagerState, int i, Continuation continuation) {
        super(2, continuation);
        this.o = pagerState;
        this.p = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PagerState$scrollToPage$2) s((ScrollScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new PagerState$scrollToPage$2(this.o, this.p, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        PagerState pagerState = this.o;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            this.n = 1;
            if (pagerState.i(this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        pagerState.r(pagerState.j(this.p), 0.0f, true);
        return Unit.a;
    }
}
