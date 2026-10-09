package androidx.compose.ui.node;

import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnPositionedDispatcher$Companion$DepthComparator implements Comparator<LayoutNode> {
    public static final OnPositionedDispatcher$Companion$DepthComparator j = new Object();

    @Override // java.util.Comparator
    public final int compare(LayoutNode layoutNode, LayoutNode layoutNode2) {
        LayoutNode layoutNode3 = layoutNode;
        LayoutNode layoutNode4 = layoutNode2;
        int b = Intrinsics.b(layoutNode4.y, layoutNode3.y);
        if (b != 0) {
            return b;
        }
        return Intrinsics.b(layoutNode3.hashCode(), layoutNode4.hashCode());
    }
}
