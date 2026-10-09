package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DpTouchBoundsExpansion;
import androidx.compose.ui.node.PointerInputModifierNode;
import androidx.compose.ui.node.TouchBoundsExpansion;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.node.TraversableNodeKt;
import androidx.compose.ui.unit.Density;
import defpackage.a7;
import defpackage.o0;
import defpackage.z7;
import java.util.List;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class HoverIconModifierNode extends Modifier.Node implements TraversableNode, PointerInputModifierNode, CompositionLocalConsumerModifierNode {
    public DpTouchBoundsExpansion x;
    public AndroidPointerIconType y;
    public boolean z;

    public HoverIconModifierNode(AndroidPointerIconType androidPointerIconType, DpTouchBoundsExpansion dpTouchBoundsExpansion) {
        this.x = dpTouchBoundsExpansion;
        this.y = androidPointerIconType;
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        if (pointerEventPass == PointerEventPass.k) {
            List list = pointerEvent.a;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                if (b1(((PointerInputChange) list.get(i)).i)) {
                    int i2 = pointerEvent.f;
                    if (i2 == 4) {
                        this.z = true;
                        a1();
                        return;
                    } else {
                        if (i2 == 5) {
                            c1();
                            return;
                        }
                        return;
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final void L() {
        c1();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        c1();
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final void Y0() {
        AndroidPointerIconType androidPointerIconType;
        ?? obj = new Object();
        TraversableNodeKt.b(this, new a7((Ref$ObjectRef) obj));
        HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) obj.j;
        if (hoverIconModifierNode == null || (androidPointerIconType = hoverIconModifierNode.y) == null) {
            androidPointerIconType = this.y;
        }
        Z0(androidPointerIconType);
    }

    public abstract void Z0(PointerIcon pointerIcon);

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.internal.Ref$BooleanRef, java.lang.Object] */
    public final void a1() {
        ?? obj = new Object();
        obj.j = true;
        TraversableNodeKt.d(this, new z7(obj));
        if (obj.j) {
            Y0();
        }
    }

    public abstract boolean b1(int i);

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final void c1() {
        if (this.z) {
            this.z = false;
            if (this.w) {
                ?? obj = new Object();
                TraversableNodeKt.b(this, new o0(obj, 2));
                HoverIconModifierNode hoverIconModifierNode = (HoverIconModifierNode) obj.j;
                if (hoverIconModifierNode != null) {
                    hoverIconModifierNode.Y0();
                } else {
                    Z0(null);
                }
            }
        }
    }

    @Override // androidx.compose.ui.node.PointerInputModifierNode
    public final long t() {
        if (this.x != null) {
            Density density = DelegatableNodeKt.g(this).H;
            int i = TouchBoundsExpansion.b;
            return TouchBoundsExpansion.Companion.b(density.y0(10.0f), density.y0(40.0f), density.y0(10.0f), density.y0(40.0f));
        }
        return TouchBoundsExpansion.a;
    }
}
