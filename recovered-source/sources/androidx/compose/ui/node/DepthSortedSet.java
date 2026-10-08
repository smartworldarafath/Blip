package androidx.compose.ui.node;

import androidx.compose.ui.internal.InlineClassHelperKt;
import java.util.TreeSet;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DepthSortedSet {
    public final SortedSet a = new TreeSet(DepthSortedSetKt.a);

    public final void a(LayoutNode layoutNode) {
        if (!layoutNode.L()) {
            InlineClassHelperKt.b("DepthSortedSet.add called on an unattached node");
        }
        this.a.add(layoutNode);
    }

    public final boolean b(LayoutNode layoutNode) {
        if (!layoutNode.L()) {
            InlineClassHelperKt.b("DepthSortedSet.remove called on an unattached node");
        }
        return this.a.remove(layoutNode);
    }

    public final String toString() {
        return this.a.toString();
    }
}
