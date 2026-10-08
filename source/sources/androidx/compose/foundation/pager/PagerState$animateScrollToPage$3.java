package androidx.compose.foundation.pager;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import defpackage.u2;
import defpackage.zc;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.pager.PagerState$animateScrollToPage$3", f = "PagerState.kt", l = {679}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class PagerState$animateScrollToPage$3 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ PagerState p;
    public final /* synthetic */ int q;
    public final /* synthetic */ float r;
    public final /* synthetic */ AnimationSpec s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PagerState$animateScrollToPage$3(PagerState pagerState, int i, float f, AnimationSpec animationSpec, Continuation continuation) {
        super(2, continuation);
        this.p = pagerState;
        this.q = i;
        this.r = f;
        this.s = animationSpec;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((PagerState$animateScrollToPage$3) s((ScrollScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        PagerState$animateScrollToPage$3 pagerState$animateScrollToPage$3 = new PagerState$animateScrollToPage$3(this.p, this.q, this.r, this.s, continuation);
        pagerState$animateScrollToPage$3.o = obj;
        return pagerState$animateScrollToPage$3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        boolean z;
        int i;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i2 = this.n;
        Unit unit = Unit.a;
        if (i2 != 0) {
            if (i2 == 1) {
                ResultKt.b(obj);
                return unit;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        ScrollScope scrollScope = (ScrollScope) this.o;
        PagerState pagerState = this.p;
        PagerScrollScopeKt$LazyLayoutScrollScope$1 pagerScrollScopeKt$LazyLayoutScrollScope$1 = new PagerScrollScopeKt$LazyLayoutScrollScope$1(scrollScope, pagerState);
        this.n = 1;
        PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.a;
        int i3 = this.q;
        ((SnapshotMutableIntStateImpl) pagerState.q).k(pagerState.j(new Integer(i3).intValue()));
        if (i3 > pagerState.e) {
            z = true;
        } else {
            z = false;
        }
        int b = (pagerScrollScopeKt$LazyLayoutScrollScope$1.b() - pagerState.e) + 1;
        if (((z && i3 > pagerScrollScopeKt$LazyLayoutScrollScope$1.b()) || (!z && i3 < pagerState.e)) && Math.abs(i3 - pagerState.e) >= 3) {
            if (z) {
                i = i3 - b;
                int i4 = pagerState.e;
                if (i < i4) {
                    i = i4;
                }
            } else {
                int i5 = b + i3;
                i = pagerState.e;
                if (i5 <= i) {
                    i = i5;
                }
            }
            pagerScrollScopeKt$LazyLayoutScrollScope$1.c(i, 0);
        }
        Object c = SuspendAnimationKt.c(0.0f, pagerScrollScopeKt$LazyLayoutScrollScope$1.e(i3) + this.r, this.s, new zc(0, new Object(), pagerScrollScopeKt$LazyLayoutScrollScope$1), this, 4);
        if (c != coroutineSingletons) {
            c = unit;
        }
        if (c == coroutineSingletons) {
            return coroutineSingletons;
        }
        return unit;
    }
}
