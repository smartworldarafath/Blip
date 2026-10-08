package defpackage;

import androidx.compose.animation.core.AnimationScope;
import androidx.compose.foundation.gestures.ScrollScope;
import androidx.compose.foundation.gestures.snapping.SnapFlingBehaviorKt;
import androidx.compose.material.SliderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.Modifier;
import java.util.concurrent.CancellationException;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Ref$FloatRef;
import kotlin.ranges.ClosedFloatingPointRange;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class yf implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ float k;
    public final /* synthetic */ Object l;
    public final /* synthetic */ Object m;
    public final /* synthetic */ Function1 n;

    public /* synthetic */ yf(ClosedFloatingPointRange closedFloatingPointRange, float f, Function1 function1, Function0 function0) {
        this.j = 2;
        this.l = closedFloatingPointRange;
        this.k = f;
        this.n = function1;
        this.m = function0;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        float f;
        boolean z;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj2 = this.m;
        Function1 function1 = this.n;
        float f2 = this.k;
        Object obj3 = this.l;
        switch (i) {
            case 0:
                Ref$FloatRef ref$FloatRef = (Ref$FloatRef) obj3;
                ScrollScope scrollScope = (ScrollScope) obj2;
                AnimationScope animationScope = (AnimationScope) obj;
                float abs = Math.abs(((Number) ((SnapshotMutableStateImpl) animationScope.e).getValue()).floatValue());
                float abs2 = Math.abs(f2);
                MutableState mutableState = animationScope.e;
                if (abs >= abs2) {
                    float d = SnapFlingBehaviorKt.d(((Number) ((SnapshotMutableStateImpl) mutableState).getValue()).floatValue(), f2);
                    SnapFlingBehaviorKt.c(animationScope, scrollScope, function1, d - ref$FloatRef.j);
                    animationScope.a();
                    ref$FloatRef.j = d;
                } else {
                    SnapshotMutableStateImpl snapshotMutableStateImpl = (SnapshotMutableStateImpl) mutableState;
                    SnapFlingBehaviorKt.c(animationScope, scrollScope, function1, ((Number) snapshotMutableStateImpl.getValue()).floatValue() - ref$FloatRef.j);
                    ref$FloatRef.j = ((Number) snapshotMutableStateImpl.getValue()).floatValue();
                }
                return unit;
            case 1:
                Ref$FloatRef ref$FloatRef2 = (Ref$FloatRef) obj3;
                ScrollScope scrollScope2 = (ScrollScope) obj2;
                AnimationScope animationScope2 = (AnimationScope) obj;
                float d2 = SnapFlingBehaviorKt.d(((Number) ((SnapshotMutableStateImpl) animationScope2.e).getValue()).floatValue(), f2);
                float f3 = d2 - ref$FloatRef2.j;
                try {
                    f = scrollScope2.f(f3);
                } catch (CancellationException unused) {
                    animationScope2.a();
                    f = 0.0f;
                }
                function1.b(Float.valueOf(f));
                if (Math.abs(f3 - f) > 0.5f || d2 != ((Number) ((SnapshotMutableStateImpl) animationScope2.e).getValue()).floatValue()) {
                    animationScope2.a();
                }
                ref$FloatRef2.j += f;
                return unit;
            default:
                ClosedFloatingPointRange closedFloatingPointRange = (ClosedFloatingPointRange) obj3;
                Function0 function0 = (Function0) obj2;
                float floatValue = ((Float) obj).floatValue();
                Modifier modifier = SliderKt.a;
                float c = RangesKt.c(floatValue, closedFloatingPointRange.c().floatValue(), closedFloatingPointRange.b().floatValue());
                if (c == f2) {
                    z = false;
                } else {
                    function1.b(Float.valueOf(c));
                    z = true;
                    if (function0 != null) {
                        function0.a();
                    }
                }
                return Boolean.valueOf(z);
        }
    }

    public /* synthetic */ yf(float f, Ref$FloatRef ref$FloatRef, ScrollScope scrollScope, Function1 function1, int i) {
        this.j = i;
        this.k = f;
        this.l = ref$FloatRef;
        this.m = scrollScope;
        this.n = function1;
    }
}
