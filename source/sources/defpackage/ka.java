package defpackage;

import androidx.compose.foundation.lazy.LazyListMeasureResult;
import androidx.compose.foundation.lazy.LazyListState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ka implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ LazyListState k;

    public /* synthetic */ ka(LazyListState lazyListState, int i) {
        this.j = i;
        this.k = lazyListState;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i;
        int i2 = this.j;
        LazyListState lazyListState = this.k;
        switch (i2) {
            case 0:
                i = ((LazyListMeasureResult) lazyListState.h()).o;
                break;
            default:
                i = ((LazyListMeasureResult) ((SnapshotMutableStateImpl) lazyListState.f).getValue()).k;
                break;
        }
        return Integer.valueOf(i);
    }
}
