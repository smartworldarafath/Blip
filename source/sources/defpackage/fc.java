package defpackage;

import androidx.compose.ui.graphics.Canvas;
import androidx.compose.ui.node.NodeCoordinator;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class fc implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ NodeCoordinator k;

    public /* synthetic */ fc(NodeCoordinator nodeCoordinator, int i) {
        this.j = i;
        this.k = nodeCoordinator;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        int i = this.j;
        Unit unit = Unit.a;
        NodeCoordinator nodeCoordinator = this.k;
        switch (i) {
            case 0:
                Canvas canvas = nodeCoordinator.Y;
                canvas.getClass();
                nodeCoordinator.X0(canvas, nodeCoordinator.X);
                return unit;
            default:
                NodeCoordinator nodeCoordinator2 = nodeCoordinator.F;
                if (nodeCoordinator2 != null) {
                    nodeCoordinator2.l1();
                }
                return unit;
        }
    }
}
