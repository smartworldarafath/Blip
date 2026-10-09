package androidx.compose.ui.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OwnedLayer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ModifierInfo {
    public final Modifier a;
    public final LayoutCoordinates b;
    public final Object c;

    public ModifierInfo(Modifier modifier, NodeCoordinator nodeCoordinator, OwnedLayer ownedLayer) {
        this.a = modifier;
        this.b = nodeCoordinator;
        this.c = ownedLayer;
    }

    public final String toString() {
        return "ModifierInfo(" + this.a + ", " + this.b + ", " + this.c + ")";
    }
}
