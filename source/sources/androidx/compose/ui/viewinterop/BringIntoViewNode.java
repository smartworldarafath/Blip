package androidx.compose.ui.viewinterop;

import androidx.compose.ui.Modifier;
import defpackage.m2;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BringIntoViewNode extends Modifier.Node {
    public m2 x;
    public final a y = new a(this, 2);

    public BringIntoViewNode(m2 m2Var) {
        this.x = m2Var;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        this.x.b(this.y);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        this.x.b(null);
    }
}
