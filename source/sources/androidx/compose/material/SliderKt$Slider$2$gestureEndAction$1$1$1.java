package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.ui.Modifier;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SliderKt$Slider$2$gestureEndAction$1$1$1", f = "Slider.kt", l = {234}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SliderKt$Slider$2$gestureEndAction$1$1$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public int n;
    public final /* synthetic */ SliderDraggableState o;
    public final /* synthetic */ float p;
    public final /* synthetic */ float q;
    public final /* synthetic */ float r;
    public final /* synthetic */ Function0 s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$Slider$2$gestureEndAction$1$1$1(SliderDraggableState sliderDraggableState, float f, float f2, float f3, Function0 function0, Continuation continuation) {
        super(2, continuation);
        this.o = sliderDraggableState;
        this.p = f;
        this.q = f2;
        this.r = f3;
        this.s = function0;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((SliderKt$Slider$2$gestureEndAction$1$1$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new SliderKt$Slider$2$gestureEndAction$1$1$1(this.o, this.p, this.q, this.r, this.s, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        Unit unit = Unit.a;
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
            Modifier modifier = SliderKt.a;
            SliderKt$animateToTarget$2 sliderKt$animateToTarget$2 = new SliderKt$animateToTarget$2(this.p, this.q, this.r, null);
            Object a = this.o.a(MutatePriority.j, sliderKt$animateToTarget$2, this);
            if (a != coroutineSingletons) {
                a = unit;
            }
            if (a == coroutineSingletons) {
                return coroutineSingletons;
            }
        }
        Function0 function0 = this.s;
        if (function0 != null) {
            function0.a();
        }
        return unit;
    }
}
