package androidx.compose.ui.node;

import defpackage.k8;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DepthSortedSetsForDifferentPasses {
    public final DepthSortedSet a = new DepthSortedSet();
    public final DepthSortedSet b = new DepthSortedSet();
    public final DepthSortedSet c = new DepthSortedSet();

    public final void a(LayoutNode layoutNode, Invalidation invalidation) {
        int ordinal = invalidation.ordinal();
        DepthSortedSet depthSortedSet = this.a;
        DepthSortedSet depthSortedSet2 = this.c;
        if (ordinal != 0) {
            DepthSortedSet depthSortedSet3 = this.b;
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        if (layoutNode.q != null) {
                            depthSortedSet2.a(layoutNode);
                            return;
                        } else {
                            depthSortedSet3.a(layoutNode);
                            return;
                        }
                    }
                    k8.e();
                    return;
                }
                if (layoutNode.q != null) {
                    depthSortedSet2.a(layoutNode);
                    return;
                } else {
                    depthSortedSet.a(layoutNode);
                    return;
                }
            }
            depthSortedSet3.a(layoutNode);
            depthSortedSet2.a(layoutNode);
            return;
        }
        depthSortedSet.a(layoutNode);
        depthSortedSet2.a(layoutNode);
    }

    public final boolean b(LayoutNode layoutNode) {
        boolean z;
        boolean z2;
        if (layoutNode.q == null) {
            z = true;
        } else {
            z = false;
        }
        if (!this.a.a.contains(layoutNode) && !this.b.a.contains(layoutNode)) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z || !z2) {
            return false;
        }
        return true;
    }

    public final boolean c() {
        boolean z;
        if (this.a.a.isEmpty() && this.c.a.isEmpty() && this.b.a.isEmpty()) {
            z = true;
        } else {
            z = false;
        }
        return !z;
    }
}
