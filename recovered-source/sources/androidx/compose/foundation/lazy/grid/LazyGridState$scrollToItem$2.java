package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.lazy.layout.CacheWindowLogic;
import androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimator;
import androidx.compose.ui.layout.Remeasurement;
import androidx.compose.ui.node.LayoutNode;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.lazy.grid.LazyGridState$scrollToItem$2", f = "LazyGridState.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class LazyGridState$scrollToItem$2 extends SuspendLambda implements Function2<ScrollScope, Continuation<? super Unit>, Object> {
    public final /* synthetic */ LazyGridState n;
    public final /* synthetic */ int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyGridState$scrollToItem$2(LazyGridState lazyGridState, int i, Continuation continuation) {
        super(2, continuation);
        this.n = lazyGridState;
        this.o = i;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        LazyGridState$scrollToItem$2 lazyGridState$scrollToItem$2 = (LazyGridState$scrollToItem$2) s((ScrollScope) obj, (Continuation) obj2);
        Unit unit = Unit.a;
        lazyGridState$scrollToItem$2.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new LazyGridState$scrollToItem$2(this.n, this.o, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CacheWindowLogic cacheWindowLogic;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        LazyGridState lazyGridState = this.n;
        LazyGridScrollPosition lazyGridScrollPosition = lazyGridState.d;
        int a = lazyGridScrollPosition.a();
        int i = this.o;
        if (a != i || lazyGridScrollPosition.b() != 0) {
            LazyLayoutItemAnimator lazyLayoutItemAnimator = lazyGridState.m;
            lazyLayoutItemAnimator.e();
            lazyLayoutItemAnimator.b = null;
            lazyLayoutItemAnimator.c = -1;
            Object obj2 = lazyGridState.a;
            if (obj2 instanceof CacheWindowLogic) {
                cacheWindowLogic = (CacheWindowLogic) obj2;
            } else {
                cacheWindowLogic = null;
            }
            if (cacheWindowLogic != null) {
                cacheWindowLogic.f();
            }
        }
        lazyGridScrollPosition.c(i, 0);
        lazyGridScrollPosition.d = null;
        Remeasurement remeasurement = lazyGridState.j;
        if (remeasurement != null) {
            ((LayoutNode) remeasurement).k();
        }
        return Unit.a;
    }
}
