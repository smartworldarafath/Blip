package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;
import defpackage.la;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ObserverNodeOwnerScope implements OwnerScope {
    public static final la k = new la(21);
    public final ObserverModifierNode j;

    public ObserverNodeOwnerScope(ObserverModifierNode observerModifierNode) {
        this.j = observerModifierNode;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean z() {
        return ((Modifier.Node) this.j).j.w;
    }
}
