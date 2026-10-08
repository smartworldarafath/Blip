package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.builder.TextContextMenuBuilderScope;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.platform.AndroidCompositionLocals_androidKt;
import defpackage.zc;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class AddTextContextMenuDataComponentsWithContextElement extends ModifierNodeElement<AddTextContextMenuDataComponentsWithContextNode> {
    public final zc b;

    public AddTextContextMenuDataComponentsWithContextElement(zc zcVar) {
        this.b = zcVar;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AddTextContextMenuDataComponentsWithContextElement) {
                if (this.b != ((AddTextContextMenuDataComponentsWithContextElement) obj).b) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.text.contextmenu.modifier.AddTextContextMenuDataComponentsWithContextNode, androidx.compose.ui.node.DelegatingNode, androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.compose.foundation.text.contextmenu.modifier.a] */
    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.compose.foundation.text.contextmenu.modifier.AddTextContextMenuDataComponentsNode, androidx.compose.ui.Modifier$Node, androidx.compose.ui.node.DelegatableNode] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        final ?? delegatingNode = new DelegatingNode();
        delegatingNode.z = this.b;
        ?? r1 = new Function1() { // from class: androidx.compose.foundation.text.contextmenu.modifier.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                AddTextContextMenuDataComponentsWithContextNode addTextContextMenuDataComponentsWithContextNode = AddTextContextMenuDataComponentsWithContextNode.this;
                addTextContextMenuDataComponentsWithContextNode.z.n((TextContextMenuBuilderScope) obj, CompositionLocalConsumerModifierNodeKt.a(addTextContextMenuDataComponentsWithContextNode, AndroidCompositionLocals_androidKt.b));
                return Unit.a;
            }
        };
        ?? node = new Modifier.Node();
        node.x = r1;
        delegatingNode.Y0(node);
        return delegatingNode;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ((AddTextContextMenuDataComponentsWithContextNode) node).z = this.b;
    }
}
