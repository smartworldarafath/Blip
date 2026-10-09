package androidx.compose.foundation.text;

import androidx.compose.ui.layout.MeasurePolicy;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.unit.Constraints;
import java.util.List;
import kotlin.jvm.functions.Function0;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LinksTextMeasurePolicy implements MeasurePolicy {
    public final Function0 a;

    public LinksTextMeasurePolicy(Function0 function0) {
        this.a = function0;
    }

    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        return MeasureScope.h0(measureScope, Constraints.h(j), Constraints.g(j), new g(list, this));
    }
}
