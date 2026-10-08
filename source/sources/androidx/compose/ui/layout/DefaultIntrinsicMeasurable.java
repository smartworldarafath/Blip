package androidx.compose.ui.layout;

import androidx.compose.ui.unit.Constraints;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultIntrinsicMeasurable implements Measurable {
    public final IntrinsicMeasurable j;
    public final IntrinsicMinMax k;
    public final IntrinsicWidthHeight l;

    public DefaultIntrinsicMeasurable(IntrinsicMeasurable intrinsicMeasurable, IntrinsicMinMax intrinsicMinMax, IntrinsicWidthHeight intrinsicWidthHeight) {
        this.j = intrinsicMeasurable;
        this.k = intrinsicMinMax;
        this.l = intrinsicWidthHeight;
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
        int V;
        int m;
        IntrinsicWidthHeight intrinsicWidthHeight = IntrinsicWidthHeight.j;
        int i = 32767;
        IntrinsicMeasurable intrinsicMeasurable = this.j;
        IntrinsicWidthHeight intrinsicWidthHeight2 = this.l;
        IntrinsicMinMax intrinsicMinMax = this.k;
        if (intrinsicWidthHeight2 == intrinsicWidthHeight) {
            if (intrinsicMinMax == IntrinsicMinMax.k) {
                m = intrinsicMeasurable.p(Constraints.g(j));
            } else {
                m = intrinsicMeasurable.m(Constraints.g(j));
            }
            if (Constraints.c(j)) {
                i = Constraints.g(j);
            }
            return new FixedSizeIntrinsicsPlaceable(m, i);
        }
        if (intrinsicMinMax == IntrinsicMinMax.k) {
            V = intrinsicMeasurable.b(Constraints.h(j));
        } else {
            V = intrinsicMeasurable.V(Constraints.h(j));
        }
        if (Constraints.d(j)) {
            i = Constraints.h(j);
        }
        return new FixedSizeIntrinsicsPlaceable(i, V);
    }
}
