package androidx.navigation.compose;

import androidx.compose.animation.core.AnimationSpecKt;
import androidx.compose.animation.core.SeekableTransitionState;
import androidx.compose.animation.core.Transition;
import androidx.compose.animation.core.TweenSpec;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.navigation.NavBackStackEntry;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.navigation.compose.NavHostKt$NavHost$21$1", f = "NavHost.kt", l = {941, 948}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class NavHostKt$NavHost$21$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ SeekableTransitionState p;
    public final /* synthetic */ NavBackStackEntry q;
    public final /* synthetic */ Transition r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public NavHostKt$NavHost$21$1(SeekableTransitionState seekableTransitionState, NavBackStackEntry navBackStackEntry, Transition transition, Continuation continuation) {
        super(2, continuation);
        this.p = seekableTransitionState;
        this.q = navBackStackEntry;
        this.r = transition;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((NavHostKt$NavHost$21$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        NavHostKt$NavHost$21$1 navHostKt$NavHost$21$1 = new NavHostKt$NavHost$21$1(this.p, this.q, this.r, continuation);
        navHostKt$NavHost$21$1.o = obj;
        return navHostKt$NavHost$21$1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:14:0x0037, code lost:
    
        if (androidx.compose.animation.core.SeekableTransitionState.k(r1, r6, r13) == r0) goto L17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x006d, code lost:
    
        return r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006b, code lost:
    
        if (androidx.compose.animation.core.SuspendAnimationKt.c(r7, 0.0f, r9, r10, r13, 4) == r0) goto L17;
     */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i != 1 && i != 2) {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            ResultKt.b(obj);
        } else {
            ResultKt.b(obj);
            final CoroutineScope coroutineScope = (CoroutineScope) this.o;
            final SeekableTransitionState seekableTransitionState = this.p;
            Object value = ((SnapshotMutableStateImpl) seekableTransitionState.c).getValue();
            final NavBackStackEntry navBackStackEntry = this.q;
            if (!Intrinsics.a(value, navBackStackEntry)) {
                this.n = 1;
            } else {
                long longValue = ((Number) this.r.m.getValue()).longValue() / 1000000;
                float m = seekableTransitionState.m();
                TweenSpec c = AnimationSpecKt.c((int) (seekableTransitionState.m() * ((float) longValue)), 0, null, 6);
                Function2 function2 = new Function2() { // from class: androidx.navigation.compose.c
                    @Override // kotlin.jvm.functions.Function2
                    public final Object n(Object obj2, Object obj3) {
                        float floatValue = ((Float) obj2).floatValue();
                        ((Float) obj3).getClass();
                        BuildersKt.c(CoroutineScope.this, null, null, new NavHostKt$NavHost$21$1$1$1(floatValue, seekableTransitionState, navBackStackEntry, null), 3);
                        return Unit.a;
                    }
                };
                this.n = 2;
            }
        }
        return Unit.a;
    }
}
