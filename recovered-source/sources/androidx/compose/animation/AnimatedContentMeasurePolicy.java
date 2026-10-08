package androidx.compose.animation;

import androidx.compose.animation.AnimatedContentTransitionScopeImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AnimatedContentMeasurePolicy implements MeasurePolicy {
    public final AnimatedContentTransitionScopeImpl a;
    public Placeable[] b;
    public Placeable[] c;
    public int d;
    public int e;
    public int f;
    public int g;
    public final Function1 h = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$lookaheadPlacementBlock$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object b(Object obj) {
            Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy = AnimatedContentMeasurePolicy.this;
            Placeable[] placeableArr = animatedContentMeasurePolicy.b;
            placeableArr.getClass();
            int i = animatedContentMeasurePolicy.d;
            int i2 = animatedContentMeasurePolicy.f;
            for (Placeable placeable : placeableArr) {
                if (placeable != null) {
                    long a = animatedContentMeasurePolicy.a.b.a((placeable.j << 32) | (placeable.k & 4294967295L), (i << 32) | (i2 & 4294967295L), LayoutDirection.j);
                    placementScope.e(placeable, (int) (a >> 32), (int) (a & 4294967295L), 0.0f);
                }
            }
            return Unit.a;
        }
    };
    public final Function1 i = new Function1<Placeable.PlacementScope, Unit>() { // from class: androidx.compose.animation.AnimatedContentMeasurePolicy$approachPlacementBlock$1
        {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public final Object b(Object obj) {
            Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
            AnimatedContentMeasurePolicy animatedContentMeasurePolicy = AnimatedContentMeasurePolicy.this;
            Placeable[] placeableArr = animatedContentMeasurePolicy.c;
            placeableArr.getClass();
            int i = animatedContentMeasurePolicy.e;
            int i2 = animatedContentMeasurePolicy.g;
            for (Placeable placeable : placeableArr) {
                if (placeable != null) {
                    long a = animatedContentMeasurePolicy.a.b.a((placeable.j << 32) | (placeable.k & 4294967295L), (i << 32) | (i2 & 4294967295L), LayoutDirection.j);
                    placementScope.e(placeable, (int) (a >> 32), (int) (a & 4294967295L), 0.0f);
                }
            }
            return Unit.a;
        }
    };

    public AnimatedContentMeasurePolicy(AnimatedContentTransitionScopeImpl animatedContentTransitionScopeImpl) {
        this.a = animatedContentTransitionScopeImpl;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        Pair pair;
        AnimatedContentTransitionScopeImpl.ChildData childData;
        Map map;
        Map map2;
        AnimatedContentTransitionScopeImpl.ChildData childData2;
        int size = list.size();
        Placeable[] placeableArr = new Placeable[size];
        int size2 = list.size();
        long j2 = 0;
        for (int i = 0; i < size2; i++) {
            Measurable measurable = (Measurable) list.get(i);
            Object a = measurable.a();
            if (a instanceof AnimatedContentTransitionScopeImpl.ChildData) {
                childData2 = (AnimatedContentTransitionScopeImpl.ChildData) a;
            } else {
                childData2 = null;
            }
            if (childData2 != null && ((Boolean) ((SnapshotMutableStateImpl) childData2.b).getValue()).booleanValue()) {
                placeableArr[i] = measurable.w(j);
                j2 = (r8.k & 4294967295L) | (r8.j << 32);
            }
        }
        int size3 = list.size();
        for (int i2 = 0; i2 < size3; i2++) {
            Measurable measurable2 = (Measurable) list.get(i2);
            if (placeableArr[i2] == null) {
                placeableArr[i2] = measurable2.w(j);
            }
        }
        if (measureScope.f0()) {
            pair = new Pair(Integer.valueOf((int) (j2 >> 32)), Integer.valueOf((int) (j2 & 4294967295L)));
        } else {
            int i3 = 0;
            int i4 = 0;
            for (int i5 = 0; i5 < size; i5++) {
                Placeable placeable = placeableArr[i5];
                if (placeable != null) {
                    Object a2 = ((Measurable) list.get(i5)).a();
                    if (a2 instanceof AnimatedContentTransitionScopeImpl.ChildData) {
                        childData = (AnimatedContentTransitionScopeImpl.ChildData) a2;
                    } else {
                        childData = null;
                    }
                    if (childData == null || !((Boolean) ((SnapshotMutableStateImpl) childData.c).getValue()).booleanValue()) {
                        int i6 = placeable.j;
                        if (i6 > i3) {
                            i3 = i6;
                        }
                        int i7 = placeable.k;
                        if (i7 > i4) {
                            i4 = i7;
                        }
                    }
                }
            }
            pair = new Pair(Integer.valueOf(i3), Integer.valueOf(i4));
        }
        int intValue = ((Number) pair.j).intValue();
        int intValue2 = ((Number) pair.k).intValue();
        if (!measureScope.f0()) {
            ((SnapshotMutableStateImpl) this.a.c).setValue(new IntSize((intValue << 32) | (intValue2 & 4294967295L)));
            this.c = placeableArr;
            this.e = intValue;
            this.g = intValue2;
            Function1 function1 = this.i;
            map2 = EmptyMap.j;
            return measureScope.B(intValue, intValue2, map2, function1);
        }
        this.b = placeableArr;
        this.d = intValue;
        this.f = intValue2;
        Function1 function12 = this.h;
        map = EmptyMap.j;
        return measureScope.B(intValue, intValue2, map, function12);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).p(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i2)).p(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (valueOf == null) {
            return 0;
        }
        return valueOf.intValue();
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).V(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i2)).V(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (valueOf == null) {
            return 0;
        }
        return valueOf.intValue();
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int g(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).m(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i2)).m(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (valueOf == null) {
            return 0;
        }
        return valueOf.intValue();
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int i(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        Integer valueOf;
        if (list.isEmpty()) {
            valueOf = null;
        } else {
            valueOf = Integer.valueOf(((IntrinsicMeasurable) list.get(0)).b(i));
            int i2 = 1;
            int size = list.size() - 1;
            if (1 <= size) {
                while (true) {
                    Integer valueOf2 = Integer.valueOf(((IntrinsicMeasurable) list.get(i2)).b(i));
                    if (valueOf2.compareTo(valueOf) > 0) {
                        valueOf = valueOf2;
                    }
                    if (i2 == size) {
                        break;
                    }
                    i2++;
                }
            }
        }
        if (valueOf == null) {
            return 0;
        }
        return valueOf.intValue();
    }
}
