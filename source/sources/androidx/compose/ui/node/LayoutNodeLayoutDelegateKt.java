package androidx.compose.ui.node;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LayoutNodeLayoutDelegateKt {
    public static final boolean a(LayoutNode layoutNode) {
        LayoutNode layoutNode2;
        if (layoutNode.q != null) {
            LayoutNode w = layoutNode.w();
            if (w != null) {
                layoutNode2 = w.q;
            } else {
                layoutNode2 = null;
            }
            if (layoutNode2 == null || layoutNode.P.b) {
                return true;
            }
            return false;
        }
        return false;
    }
}
