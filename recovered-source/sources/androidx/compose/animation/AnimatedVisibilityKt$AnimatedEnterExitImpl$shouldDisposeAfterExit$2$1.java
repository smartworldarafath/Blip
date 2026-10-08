package androidx.compose.animation;

import androidx.compose.animation.core.TransitionInstance;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.ProduceStateScope;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.AbstractFlow;
import kotlinx.coroutines.flow.Flow;
import kotlinx.coroutines.flow.FlowCollector;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1", f = "AnimatedVisibility.kt", l = {841}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1 extends SuspendLambda implements Function2<ProduceStateScope<Boolean>, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ TransitionInstance p;
    public final /* synthetic */ MutableState q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1(TransitionInstance transitionInstance, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.p = transitionInstance;
        this.q = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1) s((ProduceStateScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1 animatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1 = new AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1(this.p, this.q, continuation);
        animatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1.o = obj;
        return animatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            final ProduceStateScope produceStateScope = (ProduceStateScope) this.o;
            final TransitionInstance transitionInstance = this.p;
            Flow l = SnapshotStateKt.l(new Function0<Boolean>() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1.1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    boolean z;
                    TransitionInstance transitionInstance2 = TransitionInstance.this;
                    Object a = transitionInstance2.a.a();
                    EnterExitState enterExitState = EnterExitState.l;
                    if (a == enterExitState && ((SnapshotMutableStateImpl) transitionInstance2.d).getValue() == enterExitState) {
                        z = true;
                    } else {
                        z = false;
                    }
                    return Boolean.valueOf(z);
                }
            });
            final MutableState mutableState = this.q;
            FlowCollector flowCollector = new FlowCollector() { // from class: androidx.compose.animation.AnimatedVisibilityKt$AnimatedEnterExitImpl$shouldDisposeAfterExit$2$1.2
                @Override // kotlinx.coroutines.flow.FlowCollector
                public final Object r(Object obj2, Continuation continuation) {
                    boolean z;
                    if (((Boolean) obj2).booleanValue()) {
                        Function2 function2 = (Function2) mutableState.getValue();
                        TransitionInstance transitionInstance2 = transitionInstance;
                        z = ((Boolean) function2.n(transitionInstance2.a.a(), ((SnapshotMutableStateImpl) transitionInstance2.d).getValue())).booleanValue();
                    } else {
                        z = false;
                    }
                    ProduceStateScope.this.setValue(Boolean.valueOf(z));
                    return Unit.a;
                }
            };
            this.n = 1;
            if (((AbstractFlow) l).a(flowCollector, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        return Unit.a;
    }
}
