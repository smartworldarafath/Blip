package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import defpackage.f7;
import defpackage.u2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DelegatingNode extends Modifier.Node {
    public final int x = NodeKindKt.e(this);
    public Modifier.Node y;

    @Override // androidx.compose.ui.Modifier.Node
    public final void O0() {
        super.O0();
        for (Modifier.Node node = this.y; node != null; node = node.o) {
            node.X0(this.q);
            if (!node.w) {
                node.O0();
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void P0() {
        for (Modifier.Node node = this.y; node != null; node = node.o) {
            node.P0();
        }
        super.P0();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void T0() {
        super.T0();
        for (Modifier.Node node = this.y; node != null; node = node.o) {
            node.T0();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void U0() {
        for (Modifier.Node node = this.y; node != null; node = node.o) {
            node.U0();
        }
        super.U0();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void V0() {
        super.V0();
        for (Modifier.Node node = this.y; node != null; node = node.o) {
            node.V0();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void W0(Modifier.Node node) {
        this.j = node;
        for (Modifier.Node node2 = this.y; node2 != null; node2 = node2.o) {
            node2.W0(node);
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void X0(NodeCoordinator nodeCoordinator) {
        this.q = nodeCoordinator;
        for (Modifier.Node node = this.y; node != null; node = node.o) {
            node.X0(nodeCoordinator);
        }
    }

    public final DelegatableNode Y0(DelegatableNode delegatableNode) {
        Modifier.Node node;
        Modifier.Node node2;
        Modifier.Node node3 = ((Modifier.Node) delegatableNode).j;
        if (node3 != delegatableNode) {
            if (delegatableNode instanceof Modifier.Node) {
                node = (Modifier.Node) delegatableNode;
            } else {
                node = null;
            }
            if (node != null) {
                node2 = node.n;
            } else {
                node2 = null;
            }
            if (node3 != this.j || !Intrinsics.a(node2, this)) {
                u2.l("Cannot delegate to an already delegated node");
                return null;
            }
        } else {
            if (node3.w) {
                InlineClassHelperKt.b("Cannot delegate to an already attached node");
            }
            node3.W0(this.j);
            int i = this.l;
            int f = NodeKindKt.f(node3);
            node3.l = f;
            int i2 = this.l;
            int i3 = f & 2;
            if (i3 != 0 && (i2 & 2) != 0 && !(this instanceof LayoutModifierNode)) {
                InlineClassHelperKt.b("Delegating to multiple LayoutModifierNodes without the delegating node implementing LayoutModifierNode itself is not allowed.\nDelegating Node: " + this + "\nDelegate Node: " + node3);
            }
            node3.o = this.y;
            this.y = node3;
            node3.n = this;
            a1(f | this.l, false);
            if (this.w) {
                if (i3 != 0 && (i & 2) == 0) {
                    NodeChain nodeChain = DelegatableNodeKt.g(this).O;
                    this.j.X0(null);
                    nodeChain.g();
                } else {
                    X0(this.q);
                }
                node3.O0();
                node3.U0();
                if (!node3.w) {
                    InlineClassHelperKt.b("autoInvalidateInsertedNode called on unattached node");
                }
                NodeKindKt.a(node3, -1, 1);
            }
        }
        return delegatableNode;
    }

    public final void Z0(DelegatableNode delegatableNode) {
        Modifier.Node node = null;
        for (Modifier.Node node2 = this.y; node2 != null; node2 = node2.o) {
            if (node2 == delegatableNode) {
                boolean z = node2.w;
                if (z) {
                    MutableObjectIntMap mutableObjectIntMap = NodeKindKt.a;
                    if (!z) {
                        InlineClassHelperKt.b("autoInvalidateRemovedNode called on unattached node");
                    }
                    NodeKindKt.a(node2, -1, 2);
                    node2.V0();
                    node2.P0();
                }
                node2.W0(node2);
                node2.m = 0;
                Modifier.Node node3 = node2.o;
                if (node == null) {
                    this.y = node3;
                } else {
                    node.o = node3;
                }
                node2.o = null;
                node2.n = null;
                int i = this.l;
                int f = NodeKindKt.f(this);
                a1(f, true);
                if (this.w && (i & 2) != 0 && (f & 2) == 0) {
                    NodeChain nodeChain = DelegatableNodeKt.g(this).O;
                    this.j.X0(null);
                    nodeChain.g();
                    return;
                }
                return;
            }
            node = node2;
        }
        f7.i(delegatableNode, "Could not find delegate: ");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r2v5 */
    /* JADX WARN: Type inference failed for: r2v6 */
    public final void a1(int i, boolean z) {
        int i2;
        Modifier.Node node;
        int i3 = this.l;
        this.l = i;
        if (i3 != i) {
            Modifier.Node node2 = this.j;
            if (node2 == this) {
                this.m = i;
            }
            boolean z2 = this.w;
            ?? r2 = this;
            if (z2) {
                while (r2 != 0) {
                    i |= r2.l;
                    r2.l = i;
                    if (r2 == node2) {
                        break;
                    } else {
                        r2 = r2.n;
                    }
                }
                if (z && r2 == node2) {
                    i = NodeKindKt.f(node2);
                    node2.l = i;
                }
                if (r2 != 0 && (node = r2.o) != null) {
                    i2 = node.m;
                } else {
                    i2 = 0;
                }
                int i4 = i | i2;
                for (Modifier.Node node3 = r2; node3 != null; node3 = node3.n) {
                    i4 |= node3.l;
                    node3.m = i4;
                }
            }
        }
    }
}
