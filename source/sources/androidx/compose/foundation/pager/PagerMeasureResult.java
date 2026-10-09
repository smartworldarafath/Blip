package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.Density;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PagerMeasureResult implements PagerLayoutInfo, MeasureResult {
    public final List a;
    public final int b;
    public final int c;
    public final int d;
    public final Orientation e;
    public final int f;
    public final int g;
    public final int h;
    public final MeasuredPage i;
    public final MeasuredPage j;
    public final float k;
    public final int l;
    public final boolean m;
    public final SnapPosition n;
    public final MeasureResult o;
    public final boolean p;
    public final List q;
    public final List r;
    public final CoroutineScope s;
    public final Density t;
    public final long u;

    public PagerMeasureResult(List list, int i, int i2, int i3, Orientation orientation, int i4, int i5, int i6, MeasuredPage measuredPage, MeasuredPage measuredPage2, float f, int i7, boolean z, SnapPosition snapPosition, MeasureResult measureResult, boolean z2, List list2, List list3, CoroutineScope coroutineScope, Density density, long j) {
        this.a = list;
        this.b = i;
        this.c = i2;
        this.d = i3;
        this.e = orientation;
        this.f = i4;
        this.g = i5;
        this.h = i6;
        this.i = measuredPage;
        this.j = measuredPage2;
        this.k = f;
        this.l = i7;
        this.m = z;
        this.n = snapPosition;
        this.o = measureResult;
        this.p = z2;
        this.q = list2;
        this.r = list3;
        this.s = coroutineScope;
        this.t = density;
        this.u = j;
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int a() {
        return this.o.a();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final int b() {
        return this.o.b();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Map c() {
        return this.o.c();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final void d() {
        this.o.d();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function1 e() {
        return this.o.e();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function2 f() {
        return this.o.f();
    }

    @Override // androidx.compose.ui.layout.MeasureResult
    public final Function1 g() {
        return this.o.g();
    }

    public final PagerMeasureResult h(int i) {
        int i2;
        float f;
        int i3 = this.b + this.c;
        if (!this.p) {
            List list = this.a;
            if (!list.isEmpty() && this.i != null && (i2 = this.l - i) >= 0 && i2 < i3) {
                if (i3 != 0) {
                    f = i / i3;
                } else {
                    f = 0.0f;
                }
                float f2 = this.k - f;
                if (this.j != null && f2 < 0.5f && f2 > -0.5f) {
                    MeasuredPage measuredPage = (MeasuredPage) CollectionsKt.s(list);
                    MeasuredPage measuredPage2 = (MeasuredPage) CollectionsKt.z(list);
                    int i4 = this.g;
                    int i5 = this.f;
                    if (i < 0) {
                        if (Math.min((measuredPage.j + i3) - i5, (measuredPage2.j + i3) - i4) <= (-i)) {
                            return null;
                        }
                    } else if (Math.min(i5 - measuredPage.j, i4 - measuredPage2.j) <= i) {
                        return null;
                    }
                    int size = list.size();
                    boolean z = false;
                    for (int i6 = 0; i6 < size; i6++) {
                        ((MeasuredPage) list.get(i6)).a(i);
                    }
                    List list2 = this.q;
                    int size2 = list2.size();
                    for (int i7 = 0; i7 < size2; i7++) {
                        ((MeasuredPage) list2.get(i7)).a(i);
                    }
                    List list3 = this.r;
                    int size3 = list3.size();
                    for (int i8 = 0; i8 < size3; i8++) {
                        ((MeasuredPage) list3.get(i8)).a(i);
                    }
                    if (this.m || i > 0) {
                        z = true;
                    }
                    return new PagerMeasureResult(this.a, this.b, this.c, this.d, this.e, this.f, this.g, this.h, this.i, this.j, f2, i2, z, this.n, this.o, this.p, this.q, this.r, this.s, this.t, this.u);
                }
                return null;
            }
            return null;
        }
        return null;
    }

    public final long i() {
        MeasureResult measureResult = this.o;
        return (measureResult.b() << 32) | (measureResult.a() & 4294967295L);
    }

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public /* synthetic */ PagerMeasureResult(int i, int i2, int i3, int i4, int i5, int i6, SnapPosition snapPosition, MeasureResult measureResult, CoroutineScope coroutineScope, Density density, long j) {
        this(r1, i, i2, i3, r5, i4, i5, i6, null, null, 0.0f, 0, false, snapPosition, measureResult, false, r1, r1, coroutineScope, density, j);
        Orientation orientation = Orientation.k;
        EmptyList emptyList = EmptyList.j;
    }
}
