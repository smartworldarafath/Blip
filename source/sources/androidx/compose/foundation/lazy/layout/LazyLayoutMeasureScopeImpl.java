package androidx.compose.foundation.lazy.layout;

import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.SubcomposeMeasureScope;
import androidx.compose.ui.unit.LayoutDirection;
import java.util.List;
import java.util.Map;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LazyLayoutMeasureScopeImpl implements MeasureScope {
    public final LazyLayoutItemContentFactory j;
    public final SubcomposeMeasureScope k;
    public final LazyLayoutItemProvider l;
    public final MutableIntObjectMap m;

    public LazyLayoutMeasureScopeImpl(LazyLayoutItemContentFactory lazyLayoutItemContentFactory, SubcomposeMeasureScope subcomposeMeasureScope) {
        this.j = lazyLayoutItemContentFactory;
        this.k = subcomposeMeasureScope;
        this.l = (LazyLayoutItemProvider) lazyLayoutItemContentFactory.b.a();
        IntObjectMapKt.a();
        this.m = new MutableIntObjectMap();
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult B(int i, int i2, Map map, Function1 function1) {
        return this.k.B(i, i2, map, function1);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long D0(long j) {
        return this.k.D0(j);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float E(long j) {
        return this.k.E(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float I0(long j) {
        return this.k.I0(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long N(int i) {
        return this.k.N(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long P(float f) {
        return this.k.P(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float U(int i) {
        return this.k.U(i);
    }

    @Override // androidx.compose.ui.unit.Density
    public final float X(float f) {
        return this.k.X(f);
    }

    public final List a(int i) {
        MutableIntObjectMap mutableIntObjectMap = this.m;
        List list = (List) mutableIntObjectMap.b(i);
        if (list != null) {
            return list;
        }
        LazyLayoutItemProvider lazyLayoutItemProvider = this.l;
        Object b = lazyLayoutItemProvider.b(i);
        List r = this.k.r(b, this.j.a(i, b, lazyLayoutItemProvider.c(i)));
        mutableIntObjectMap.i(i, r);
        return r;
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.k.e0();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final boolean f0() {
        return this.k.f0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.k.getDensity();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public final LayoutDirection getLayoutDirection() {
        return this.k.getLayoutDirection();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float i0(float f) {
        return this.k.i0(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int q0(long j) {
        return this.k.q0(j);
    }

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult v0(int i, int i2, Map map, Function1 function1, Function1 function12) {
        return this.k.v0(i, i2, map, function1, function12);
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final long x(float f) {
        return this.k.x(f);
    }

    @Override // androidx.compose.ui.unit.Density
    public final long y(long j) {
        return this.k.y(j);
    }

    @Override // androidx.compose.ui.unit.Density
    public final int y0(float f) {
        return this.k.y0(f);
    }
}
