package androidx.compose.material;

import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.gestures.DragScope;
import androidx.compose.foundation.gestures.DraggableState;
import java.util.Collection;
import java.util.Iterator;
import kotlin.Unit;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnchoredDraggableState$draggableState$1 implements DraggableState {
    public final AnchoredDraggableState$draggableState$1$dragScope$1 a;
    public final /* synthetic */ AnchoredDraggableState b;

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.material.AnchoredDraggableState$draggableState$1$dragScope$1] */
    public AnchoredDraggableState$draggableState$1(final AnchoredDraggableState anchoredDraggableState) {
        this.b = anchoredDraggableState;
        this.a = new DragScope() { // from class: androidx.compose.material.AnchoredDraggableState$draggableState$1$dragScope$1
            @Override // androidx.compose.foundation.gestures.DragScope
            public final void a(float f) {
                float e;
                Float valueOf;
                float f2;
                AnchoredDraggableState anchoredDraggableState2 = AnchoredDraggableState.this;
                AnchoredDraggableState$anchoredDragScope$1 anchoredDraggableState$anchoredDragScope$1 = anchoredDraggableState2.n;
                if (Float.isNaN(anchoredDraggableState2.e())) {
                    e = 0.0f;
                } else {
                    e = anchoredDraggableState2.e();
                }
                float f3 = e + f;
                Collection values = ((MapDraggableAnchors) anchoredDraggableState2.d()).a.values();
                values.getClass();
                Iterator it = values.iterator();
                Float f4 = null;
                if (!it.hasNext()) {
                    valueOf = null;
                } else {
                    float floatValue = ((Number) it.next()).floatValue();
                    while (it.hasNext()) {
                        floatValue = Math.min(floatValue, ((Number) it.next()).floatValue());
                    }
                    valueOf = Float.valueOf(floatValue);
                }
                float f5 = Float.NaN;
                if (valueOf != null) {
                    f2 = valueOf.floatValue();
                } else {
                    f2 = Float.NaN;
                }
                Collection values2 = ((MapDraggableAnchors) anchoredDraggableState2.d()).a.values();
                values2.getClass();
                Iterator it2 = values2.iterator();
                if (it2.hasNext()) {
                    float floatValue2 = ((Number) it2.next()).floatValue();
                    while (it2.hasNext()) {
                        floatValue2 = Math.max(floatValue2, ((Number) it2.next()).floatValue());
                    }
                    f4 = Float.valueOf(floatValue2);
                }
                if (f4 != null) {
                    f5 = f4.floatValue();
                }
                AnchoredDragScope.a(anchoredDraggableState$anchoredDragScope$1, RangesKt.c(f3, f2, f5));
            }
        };
    }

    @Override // androidx.compose.foundation.gestures.DraggableState
    public final Object a(MutatePriority mutatePriority, Function2 function2, SuspendLambda suspendLambda) {
        Object a = this.b.a(mutatePriority, new AnchoredDraggableState$draggableState$1$drag$2(this, function2, null), suspendLambda);
        if (a == CoroutineSingletons.j) {
            return a;
        }
        return Unit.a;
    }
}
