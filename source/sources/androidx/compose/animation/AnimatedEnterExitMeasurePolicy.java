package androidx.compose.animation;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AnimatedEnterExitMeasurePolicy implements MeasurePolicy {
    public final AnimatedVisibilityScopeImpl a;
    public boolean b;

    public AnimatedEnterExitMeasurePolicy(AnimatedVisibilityScopeImpl animatedVisibilityScopeImpl) {
        this.a = animatedVisibilityScopeImpl;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        Map map;
        MutableState mutableState = this.a.a;
        final ArrayList arrayList = new ArrayList(list.size());
        int size = list.size();
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < size; i3++) {
            Placeable w = ((Measurable) list.get(i3)).w(j);
            i = Math.max(i, w.j);
            i2 = Math.max(i2, w.k);
            arrayList.add(w);
        }
        if (measureScope.f0()) {
            this.b = true;
            ((SnapshotMutableStateImpl) mutableState).setValue(new IntSize((i2 & 4294967295L) | (i << 32)));
        } else if (!this.b) {
            ((SnapshotMutableStateImpl) mutableState).setValue(new IntSize((i2 & 4294967295L) | (i << 32)));
        }
        Function1<Placeable.PlacementScope, Unit> function1 = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedEnterExitMeasurePolicy$measure$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                ArrayList arrayList2 = arrayList;
                int size2 = arrayList2.size();
                for (int i4 = 0; i4 < size2; i4++) {
                    placementScope.e((Placeable) arrayList2.get(i4), 0, 0, 0.0f);
                }
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, function1);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int p = ((IntrinsicMeasurable) list.get(0)).p(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int p2 = ((IntrinsicMeasurable) list.get(i2)).p(i);
                if (p2 > p) {
                    p = p2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return p;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int V = ((IntrinsicMeasurable) list.get(0)).V(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int V2 = ((IntrinsicMeasurable) list.get(i2)).V(i);
                if (V2 > V) {
                    V = V2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return V;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int g(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int m = ((IntrinsicMeasurable) list.get(0)).m(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int m2 = ((IntrinsicMeasurable) list.get(i2)).m(i);
                if (m2 > m) {
                    m = m2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return m;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int i(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        if (list.isEmpty()) {
            return 0;
        }
        int b = ((IntrinsicMeasurable) list.get(0)).b(i);
        int i2 = 1;
        int size = list.size() - 1;
        if (1 <= size) {
            while (true) {
                int b2 = ((IntrinsicMeasurable) list.get(i2)).b(i);
                if (b2 > b) {
                    b = b2;
                }
                if (i2 == size) {
                    break;
                }
                i2++;
            }
        }
        return b;
    }
}
