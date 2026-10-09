package androidx.compose.foundation.lazy.layout;

import androidx.compose.animation.core.Animatable;
import androidx.compose.animation.core.FiniteAnimationSpec;
import androidx.compose.animation.core.SpringSpec;
import androidx.compose.ui.unit.IntOffset;
import defpackage.ti;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.lazy.layout.LazyLayoutItemAnimation$animatePlacementDelta$1", f = "LazyLayoutItemAnimation.kt", l = {140, 147}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class LazyLayoutItemAnimation$animatePlacementDelta$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public FiniteAnimationSpec n;
    public int o;
    public final /* synthetic */ LazyLayoutItemAnimation p;
    public final /* synthetic */ FiniteAnimationSpec q;
    public final /* synthetic */ long r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyLayoutItemAnimation$animatePlacementDelta$1(LazyLayoutItemAnimation lazyLayoutItemAnimation, FiniteAnimationSpec finiteAnimationSpec, long j, Continuation continuation) {
        super(2, continuation);
        this.p = lazyLayoutItemAnimation;
        this.q = finiteAnimationSpec;
        this.r = j;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((LazyLayoutItemAnimation$animatePlacementDelta$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new LazyLayoutItemAnimation$animatePlacementDelta$1(this.p, this.q, this.r, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:18:0x0075, code lost:
    
        if (androidx.compose.animation.core.Animatable.d(r8, r9, r3, r11, r14, 4) != r2) goto L30;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        FiniteAnimationSpec finiteAnimationSpec;
        LazyLayoutItemAnimation lazyLayoutItemAnimation = this.p;
        Animatable animatable = lazyLayoutItemAnimation.n;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        long j = this.r;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    ResultKt.b(obj);
                    lazyLayoutItemAnimation.e(false);
                    lazyLayoutItemAnimation.e = false;
                    return Unit.a;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            finiteAnimationSpec = this.n;
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            boolean g = animatable.g();
            finiteAnimationSpec = this.q;
            if (g) {
                if (finiteAnimationSpec instanceof SpringSpec) {
                    finiteAnimationSpec = (SpringSpec) finiteAnimationSpec;
                } else {
                    finiteAnimationSpec = LazyLayoutItemAnimationKt.a;
                }
            }
            if (!animatable.g()) {
                IntOffset intOffset = new IntOffset(j);
                this.n = finiteAnimationSpec;
                this.o = 1;
                if (animatable.h(intOffset, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
            long b = IntOffset.b(((IntOffset) animatable.f()).a, j);
            Animatable animatable2 = lazyLayoutItemAnimation.n;
            IntOffset intOffset2 = new IntOffset(b);
            ti tiVar = new ti(lazyLayoutItemAnimation, b);
            this.n = null;
            this.o = 2;
        }
        lazyLayoutItemAnimation.c.a();
        long b2 = IntOffset.b(((IntOffset) animatable.f()).a, j);
        Animatable animatable22 = lazyLayoutItemAnimation.n;
        IntOffset intOffset22 = new IntOffset(b2);
        ti tiVar2 = new ti(lazyLayoutItemAnimation, b2);
        this.n = null;
        this.o = 2;
    }
}
