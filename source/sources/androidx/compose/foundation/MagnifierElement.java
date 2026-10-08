package androidx.compose.foundation;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.unit.Density;
import androidx.compose.ui.unit.Dp;
import defpackage.fh;
import defpackage.hc;
import defpackage.jb;
import defpackage.q;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class MagnifierElement extends ModifierNodeElement<MagnifierNode> {
    public final hc b;
    public final fh c;
    public final PlatformMagnifierFactory d;

    public MagnifierElement(hc hcVar, fh fhVar, PlatformMagnifierFactory platformMagnifierFactory) {
        this.b = hcVar;
        this.c = fhVar;
        this.d = platformMagnifierFactory;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new MagnifierNode(this.b, this.c, this.d);
    }

    public final int hashCode() {
        return this.d.hashCode() + ((this.c.hashCode() + jb.b(q.a(Float.NaN, q.a(Float.NaN, jb.a(jb.b(q.a(Float.NaN, this.b.hashCode() * 961, 31), 31, true), 31, 9205357640488583168L), 31), 31), 31, true)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        MagnifierNode magnifierNode = (MagnifierNode) node;
        magnifierNode.getClass();
        PlatformMagnifierFactory platformMagnifierFactory = magnifierNode.z;
        View view = magnifierNode.A;
        Density density = magnifierNode.B;
        magnifierNode.x = this.b;
        magnifierNode.y = this.c;
        PlatformMagnifierFactory platformMagnifierFactory2 = this.d;
        magnifierNode.z = platformMagnifierFactory2;
        View a = DelegatableNode_androidKt.a(magnifierNode);
        Density density2 = DelegatableNodeKt.g(magnifierNode).H;
        if (magnifierNode.C != null) {
            SemanticsPropertyKey semanticsPropertyKey = Magnifier_androidKt.a;
            if (((!Float.isNaN(Float.NaN) || !Float.isNaN(Float.NaN)) && !platformMagnifierFactory2.a()) || !Dp.b(Float.NaN, Float.NaN) || !Dp.b(Float.NaN, Float.NaN) || !platformMagnifierFactory2.equals(platformMagnifierFactory) || !a.equals(view) || !Intrinsics.a(density2, density)) {
                magnifierNode.Z0();
            }
        }
        magnifierNode.a1();
    }
}
