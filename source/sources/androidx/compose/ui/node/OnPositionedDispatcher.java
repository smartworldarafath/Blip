package androidx.compose.ui.node;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.LayoutNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class OnPositionedDispatcher {
    public final MutableVector a = new MutableVector(new LayoutNode[16]);
    public LayoutNode[] b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v3 */
    /* JADX WARN: Type inference failed for: r4v4, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v5, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    /* JADX WARN: Type inference failed for: r4v8 */
    /* JADX WARN: Type inference failed for: r4v9 */
    /* JADX WARN: Type inference failed for: r5v0 */
    /* JADX WARN: Type inference failed for: r5v1 */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v2 */
    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9 */
    public static void b(LayoutNode layoutNode) {
        if (layoutNode.Y > 0) {
            if (layoutNode.P.d == LayoutNode.LayoutState.n && !layoutNode.q() && !layoutNode.r() && !layoutNode.Z && layoutNode.M()) {
                Modifier.Node node = layoutNode.O.f;
                if ((node.m & 256) != 0) {
                    while (node != null) {
                        if ((node.l & 256) != 0) {
                            DelegatingNode delegatingNode = node;
                            ?? r5 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof GlobalPositionAwareModifierNode) {
                                    GlobalPositionAwareModifierNode globalPositionAwareModifierNode = (GlobalPositionAwareModifierNode) delegatingNode;
                                    globalPositionAwareModifierNode.K0(DelegatableNodeKt.e(globalPositionAwareModifierNode, 256));
                                } else if ((delegatingNode.l & 256) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node2 = delegatingNode.y;
                                    int i = 0;
                                    delegatingNode = delegatingNode;
                                    r5 = r5;
                                    while (node2 != null) {
                                        if ((node2.l & 256) != 0) {
                                            i++;
                                            r5 = r5;
                                            if (i == 1) {
                                                delegatingNode = node2;
                                            } else {
                                                if (r5 == 0) {
                                                    r5 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r5.b(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r5.b(node2);
                                            }
                                        }
                                        node2 = node2.o;
                                        delegatingNode = delegatingNode;
                                        r5 = r5;
                                    }
                                    if (i == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.b(r5);
                            }
                        }
                        if ((node.m & 256) == 0) {
                            break;
                        } else {
                            node = node.o;
                        }
                    }
                }
            }
            layoutNode.X = false;
            MutableVector D = layoutNode.D();
            Object[] objArr = D.j;
            int i2 = D.l;
            for (int i3 = 0; i3 < i2; i3++) {
                b((LayoutNode) objArr[i3]);
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000e, code lost:
    
        if (r3 < r0) goto L6;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        LayoutNode[] layoutNodeArr;
        OnPositionedDispatcher$Companion$DepthComparator onPositionedDispatcher$Companion$DepthComparator = OnPositionedDispatcher$Companion$DepthComparator.j;
        MutableVector mutableVector = this.a;
        mutableVector.n(onPositionedDispatcher$Companion$DepthComparator);
        int i = mutableVector.l;
        LayoutNode[] layoutNodeArr2 = this.b;
        if (layoutNodeArr2 != null) {
            int length = layoutNodeArr2.length;
            layoutNodeArr = layoutNodeArr2;
        }
        layoutNodeArr = new LayoutNode[Math.max(16, i)];
        this.b = null;
        for (int i2 = 0; i2 < i; i2++) {
            layoutNodeArr[i2] = mutableVector.j[i2];
        }
        mutableVector.g();
        while (true) {
            i--;
            if (-1 < i) {
                LayoutNode layoutNode = layoutNodeArr[i];
                layoutNode.getClass();
                if (layoutNode.X) {
                    b(layoutNode);
                }
                layoutNodeArr[i] = 0;
            } else {
                this.b = layoutNodeArr;
                return;
            }
        }
    }
}
