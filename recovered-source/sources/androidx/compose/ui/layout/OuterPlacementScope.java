package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.LayoutDirection;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OuterPlacementScope extends Placeable.PlacementScope {
    public final AndroidComposeView k;

    public OuterPlacementScope(AndroidComposeView androidComposeView) {
        this.k = androidComposeView;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final LayoutDirection c() {
        return this.k.getLayoutDirection();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final int d() {
        return this.k.getRoot().A();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.k.getDensity().e0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.k.getDensity().getDensity();
    }
}
