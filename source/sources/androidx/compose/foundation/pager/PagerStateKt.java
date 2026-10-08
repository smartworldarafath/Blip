package androidx.compose.foundation.pager;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.snapping.SnapPosition;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.ConstraintsKt;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.RangesKt;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PagerStateKt {
    public static final PagerStateKt$UnitDensity$1 a;
    public static final PagerMeasureResult b;

    /* JADX WARN: Type inference failed for: r10v0, types: [androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1, androidx.compose.ui.unit.Density, java.lang.Object] */
    static {
        ?? obj = new Object();
        a = obj;
        Orientation orientation = Orientation.j;
        b = new PagerMeasureResult(0, 0, 0, 0, 0, 0, SnapPosition.Start.a, new MeasureResult() { // from class: androidx.compose.foundation.pager.PagerStateKt$EmptyLayoutInfo$1
            public final Map a;

            {
                Map map;
                map = EmptyMap.j;
                this.a = map;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final int a() {
                return 0;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final int b() {
                return 0;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final Map c() {
                return this.a;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void d() {
            }
        }, CoroutineScopeKt.a(EmptyCoroutineContext.j), obj, ConstraintsKt.b(0, 0, 0, 0, 15));
    }

    public static final long a(PagerLayoutInfo pagerLayoutInfo, int i) {
        long j;
        int i2 = ((PagerMeasureResult) pagerLayoutInfo).c;
        PagerMeasureResult pagerMeasureResult = (PagerMeasureResult) pagerLayoutInfo;
        long j2 = (((i * (i2 + pagerMeasureResult.b)) + (-pagerMeasureResult.f)) + pagerMeasureResult.d) - pagerMeasureResult.c;
        Orientation orientation = pagerMeasureResult.e;
        Orientation orientation2 = Orientation.k;
        long i3 = pagerMeasureResult.i();
        if (orientation == orientation2) {
            j = i3 >> 32;
        } else {
            j = i3 & 4294967295L;
        }
        int i4 = (int) j;
        pagerMeasureResult.n.getClass();
        long d = j2 - (i4 - RangesKt.d(0, 0, i4));
        if (d < 0) {
            return 0L;
        }
        return d;
    }

    public static final PagerState b(Function0 function0, Composer composer) {
        Object[] objArr = new Object[0];
        SaverKt$Saver$1 saverKt$Saver$1 = DefaultPagerState.G;
        boolean d = ((GapComposer) composer).d(0) | ((GapComposer) composer).c(0.0f) | ((GapComposer) composer).f(function0);
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        if (d || K == Composer.Companion.a) {
            K = new c(1, function0);
            gapComposer.g0(K);
        }
        DefaultPagerState defaultPagerState = (DefaultPagerState) RememberSaveableKt.d(objArr, saverKt$Saver$1, (Function0) K, gapComposer, 0);
        ((SnapshotMutableStateImpl) defaultPagerState.F).setValue(function0);
        return defaultPagerState;
    }
}
