package androidx.compose.foundation.layout;

import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import defpackage.a7;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SpacerMeasurePolicy implements MeasurePolicy {
    public static final SpacerMeasurePolicy a = new Object();

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        int i;
        int i2 = 0;
        if (Constraints.f(j)) {
            i = Constraints.h(j);
        } else {
            i = 0;
        }
        if (Constraints.e(j)) {
            i2 = Constraints.g(j);
        }
        return MeasureScope.h0(measureScope, i, i2, new a7(15));
    }
}
