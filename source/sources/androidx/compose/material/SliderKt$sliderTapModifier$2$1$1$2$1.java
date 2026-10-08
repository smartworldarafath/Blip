package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import androidx.compose.runtime.MutableState;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$1$2$1", f = "Slider.kt", l = {1016}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SliderKt$sliderTapModifier$2$1$1$2$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ DraggableState o;
    public final /* synthetic */ MutableState p;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    @DebugMetadata(c = "androidx.compose.material.SliderKt$sliderTapModifier$2$1$1$2$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend", v = 1)
    /* renamed from: androidx.compose.material.SliderKt$sliderTapModifier$2$1$1$2$1$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public final class AnonymousClass1 extends SuspendLambda implements Function2<DragScope, Continuation<? super Unit>, Object> {
        public /* synthetic */ Object n;

        @Override // kotlin.jvm.functions.Function2
        public final Object n(Object obj, Object obj2) {
            AnonymousClass1 anonymousClass1 = (AnonymousClass1) s((DragScope) obj, (Continuation) obj2);
            Unit unit = Unit.a;
            anonymousClass1.v(unit);
            return unit;
        }

        /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.Continuation, androidx.compose.material.SliderKt$sliderTapModifier$2$1$1$2$1$1, kotlin.coroutines.jvm.internal.SuspendLambda] */
        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Continuation s(Object obj, Continuation continuation) {
            ?? suspendLambda = new SuspendLambda(2, continuation);
            suspendLambda.n = obj;
            return suspendLambda;
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object v(Object obj) {
            CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
            ResultKt.b(obj);
            ((DragScope) this.n).a(0.0f);
            return Unit.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$sliderTapModifier$2$1$1$2$1(DraggableState draggableState, MutableState mutableState, Continuation continuation) {
        super(2, continuation);
        this.o = draggableState;
        this.p = mutableState;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SliderKt$sliderTapModifier$2$1$1$2$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SliderKt$sliderTapModifier$2$1$1$2$1(this.o, this.p, continuation);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
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
            MutatePriority mutatePriority = MutatePriority.k;
            ?? suspendLambda = new SuspendLambda(2, null);
            this.n = 1;
            if (this.o.a(mutatePriority, suspendLambda, this) == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        ((Function1) this.p.getValue()).b(new Float(0.0f));
        return Unit.a;
    }
}
