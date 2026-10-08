package defpackage;

import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.pager.PagerScrollPosition;
import androidx.compose.foundation.pager.PagerState;
import androidx.compose.foundation.pager.PagerStateKt;
import androidx.compose.foundation.pager.PagerStateKt$UnitDensity$1;
import androidx.compose.runtime.MutableIntState;
import androidx.compose.runtime.SnapshotMutableIntStateImpl;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.unit.Density;
import androidx.datastore.preferences.PreferencesProto$Value;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class ia implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ PagerState k;

    public /* synthetic */ ia(PagerState pagerState, int i) {
        this.j = i;
        this.k = pagerState;
    }

    /* JADX WARN: Failed to find 'out' block for switch in B:2:0x0004. Please report as an issue. */
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int l;
        int a;
        int a2;
        int i = this.j;
        PagerState pagerState = this.k;
        switch (i) {
            case 0:
                l = pagerState.l();
                return Integer.valueOf(l);
            case 1:
                l = pagerState.l();
                return Integer.valueOf(l);
            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                if (pagerState.k.a()) {
                    a = ((SnapshotMutableIntStateImpl) pagerState.r).j();
                } else {
                    a = pagerState.d.a();
                }
                return Integer.valueOf(a);
            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                MutableIntState mutableIntState = pagerState.q;
                ScrollableState scrollableState = pagerState.k;
                PagerScrollPosition pagerScrollPosition = pagerState.d;
                if (!scrollableState.a()) {
                    a2 = pagerScrollPosition.a();
                } else if (((SnapshotMutableIntStateImpl) mutableIntState).j() != -1) {
                    a2 = ((SnapshotMutableIntStateImpl) mutableIntState).j();
                } else {
                    float abs = Math.abs(pagerScrollPosition.b());
                    Density density = pagerState.n;
                    PagerStateKt$UnitDensity$1 pagerStateKt$UnitDensity$1 = PagerStateKt.a;
                    if (abs >= Math.abs(Math.min(density.i0(56.0f), pagerState.m() / 2.0f) / pagerState.m())) {
                        boolean booleanValue = ((Boolean) ((SnapshotMutableStateImpl) pagerState.D).getValue()).booleanValue();
                        int i2 = pagerState.e;
                        if (booleanValue) {
                            a2 = i2 + 1;
                        } else {
                            a2 = i2;
                        }
                    } else {
                        a2 = pagerScrollPosition.a();
                    }
                }
                l = pagerState.j(a2);
                return Integer.valueOf(l);
            default:
                l = pagerState.l();
                return Integer.valueOf(l);
        }
    }
}
