package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import defpackage.u2;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusableChildrenComparator implements Comparator<FocusTargetNode> {
    public static final FocusableChildrenComparator j = new Object();

    @Override // java.util.Comparator
    public final int compare(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2) {
        FocusTargetNode focusTargetNode3 = focusTargetNode;
        FocusTargetNode focusTargetNode4 = focusTargetNode2;
        if (FocusTraversalKt.d(focusTargetNode3) && FocusTraversalKt.d(focusTargetNode4)) {
            LayoutNode g = DelegatableNodeKt.g(focusTargetNode3);
            LayoutNode g2 = DelegatableNodeKt.g(focusTargetNode4);
            if (!Intrinsics.a(g, g2)) {
                MutableVector mutableVector = new MutableVector(new LayoutNode[16]);
                while (g != null) {
                    mutableVector.a(0, g);
                    g = g.w();
                }
                MutableVector mutableVector2 = new MutableVector(new LayoutNode[16]);
                while (g2 != null) {
                    mutableVector2.a(0, g2);
                    g2 = g2.w();
                }
                int min = Math.min(mutableVector.l - 1, mutableVector2.l - 1);
                if (min >= 0) {
                    int i = 0;
                    while (Intrinsics.a(mutableVector.j[i], mutableVector2.j[i])) {
                        if (i != min) {
                            i++;
                        }
                    }
                    return Intrinsics.b(((LayoutNode) mutableVector.j[i]).x(), ((LayoutNode) mutableVector2.j[i]).x());
                }
                u2.l("Could not find a common ancestor between the two FocusModifiers.");
                return 0;
            }
        } else {
            if (FocusTraversalKt.d(focusTargetNode3)) {
                return -1;
            }
            if (FocusTraversalKt.d(focusTargetNode4)) {
                return 1;
            }
        }
        return 0;
    }
}
