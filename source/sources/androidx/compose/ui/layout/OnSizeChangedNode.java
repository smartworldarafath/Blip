package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.MeasuredSizeAwareModifierNode;
import androidx.compose.ui.unit.IntSize;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnSizeChangedNode extends Modifier.Node implements MeasuredSizeAwareModifierNode {
    public Function1 x;
    public long y;

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return true;
    }

    @Override // androidx.compose.ui.node.MeasuredSizeAwareModifierNode
    public final void b(long j) {
        if (!IntSize.a(this.y, j)) {
            this.x.b(new IntSize(j));
            this.y = j;
        }
    }
}
