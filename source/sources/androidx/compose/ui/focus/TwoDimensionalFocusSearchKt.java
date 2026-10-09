package androidx.compose.ui.focus;

import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.k8;
import defpackage.p2;
import defpackage.rc;
import defpackage.u2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TwoDimensionalFocusSearchKt {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x004a, code lost:
    
        if (r21 != 3) goto L25;
     */
    /* JADX WARN: Code restructure failed: missing block: B:12:0x004d, code lost:
    
        if (r21 != 4) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0050, code lost:
    
        if (r21 != 3) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0052, code lost:
    
        r1 = r11 - r19.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x006d, code lost:
    
        if (r1 >= 0.0f) goto L38;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x006f, code lost:
    
        r1 = 0.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0071, code lost:
    
        if (r21 != 3) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0073, code lost:
    
        r11 = r11 - r7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0087, code lost:
    
        if (r11 >= 1.0f) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x0089, code lost:
    
        r11 = 1.0f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x008c, code lost:
    
        if (r1 >= r11) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:25:0x008e, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x008f, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0075, code lost:
    
        if (r21 != 4) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0077, code lost:
    
        r11 = r2 - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x007a, code lost:
    
        if (r21 != 5) goto L44;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x007c, code lost:
    
        r11 = r9 - r5;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x007f, code lost:
    
        if (r21 != 6) goto L53;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x0081, code lost:
    
        r11 = r6 - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0090, code lost:
    
        defpackage.u2.l("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0093, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0057, code lost:
    
        if (r21 != 4) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0059, code lost:
    
        r1 = r19.a - r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x005d, code lost:
    
        if (r21 != 5) goto L33;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x005f, code lost:
    
        r1 = r9 - r19.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x0064, code lost:
    
        if (r21 != 6) goto L55;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x0066, code lost:
    
        r1 = r19.b - r8;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x0094, code lost:
    
        defpackage.u2.l("This function should only be used for 2-D focus search");
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x0097, code lost:
    
        return false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x004f, code lost:
    
        return true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x003a, code lost:
    
        if (r10 <= r7) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x0041, code lost:
    
        if (r9 >= r6) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x0048, code lost:
    
        if (r8 <= r5) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:8:0x0033, code lost:
    
        if (r11 >= r2) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:9:0x0098, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final boolean a(Rect rect, Rect rect2, Rect rect3, int i) {
        boolean b = b(i, rect3, rect);
        float f = rect3.b;
        float f2 = rect3.d;
        float f3 = rect3.a;
        float f4 = rect3.c;
        float f5 = rect.d;
        float f6 = rect.b;
        float f7 = rect.c;
        float f8 = rect.a;
        if (!b && b(i, rect2, rect)) {
            if (i != 3) {
                if (i != 4) {
                    if (i != 5) {
                        if (i != 6) {
                            u2.l("This function should only be used for 2-D focus search");
                        }
                    }
                }
            }
        }
        return false;
    }

    public static final boolean b(int i, Rect rect, Rect rect2) {
        if (i == 3 || i == 4) {
            if (rect.d <= rect2.b || rect.b >= rect2.d) {
                return false;
            }
            return true;
        }
        if (i == 5 || i == 6) {
            if (rect.c <= rect2.a || rect.a >= rect2.c) {
                return false;
            }
            return true;
        }
        u2.l("This function should only be used for 2-D focus search");
        return false;
    }

    public static final void c(FocusTargetNode focusTargetNode, MutableVector mutableVector) {
        if (!focusTargetNode.j.w) {
            InlineClassHelperKt.b("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.j;
        Modifier.Node node2 = node.o;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i = mutableVector2.l;
            if (i != 0) {
                Modifier.Node node3 = (Modifier.Node) mutableVector2.k(i - 1);
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
                                    FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                    if (focusTargetNode2.w && !DelegatableNodeKt.g(focusTargetNode2).Z) {
                                        if (focusTargetNode2.a1().a) {
                                            mutableVector.b(focusTargetNode2);
                                        } else {
                                            c(focusTargetNode2, mutableVector);
                                        }
                                    }
                                } else if ((node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                    int i2 = 0;
                                    for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                        if ((node4.l & 1024) != 0) {
                                            i2++;
                                            if (i2 == 1) {
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
                                    if (i2 == 1) {
                                    }
                                }
                                node3 = DelegatableNodeKt.b(mutableVector3);
                            }
                        } else {
                            node3 = node3.o;
                        }
                    }
                }
            } else {
                return;
            }
        }
    }

    public static final FocusTargetNode d(MutableVector mutableVector, Rect rect, int i) {
        Rect h;
        FocusTargetNode focusTargetNode = null;
        if (i == 3) {
            h = rect.h((rect.c - rect.a) + 1.0f, 0.0f);
        } else if (i == 4) {
            h = rect.h(-((rect.c - rect.a) + 1.0f), 0.0f);
        } else if (i == 5) {
            h = rect.h(0.0f, (rect.d - rect.b) + 1.0f);
        } else if (i == 6) {
            h = rect.h(0.0f, -((rect.d - rect.b) + 1.0f));
        } else {
            u2.l("This function should only be used for 2-D focus search");
            return null;
        }
        Object[] objArr = mutableVector.j;
        int i2 = mutableVector.l;
        for (int i3 = 0; i3 < i2; i3++) {
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) objArr[i3];
            if (FocusTraversalKt.d(focusTargetNode2)) {
                Rect b = FocusTraversalKt.b(focusTargetNode2);
                if (g(b, h, rect, i)) {
                    focusTargetNode = focusTargetNode2;
                    h = b;
                }
            }
        }
        return focusTargetNode;
    }

    public static final boolean e(FocusTargetNode focusTargetNode, int i, Function1 function1) {
        Rect rect;
        Object obj;
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
        c(focusTargetNode, mutableVector);
        int i2 = mutableVector.l;
        if (i2 <= 1) {
            if (i2 == 0) {
                obj = null;
            } else {
                obj = mutableVector.j[0];
            }
            FocusTargetNode focusTargetNode2 = (FocusTargetNode) obj;
            if (focusTargetNode2 != null) {
                return ((Boolean) function1.b(focusTargetNode2)).booleanValue();
            }
        } else {
            if (i == 7) {
                i = 4;
            }
            if (i == 4 || i == 6) {
                Rect b = FocusTraversalKt.b(focusTargetNode);
                float f = b.a;
                float f2 = b.b;
                rect = new Rect(f, f2, f, f2);
            } else if (i == 3 || i == 5) {
                Rect b2 = FocusTraversalKt.b(focusTargetNode);
                float f3 = b2.c;
                float f4 = b2.d;
                rect = new Rect(f3, f4, f3, f4);
            } else {
                u2.l("This function should only be used for 2-D focus search");
                return false;
            }
            FocusTargetNode d = d(mutableVector, rect, i);
            if (d != null) {
                return ((Boolean) function1.b(d)).booleanValue();
            }
        }
        return false;
    }

    public static final boolean f(int i, p2 p2Var, FocusTargetNode focusTargetNode, Rect rect) {
        if (j(i, p2Var, focusTargetNode, rect)) {
            return true;
        }
        Boolean bool = (Boolean) BeyondBoundsLayoutKt.a(focusTargetNode, i, new rc(((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).g(), focusTargetNode, rect, i, p2Var, 1));
        if (bool != null) {
            return bool.booleanValue();
        }
        return false;
    }

    public static final boolean g(Rect rect, Rect rect2, Rect rect3, int i) {
        if (h(i, rect, rect3)) {
            if (h(i, rect2, rect3) && !a(rect3, rect, rect2, i)) {
                if (!a(rect3, rect2, rect, i) && i(i, rect3, rect) < i(i, rect3, rect2)) {
                    return true;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public static final boolean h(int i, Rect rect, Rect rect2) {
        if (i == 3) {
            float f = rect2.c;
            float f2 = rect2.a;
            float f3 = rect.c;
            if ((f <= f3 && f2 < f3) || f2 <= rect.a) {
                return false;
            }
            return true;
        }
        if (i == 4) {
            float f4 = rect2.a;
            float f5 = rect2.c;
            float f6 = rect.a;
            if ((f4 >= f6 && f5 > f6) || f5 >= rect.c) {
                return false;
            }
            return true;
        }
        if (i == 5) {
            float f7 = rect2.d;
            float f8 = rect2.b;
            float f9 = rect.d;
            if ((f7 <= f9 && f8 < f9) || f8 <= rect.b) {
                return false;
            }
            return true;
        }
        if (i == 6) {
            float f10 = rect2.b;
            float f11 = rect2.d;
            float f12 = rect.b;
            if ((f10 >= f12 && f11 > f12) || f11 >= rect.d) {
                return false;
            }
            return true;
        }
        u2.l("This function should only be used for 2-D focus search");
        return false;
    }

    public static final long i(int i, Rect rect, Rect rect2) {
        float f;
        float f2;
        float f3;
        float f4;
        float f5;
        if (i == 3) {
            f = rect.a;
            f2 = rect2.c;
        } else if (i == 4) {
            f = rect2.a;
            f2 = rect.c;
        } else if (i == 5) {
            f = rect.b;
            f2 = rect2.d;
        } else if (i == 6) {
            f = rect2.b;
            f2 = rect.d;
        } else {
            u2.l("This function should only be used for 2-D focus search");
            return 0L;
        }
        float f6 = f - f2;
        if (f6 < 0.0f) {
            f6 = 0.0f;
        }
        long j = f6;
        if (i == 3 || i == 4) {
            float f7 = rect.b;
            f3 = ((rect.d - f7) / 2.0f) + f7;
            f4 = rect2.b;
            f5 = rect2.d;
        } else if (i == 5 || i == 6) {
            float f8 = rect.a;
            f3 = ((rect.c - f8) / 2.0f) + f8;
            f4 = rect2.a;
            f5 = rect2.c;
        } else {
            u2.l("This function should only be used for 2-D focus search");
            return 0L;
        }
        long j2 = f3 - (((f5 - f4) / 2.0f) + f4);
        return (j2 * j2) + (13 * j * j);
    }

    public static final boolean j(int i, p2 p2Var, FocusTargetNode focusTargetNode, Rect rect) {
        FocusTargetNode d;
        MutableVector mutableVector = new MutableVector(new FocusTargetNode[16]);
        if (!focusTargetNode.j.w) {
            InlineClassHelperKt.b("visitChildren called on an unattached node");
        }
        MutableVector mutableVector2 = new MutableVector(new Modifier.Node[16]);
        Modifier.Node node = focusTargetNode.j;
        Modifier.Node node2 = node.o;
        if (node2 == null) {
            DelegatableNodeKt.a(mutableVector2, node);
        } else {
            mutableVector2.b(node2);
        }
        while (true) {
            int i2 = mutableVector2.l;
            if (i2 == 0) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) mutableVector2.k(i2 - 1);
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
                                FocusTargetNode focusTargetNode2 = (FocusTargetNode) node3;
                                if (focusTargetNode2.w) {
                                    mutableVector.b(focusTargetNode2);
                                }
                            } else if ((node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                                int i3 = 0;
                                for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                    if ((node4.l & 1024) != 0) {
                                        i3++;
                                        if (i3 == 1) {
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
                                if (i3 == 1) {
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
        while (mutableVector.l != 0 && (d = d(mutableVector, rect, i)) != null) {
            if (d.a1().a) {
                return ((Boolean) p2Var.b(d)).booleanValue();
            }
            if (f(i, p2Var, d, rect)) {
                return true;
            }
            mutableVector.j(d);
        }
        return false;
    }

    public static final Boolean k(int i, p2 p2Var, FocusTargetNode focusTargetNode, Rect rect) {
        int ordinal = focusTargetNode.d1().ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal == 3) {
                        if (focusTargetNode.a1().a) {
                            return (Boolean) p2Var.b(focusTargetNode);
                        }
                        if (rect == null) {
                            return Boolean.valueOf(e(focusTargetNode, i, p2Var));
                        }
                        return Boolean.valueOf(j(i, p2Var, focusTargetNode, rect));
                    }
                    k8.e();
                    return null;
                }
            } else {
                FocusTargetNode c = FocusTraversalKt.c(focusTargetNode);
                if (c != null) {
                    int ordinal2 = c.d1().ordinal();
                    if (ordinal2 != 0) {
                        if (ordinal2 != 1) {
                            if (ordinal2 != 2) {
                                if (ordinal2 != 3) {
                                    k8.e();
                                    return null;
                                }
                                u2.l("ActiveParent must have a focusedChild");
                                return null;
                            }
                        } else {
                            Boolean k = k(i, p2Var, c, rect);
                            if (!Intrinsics.a(k, Boolean.FALSE)) {
                                return k;
                            }
                            if (rect == null) {
                                if (c.d1() == FocusStateImpl.k) {
                                    FocusTargetNode a = FocusTraversalKt.a(c);
                                    if (a != null) {
                                        rect = FocusTraversalKt.b(a);
                                    } else {
                                        u2.l("ActiveParent must have a focusedChild");
                                        return null;
                                    }
                                } else {
                                    u2.l("Searching for active node in inactive hierarchy");
                                    return null;
                                }
                            }
                            return Boolean.valueOf(f(i, p2Var, focusTargetNode, rect));
                        }
                    }
                    if (rect == null) {
                        rect = FocusTraversalKt.b(c);
                    }
                    return Boolean.valueOf(f(i, p2Var, focusTargetNode, rect));
                }
                u2.l("ActiveParent must have a focusedChild");
                return null;
            }
        }
        return Boolean.valueOf(e(focusTargetNode, i, p2Var));
    }
}
