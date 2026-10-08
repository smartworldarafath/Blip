package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.functions.Function2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LookaheadCapablePlacementScope extends Placeable.PlacementScope {
    public final LookaheadCapablePlaceable k;

    public LookaheadCapablePlacementScope(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        this.k = lookaheadCapablePlaceable;
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final float b(Ruler ruler) {
        Function2 function2 = ruler.a;
        if (function2 != null) {
            return ((Number) function2.n(this, Float.valueOf(Float.NaN))).floatValue();
        }
        return this.k.C0(ruler);
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final LayoutDirection c() {
        return this.k.getLayoutDirection();
    }

    @Override // androidx.compose.ui.layout.Placeable.PlacementScope
    public final int d() {
        return this.k.Z();
    }

    @Override // androidx.compose.ui.unit.FontScaling
    public final float e0() {
        return this.k.e0();
    }

    @Override // androidx.compose.ui.unit.Density
    public final float getDensity() {
        return this.k.getDensity();
    }
}
