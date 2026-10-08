package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusRequester {
    public static final FocusRequester b = new FocusRequester();
    public static final FocusRequester c = new FocusRequester();
    public static final FocusRequester d = new FocusRequester();
    public final MutableVector a = new MutableVector(new FocusRequesterModifierNode[16]);

    /* JADX WARN: Code restructure failed: missing block: B:70:0x004b, code lost:
    
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void a(FocusRequester focusRequester) {
        focusRequester.getClass();
        if (focusRequester != b) {
            if (focusRequester != c) {
                MutableVector mutableVector = focusRequester.a;
                int i = mutableVector.l;
                if (i == 0) {
                    System.out.println((Object) "FocusRelatedWarning: \n   FocusRequester is not initialized. Here are some possible fixes:\n\n   1. Remember the FocusRequester: val focusRequester = remember { FocusRequester() }\n   2. Did you forget to add a Modifier.focusRequester() ?\n   3. Are you attempting to request focus during composition? Focus requests should be made in\n   response to some event. Eg Modifier.clickable { focusRequester.requestFocus() }\n");
                    return;
                }
                Object[] objArr = mutableVector.j;
                for (int i2 = 0; i2 < i; i2++) {
                    Object obj = (FocusRequesterModifierNode) objArr[i2];
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
                        int i3 = mutableVector2.l;
                        if (i3 != 0) {
                            Modifier.Node node3 = (Modifier.Node) mutableVector2.k(i3 - 1);
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
                                                if (((FocusTargetNode) node3).f1(7)) {
                                                    break;
                                                }
                                            } else if ((node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                                int i4 = 0;
                                                for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                                    if ((node4.l & 1024) != 0) {
                                                        i4++;
                                                        if (i4 == 1) {
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
                                                if (i4 == 1) {
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
                return;
            }
            u2.l("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
            return;
        }
        u2.l("\n    Please check whether the focusRequester is FocusRequester.Cancel or FocusRequester.Default\n    before invoking any functions on the focusRequester.\n");
    }
}
