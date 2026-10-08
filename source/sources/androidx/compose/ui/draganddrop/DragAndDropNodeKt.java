package androidx.compose.ui.draganddrop;

import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.InnerNodeCoordinator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DragAndDropNodeKt {
    public static final boolean a(DragAndDropNode dragAndDropNode, long j) {
        if (dragAndDropNode.j.w) {
            InnerNodeCoordinator innerNodeCoordinator = DelegatableNodeKt.g(dragAndDropNode).O.c;
            if (innerNodeCoordinator.l0.w) {
                long S = innerNodeCoordinator.S(0L);
                float intBitsToFloat = Float.intBitsToFloat((int) (S >> 32));
                float intBitsToFloat2 = Float.intBitsToFloat((int) (S & 4294967295L));
                long j2 = dragAndDropNode.A;
                float f = ((int) (j2 >> 32)) + intBitsToFloat;
                float f2 = ((int) (j2 & 4294967295L)) + intBitsToFloat2;
                float intBitsToFloat3 = Float.intBitsToFloat((int) (j >> 32));
                if (intBitsToFloat <= intBitsToFloat3 && intBitsToFloat3 <= f) {
                    float intBitsToFloat4 = Float.intBitsToFloat((int) (j & 4294967295L));
                    if (intBitsToFloat2 <= intBitsToFloat4 && intBitsToFloat4 <= f2) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }
}
