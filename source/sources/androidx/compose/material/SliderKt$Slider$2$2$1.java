package androidx.compose.material;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.ranges.ClosedFloatingPointRange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class SliderKt$Slider$2$2$1 extends FunctionReferenceImpl implements Function1<Float, Float> {
    public final /* synthetic */ ClosedFloatingPointRange r;
    public final /* synthetic */ Ref$FloatRef s;
    public final /* synthetic */ Ref$FloatRef t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SliderKt$Slider$2$2$1(ClosedFloatingPointRange closedFloatingPointRange, Ref$FloatRef ref$FloatRef, Ref$FloatRef ref$FloatRef2) {
        super(1, Intrinsics.Kotlin.class, "scaleToOffset", "Slider$lambda$3$scaleToOffset(Lkotlin/ranges/ClosedFloatingPointRange;Lkotlin/jvm/internal/Ref$FloatRef;Lkotlin/jvm/internal/Ref$FloatRef;F)F", 0);
        this.r = closedFloatingPointRange;
        this.s = ref$FloatRef;
        this.t = ref$FloatRef2;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        float f;
        float floatValue = ((Number) obj).floatValue();
        Modifier modifier = SliderKt.a;
        ClosedFloatingPointRange closedFloatingPointRange = this.r;
        float floatValue2 = closedFloatingPointRange.c().floatValue();
        float floatValue3 = closedFloatingPointRange.b().floatValue();
        float f2 = this.s.j;
        float f3 = this.t.j;
        float f4 = floatValue3 - floatValue2;
        float f5 = 0.0f;
        if (f4 == 0.0f) {
            f = 0.0f;
        } else {
            f = (floatValue - floatValue2) / f4;
        }
        if (f >= 0.0f) {
            f5 = f;
        }
        if (f5 > 1.0f) {
            f5 = 1.0f;
        }
        return Float.valueOf(MathHelpersKt.b(f2, f3, f5));
    }
}
