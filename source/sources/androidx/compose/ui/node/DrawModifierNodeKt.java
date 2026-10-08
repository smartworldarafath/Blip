package androidx.compose.ui.node;

import androidx.compose.ui.Modifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DrawModifierNodeKt {
    /* JADX WARN: Multi-variable type inference failed */
    public static final void a(DrawModifierNode drawModifierNode) {
        if (((Modifier.Node) drawModifierNode).j.w) {
            DelegatableNodeKt.e(drawModifierNode, 1).l1();
        }
    }
}
