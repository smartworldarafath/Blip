package androidx.compose.ui.node;

import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.Ruler;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PlaceableResult implements OwnerScope {
    public MeasureResult j;
    public final LookaheadCapablePlaceable k;
    public final Ruler l;

    public PlaceableResult(MeasureResult measureResult, LookaheadCapablePlaceable lookaheadCapablePlaceable, Ruler ruler) {
        this.j = measureResult;
        this.k = lookaheadCapablePlaceable;
        this.l = ruler;
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public final boolean z() {
        return this.k.F0().o();
    }
}
