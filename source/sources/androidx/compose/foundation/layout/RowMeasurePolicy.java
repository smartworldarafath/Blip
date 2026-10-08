package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.Arrangement;
import androidx.compose.foundation.layout.CrossAxisAlignment;
import androidx.compose.foundation.layout.RowColumnParentData;
import androidx.compose.ui.Alignment;
import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.layout.IntrinsicMeasurable;
import androidx.compose.ui.layout.IntrinsicMeasureScope;
import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.Constraints;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RowMeasurePolicy implements MeasurePolicy, RowColumnMeasurePolicy {
    public final Arrangement.Horizontal a;
    public final Alignment.Vertical b;

    public RowMeasurePolicy(Arrangement.Horizontal horizontal, Alignment.Vertical vertical) {
        this.a = horizontal;
        this.b = vertical;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        return RowColumnMeasurePolicyKt.a(this, Constraints.j(j), Constraints.i(j), Constraints.h(j), Constraints.g(j), measureScope.y0(this.a.a()), measureScope, list, new Placeable[list.size()], list.size());
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int b(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int y0 = intrinsicMeasureScope.y0(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float b = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            int p = intrinsicMeasurable.p(i);
            if (b == 0.0f) {
                i3 += p;
            } else if (b > 0.0f) {
                f += b;
                i2 = Math.max(i2, Math.round(p / b));
            }
        }
        return ((list.size() - 1) * y0) + Math.round(i2 * f) + i3;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final void c(int i, MeasureScope measureScope, int[] iArr, int[] iArr2) {
        this.a.c(measureScope, i, iArr, measureScope.getLayoutDirection(), iArr2);
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final long d(int i, int i2, int i3, boolean z) {
        RowMeasurePolicy rowMeasurePolicy = RowKt.a;
        if (!z) {
            return ConstraintsKt.a(i, i2, 0, i3);
        }
        return Constraints.Companion.b(i, i2, 0, i3);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int e(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int round;
        int i2;
        int i3;
        int y0 = intrinsicMeasureScope.y0(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * y0, i);
        int size = list.size();
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i5);
            float b = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            if (b == 0.0f) {
                if (i == Integer.MAX_VALUE) {
                    i3 = Integer.MAX_VALUE;
                } else {
                    i3 = i - min;
                }
                int min2 = Math.min(intrinsicMeasurable.p(Integer.MAX_VALUE), i3);
                min += min2;
                i4 = Math.max(i4, intrinsicMeasurable.V(min2));
            } else if (b > 0.0f) {
                f += b;
            }
        }
        if (f == 0.0f) {
            round = 0;
        } else if (i == Integer.MAX_VALUE) {
            round = Integer.MAX_VALUE;
        } else {
            round = Math.round(Math.max(i - min, 0) / f);
        }
        int size2 = list.size();
        for (int i6 = 0; i6 < size2; i6++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i6);
            float b2 = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable2));
            if (b2 > 0.0f) {
                if (round != Integer.MAX_VALUE) {
                    i2 = Math.round(round * b2);
                } else {
                    i2 = Integer.MAX_VALUE;
                }
                i4 = Math.max(i4, intrinsicMeasurable2.V(i2));
            }
        }
        return i4;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RowMeasurePolicy) {
                RowMeasurePolicy rowMeasurePolicy = (RowMeasurePolicy) obj;
                if (!this.a.equals(rowMeasurePolicy.a) || !Intrinsics.a(this.b, rowMeasurePolicy.b)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int f(Placeable placeable) {
        return placeable.j;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int g(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int y0 = intrinsicMeasureScope.y0(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int size = list.size();
        int i2 = 0;
        int i3 = 0;
        float f = 0.0f;
        for (int i4 = 0; i4 < size; i4++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i4);
            float b = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            int m = intrinsicMeasurable.m(i);
            if (b == 0.0f) {
                i3 += m;
            } else if (b > 0.0f) {
                f += b;
                i2 = Math.max(i2, Math.round(m / b));
            }
        }
        return ((list.size() - 1) * y0) + Math.round(i2 * f) + i3;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final MeasureResult h(final Placeable[] placeableArr, MeasureScope measureScope, final int i, final int[] iArr, int i2, final int i3) {
        return MeasureScope.h0(measureScope, i2, i3, new Function1() { // from class: je
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                RowColumnParentData rowColumnParentData;
                int a;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                Placeable[] placeableArr2 = placeableArr;
                int length = placeableArr2.length;
                int i4 = 0;
                int i5 = 0;
                while (i4 < length) {
                    Placeable placeable = placeableArr2[i4];
                    int i6 = i5 + 1;
                    placeable.getClass();
                    Object a2 = placeable.a();
                    CrossAxisAlignment crossAxisAlignment = null;
                    if (a2 instanceof RowColumnParentData) {
                        rowColumnParentData = (RowColumnParentData) a2;
                    } else {
                        rowColumnParentData = null;
                    }
                    if (rowColumnParentData != null) {
                        crossAxisAlignment = rowColumnParentData.c;
                    }
                    CrossAxisAlignment crossAxisAlignment2 = crossAxisAlignment;
                    int i7 = i3;
                    if (crossAxisAlignment2 != null) {
                        a = crossAxisAlignment2.a(i7, placeable.k, LayoutDirection.j, placeable, i);
                    } else {
                        a = ((BiasAlignment.Vertical) this.b).a(placeable.k, i7);
                    }
                    placementScope.e(placeable, iArr[i5], a, 0.0f);
                    i4++;
                    i5 = i6;
                }
                return Unit.a;
            }
        });
    }

    public final int hashCode() {
        return this.b.hashCode() + (this.a.hashCode() * 31);
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final int i(IntrinsicMeasureScope intrinsicMeasureScope, List list, int i) {
        int round;
        int i2;
        int i3;
        int y0 = intrinsicMeasureScope.y0(this.a.a());
        if (list.isEmpty()) {
            return 0;
        }
        int min = Math.min((list.size() - 1) * y0, i);
        int size = list.size();
        int i4 = 0;
        float f = 0.0f;
        for (int i5 = 0; i5 < size; i5++) {
            IntrinsicMeasurable intrinsicMeasurable = (IntrinsicMeasurable) list.get(i5);
            float b = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable));
            if (b == 0.0f) {
                if (i == Integer.MAX_VALUE) {
                    i3 = Integer.MAX_VALUE;
                } else {
                    i3 = i - min;
                }
                int min2 = Math.min(intrinsicMeasurable.p(Integer.MAX_VALUE), i3);
                min += min2;
                i4 = Math.max(i4, intrinsicMeasurable.b(min2));
            } else if (b > 0.0f) {
                f += b;
            }
        }
        if (f == 0.0f) {
            round = 0;
        } else if (i == Integer.MAX_VALUE) {
            round = Integer.MAX_VALUE;
        } else {
            round = Math.round(Math.max(i - min, 0) / f);
        }
        int size2 = list.size();
        for (int i6 = 0; i6 < size2; i6++) {
            IntrinsicMeasurable intrinsicMeasurable2 = (IntrinsicMeasurable) list.get(i6);
            float b2 = RowColumnImplKt.b(RowColumnImplKt.a(intrinsicMeasurable2));
            if (b2 > 0.0f) {
                if (round != Integer.MAX_VALUE) {
                    i2 = Math.round(round * b2);
                } else {
                    i2 = Integer.MAX_VALUE;
                }
                i4 = Math.max(i4, intrinsicMeasurable2.b(i2));
            }
        }
        return i4;
    }

    @Override // androidx.compose.foundation.layout.RowColumnMeasurePolicy
    public final int j(Placeable placeable) {
        return placeable.k;
    }

    public final String toString() {
        return "RowMeasurePolicy(horizontalArrangement=" + this.a + ", verticalAlignment=" + this.b + ")";
    }
}
