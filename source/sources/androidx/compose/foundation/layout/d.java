package androidx.compose.foundation.layout;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.unit.IntOffset;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class d implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Placeable k;
    public final /* synthetic */ Modifier.Node l;

    public /* synthetic */ d(Modifier.Node node, Placeable placeable, int i) {
        this.j = i;
        this.l = node;
        this.k = placeable;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        Placeable placeable = this.k;
        Unit unit = Unit.a;
        Modifier.Node node = this.l;
        switch (i) {
            case 0:
                OffsetNode offsetNode = (OffsetNode) node;
                Placeable.PlacementScope placementScope = (Placeable.PlacementScope) obj;
                boolean z = offsetNode.z;
                float f = offsetNode.x;
                if (z) {
                    Placeable.PlacementScope.j(placementScope, placeable, placementScope.y0(f), placementScope.y0(offsetNode.y));
                } else {
                    placementScope.e(placeable, placementScope.y0(f), placementScope.y0(offsetNode.y), 0.0f);
                }
                return unit;
            case 1:
                OffsetPxNode offsetPxNode = (OffsetPxNode) node;
                Placeable.PlacementScope placementScope2 = (Placeable.PlacementScope) obj;
                long j = ((IntOffset) offsetPxNode.x.b(placementScope2)).a;
                boolean z2 = offsetPxNode.y;
                Placeable placeable2 = this.k;
                if (z2) {
                    Placeable.PlacementScope.l(placementScope2, placeable2, (int) (j >> 32), (int) (j & 4294967295L));
                } else {
                    Placeable.PlacementScope.n(placementScope2, placeable2, (int) (j >> 32), (int) (j & 4294967295L), null, 12);
                }
                return unit;
            default:
                PaddingNode paddingNode = (PaddingNode) node;
                Placeable.PlacementScope placementScope3 = (Placeable.PlacementScope) obj;
                boolean z3 = paddingNode.B;
                float f2 = paddingNode.x;
                if (z3) {
                    Placeable.PlacementScope.j(placementScope3, placeable, placementScope3.y0(f2), placementScope3.y0(paddingNode.y));
                } else {
                    placementScope3.e(placeable, placementScope3.y0(f2), placementScope3.y0(paddingNode.y), 0.0f);
                }
                return unit;
        }
    }
}
