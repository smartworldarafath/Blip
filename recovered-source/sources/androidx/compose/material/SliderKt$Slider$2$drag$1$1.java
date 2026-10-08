package androidx.compose.material;

import androidx.compose.runtime.MutableState;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.material.SliderKt$Slider$2$drag$1$1", f = "Slider.kt", l = {}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
final class SliderKt$Slider$2$drag$1$1 extends SuspendLambda implements Function3<CoroutineScope, Float, Continuation<? super Unit>, Object> {
    public /* synthetic */ float n;
    public final /* synthetic */ MutableState o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$Slider$2$drag$1$1(MutableState mutableState, Continuation continuation) {
        super(3, continuation);
        this.o = mutableState;
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        float floatValue = ((Number) obj2).floatValue();
        SliderKt$Slider$2$drag$1$1 sliderKt$Slider$2$drag$1$1 = new SliderKt$Slider$2$drag$1$1(this.o, (Continuation) obj3);
        sliderKt$Slider$2$drag$1$1.n = floatValue;
        Unit unit = Unit.a;
        sliderKt$Slider$2$drag$1$1.v(unit);
        return unit;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        ResultKt.b(obj);
        ((Function1) this.o.getValue()).b(new Float(this.n));
        return Unit.a;
    }
}
