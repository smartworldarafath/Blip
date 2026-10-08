package androidx.compose.ui.modifier;

import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.platform.AndroidComposeView;
import defpackage.kb;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ModifierLocalManager {
    public final AndroidComposeView a;
    public MutableObjectList b;
    public MutableObjectList c;
    public MutableObjectList d;
    public MutableObjectList e;
    public boolean f;

    public ModifierLocalManager(AndroidComposeView androidComposeView) {
        this.a = androidComposeView;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v0 */
    /* JADX WARN: Type inference failed for: r4v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v10 */
    /* JADX WARN: Type inference failed for: r4v11 */
    /* JADX WARN: Type inference failed for: r4v12 */
    /* JADX WARN: Type inference failed for: r4v13 */
    /* JADX WARN: Type inference failed for: r4v5 */
    /* JADX WARN: Type inference failed for: r4v6, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r4v7, types: [java.lang.Object] */
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
    public static void b(Modifier.Node node, ModifierLocal modifierLocal) {
        if (!node.j.w) {
            InlineClassHelperKt.b("visitSubtreeIf called on an unattached node");
        }
        MutableVector mutableVector = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node2 = node.j;
        Modifier.Node node3 = node2.o;
        if (node3 == null) {
            DelegatableNodeKt.a(mutableVector, node2);
        } else {
            mutableVector.b(node3);
        }
        while (true) {
            int i = mutableVector.l;
            if (i != 0) {
                Modifier.Node node4 = (Modifier.Node) mutableVector.k(i - 1);
                if ((node4.m & 32) != 0) {
                    for (Modifier.Node node5 = node4; node5 != null && node5.w; node5 = node5.o) {
                        if ((node5.l & 32) != 0) {
                            DelegatingNode delegatingNode = node5;
                            ?? r5 = 0;
                            while (delegatingNode != 0) {
                                if (delegatingNode instanceof ModifierLocalModifierNode) {
                                    if (((ModifierLocalModifierNode) delegatingNode).a0().a(modifierLocal)) {
                                        break;
                                    }
                                } else if ((delegatingNode.l & 32) != 0 && (delegatingNode instanceof DelegatingNode)) {
                                    Modifier.Node node6 = delegatingNode.y;
                                    int i2 = 0;
                                    delegatingNode = delegatingNode;
                                    r5 = r5;
                                    while (node6 != null) {
                                        if ((node6.l & 32) != 0) {
                                            i2++;
                                            r5 = r5;
                                            if (i2 == 1) {
                                                delegatingNode = node6;
                                            } else {
                                                if (r5 == 0) {
                                                    r5 = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (delegatingNode != 0) {
                                                    r5.b(delegatingNode);
                                                    delegatingNode = 0;
                                                }
                                                r5.b(node6);
                                            }
                                        }
                                        node6 = node6.o;
                                        delegatingNode = delegatingNode;
                                        r5 = r5;
                                    }
                                    if (i2 == 1) {
                                    }
                                }
                                delegatingNode = DelegatableNodeKt.b(r5);
                            }
                        }
                    }
                }
                DelegatableNodeKt.a(mutableVector, node4);
            } else {
                return;
            }
        }
    }

    public final void a() {
        if (!this.f) {
            this.f = true;
            kb kbVar = new kb(0, this);
            MutableObjectList mutableObjectList = this.a.z0;
            if (mutableObjectList.c(kbVar) < 0) {
                mutableObjectList.g(kbVar);
            }
        }
    }
}
