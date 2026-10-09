package androidx.compose.ui.node;

import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.DensityKt;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LayoutNodeKt {
    public static final Density a = DensityKt.b(1.0f);

    public static final Owner a(LayoutNode layoutNode) {
        Owner owner = layoutNode.w;
        if (owner != null) {
            return owner;
        }
        throw q.p("LayoutNode should be attached to an owner");
    }
}
