package androidx.compose.foundation.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.a7;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BoxMeasurePolicy implements MeasurePolicy {
    public final Alignment a;
    public final boolean b;

    public BoxMeasurePolicy(Alignment alignment, boolean z) {
        this.a = alignment;
        this.b = z;
    }

    /* JADX WARN: Type inference failed for: r4v3, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v1, types: [kotlin.jvm.internal.Ref$IntRef, java.lang.Object] */
    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(final MeasureScope measureScope, final List list, long j) {
        long j2;
        int i;
        int i2;
        BoxChildDataNode boxChildDataNode;
        boolean z;
        BoxChildDataNode boxChildDataNode2;
        boolean z2;
        int j3;
        int i3;
        Placeable w;
        if (list.isEmpty()) {
            return MeasureScope.h0(measureScope, Constraints.j(j), Constraints.i(j), new a7(15));
        }
        if (this.b) {
            j2 = j;
        } else {
            j2 = j & (-8589934589L);
        }
        BoxChildDataNode boxChildDataNode3 = null;
        boolean z3 = false;
        if (list.size() == 1) {
            final Measurable measurable = (Measurable) list.get(0);
            MutableScatterMap mutableScatterMap = BoxKt.a;
            Object a = measurable.a();
            if (a instanceof BoxChildDataNode) {
                boxChildDataNode3 = (BoxChildDataNode) a;
            }
            if (boxChildDataNode3 != null) {
                z3 = boxChildDataNode3.y;
            }
            if (!z3) {
                w = measurable.w(j2);
                j3 = Math.max(Constraints.j(j), w.j);
                i3 = Math.max(Constraints.i(j), w.k);
            } else {
                j3 = Constraints.j(j);
                i3 = Constraints.i(j);
                w = measurable.w(Constraints.Companion.c(Constraints.j(j), Constraints.i(j)));
            }
            final int i4 = i3;
            final int i5 = j3;
            final Placeable placeable = w;
            return MeasureScope.h0(measureScope, i5, i4, new Function1() { // from class: androidx.compose.foundation.layout.a
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    BoxKt.b((Placeable.PlacementScope) obj, Placeable.this, measurable, measureScope.getLayoutDirection(), i5, i4, this.a);
                    return Unit.a;
                }
            });
        }
        final Placeable[] placeableArr = new Placeable[list.size()];
        final ?? obj = new Object();
        obj.j = Constraints.j(j);
        final ?? obj2 = new Object();
        obj2.j = Constraints.i(j);
        int size = list.size();
        boolean z4 = false;
        for (int i6 = 0; i6 < size; i6++) {
            Measurable measurable2 = (Measurable) list.get(i6);
            MutableScatterMap mutableScatterMap2 = BoxKt.a;
            Object a2 = measurable2.a();
            if (a2 instanceof BoxChildDataNode) {
                boxChildDataNode2 = (BoxChildDataNode) a2;
            } else {
                boxChildDataNode2 = null;
            }
            if (boxChildDataNode2 != null) {
                z2 = boxChildDataNode2.y;
            } else {
                z2 = false;
            }
            if (!z2) {
                Placeable w2 = measurable2.w(j2);
                placeableArr[i6] = w2;
                obj.j = Math.max(obj.j, w2.j);
                obj2.j = Math.max(obj2.j, w2.k);
            } else {
                z4 = true;
            }
        }
        if (z4) {
            int i7 = obj.j;
            if (i7 != Integer.MAX_VALUE) {
                i = i7;
            } else {
                i = 0;
            }
            int i8 = obj2.j;
            if (i8 != Integer.MAX_VALUE) {
                i2 = i8;
            } else {
                i2 = 0;
            }
            long a3 = ConstraintsKt.a(i, i7, i2, i8);
            int size2 = list.size();
            for (int i9 = 0; i9 < size2; i9++) {
                Measurable measurable3 = (Measurable) list.get(i9);
                MutableScatterMap mutableScatterMap3 = BoxKt.a;
                Object a4 = measurable3.a();
                if (a4 instanceof BoxChildDataNode) {
                    boxChildDataNode = (BoxChildDataNode) a4;
                } else {
                    boxChildDataNode = null;
                }
                if (boxChildDataNode != null) {
                    z = boxChildDataNode.y;
                } else {
                    z = false;
                }
                if (z) {
                    placeableArr[i9] = measurable3.w(a3);
                }
            }
        }
        return MeasureScope.h0(measureScope, obj.j, obj2.j, new Function1() { // from class: androidx.compose.foundation.layout.b
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj3) {
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj3;
                Placeable[] placeableArr2 = placeableArr;
                int length = placeableArr2.length;
                int i10 = 0;
                int i11 = 0;
                while (i11 < length) {
                    int i12 = i10;
                    Placeable placeable2 = placeableArr2[i11];
                    placeable2.getClass();
                    BoxKt.b(placementScope, placeable2, (Measurable) list.get(i12), measureScope.getLayoutDirection(), obj.j, obj2.j, this.a);
                    i11++;
                    i10 = i12 + 1;
                }
                return Unit.a;
            }
        });
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof BoxMeasurePolicy) {
                BoxMeasurePolicy boxMeasurePolicy = (BoxMeasurePolicy) obj;
                if (!Intrinsics.a(this.a, boxMeasurePolicy.a) || this.b != boxMeasurePolicy.b) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Boolean.hashCode(this.b) + (this.a.hashCode() * 31);
    }

    public final String toString() {
        return "BoxMeasurePolicy(alignment=" + this.a + ", propagateMinConstraints=" + this.b + ")";
    }
}
