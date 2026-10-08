package androidx.compose.ui.layout;

import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LookaheadCapablePlaceable;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.ConstraintsKt;
import defpackage.wc;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PlaceableKt {
    public static final wc a = new wc(2);
    public static final long b = ConstraintsKt.b(0, 0, 0, 0, 15);

    public static final Placeable.PlacementScope a(LookaheadCapablePlaceable lookaheadCapablePlaceable) {
        return new LookaheadCapablePlacementScope(lookaheadCapablePlaceable);
    }

    public static final Placeable.PlacementScope b(AndroidComposeView androidComposeView) {
        return new OuterPlacementScope(androidComposeView);
    }
}
