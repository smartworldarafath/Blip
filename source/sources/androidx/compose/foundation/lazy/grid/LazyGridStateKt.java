package androidx.compose.foundation.lazy.grid;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.DensityKt;
import defpackage.a7;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyGridStateKt {
    public static final LazyGridMeasureResult a;

    static {
        MeasureResult measureResult = new MeasureResult() { // from class: androidx.compose.foundation.lazy.grid.LazyGridStateKt$EmptyLazyGridLayoutInfo$1
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
        };
        Orientation orientation = Orientation.j;
        a = new LazyGridMeasureResult(null, 0, false, 0.0f, measureResult, 0.0f, false, CoroutineScopeKt.a(EmptyCoroutineContext.j), DensityKt.b(1.0f), 0, new a7(26), new a7(27), 0, EmptyList.j, 0, 0, 0, orientation, 0, 0);
    }
}
