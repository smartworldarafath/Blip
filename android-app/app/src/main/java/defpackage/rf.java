package defpackage;

import androidx.compose.material.SliderKt;
import androidx.compose.runtime.MutableFloatState;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableFloatStateImpl;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.util.MathHelpersKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class rf implements Function1 {
    public final /* synthetic */ MutableFloatState j;
    public final /* synthetic */ MutableFloatState k;
    public final /* synthetic */ Ref$FloatRef l;
    public final /* synthetic */ Ref$FloatRef m;
    public final /* synthetic */ MutableState n;
    public final /* synthetic */ ClosedFloatingPointRange o;

    public /* synthetic */ rf(MutableFloatState mutableFloatState, MutableFloatState mutableFloatState2, Ref$FloatRef ref$FloatRef, Ref$FloatRef ref$FloatRef2, MutableState mutableState, ClosedFloatingPointRange closedFloatingPointRange) {
        this.j = mutableFloatState;
        this.k = mutableFloatState2;
        this.l = ref$FloatRef;
        this.m = ref$FloatRef2;
        this.n = mutableState;
        this.o = closedFloatingPointRange;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        float f;
        float floatValue = ((Float) obj).floatValue();
        Modifier modifier = SliderKt.a;
        SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl = (SnapshotMutableFloatStateImpl) this.j;
        float j = snapshotMutableFloatStateImpl.j() + floatValue;
        SnapshotMutableFloatStateImpl snapshotMutableFloatStateImpl2 = (SnapshotMutableFloatStateImpl) this.k;
        snapshotMutableFloatStateImpl.k(snapshotMutableFloatStateImpl2.j() + j);
        float f2 = 0.0f;
        snapshotMutableFloatStateImpl2.k(0.0f);
        float j2 = snapshotMutableFloatStateImpl.j();
        Ref$FloatRef ref$FloatRef = this.l;
        float f3 = ref$FloatRef.j;
        Ref$FloatRef ref$FloatRef2 = this.m;
        float c = RangesKt.c(j2, f3, ref$FloatRef2.j);
        Function1 function1 = (Function1) this.n.getValue();
        float f4 = ref$FloatRef.j;
        float f5 = ref$FloatRef2.j;
        ClosedFloatingPointRange closedFloatingPointRange = this.o;
        float floatValue2 = closedFloatingPointRange.c().floatValue();
        float floatValue3 = closedFloatingPointRange.b().floatValue();
        float f6 = f5 - f4;
        if (f6 == 0.0f) {
            f = 0.0f;
        } else {
            f = (c - f4) / f6;
        }
        if (f >= 0.0f) {
            f2 = f;
        }
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        function1.b(Float.valueOf(MathHelpersKt.b(floatValue2, floatValue3, f2)));
        return Unit.a;
    }
}
