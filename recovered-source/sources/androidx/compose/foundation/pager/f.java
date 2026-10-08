package androidx.compose.foundation.pager;

import androidx.compose.foundation.lazy.layout.NearestRangeKeyIndexMap;
import androidx.compose.runtime.State;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function0;
import kotlin.ranges.IntRange;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class f implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ PagerState k;
    public final /* synthetic */ Object l;

    public /* synthetic */ f(State state, PagerState pagerState) {
        this.j = 4;
        this.l = state;
        this.k = pagerState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        boolean z = false;
        PagerState pagerState = this.k;
        Object obj = this.l;
        switch (i) {
            case 0:
                CoroutineScope coroutineScope = (CoroutineScope) obj;
                if (pagerState.b()) {
                    BuildersKt.c(coroutineScope, null, null, new PagerKt$pagerSemantics$performBackwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            case 1:
                CoroutineScope coroutineScope2 = (CoroutineScope) obj;
                if (pagerState.d()) {
                    BuildersKt.c(coroutineScope2, null, null, new PagerKt$pagerSemantics$performForwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                CoroutineScope coroutineScope3 = (CoroutineScope) obj;
                if (pagerState.b()) {
                    BuildersKt.c(coroutineScope3, null, null, new PagerKt$pagerSemantics$performBackwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                CoroutineScope coroutineScope4 = (CoroutineScope) obj;
                if (pagerState.d()) {
                    BuildersKt.c(coroutineScope4, null, null, new PagerKt$pagerSemantics$performForwardPaging$1(pagerState, null), 3);
                    z = true;
                }
                return Boolean.valueOf(z);
            default:
                PagerLayoutIntervalContent pagerLayoutIntervalContent = (PagerLayoutIntervalContent) ((State) obj).getValue();
                return new PagerLazyLayoutItemProvider(pagerState, pagerLayoutIntervalContent, new NearestRangeKeyIndexMap((IntRange) pagerState.d.f.getValue(), pagerLayoutIntervalContent));
        }
    }

    public /* synthetic */ f(PagerState pagerState, CoroutineScope coroutineScope, int i) {
        this.j = i;
        this.k = pagerState;
        this.l = coroutineScope;
    }
}
