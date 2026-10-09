package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.w6;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextContextMenuToolbarHandlerElement extends ModifierNodeElement<TextContextMenuToolbarHandlerNode> {
    public final ToolbarRequester b;
    public final Function1 c;
    public final Function1 d;
    public final w6 e;

    public TextContextMenuToolbarHandlerElement(ToolbarRequester toolbarRequester, Function1 function1, Function1 function12, w6 w6Var) {
        this.b = toolbarRequester;
        this.c = function1;
        this.d = function12;
        this.e = w6Var;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof TextContextMenuToolbarHandlerElement) {
                TextContextMenuToolbarHandlerElement textContextMenuToolbarHandlerElement = (TextContextMenuToolbarHandlerElement) obj;
                if (this.b != textContextMenuToolbarHandlerElement.b || this.c != textContextMenuToolbarHandlerElement.c || this.d != textContextMenuToolbarHandlerElement.d || this.e != textContextMenuToolbarHandlerElement.e) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        return new TextContextMenuToolbarHandlerNode(this.b, this.c, this.d, this.e);
    }

    public final int hashCode() {
        return this.e.hashCode() + ((this.d.hashCode() + ((this.c.hashCode() + (this.b.hashCode() * 31)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        ToolbarHandlerState toolbarHandlerState;
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = (TextContextMenuToolbarHandlerNode) node;
        textContextMenuToolbarHandlerNode.z.a = null;
        ToolbarRequester toolbarRequester = this.b;
        textContextMenuToolbarHandlerNode.z = toolbarRequester;
        toolbarRequester.a = textContextMenuToolbarHandlerNode;
        if (textContextMenuToolbarHandlerNode.w) {
            toolbarHandlerState = ToolbarHandlerState.l;
        } else {
            toolbarHandlerState = ToolbarHandlerState.k;
        }
        toolbarRequester.b = toolbarHandlerState;
        textContextMenuToolbarHandlerNode.A = this.c;
        textContextMenuToolbarHandlerNode.B = this.d;
        textContextMenuToolbarHandlerNode.C = this.e;
    }
}
