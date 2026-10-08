package androidx.compose.ui.layout;

import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntrinsicsMeasureScope implements MeasureScope, IntrinsicMeasureScope {
    public final /* synthetic */ IntrinsicMeasureScope j;
    public final LayoutDirection k;

    public IntrinsicsMeasureScope(IntrinsicMeasureScope intrinsicMeasureScope, LayoutDirection layoutDirection) {
        this.j = intrinsicMeasureScope;
        this.k = layoutDirection;
    }

    @Override // androidx.compose.ui.unit.Density
    public final long D0(long j) {
        return this.j.D0(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float E(long j) {
        return this.j.E(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float I0(long j) {
        return this.j.I0(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long N(int i) {
        return this.j.N(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long P(float f) {
        return this.j.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float U(int i) {
        return this.j.U(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float X(float f) {
        return this.j.X(f);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.j.e0();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean f0() {
        return this.j.f0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.j.getDensity();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.k;
    }

    @Override // androidx.compose.ui.unit.Density
    public final float i0(float f) {
        return this.j.i0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int q0(long j) {
        return this.j.q0(j);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult v0(final int i, final int i2, final Map map, final Function1 function1, Function1 function12) {
        if (i < 0) {
            i = 0;
        }
        if (i2 < 0) {
            i2 = 0;
        }
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            InlineClassHelperKt.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult() { // from class: androidx.compose.ui.layout.IntrinsicsMeasureScope$layout$1
            @Override // androidx.compose.ui.layout.MeasureResult
            public final int a() {
                return i2;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final int b() {
                return i;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final Map c() {
                return map;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final Function1 g() {
                return function1;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void d() {
            }
        };
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long x(float f) {
        return this.j.x(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long y(long j) {
        return this.j.y(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int y0(float f) {
        return this.j.y0(f);
    }
}
