package androidx.compose.ui.graphics;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.Measurable;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.jb;
import defpackage.q;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.EmptyMap;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SimpleGraphicsLayerModifier extends Modifier.Node implements LayoutModifierNode, SemanticsModifierNode {
    public float A;
    public float B;
    public float C;
    public float D;
    public float E;
    public float F;
    public float G;
    public long H;
    public Shape I;
    public boolean J;
    public RenderEffect K;
    public long L;
    public long M;
    public int N;
    public int O;
    public ColorFilter P;
    public LayerOutsets Q;
    public a R;
    public float x;
    public float y;
    public float z;

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (!this.J) {
            return;
        }
        SemanticsPropertiesKt.d(semanticsPropertyReceiver, this.I);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.node.LayoutModifierNode
    public final MeasureResult j(MeasureScope measureScope, Measurable measurable, long j) {
        Map map;
        final Placeable w = measurable.w(j);
        int i = w.j;
        int i2 = w.k;
        Function1 function1 = new Function1() { // from class: androidx.compose.ui.graphics.b
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Placeable.PlacementScope.n((Placeable.PlacementScope) obj, Placeable.this, 0, 0, this.R, 4);
                return Unit.a;
            }
        };
        map = EmptyMap.j;
        return measureScope.B(i, i2, map, function1);
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final boolean n() {
        return false;
    }

    public final String toString() {
        float f = this.x;
        float f2 = this.y;
        float f3 = this.z;
        float f4 = this.A;
        float f5 = this.B;
        float f6 = this.C;
        float f7 = this.D;
        float f8 = this.E;
        float f9 = this.F;
        float f10 = this.G;
        String b = TransformOrigin.b(this.H);
        Shape shape = this.I;
        boolean z = this.J;
        RenderEffect renderEffect = this.K;
        String i = Color.i(this.L);
        String i2 = Color.i(this.M);
        String d = jb.d("CompositingStrategy(value=", this.N, ")");
        String a = BlendMode.a(this.O);
        ColorFilter colorFilter = this.P;
        LayerOutsets layerOutsets = this.Q;
        StringBuilder n = q.n("SimpleGraphicsLayerModifier(scaleX=", f, ", scaleY=", f2, ", alpha = ");
        n.append(f3);
        n.append(", translationX=");
        n.append(f4);
        n.append(", translationY=");
        n.append(f5);
        n.append(", shadowElevation=");
        n.append(f6);
        n.append(", rotationX=");
        n.append(f7);
        n.append(", rotationY=");
        n.append(f8);
        n.append(", rotationZ=");
        n.append(f9);
        n.append(", cameraDistance=");
        n.append(f10);
        n.append(", transformOrigin=");
        n.append(b);
        n.append(", shape=");
        n.append(shape);
        n.append(", clip=");
        n.append(z);
        n.append(", renderEffect=");
        n.append(renderEffect);
        n.append(", ambientShadowColor=");
        q.B(n, i, ", spotShadowColor=", i2, ", compositingStrategy=");
        q.B(n, d, ", blendMode=", a, ", colorFilter=");
        n.append(colorFilter);
        n.append("outsets=");
        n.append(layerOutsets);
        n.append(")");
        return n.toString();
    }
}
