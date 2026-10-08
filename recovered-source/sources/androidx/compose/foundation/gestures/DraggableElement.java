package androidx.compose.foundation.gestures;

import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.ModifierNodeElement;
import defpackage.a7;
import defpackage.jb;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DraggableElement extends ModifierNodeElement<DraggableNode> {
    public static final a7 i = new a7(7);
    public final DraggableState b;
    public final boolean c;
    public final MutableInteractionSource d;
    public final boolean e;
    public final Function3 f;
    public final Function3 g;
    public final boolean h;

    public DraggableElement(DraggableState draggableState, boolean z, MutableInteractionSource mutableInteractionSource, boolean z2, Function3 function3, Function3 function32, boolean z3) {
        Orientation orientation = Orientation.j;
        this.b = draggableState;
        this.c = z;
        this.d = mutableInteractionSource;
        this.e = z2;
        this.f = function3;
        this.g = function32;
        this.h = z3;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj != null && DraggableElement.class == obj.getClass()) {
                DraggableElement draggableElement = (DraggableElement) obj;
                if (Intrinsics.a(this.b, draggableElement.b)) {
                    Orientation orientation = Orientation.j;
                    if (this.c != draggableElement.c || !Intrinsics.a(this.d, draggableElement.d) || this.e != draggableElement.e || !Intrinsics.a(this.f, draggableElement.f) || !Intrinsics.a(this.g, draggableElement.g) || this.h != draggableElement.h) {
                        return false;
                    }
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.foundation.gestures.DraggableNode, androidx.compose.ui.Modifier$Node] */
    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final Modifier.Node g() {
        ?? dragGestureNode = new DragGestureNode(i, this.c, this.d, Orientation.k);
        dragGestureNode.S = this.b;
        dragGestureNode.T = this.e;
        dragGestureNode.U = this.f;
        dragGestureNode.V = this.g;
        dragGestureNode.W = this.h;
        return dragGestureNode;
    }

    public final int hashCode() {
        int i2;
        int b = jb.b((Orientation.k.hashCode() + (this.b.hashCode() * 31)) * 31, 31, this.c);
        MutableInteractionSource mutableInteractionSource = this.d;
        if (mutableInteractionSource != null) {
            i2 = mutableInteractionSource.hashCode();
        } else {
            i2 = 0;
        }
        return Boolean.hashCode(this.h) + ((this.g.hashCode() + ((this.f.hashCode() + jb.b((b + i2) * 31, 31, this.e)) * 31)) * 31);
    }

    @Override // androidx.compose.ui.node.ModifierNodeElement
    public final void i(Modifier.Node node) {
        boolean z;
        boolean z2;
        DraggableNode draggableNode = (DraggableNode) node;
        Orientation orientation = Orientation.k;
        DraggableState draggableState = draggableNode.S;
        DraggableState draggableState2 = this.b;
        if (!Intrinsics.a(draggableState, draggableState2)) {
            draggableNode.S = draggableState2;
            z = true;
        } else {
            z = false;
        }
        boolean z3 = draggableNode.W;
        boolean z4 = this.h;
        if (z3 != z4) {
            draggableNode.W = z4;
            z2 = true;
        } else {
            z2 = z;
        }
        draggableNode.U = this.f;
        draggableNode.V = this.g;
        draggableNode.T = this.e;
        draggableNode.s1(i, this.c, this.d, orientation, z2);
    }
}
