package androidx.compose.ui.node;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.draw.DrawModifier;
import androidx.compose.ui.focus.FocusEventModifierNode;
import androidx.compose.ui.focus.FocusInvalidationManager;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.indirect.IndirectPointerInputModifierNode;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.pointer.PointerInputModifier;
import androidx.compose.ui.input.rotary.RotaryInputModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayoutProviderModifierNode;
import androidx.compose.ui.layout.LayoutModifier;
import androidx.compose.ui.layout.ParentDataModifier;
import androidx.compose.ui.modifier.ModifierLocalModifierNode;
import androidx.compose.ui.modifier.ModifierLocalProvider;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.relocation.BringIntoViewModifierNode;
import androidx.compose.ui.semantics.SemanticsModifier;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class NodeKindKt {
    public static final MutableObjectIntMap a;

    static {
        MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.a;
        a = new MutableObjectIntMap();
    }

    public static final void a(Modifier.Node node, int i, int i2) {
        if (node instanceof DelegatingNode) {
            DelegatingNode delegatingNode = (DelegatingNode) node;
            int i3 = delegatingNode.x;
            b(node, i3 & i, i2);
            int i4 = (~i3) & i;
            for (Modifier.Node node2 = delegatingNode.y; node2 != null; node2 = node2.o) {
                a(node2, i4, i2);
            }
            return;
        }
        b(node, i & node.l, i2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void b(Modifier.Node node, int i, int i2) {
        if (i2 != 0 || node.N0()) {
            if ((i & 2) != 0 && (node instanceof LayoutModifierNode)) {
                LayoutModifierNodeKt.a((LayoutModifierNode) node);
                if (i2 == 2) {
                    DelegatableNodeKt.e(node, 2).q1();
                }
            }
            if ((i & 128) != 0 && i2 != 2) {
                DelegatableNodeKt.g(node).I();
            }
            if ((4194304 & i) != 0 && i2 != 2) {
                DelegatableNodeKt.g(node).Y(false);
            }
            if ((i & 256) != 0 && (node instanceof GlobalPositionAwareModifierNode)) {
                if (i2 != 1) {
                    if (i2 == 2) {
                        DelegatableNodeKt.g(node).e0(r0.Y - 1);
                    }
                } else {
                    LayoutNode g = DelegatableNodeKt.g(node);
                    g.e0(g.Y + 1);
                }
                if (i2 != 2) {
                    LayoutNode g2 = DelegatableNodeKt.g(node);
                    if (g2.Y != 0 && !g2.q() && !g2.r() && !g2.X) {
                        AndroidComposeView androidComposeView = (AndroidComposeView) LayoutNodeKt.a(g2);
                        OnPositionedDispatcher onPositionedDispatcher = androidComposeView.c0.e;
                        onPositionedDispatcher.getClass();
                        if (g2.Y > 0) {
                            onPositionedDispatcher.a.b(g2);
                            g2.X = true;
                        }
                        androidComposeView.F(null);
                    }
                }
            }
            if ((i & 4) != 0 && (node instanceof DrawModifierNode)) {
                DrawModifierNodeKt.a((DrawModifierNode) node);
            }
            if ((i & 8) != 0 && (node instanceof SemanticsModifierNode)) {
                DelegatableNodeKt.g(node).A = true;
            }
            if ((i & 64) != 0 && (node instanceof ParentDataModifierNode)) {
                LayoutNodeLayoutDelegate layoutNodeLayoutDelegate = DelegatableNodeKt.g((ParentDataModifierNode) node).P;
                layoutNodeLayoutDelegate.p.A = true;
                LookaheadPassDelegate lookaheadPassDelegate = layoutNodeLayoutDelegate.q;
                if (lookaheadPassDelegate != null) {
                    lookaheadPassDelegate.G = true;
                }
            }
            if ((i & 2048) != 0 && (node instanceof FocusPropertiesModifierNode)) {
                FocusPropertiesModifierNode focusPropertiesModifierNode = (FocusPropertiesModifierNode) node;
                CanFocusChecker.b = null;
                focusPropertiesModifierNode.F(CanFocusChecker.a);
                if (CanFocusChecker.b != null) {
                    Modifier.Node node2 = (Modifier.Node) focusPropertiesModifierNode;
                    if (!node2.j.w) {
                        InlineClassHelperKt.b("visitChildren called on an unattached node");
                    }
                    MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
                    Modifier.Node node3 = node2.j;
                    Modifier.Node node4 = node3.o;
                    if (node4 == null) {
                        DelegatableNodeKt.a(mutableVector, node3);
                    } else {
                        mutableVector.b(node4);
                    }
                    while (true) {
                        int i3 = mutableVector.l;
                        if (i3 == 0) {
                            break;
                        }
                        Modifier.Node node5 = (Modifier.Node) mutableVector.k(i3 - 1);
                        if ((node5.m & 1024) == 0) {
                            DelegatableNodeKt.a(mutableVector, node5);
                        } else {
                            while (true) {
                                if (node5 == null) {
                                    break;
                                }
                                if ((node5.l & 1024) != 0) {
                                    MutableVector mutableVector2 = null;
                                    while (node5 != null) {
                                        if (node5 instanceof FocusTargetNode) {
                                            FocusTargetNode focusTargetNode = (FocusTargetNode) node5;
                                            FocusInvalidationManager focusInvalidationManager = ((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).d;
                                            if (focusInvalidationManager.c.d(focusTargetNode)) {
                                                focusInvalidationManager.a();
                                            }
                                        } else if ((node5.l & 1024) != 0 && (node5 instanceof DelegatingNode)) {
                                            int i4 = 0;
                                            for (Modifier.Node node6 = ((DelegatingNode) node5).y; node6 != null; node6 = node6.o) {
                                                if ((node6.l & 1024) != 0) {
                                                    i4++;
                                                    if (i4 == 1) {
                                                        node5 = node6;
                                                    } else {
                                                        if (mutableVector2 == null) {
                                                            mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node5 != null) {
                                                            mutableVector2.b(node5);
                                                            node5 = null;
                                                        }
                                                        mutableVector2.b(node6);
                                                    }
                                                }
                                            }
                                            if (i4 == 1) {
                                            }
                                        }
                                        node5 = DelegatableNodeKt.b(mutableVector2);
                                    }
                                } else {
                                    node5 = node5.o;
                                }
                            }
                        }
                    }
                }
            }
            if ((i & 4096) != 0 && (node instanceof FocusEventModifierNode)) {
                FocusEventModifierNode focusEventModifierNode = (FocusEventModifierNode) node;
                FocusInvalidationManager focusInvalidationManager2 = ((FocusOwnerImpl) DelegatableNodeKt.h(focusEventModifierNode).getFocusOwner()).d;
                if (focusInvalidationManager2.d.d(focusEventModifierNode)) {
                    focusInvalidationManager2.a();
                }
            }
            if ((i & 2097152) != 0 && (node instanceof IndirectPointerInputModifierNode) && i2 == 2) {
                ((IndirectPointerInputModifierNode) node).k0();
            }
        }
    }

    public static final void c(Modifier.Node node) {
        if (!node.w) {
            InlineClassHelperKt.b("autoInvalidateUpdatedNode called on unattached node");
        }
        a(node, -1, 0);
    }

    public static final int d(Modifier.Element element) {
        int i;
        if (element instanceof LayoutModifier) {
            i = 3;
        } else {
            i = 1;
        }
        if (element instanceof DrawModifier) {
            i |= 4;
        }
        if (element instanceof SemanticsModifier) {
            i |= 8;
        }
        if (element instanceof PointerInputModifier) {
            i |= 16;
        }
        if (element instanceof ModifierLocalProvider) {
            i |= 32;
        }
        if (element instanceof ParentDataModifier) {
            i |= 64;
        }
        if (element instanceof BringIntoViewModifierNode) {
            return 524288 | i;
        }
        return i;
    }

    public static final int e(Modifier.Node node) {
        int i;
        int i2 = node.l;
        if (i2 != 0) {
            return i2;
        }
        Class<?> cls = node.getClass();
        MutableObjectIntMap mutableObjectIntMap = a;
        int a2 = mutableObjectIntMap.a(cls);
        if (a2 >= 0) {
            return mutableObjectIntMap.c[a2];
        }
        if (node instanceof LayoutModifierNode) {
            i = 3;
        } else {
            i = 1;
        }
        if (node instanceof DrawModifierNode) {
            i |= 4;
        }
        if (node instanceof SemanticsModifierNode) {
            i |= 8;
        }
        if (node instanceof PointerInputModifierNode) {
            i |= 16;
        }
        if (node instanceof ModifierLocalModifierNode) {
            i |= 32;
        }
        if (node instanceof ParentDataModifierNode) {
            i |= 64;
        }
        if (node instanceof LayoutAwareModifierNode) {
            i |= 4194432;
        } else if (node instanceof MeasuredSizeAwareModifierNode) {
            i |= 128;
        }
        if (node instanceof GlobalPositionAwareModifierNode) {
            i |= 256;
        }
        if (node instanceof FocusTargetNode) {
            i |= 1024;
        }
        if (node instanceof FocusPropertiesModifierNode) {
            i |= 2048;
        }
        if (node instanceof FocusEventModifierNode) {
            i |= 4096;
        }
        if (node instanceof KeyInputModifierNode) {
            i |= 8192;
        }
        if (node instanceof RotaryInputModifierNode) {
            i |= 16384;
        }
        if (node instanceof CompositionLocalConsumerModifierNode) {
            i |= 32768;
        }
        if (node instanceof TraversableNode) {
            i |= 262144;
        }
        if (node instanceof BringIntoViewModifierNode) {
            i |= 524288;
        }
        if (node instanceof UnplacedAwareModifierNode) {
            i |= 1048576;
        }
        if (node instanceof IndirectPointerInputModifierNode) {
            i |= 2097152;
        }
        if (node instanceof BeyondBoundsLayoutProviderModifierNode) {
            i |= 8388608;
        }
        mutableObjectIntMap.g(i, cls);
        return i;
    }

    public static final int f(Modifier.Node node) {
        if (node instanceof DelegatingNode) {
            DelegatingNode delegatingNode = (DelegatingNode) node;
            int i = delegatingNode.x;
            for (Modifier.Node node2 = delegatingNode.y; node2 != null; node2 = node2.o) {
                i |= f(node2);
            }
            return i;
        }
        return e(node);
    }

    public static final boolean g(int i) {
        boolean z;
        boolean z2 = false;
        if ((i & 128) != 0) {
            z = true;
        } else {
            z = false;
        }
        if ((i & 4194304) != 0) {
            z2 = true;
        }
        return z | z2;
    }
}
