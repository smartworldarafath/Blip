package androidx.compose.foundation.lazy;

import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.GapComposer;
import androidx.compose.runtime.saveable.RememberSaveableKt;
import androidx.compose.runtime.saveable.SaverKt$Saver$1;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.unit.ConstraintsKt;
import androidx.compose.ui.unit.DensityKt;
import defpackage.x9;
import java.util.Map;
import kotlin.collections.EmptyList;
import kotlin.collections.EmptyMap;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LazyListStateKt {
    public static final LazyListMeasureResult a = new LazyListMeasureResult(null, 0, false, 0.0f, new MeasureResult() { // from class: androidx.compose.foundation.lazy.LazyListStateKt$EmptyLazyListMeasureResult$1
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
    }, 0.0f, false, CoroutineScopeKt.a(EmptyCoroutineContext.j), DensityKt.b(1.0f), ConstraintsKt.b(0, 0, 0, 0, 15), 0, EmptyList.j, 0, 0, 0, Orientation.j, 0, 0);

    public static final LazyListState a(Composer composer) {
        Object[] objArr = new Object[0];
        SaverKt$Saver$1 saverKt$Saver$1 = LazyListState.y;
        boolean d = ((GapComposer) composer).d(0) | ((GapComposer) composer).d(0);
        GapComposer gapComposer = (GapComposer) composer;
        Object K = gapComposer.K();
        if (d || K == Composer.Companion.a) {
            K = new x9(10);
            gapComposer.g0(K);
        }
        return (LazyListState) RememberSaveableKt.d(objArr, saverKt$Saver$1, (Function0) K, gapComposer, 0);
    }
}
