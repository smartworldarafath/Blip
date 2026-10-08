package androidx.compose.ui.graphics;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.Map;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BlockGraphicsLayerModifier extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public Function1 x;

    public BlockGraphicsLayerModifier(Function1 function1) {
        this.x = function1;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        Shape shape;
        boolean z;
        Function1 function1;
        NodeCoordinator e = DelegatableNodeKt.e(this, 2);
        if (!e.W) {
            ReusableGraphicsLayerScope reusableGraphicsLayerScope = GraphicsLayerModifierKt.a;
            if (reusableGraphicsLayerScope == null) {
                GraphicsLayerModifierKt.a = new ReusableGraphicsLayerScope();
            } else {
                reusableGraphicsLayerScope.a();
            }
            ReusableGraphicsLayerScope reusableGraphicsLayerScope2 = GraphicsLayerModifierKt.a;
            reusableGraphicsLayerScope2.getClass();
            reusableGraphicsLayerScope2.C = e.D.H;
            reusableGraphicsLayerScope2.A = IntSizeKt.a(e.l);
            Snapshot a = Snapshot.Companion.a();
            if (a != null) {
                function1 = a.e();
            } else {
                function1 = null;
            }
            Snapshot b = Snapshot.Companion.b(a);
            try {
                this.x.b(reusableGraphicsLayerScope2);
                Snapshot.Companion.e(a, b, function1);
                shape = reusableGraphicsLayerScope2.x;
                z = reusableGraphicsLayerScope2.y;
            } catch (Throwable th) {
                Snapshot.Companion.e(a, b, function1);
                throw th;
            }
        } else {
            shape = e.S;
            z = e.V;
        }
        if (!z) {
            return;
        }
        SemanticsPropertiesKt.d(semanticsPropertyReceiver, shape);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        Placeable w = measurable.w(j);
        int i = w.j;
        int i2 = w.k;
        defpackage.b bVar = new defpackage.b(6, w, this);
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, bVar);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean n() {
        return false;
    }

    public final String toString() {
        return "BlockGraphicsLayerModifier(block=" + this.x + ")";
    }
}
