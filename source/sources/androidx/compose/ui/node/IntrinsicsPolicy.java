package androidx.compose.ui.node;

import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.layout.MeasurePolicy;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class IntrinsicsPolicy {
    public final LayoutNode a;
    public final MutableState b;

    public IntrinsicsPolicy(LayoutNode layoutNode, MeasurePolicy measurePolicy) {
        this.a = layoutNode;
        this.b = SnapshotStateKt.g(measurePolicy);
    }

    public final MeasurePolicy a() {
        return (MeasurePolicy) ((SnapshotMutableStateImpl) this.b).getValue();
    }
}
