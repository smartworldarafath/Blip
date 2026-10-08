package androidx.compose.foundation.layout;

import androidx.compose.ui.BiasAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class BoxChildDataNode extends Modifier.Node implements ParentDataModifierNode {
    public BiasAlignment x;
    public boolean y;

    @Override // androidx.compose.ui.node.ParentDataModifierNode
    public final Object Z(Density density, Object obj) {
        return this;
    }
}
