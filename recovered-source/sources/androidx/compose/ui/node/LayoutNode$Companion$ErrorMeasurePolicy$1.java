package androidx.compose.ui.node;

import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.node.LayoutNode;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutNode$Companion$ErrorMeasurePolicy$1 extends LayoutNode.NoIntrinsicsMeasurePolicy {
    @Override // androidx.compose.ui.layout.MeasurePolicy
    public final MeasureResult a(MeasureScope measureScope, List list, long j) {
        throw new IllegalStateException("Undefined measure and it is required");
    }
}
