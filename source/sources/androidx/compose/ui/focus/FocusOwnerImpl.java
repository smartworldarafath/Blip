package androidx.compose.ui.focus;

import android.os.Trace;
import android.view.KeyEvent;
import android.view.View;
import androidx.collection.MutableLongSet;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.ModifierNodeElement;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.unit.LayoutDirection;
import defpackage.k8;
import defpackage.o8;
import defpackage.p2;
import defpackage.r0;
import defpackage.u2;
import java.util.ArrayList;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusOwnerImpl implements FocusOwner {
    public final AndroidComposeView a;
    public final AndroidComposeView b;
    public final FocusInvalidationManager d;
    public MutableLongSet f;
    public FocusTargetNode h;
    public final FocusTargetNode c = new FocusTargetNode(2, null, 14);
    public final FocusOwnerImpl$modifier$1 e = new ModifierNodeElement<FocusTargetNode>() { // from class: androidx.compose.ui.focus.FocusOwnerImpl$modifier$1
        public final boolean equals(Object obj) {
            if (obj == this) {
                return true;
            }
            return false;
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final Modifier.Node g() {
            return FocusOwnerImpl.this.c;
        }

        public final int hashCode() {
            return FocusOwnerImpl.this.c.hashCode();
        }

        @Override // androidx.compose.ui.node.ModifierNodeElement
        public final /* bridge */ /* synthetic */ void i(Modifier.Node node) {
        }
    };
    public final MutableObjectList g = new MutableObjectList(1);

    /* JADX WARN: Type inference failed for: r4v3, types: [androidx.compose.ui.focus.FocusOwnerImpl$modifier$1] */
    public FocusOwnerImpl(AndroidComposeView androidComposeView, AndroidComposeView androidComposeView2) {
        this.a = androidComposeView;
        this.b = androidComposeView2;
        this.d = new FocusInvalidationManager(this, androidComposeView2);
    }

    public final boolean b(boolean z) {
        NodeChain nodeChain;
        if (g() != null) {
            FocusTargetNode g = g();
            j(null);
            if (g != null) {
                g.Z0(FocusStateImpl.j, FocusStateImpl.m);
                if (!g.j.w) {
                    InlineClassHelperKt.b("visitAncestors called on an unattached node");
                }
                Modifier.Node node = g.j.n;
                LayoutNode g2 = DelegatableNodeKt.g(g);
                while (g2 != null) {
                    if ((g2.O.f.m & 1024) != 0) {
                        while (node != null) {
                            if ((node.l & 1024) != 0) {
                                Modifier.Node node2 = node;
                                MutableVector mutableVector = null;
                                while (node2 != null) {
                                    if (node2 instanceof FocusTargetNode) {
                                        ((FocusTargetNode) node2).Z0(FocusStateImpl.k, FocusStateImpl.m);
                                    } else if ((node2.l & 1024) != 0 && (node2 instanceof DelegatingNode)) {
                                        int i = 0;
                                        for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                            if ((node3.l & 1024) != 0) {
                                                i++;
                                                if (i == 1) {
                                                    node2 = node3;
                                                } else {
                                                    if (mutableVector == null) {
                                                        mutableVector = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node2 != null) {
                                                        mutableVector.b(node2);
                                                        node2 = null;
                                                    }
                                                    mutableVector.b(node3);
                                                }
                                            }
                                        }
                                        if (i == 1) {
                                        }
                                    }
                                    node2 = DelegatableNodeKt.b(mutableVector);
                                }
                            }
                            node = node.n;
                        }
                    }
                    g2 = g2.w();
                    if (g2 != null && (nodeChain = g2.O) != null) {
                        node = nodeChain.e;
                    } else {
                        node = null;
                    }
                }
            }
        }
        return true;
    }

    public final boolean c(int i, boolean z, boolean z2) {
        boolean z3 = true;
        if (!z) {
            int ordinal = FocusTransactionsKt.b(this.c, i).ordinal();
            if (ordinal != 0) {
                if (ordinal != 1 && ordinal != 2 && ordinal != 3) {
                    k8.e();
                    return false;
                }
                z3 = false;
            } else {
                b(z);
            }
        } else {
            b(z);
        }
        if (z3 && z2) {
            d();
        }
        return z3;
    }

    public final void d() {
        AndroidComposeView androidComposeView = this.a;
        if (!androidComposeView.isFocused() && !androidComposeView.hasFocus()) {
            if (androidComposeView.hasFocus()) {
                View findFocus = androidComposeView.findFocus();
                if (findFocus != null) {
                    findFocus.clearFocus();
                }
                androidComposeView.clearFocus();
                return;
            }
            return;
        }
        androidComposeView.clearFocus();
    }

    /* JADX WARN: Code restructure failed: missing block: B:32:0x0057, code lost:
    
        if (r7 == null) goto L31;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:34:0x0167 A[Catch: all -> 0x02e2, TryCatch #0 {all -> 0x02e2, blocks: (B:3:0x0007, B:5:0x000e, B:9:0x0019, B:13:0x0023, B:16:0x002f, B:18:0x0035, B:19:0x003a, B:21:0x0042, B:23:0x0047, B:25:0x004d, B:29:0x0053, B:34:0x0167, B:36:0x016d, B:37:0x0170, B:39:0x017b, B:42:0x0187, B:46:0x0191, B:49:0x0197, B:50:0x019c, B:52:0x01a4, B:54:0x01aa, B:56:0x01ae, B:58:0x01b6, B:60:0x01bc, B:66:0x01c4, B:68:0x01cd, B:69:0x01d1, B:64:0x01d4, B:75:0x01da, B:86:0x01df, B:89:0x01e2, B:91:0x01e8, B:98:0x01ec, B:103:0x01f3, B:105:0x01fb, B:113:0x0212, B:115:0x0217, B:149:0x021b, B:144:0x025d, B:117:0x0227, B:119:0x022d, B:121:0x0231, B:123:0x0239, B:125:0x023f, B:131:0x0247, B:133:0x0250, B:134:0x0254, B:129:0x0257, B:155:0x0262, B:159:0x0272, B:161:0x0277, B:195:0x027b, B:190:0x02bd, B:163:0x0287, B:165:0x028d, B:167:0x0291, B:169:0x0299, B:171:0x029f, B:177:0x02a7, B:179:0x02b0, B:180:0x02b4, B:175:0x02b7, B:202:0x02c4, B:204:0x02cb, B:217:0x005b, B:219:0x0061, B:220:0x0064, B:222:0x006c, B:225:0x0078, B:229:0x0082, B:264:0x00d5, B:266:0x00d9, B:231:0x0087, B:233:0x008d, B:235:0x0091, B:237:0x0099, B:239:0x009f, B:245:0x00a7, B:247:0x00b0, B:248:0x00b4, B:243:0x00b7, B:254:0x00bd, B:268:0x00c2, B:271:0x00c5, B:273:0x00cb, B:280:0x00cf, B:285:0x00df, B:287:0x00e5, B:288:0x00e8, B:290:0x00f2, B:293:0x00fe, B:297:0x0108, B:332:0x015b, B:334:0x015f, B:299:0x010d, B:301:0x0113, B:303:0x0117, B:305:0x011f, B:307:0x0125, B:313:0x012d, B:315:0x0136, B:316:0x013a, B:311:0x013d, B:322:0x0143, B:337:0x0148, B:340:0x014b, B:342:0x0151, B:349:0x0155), top: B:2:0x0007 }] */
    /* JADX WARN: Type inference failed for: r0v20, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v21 */
    /* JADX WARN: Type inference failed for: r0v22 */
    /* JADX WARN: Type inference failed for: r0v23 */
    /* JADX WARN: Type inference failed for: r0v24, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r0v28 */
    /* JADX WARN: Type inference failed for: r0v29 */
    /* JADX WARN: Type inference failed for: r0v30 */
    /* JADX WARN: Type inference failed for: r0v31 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7 */
    /* JADX WARN: Type inference failed for: r12v23, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v24, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v28, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v29, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v33, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v34 */
    /* JADX WARN: Type inference failed for: r12v35, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v36 */
    /* JADX WARN: Type inference failed for: r12v37 */
    /* JADX WARN: Type inference failed for: r12v38 */
    /* JADX WARN: Type inference failed for: r12v39 */
    /* JADX WARN: Type inference failed for: r12v42, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r12v43 */
    /* JADX WARN: Type inference failed for: r12v44, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r12v45 */
    /* JADX WARN: Type inference failed for: r12v46 */
    /* JADX WARN: Type inference failed for: r12v47 */
    /* JADX WARN: Type inference failed for: r12v48 */
    /* JADX WARN: Type inference failed for: r12v62 */
    /* JADX WARN: Type inference failed for: r12v63 */
    /* JADX WARN: Type inference failed for: r12v64 */
    /* JADX WARN: Type inference failed for: r12v65 */
    /* JADX WARN: Type inference failed for: r14v1 */
    /* JADX WARN: Type inference failed for: r14v10, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v12 */
    /* JADX WARN: Type inference failed for: r14v13 */
    /* JADX WARN: Type inference failed for: r14v14 */
    /* JADX WARN: Type inference failed for: r14v15 */
    /* JADX WARN: Type inference failed for: r14v2 */
    /* JADX WARN: Type inference failed for: r14v6, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r14v7 */
    /* JADX WARN: Type inference failed for: r14v8 */
    /* JADX WARN: Type inference failed for: r14v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean e(KeyEvent keyEvent, Function0 function0) {
        Object obj;
        Modifier.Node node;
        NodeChain nodeChain;
        Object obj2;
        NodeChain nodeChain2;
        int size;
        NodeChain nodeChain3;
        boolean z;
        FocusTargetNode focusTargetNode = this.c;
        Trace.beginSection("FocusOwnerImpl:dispatchKeyEvent");
        try {
            if (this.d.e) {
                System.out.println((Object) "FocusRelatedWarning: Dispatching key event while focus system is invalidated.");
                return false;
            }
            if (!k(keyEvent)) {
                return false;
            }
            FocusTargetNode a = FocusTraversalKt.a(focusTargetNode);
            if (a != null) {
                if (!a.j.w) {
                    InlineClassHelperKt.b("visitLocalDescendants called on an unattached node");
                }
                Modifier.Node node2 = a.j;
                if ((node2.m & 9216) != 0) {
                    node = null;
                    for (Modifier.Node node3 = node2.o; node3 != null; node3 = node3.o) {
                        int i = node3.l;
                        if ((i & 9216) != 0) {
                            if ((i & 1024) != 0) {
                                break;
                            }
                            node = node3;
                        }
                    }
                } else {
                    node = null;
                }
            }
            if (a != null) {
                if (!a.j.w) {
                    InlineClassHelperKt.b("visitAncestors called on an unattached node");
                }
                Modifier.Node node4 = a.j;
                LayoutNode g = DelegatableNodeKt.g(a);
                loop11: while (true) {
                    if (g != null) {
                        if ((g.O.f.m & 8192) != 0) {
                            while (node4 != null) {
                                if ((node4.l & 8192) != 0) {
                                    MutableVector mutableVector = null;
                                    Modifier.Node node5 = node4;
                                    while (node5 != null) {
                                        if (node5 instanceof KeyInputModifierNode) {
                                            obj2 = node5;
                                            break loop11;
                                        }
                                        if ((node5.l & 8192) != 0 && (node5 instanceof DelegatingNode)) {
                                            Modifier.Node node6 = ((DelegatingNode) node5).y;
                                            int i2 = 0;
                                            node5 = node5;
                                            mutableVector = mutableVector;
                                            while (node6 != null) {
                                                if ((node6.l & 8192) != 0) {
                                                    i2++;
                                                    mutableVector = mutableVector;
                                                    if (i2 == 1) {
                                                        node5 = node6;
                                                    } else {
                                                        if (mutableVector == null) {
                                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                                        }
                                                        if (node5 != null) {
                                                            mutableVector.b(node5);
                                                            node5 = null;
                                                        }
                                                        mutableVector.b(node6);
                                                    }
                                                }
                                                node6 = node6.o;
                                                node5 = node5;
                                                mutableVector = mutableVector;
                                            }
                                            if (i2 == 1) {
                                            }
                                        }
                                        node5 = DelegatableNodeKt.b(mutableVector);
                                    }
                                }
                                node4 = node4.n;
                            }
                        }
                        g = g.w();
                        if (g != null && (nodeChain2 = g.O) != null) {
                            node4 = nodeChain2.e;
                        } else {
                            node4 = null;
                        }
                    } else {
                        obj2 = null;
                        break;
                    }
                }
                Object obj3 = (KeyInputModifierNode) obj2;
                if (obj3 != null) {
                    node = ((Modifier.Node) obj3).j;
                    if (node != null) {
                        if (!node.j.w) {
                            InlineClassHelperKt.b("visitAncestors called on an unattached node");
                        }
                        Modifier.Node node7 = node.j.n;
                        LayoutNode g2 = DelegatableNodeKt.g(node);
                        ArrayList arrayList = null;
                        while (g2 != null) {
                            if ((g2.O.f.m & 8192) != 0) {
                                while (node7 != null) {
                                    if ((node7.l & 8192) != 0) {
                                        Modifier.Node node8 = node7;
                                        MutableVector mutableVector2 = null;
                                        while (node8 != null) {
                                            if (node8 instanceof KeyInputModifierNode) {
                                                if (arrayList == null) {
                                                    arrayList = new ArrayList();
                                                }
                                                arrayList.add(node8);
                                                z = false;
                                            } else {
                                                z = true;
                                            }
                                            if (z && (node8.l & 8192) != 0 && (node8 instanceof DelegatingNode)) {
                                                int i3 = 0;
                                                for (Modifier.Node node9 = ((DelegatingNode) node8).y; node9 != null; node9 = node9.o) {
                                                    if ((node9.l & 8192) != 0) {
                                                        i3++;
                                                        if (i3 == 1) {
                                                            node8 = node9;
                                                        } else {
                                                            if (mutableVector2 == null) {
                                                                mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                                            }
                                                            if (node8 != null) {
                                                                mutableVector2.b(node8);
                                                                node8 = null;
                                                            }
                                                            mutableVector2.b(node9);
                                                        }
                                                    }
                                                }
                                                if (i3 == 1) {
                                                }
                                            }
                                            node8 = DelegatableNodeKt.b(mutableVector2);
                                        }
                                    }
                                    node7 = node7.n;
                                }
                            }
                            g2 = g2.w();
                            if (g2 != null && (nodeChain3 = g2.O) != null) {
                                node7 = nodeChain3.e;
                            } else {
                                node7 = null;
                            }
                        }
                        if (arrayList != null && arrayList.size() - 1 >= 0) {
                            while (true) {
                                int i4 = size - 1;
                                if (((KeyInputModifierNode) arrayList.get(size)).o(keyEvent)) {
                                    return true;
                                }
                                if (i4 < 0) {
                                    break;
                                }
                                size = i4;
                            }
                        }
                        DelegatingNode delegatingNode = node.j;
                        ?? r0 = 0;
                        while (delegatingNode != 0) {
                            if (delegatingNode instanceof KeyInputModifierNode) {
                                if (((KeyInputModifierNode) delegatingNode).o(keyEvent)) {
                                    return true;
                                }
                            } else if ((delegatingNode.l & 8192) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                Modifier.Node node10 = delegatingNode.y;
                                int i5 = 0;
                                r0 = r0;
                                delegatingNode = delegatingNode;
                                while (node10 != null) {
                                    if ((node10.l & 8192) != 0) {
                                        i5++;
                                        r0 = r0;
                                        if (i5 == 1) {
                                            delegatingNode = node10;
                                        } else {
                                            if (r0 == 0) {
                                                r0 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode != 0) {
                                                r0.b(delegatingNode);
                                                delegatingNode = 0;
                                            }
                                            r0.b(node10);
                                        }
                                    }
                                    node10 = node10.o;
                                    r0 = r0;
                                    delegatingNode = delegatingNode;
                                }
                                if (i5 == 1) {
                                }
                            }
                            delegatingNode = DelegatableNodeKt.b(r0);
                        }
                        if (((Boolean) function0.a()).booleanValue()) {
                            return true;
                        }
                        DelegatingNode delegatingNode2 = node.j;
                        ?? r14 = 0;
                        while (delegatingNode2 != 0) {
                            if (delegatingNode2 instanceof KeyInputModifierNode) {
                                if (((KeyInputModifierNode) delegatingNode2).I(keyEvent)) {
                                    return true;
                                }
                            } else if ((delegatingNode2.l & 8192) != 0 && (delegatingNode2 instanceof DelegatingNode)) {
                                Modifier.Node node11 = delegatingNode2.y;
                                int i6 = 0;
                                delegatingNode2 = delegatingNode2;
                                r14 = r14;
                                while (node11 != null) {
                                    if ((node11.l & 8192) != 0) {
                                        i6++;
                                        r14 = r14;
                                        if (i6 == 1) {
                                            delegatingNode2 = node11;
                                        } else {
                                            if (r14 == 0) {
                                                r14 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (delegatingNode2 != 0) {
                                                r14.b(delegatingNode2);
                                                delegatingNode2 = 0;
                                            }
                                            r14.b(node11);
                                        }
                                    }
                                    node11 = node11.o;
                                    delegatingNode2 = delegatingNode2;
                                    r14 = r14;
                                }
                                if (i6 == 1) {
                                }
                            }
                            delegatingNode2 = DelegatableNodeKt.b(r14);
                        }
                        if (arrayList != null) {
                            int size2 = arrayList.size();
                            for (int i7 = 0; i7 < size2; i7++) {
                                if (((KeyInputModifierNode) arrayList.get(i7)).I(keyEvent)) {
                                    return true;
                                }
                            }
                        }
                    }
                    return false;
                }
            }
            if (!focusTargetNode.j.w) {
                InlineClassHelperKt.b("visitAncestors called on an unattached node");
            }
            Modifier.Node node12 = focusTargetNode.j.n;
            LayoutNode g3 = DelegatableNodeKt.g(focusTargetNode);
            loop15: while (true) {
                if (g3 != null) {
                    if ((g3.O.f.m & 8192) != 0) {
                        while (node12 != null) {
                            if ((node12.l & 8192) != 0) {
                                Modifier.Node node13 = node12;
                                MutableVector mutableVector3 = null;
                                while (node13 != null) {
                                    if (node13 instanceof KeyInputModifierNode) {
                                        obj = node13;
                                        break loop15;
                                    }
                                    if ((node13.l & 8192) != 0 && (node13 instanceof DelegatingNode)) {
                                        Modifier.Node node14 = ((DelegatingNode) node13).y;
                                        int i8 = 0;
                                        node13 = node13;
                                        mutableVector3 = mutableVector3;
                                        while (node14 != null) {
                                            if ((node14.l & 8192) != 0) {
                                                i8++;
                                                mutableVector3 = mutableVector3;
                                                if (i8 == 1) {
                                                    node13 = node14;
                                                } else {
                                                    if (mutableVector3 == null) {
                                                        mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node13 != null) {
                                                        mutableVector3.b(node13);
                                                        node13 = null;
                                                    }
                                                    mutableVector3.b(node14);
                                                }
                                            }
                                            node14 = node14.o;
                                            node13 = node13;
                                            mutableVector3 = mutableVector3;
                                        }
                                        if (i8 == 1) {
                                        }
                                    }
                                    node13 = DelegatableNodeKt.b(mutableVector3);
                                }
                            }
                            node12 = node12.n;
                        }
                    }
                    g3 = g3.w();
                    if (g3 != null && (nodeChain = g3.O) != null) {
                        node12 = nodeChain.e;
                    } else {
                        node12 = null;
                    }
                } else {
                    obj = null;
                    break;
                }
            }
            Object obj4 = (KeyInputModifierNode) obj;
            if (obj4 != null) {
                node = ((Modifier.Node) obj4).j;
            } else {
                node = null;
            }
            if (node != null) {
            }
            return false;
        } finally {
            Trace.endSection();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:86:0x011d, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Boolean f(int i, Rect rect, Function1 function1) {
        boolean a;
        FocusTargetNode focusTargetNode;
        NodeChain nodeChain;
        FocusTargetNode focusTargetNode2 = this.c;
        FocusTargetNode a2 = FocusTraversalKt.a(focusTargetNode2);
        int i2 = 4;
        AndroidComposeView androidComposeView = this.b;
        boolean z = false;
        if (a2 != null) {
            LayoutDirection layoutDirection = androidComposeView.getLayoutDirection();
            FocusPropertiesImpl a1 = a2.a1();
            FocusRequester focusRequester = a1.h;
            FocusRequester focusRequester2 = a1.i;
            if (i == 1) {
                focusRequester = a1.b;
            } else if (i == 2) {
                focusRequester = a1.c;
            } else if (i == 5) {
                focusRequester = a1.d;
            } else if (i == 6) {
                focusRequester = a1.e;
            } else if (i == 3) {
                int ordinal = layoutDirection.ordinal();
                if (ordinal != 0) {
                    if (ordinal == 1) {
                        focusRequester = focusRequester2;
                    } else {
                        k8.e();
                        return null;
                    }
                }
                if (focusRequester == FocusRequester.b) {
                    focusRequester = null;
                }
                if (focusRequester == null) {
                    focusRequester = a1.f;
                }
            } else if (i == 4) {
                int ordinal2 = layoutDirection.ordinal();
                if (ordinal2 != 0) {
                    if (ordinal2 != 1) {
                        k8.e();
                        return null;
                    }
                } else {
                    focusRequester = focusRequester2;
                }
                if (focusRequester == FocusRequester.b) {
                    focusRequester = null;
                }
                if (focusRequester == null) {
                    focusRequester = a1.g;
                }
            } else if (i == 7 || i == 8) {
                CancelIndicatingFocusBoundaryScope cancelIndicatingFocusBoundaryScope = new CancelIndicatingFocusBoundaryScope(i);
                FocusOwnerImpl focusOwnerImpl = (FocusOwnerImpl) DelegatableNodeKt.h(a2).getFocusOwner();
                FocusTargetNode g = focusOwnerImpl.g();
                if (i == 7) {
                    a1.j.b(cancelIndicatingFocusBoundaryScope);
                } else {
                    a1.k.b(cancelIndicatingFocusBoundaryScope);
                }
                if (cancelIndicatingFocusBoundaryScope.b) {
                    focusRequester = FocusRequester.c;
                } else if (g != focusOwnerImpl.g()) {
                    focusRequester = FocusRequester.d;
                } else {
                    focusRequester = FocusRequester.b;
                }
            } else {
                u2.l("invalid FocusDirection");
                return null;
            }
            FocusRequester focusRequester3 = FocusRequester.c;
            if (!Intrinsics.a(focusRequester, focusRequester3)) {
                if (Intrinsics.a(focusRequester, FocusRequester.d)) {
                    FocusTargetNode a3 = FocusTraversalKt.a(focusTargetNode2);
                    if (a3 != null) {
                        return (Boolean) function1.b(a3);
                    }
                } else {
                    FocusRequester focusRequester4 = FocusRequester.b;
                    if (!Intrinsics.a(focusRequester, focusRequester4)) {
                        if (focusRequester != focusRequester4) {
                            if (focusRequester != focusRequester3) {
                                MutableVector mutableVector = focusRequester.a;
                                int i3 = mutableVector.l;
                                if (i3 == 0) {
                                    System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
                                } else {
                                    Object[] objArr = mutableVector.j;
                                    boolean z2 = false;
                                    for (int i4 = 0; i4 < i3; i4++) {
                                        Object obj = (FocusRequesterModifierNode) objArr[i4];
                                        if (!((Modifier.Node) obj).j.w) {
                                            InlineClassHelperKt.b("visitChildren called on an unattached node");
                                        }
                                        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
                                        Modifier.Node node = ((Modifier.Node) obj).j;
                                        Modifier.Node node2 = node.o;
                                        if (node2 == null) {
                                            DelegatableNodeKt.a(mutableVector2, node);
                                        } else {
                                            mutableVector2.b(node2);
                                        }
                                        while (true) {
                                            int i5 = mutableVector2.l;
                                            if (i5 != 0) {
                                                Modifier.Node node3 = (Modifier.Node) mutableVector2.k(i5 - 1);
                                                if ((node3.m & 1024) == 0) {
                                                    DelegatableNodeKt.a(mutableVector2, node3);
                                                } else {
                                                    while (true) {
                                                        if (node3 == null) {
                                                            break;
                                                        }
                                                        if ((node3.l & 1024) != 0) {
                                                            MutableVector mutableVector3 = null;
                                                            while (node3 != null) {
                                                                if (node3 instanceof FocusTargetNode) {
                                                                    if (((Boolean) function1.b((FocusTargetNode) node3)).booleanValue()) {
                                                                        z2 = true;
                                                                        break;
                                                                    }
                                                                } else if ((node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                                                    int i6 = 0;
                                                                    for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                                                        if ((node4.l & 1024) != 0) {
                                                                            i6++;
                                                                            if (i6 == 1) {
                                                                                node3 = node4;
                                                                            } else {
                                                                                if (mutableVector3 == null) {
                                                                                    mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                                                                }
                                                                                if (node3 != null) {
                                                                                    mutableVector3.b(node3);
                                                                                    node3 = null;
                                                                                }
                                                                                mutableVector3.b(node4);
                                                                            }
                                                                        }
                                                                    }
                                                                    if (i6 == 1) {
                                                                    }
                                                                }
                                                                node3 = DelegatableNodeKt.b(mutableVector3);
                                                            }
                                                        } else {
                                                            node3 = node3.o;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    z = z2;
                                }
                                return Boolean.valueOf(z);
                            }
                            u2.l("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
                            return null;
                        }
                        u2.l("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
                        return null;
                    }
                }
            }
            return null;
        }
        a2 = null;
        LayoutDirection layoutDirection2 = androidComposeView.getLayoutDirection();
        p2 p2Var = new p2(a2, this, function1, 8);
        if (i == 1 || i == 2) {
            if (i == 1) {
                a = OneDimensionalFocusSearchKt.b(focusTargetNode2, p2Var);
            } else if (i == 2) {
                a = OneDimensionalFocusSearchKt.a(focusTargetNode2, p2Var);
            } else {
                u2.l("This function should only be used for 1-D focus search");
                return null;
            }
            return Boolean.valueOf(a);
        }
        if (i == 3 || i == 4 || i == 5 || i == 6) {
            return TwoDimensionalFocusSearchKt.k(i, p2Var, focusTargetNode2, rect);
        }
        if (i == 7) {
            int ordinal3 = layoutDirection2.ordinal();
            if (ordinal3 != 0) {
                if (ordinal3 == 1) {
                    i2 = 3;
                } else {
                    k8.e();
                    return null;
                }
            }
            FocusTargetNode a4 = FocusTraversalKt.a(focusTargetNode2);
            if (a4 != null) {
                return TwoDimensionalFocusSearchKt.k(i2, p2Var, a4, rect);
            }
            return null;
        }
        if (i == 8) {
            FocusTargetNode a5 = FocusTraversalKt.a(focusTargetNode2);
            if (a5 != null) {
                if (!a5.j.w) {
                    InlineClassHelperKt.b("visitAncestors called on an unattached node");
                }
                Modifier.Node node5 = a5.j.n;
                LayoutNode g2 = DelegatableNodeKt.g(a5);
                loop5: while (g2 != null) {
                    if ((g2.O.f.m & 1024) != 0) {
                        while (node5 != null) {
                            if ((node5.l & 1024) != 0) {
                                Modifier.Node node6 = node5;
                                MutableVector mutableVector4 = null;
                                while (node6 != null) {
                                    if (node6 instanceof FocusTargetNode) {
                                        FocusTargetNode focusTargetNode3 = (FocusTargetNode) node6;
                                        if (focusTargetNode3.a1().a) {
                                            focusTargetNode = focusTargetNode3;
                                            break loop5;
                                        }
                                    } else if ((node6.l & 1024) != 0 && (node6 instanceof DelegatingNode)) {
                                        int i7 = 0;
                                        for (Modifier.Node node7 = ((DelegatingNode) node6).y; node7 != null; node7 = node7.o) {
                                            if ((node7.l & 1024) != 0) {
                                                i7++;
                                                if (i7 == 1) {
                                                    node6 = node7;
                                                } else {
                                                    if (mutableVector4 == null) {
                                                        mutableVector4 = new MutableVector(new Modifier.Node[16]);
                                                    }
                                                    if (node6 != null) {
                                                        mutableVector4.b(node6);
                                                        node6 = null;
                                                    }
                                                    mutableVector4.b(node7);
                                                }
                                            }
                                        }
                                        if (i7 != 1) {
                                            node6 = DelegatableNodeKt.b(mutableVector4);
                                        }
                                    }
                                    node6 = DelegatableNodeKt.b(mutableVector4);
                                }
                            }
                            node5 = node5.n;
                        }
                    }
                    g2 = g2.w();
                    if (g2 != null && (nodeChain = g2.O) != null) {
                        node5 = nodeChain.e;
                    } else {
                        node5 = null;
                    }
                }
            }
            focusTargetNode = null;
            if (focusTargetNode != null && focusTargetNode != focusTargetNode2) {
                z = ((Boolean) p2Var.b(focusTargetNode)).booleanValue();
            }
            return Boolean.valueOf(z);
        }
        throw new IllegalStateException("Focus search invoked with invalid FocusDirection ".concat(FocusDirection.a(i)).toString());
    }

    public final FocusTargetNode g() {
        FocusTargetNode focusTargetNode = this.h;
        if (focusTargetNode != null && focusTargetNode.w) {
            return focusTargetNode;
        }
        return null;
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final boolean h(int i, boolean z) {
        boolean z2;
        FocusTargetNode g = g();
        AndroidComposeView androidComposeView = this.a;
        if (g == null || !g.x || !androidComposeView.t(i)) {
            ?? obj = new Object();
            obj.j = Boolean.FALSE;
            FocusTargetNode g2 = g();
            Boolean f = f(i, androidComposeView.getEmbeddedViewFocusRect(), new o8((Ref$ObjectRef) obj, i));
            if (!Intrinsics.a(f, Boolean.TRUE) || g2 == g()) {
                if (f != null && obj.j != null) {
                    if (!f.booleanValue() || !((Boolean) obj.j).booleanValue()) {
                        if ((i == 1 || i == 2) && z && c(i, false, false)) {
                            Boolean f2 = f(i, null, new r0(i, 3));
                            if (f2 != null) {
                                z2 = f2.booleanValue();
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                            }
                        }
                    }
                }
                return false;
            }
        }
        return true;
    }

    public final boolean i(int i) {
        boolean z = false;
        if (!c(i, false, false)) {
            return false;
        }
        Boolean f = f(i, null, new r0(i, 2));
        if (f != null) {
            z = f.booleanValue();
        }
        if (!z) {
            d();
        }
        return z;
    }

    public final void j(FocusTargetNode focusTargetNode) {
        FocusTargetNode focusTargetNode2 = this.h;
        this.h = focusTargetNode;
        MutableObjectList mutableObjectList = this.g;
        Object[] objArr = mutableObjectList.a;
        int i = mutableObjectList.b;
        for (int i2 = 0; i2 < i; i2++) {
            ((FocusListener) objArr[i2]).a(focusTargetNode2, focusTargetNode);
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0099, code lost:
    
        r33 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:20:0x00a3, code lost:
    
        if (((r8 & ((~r8) << 6)) & (-9187201950435737472L)) == r33) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00a5, code lost:
    
        r0 = r4.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00ab, code lost:
    
        if (r4.e != 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x00bc, code lost:
    
        if (((r4.a[r0 >> 3] >> ((r0 & 7) << 3)) & 255) != 254) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00c4, code lost:
    
        r0 = r4.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x00c6, code lost:
    
        if (r0 <= 8) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x00d7, code lost:
    
        if (java.lang.Long.compareUnsigned(r4.d * 32, r0 * 25) > 0) goto L47;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x00d9, code lost:
    
        r0 = r4.a;
        r6 = r4.c;
        r12 = r4.b;
        r13 = (r6 + 7) >> 3;
        r14 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x00e5, code lost:
    
        if (r14 >= r13) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x00e7, code lost:
    
        r8 = r0[r14] & (-9187201950435737472L);
        r0[r14] = ((~r8) + (r8 >>> 7)) & (-72340172838076674L);
        r14 = r14 + 1;
        r5 = r5;
        r6 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0102, code lost:
    
        r15 = r5;
        r16 = r6;
        r40 = 128;
        r5 = kotlin.collections.ArraysKt.s(r0);
        r6 = r5 - 1;
        r13 = 72057594037927935L;
        r0[r6] = (r0[r6] & 72057594037927935L) | (-72057594037927936L);
        r0[r5] = r0[0];
        r5 = r16;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0123, code lost:
    
        if (r6 == r5) goto L93;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x0125, code lost:
    
        r8 = r6 >> 3;
        r9 = (r6 & 7) << 3;
        r16 = (r0[r8] >> r9) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x0133, code lost:
    
        if (r16 != 128) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x013a, code lost:
    
        if (r16 == 254) goto L94;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x013d, code lost:
    
        r16 = java.lang.Long.hashCode(r12[r6]) * r28;
        r17 = r13;
        r13 = (r16 ^ (r16 << 16)) >>> 7;
        r14 = r4.b(r13);
        r13 = r13 & r5;
        r29 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x0161, code lost:
    
        if ((((r14 - r13) & r5) / 8) != (((r6 - r13) & r5) / 8)) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:44:0x0163, code lost:
    
        r37 = r7;
        r0[r8] = ((~(255 << r9)) & r0[r8]) | ((r16 & 127) << r9);
        r0[r0.length - 1] = (r0[0] & r17) | Long.MIN_VALUE;
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x0181, code lost:
    
        r13 = r17;
        r15 = r29;
        r7 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x0188, code lost:
    
        r37 = r7;
        r7 = r14 >> 3;
        r26 = r0[r7];
        r8 = (r14 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x019a, code lost:
    
        if (((r26 >> r8) & 255) != 128) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:50:0x019c, code lost:
    
        r15 = r5;
        r35 = r6;
        r0[r7] = (r26 & (~(255 << r8))) | ((r16 & 127) << r8);
        r0[r8] = (r0[r8] & (~(255 << r9))) | (128 << r9);
        r12[r14] = r12[r35];
        r12[r35] = r33;
        r6 = r35;
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x01df, code lost:
    
        r0[r0.length - 1] = (r0[0] & r17) | Long.MIN_VALUE;
        r6 = r6 + 1;
        r5 = r15;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x01c3, code lost:
    
        r15 = r5;
        r35 = r6;
        r0[r7] = (r26 & (~(255 << r8))) | ((r16 & 127) << r8);
        r5 = r12[r14];
        r12[r14] = r12[r35];
        r12[r35] = r5;
        r6 = r35 - 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0135, code lost:
    
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x01ee, code lost:
    
        r37 = r7;
        r4.e = androidx.collection.ScatterMapKt.a(r4.c) - r4.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x0276, code lost:
    
        r0 = r4.b(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x027a, code lost:
    
        r14 = r0;
        r4.d++;
        r0 = r4.e;
        r3 = r4.a;
        r5 = r14 >> 3;
        r6 = r3[r5];
        r8 = (r14 & 7) << 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x0293, code lost:
    
        if (((r6 >> r8) & 255) != r40) goto L58;
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0295, code lost:
    
        r21 = r37 ? 1 : 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0297, code lost:
    
        r4.e = r0 - r21;
        r0 = r4.c;
        r6 = (r6 & (~(255 << r8))) | (r10 << r8);
        r3[r5] = r6;
        r3[(((r14 - 7) & r0) + (r0 & 7)) >> 3] = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:64:0x01fd, code lost:
    
        r37 = true;
        r40 = 128;
        r0 = androidx.collection.ScatterMapKt.b(r4.c);
        r5 = r4.a;
        r6 = r4.b;
        r7 = r4.c;
        r4.c(r0);
        r0 = r4.a;
        r8 = r4.b;
        r9 = r4.c;
        r12 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x0218, code lost:
    
        if (r12 >= r7) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:67:0x0227, code lost:
    
        if (((r5[r12 >> 3] >> ((r12 & 7) << 3)) & 255) >= 128) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0229, code lost:
    
        r13 = r6[r12];
        r15 = java.lang.Long.hashCode(r13) * r28;
        r15 = r15 ^ (r15 << 16);
        r16 = r0;
        r0 = r4.b(r15 >>> 7);
        r17 = r5;
        r18 = r6;
        r5 = r15 & 127;
        r15 = r0 >> 3;
        r19 = (r0 & 7) << 3;
        r5 = (r16[r15] & (~(255 << r19))) | (r5 << r19);
        r16[r15] = r5;
        r16[(((r0 - 7) & r9) + (r9 & 7)) >> 3] = r5;
        r8[r0] = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:70:0x026d, code lost:
    
        r12 = r12 + 1;
        r0 = r16;
        r5 = r17;
        r6 = r18;
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0267, code lost:
    
        r16 = r0;
        r17 = r5;
        r18 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x00be, code lost:
    
        r37 = true;
        r40 = 128;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x033e, code lost:
    
        if (((r6 & ((~r6) << 6)) & (-9187201950435737472L)) == 0) goto L85;
     */
    /* JADX WARN: Code restructure failed: missing block: B:99:0x0340, code lost:
    
        r10 = -1;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean k(KeyEvent keyEvent) {
        int i;
        long j;
        boolean z;
        int i2;
        long a = KeyEvent_androidKt.a(keyEvent);
        int b = KeyEvent_androidKt.b(keyEvent);
        int i3 = -862048943;
        long j2 = 0;
        char c = '\b';
        int i4 = 0;
        boolean z2 = true;
        if (b == 2) {
            MutableLongSet mutableLongSet = this.f;
            if (mutableLongSet == null) {
                mutableLongSet = new MutableLongSet(3);
                this.f = mutableLongSet;
            }
            MutableLongSet mutableLongSet2 = mutableLongSet;
            int hashCode = Long.hashCode(a) * (-862048943);
            int i5 = hashCode ^ (hashCode << 16);
            int i6 = i5 >>> 7;
            int i7 = i5 & 127;
            int i8 = mutableLongSet2.c;
            int i9 = i6 & i8;
            int i10 = 0;
            loop0: while (true) {
                long[] jArr = mutableLongSet2.a;
                int i11 = i9 >> 3;
                int i12 = (i9 & 7) << 3;
                long j3 = (jArr[i11] >>> i12) | ((jArr[i11 + 1] << (64 - i12)) & ((-i12) >> 63));
                int i13 = i3;
                long j4 = i7;
                long j5 = j3 ^ (j4 * 72340172838076673L);
                long j6 = (j5 - 72340172838076673L) & (~j5) & (-9187201950435737472L);
                while (true) {
                    if (j6 == j2) {
                        break;
                    }
                    i2 = (i9 + (Long.numberOfTrailingZeros(j6) >> 3)) & i8;
                    long j7 = j2;
                    if (mutableLongSet2.b[i2] == a) {
                        z = true;
                        break loop0;
                    }
                    j6 &= j6 - 1;
                    j2 = j7;
                }
                i10 += 8;
                i9 = (i9 + i10) & i8;
                i3 = i13;
                j2 = j;
            }
            mutableLongSet2.b[i2] = a;
            return z;
        }
        if (b != 1) {
            return true;
        }
        MutableLongSet mutableLongSet3 = this.f;
        if (mutableLongSet3 == null || !mutableLongSet3.a(a)) {
            return false;
        }
        MutableLongSet mutableLongSet4 = this.f;
        if (mutableLongSet4 != null) {
            int hashCode2 = Long.hashCode(a) * (-862048943);
            int i14 = hashCode2 ^ (hashCode2 << 16);
            int i15 = i14 & 127;
            int i16 = mutableLongSet4.c;
            int i17 = i14 >>> 7;
            loop5: while (true) {
                int i18 = i17 & i16;
                long[] jArr2 = mutableLongSet4.a;
                int i19 = i18 >> 3;
                int i20 = (i18 & 7) << 3;
                long j8 = ((jArr2[i19 + 1] << (64 - i20)) & ((-i20) >> 63)) | (jArr2[i19] >>> i20);
                long j9 = (i15 * 72340172838076673L) ^ j8;
                long j10 = (~j9) & (j9 - 72340172838076673L) & (-9187201950435737472L);
                while (true) {
                    if (j10 == 0) {
                        break;
                    }
                    i = ((Long.numberOfTrailingZeros(j10) >> 3) + i18) & i16;
                    if (mutableLongSet4.b[i] == a) {
                        break loop5;
                    }
                    j10 &= j10 - 1;
                }
                i4 += 8;
                i17 = i18 + i4;
            }
            if (i >= 0) {
                mutableLongSet4.d--;
                long[] jArr3 = mutableLongSet4.a;
                int i21 = mutableLongSet4.c;
                int i22 = i >> 3;
                int i23 = (i & 7) << 3;
                long j11 = (jArr3[i22] & (~(255 << i23))) | (254 << i23);
                jArr3[i22] = j11;
                jArr3[(((i - 7) & i21) + (i21 & 7)) >> 3] = j11;
                return true;
            }
        }
        return true;
    }
}
