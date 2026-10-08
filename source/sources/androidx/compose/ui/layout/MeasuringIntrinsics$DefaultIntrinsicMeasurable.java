package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Constraints;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MeasuringIntrinsics$DefaultIntrinsicMeasurable implements Measurable {
    public final IntrinsicMeasurable j;
    public final MeasuringIntrinsics$IntrinsicMinMax k;
    public final MeasuringIntrinsics$IntrinsicWidthHeight l;

    public MeasuringIntrinsics$DefaultIntrinsicMeasurable(IntrinsicMeasurable intrinsicMeasurable, MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax, MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight) {
        this.j = intrinsicMeasurable;
        this.k = measuringIntrinsics$IntrinsicMinMax;
        this.l = measuringIntrinsics$IntrinsicWidthHeight;
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int V(int i) {
        return this.j.V(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final Object a() {
        return this.j.a();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int b(int i) {
        return this.j.b(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int m(int i) {
        return this.j.m(i);
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasurable
    public final int p(int i) {
        return this.j.p(i);
    }

    @Override // androidx.compose.ui.layout.Measurable
    public final Placeable w(long j) {
        final int V;
        final int m;
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight = MeasuringIntrinsics$IntrinsicWidthHeight.j;
        final int i = 32767;
        IntrinsicMeasurable intrinsicMeasurable = this.j;
        MeasuringIntrinsics$IntrinsicWidthHeight measuringIntrinsics$IntrinsicWidthHeight2 = this.l;
        MeasuringIntrinsics$IntrinsicMinMax measuringIntrinsics$IntrinsicMinMax = this.k;
        if (measuringIntrinsics$IntrinsicWidthHeight2 == measuringIntrinsics$IntrinsicWidthHeight) {
            if (measuringIntrinsics$IntrinsicMinMax == MeasuringIntrinsics$IntrinsicMinMax.k) {
                m = intrinsicMeasurable.p(Constraints.g(j));
            } else {
                m = intrinsicMeasurable.m(Constraints.g(j));
            }
            if (Constraints.c(j)) {
                i = Constraints.g(j);
            }
            return new Placeable(m, i) { // from class: androidx.compose.ui.layout.MeasuringIntrinsics$EmptyPlaceable
                {
                    j0((i & 4294967295L) | (m << 32));
                }

                @Override // androidx.compose.ui.layout.Measured
                public final int K(AlignmentLine alignmentLine) {
                    return Integer.MIN_VALUE;
                }

                @Override // androidx.compose.ui.layout.Placeable
                public final void c0(long j2, float f, Function1 function1) {
                }
            };
        }
        if (measuringIntrinsics$IntrinsicMinMax == MeasuringIntrinsics$IntrinsicMinMax.k) {
            V = intrinsicMeasurable.b(Constraints.h(j));
        } else {
            V = intrinsicMeasurable.V(Constraints.h(j));
        }
        if (Constraints.d(j)) {
            i = Constraints.h(j);
        }
        return new Placeable(i, V) { // from class: androidx.compose.ui.layout.MeasuringIntrinsics$EmptyPlaceable
            {
                j0((V & 4294967295L) | (i << 32));
            }

            @Override // androidx.compose.ui.layout.Measured
            public final int K(AlignmentLine alignmentLine) {
                return Integer.MIN_VALUE;
            }

            @Override // androidx.compose.ui.layout.Placeable
            public final void c0(long j2, float f, Function1 function1) {
            }
        };
    }
}
