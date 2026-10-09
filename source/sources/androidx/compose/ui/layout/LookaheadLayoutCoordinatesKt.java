package androidx.compose.ui.layout;

import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LookaheadDelegate;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LookaheadLayoutCoordinatesKt {
    public static final LookaheadDelegate a(LookaheadDelegate lookaheadDelegate) {
        LayoutNode layoutNode;
        LayoutNode layoutNode2 = lookaheadDelegate.D.D;
        while (true) {
            LayoutNode w = layoutNode2.w();
            LayoutNode layoutNode3 = null;
            if (w != null) {
                layoutNode = w.q;
            } else {
                layoutNode = null;
            }
            if (layoutNode != null) {
                LayoutNode w2 = layoutNode2.w();
                if (w2 != null) {
                    layoutNode3 = w2.q;
                }
                layoutNode3.getClass();
                LayoutNode w3 = layoutNode2.w();
                w3.getClass();
                layoutNode2 = w3.q;
                layoutNode2.getClass();
            } else {
                LookaheadDelegate b1 = layoutNode2.O.d.b1();
                b1.getClass();
                return b1;
            }
        }
    }
}
