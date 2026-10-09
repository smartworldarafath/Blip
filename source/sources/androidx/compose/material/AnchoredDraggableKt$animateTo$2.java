package androidx.compose.material;

import androidx.compose.animation.core.AnimationSpec;
import androidx.compose.animation.core.SuspendAnimationKt;
import defpackage.a0;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function4;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.AnchoredDraggableKt$animateTo$2", f = "AnchoredDraggable.kt", l = {691}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class AnchoredDraggableKt$animateTo$2 extends SuspendLambda implements Function4<AnchoredDragScope, DraggableAnchors<Object>, Object, Continuation<? super Unit>, Object> {
    public int n;
    public /* synthetic */ AnchoredDragScope o;
    public /* synthetic */ DraggableAnchors p;
    public /* synthetic */ Object q;
    public final /* synthetic */ AnchoredDraggableState r;
    public final /* synthetic */ float s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AnchoredDraggableKt$animateTo$2(AnchoredDraggableState anchoredDraggableState, float f, Continuation continuation) {
        super(4, continuation);
        this.r = anchoredDraggableState;
        this.s = f;
    }

    @Override // kotlin.jvm.functions.Function4
    public final Object j(Object obj, Object obj2, Object obj3, Object obj4) {
        AnchoredDraggableKt$animateTo$2 anchoredDraggableKt$animateTo$2 = new AnchoredDraggableKt$animateTo$2(this.r, this.s, (Continuation) obj4);
        anchoredDraggableKt$animateTo$2.o = (AnchoredDragScope) obj;
        anchoredDraggableKt$animateTo$2.p = (DraggableAnchors) obj2;
        anchoredDraggableKt$animateTo$2.q = obj3;
        return anchoredDraggableKt$animateTo$2.v(Unit.a);
    }

    /* JADX WARN: Type inference failed for: r1v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$FloatRef] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        float e;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        int i2 = 1;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
            } else {
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
        } else {
            ResultKt.b(obj);
            AnchoredDragScope anchoredDragScope = this.o;
            float c = ((MapDraggableAnchors) this.p).c(this.q);
            if (!Float.isNaN(c)) {
                ?? obj2 = new Object();
                AnchoredDraggableState anchoredDraggableState = this.r;
                if (Float.isNaN(anchoredDraggableState.e())) {
                    e = 0.0f;
                } else {
                    e = anchoredDraggableState.e();
                }
                obj2.j = e;
                AnimationSpec animationSpec = anchoredDraggableState.c;
                a0 a0Var = new a0(i2, anchoredDragScope, obj2);
                this.o = null;
                this.p = null;
                this.n = 1;
                if (SuspendAnimationKt.a(e, c, this.s, animationSpec, a0Var, this) == coroutineSingletons) {
                    return coroutineSingletons;
                }
            }
        }
        return Unit.a;
    }
}
