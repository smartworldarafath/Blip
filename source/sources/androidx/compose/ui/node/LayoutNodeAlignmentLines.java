package androidx.compose.ui.node;

import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.unit.IntOffsetKt;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LayoutNodeAlignmentLines extends AlignmentLines {
    @Override // androidx.compose.ui.node.AlignmentLines
    public final long b(NodeCoordinator nodeCoordinator, long j) {
        OwnedLayer ownedLayer = nodeCoordinator.c0;
        if (ownedLayer != null) {
            GraphicsLayerOwnerLayer graphicsLayerOwnerLayer = (GraphicsLayerOwnerLayer) ownedLayer;
            float[] b = graphicsLayerOwnerLayer.b();
            if (!graphicsLayerOwnerLayer.B) {
                j = Matrix.b(j, b);
            }
        }
        return IntOffsetKt.a(j, nodeCoordinator.O);
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    public final Map c(NodeCoordinator nodeCoordinator) {
        return nodeCoordinator.K0().c();
    }

    @Override // androidx.compose.ui.node.AlignmentLines
    public final int d(NodeCoordinator nodeCoordinator, AlignmentLine alignmentLine) {
        return nodeCoordinator.K(alignmentLine);
    }
}
