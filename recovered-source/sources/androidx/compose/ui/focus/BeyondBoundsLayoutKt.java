package androidx.compose.ui.focus;

import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsInfo;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode;
import androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsState;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import defpackage.u2;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BeyondBoundsLayoutKt {
    /* JADX WARN: Type inference failed for: r0v10, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public static final Object a(FocusTargetNode focusTargetNode, int i, Function1 function1) {
        int i2;
        final int i3;
        Object obj;
        Modifier.Node node;
        BeyondBoundsLayout c1;
        final LazyLayoutBeyondBoundsProviderModifierNode lazyLayoutBeyondBoundsProviderModifierNode;
        int e;
        NodeChain nodeChain;
        if (!focusTargetNode.j.w) {
            InlineClassHelperKt.b("visitAncestors called on an unattached node");
        }
        Modifier.Node node2 = focusTargetNode.j.n;
        LayoutNode g = DelegatableNodeKt.g(focusTargetNode);
        loop0: while (true) {
            i2 = 0;
            i3 = 1;
            obj = null;
            if (g != null) {
                if ((g.O.f.m & 1024) != 0) {
                    while (node2 != null) {
                        if ((node2.l & 1024) != 0) {
                            node = node2;
                            MutableVector mutableVector = null;
                            while (node != null) {
                                if (node instanceof FocusTargetNode) {
                                    break loop0;
                                }
                                if ((node.l & 1024) != 0 && (node instanceof DelegatingNode)) {
                                    int i4 = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node).y; node3 != null; node3 = node3.o) {
                                        if ((node3.l & 1024) != 0) {
                                            i4++;
                                            if (i4 == 1) {
                                                node = node3;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node != null) {
                                                    mutableVector.b(node);
                                                    node = null;
                                                }
                                                mutableVector.b(node3);
                                            }
                                        }
                                    }
                                    if (i4 == 1) {
                                    }
                                }
                                node = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        node2 = node2.n;
                    }
                }
                g = g.w();
                if (g != null && (nodeChain = g.O) != null) {
                    node2 = nodeChain.e;
                } else {
                    node2 = null;
                }
            } else {
                node = null;
                break;
            }
        }
        FocusTargetNode focusTargetNode2 = (FocusTargetNode) node;
        if ((focusTargetNode2 == null || !Intrinsics.a(focusTargetNode2.c1(), focusTargetNode.c1())) && (c1 = focusTargetNode.c1()) != null) {
            int i5 = 5;
            if (i != 5) {
                i5 = 6;
                if (i != 6) {
                    i5 = 3;
                    if (i != 3) {
                        i5 = 4;
                        if (i != 4) {
                            if (i == 1) {
                                i3 = 2;
                            } else if (i != 2) {
                                u2.l("Unsupported direction for beyond bounds layout");
                            }
                            lazyLayoutBeyondBoundsProviderModifierNode = (LazyLayoutBeyondBoundsProviderModifierNode) c1;
                            if (lazyLayoutBeyondBoundsProviderModifierNode.x.a() <= 0 && lazyLayoutBeyondBoundsProviderModifierNode.x.d() && lazyLayoutBeyondBoundsProviderModifierNode.w) {
                                boolean Z0 = lazyLayoutBeyondBoundsProviderModifierNode.Z0(i3);
                                LazyLayoutBeyondBoundsState lazyLayoutBeyondBoundsState = lazyLayoutBeyondBoundsProviderModifierNode.x;
                                if (Z0) {
                                    e = lazyLayoutBeyondBoundsState.b();
                                } else {
                                    e = lazyLayoutBeyondBoundsState.e();
                                }
                                final ?? obj2 = new Object();
                                LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo = lazyLayoutBeyondBoundsProviderModifierNode.y;
                                lazyLayoutBeyondBoundsInfo.getClass();
                                LazyLayoutBeyondBoundsInfo.Interval interval = new LazyLayoutBeyondBoundsInfo.Interval(e, e);
                                lazyLayoutBeyondBoundsInfo.a.b(interval);
                                obj2.j = interval;
                                int c = lazyLayoutBeyondBoundsProviderModifierNode.x.c() * 2;
                                int a = lazyLayoutBeyondBoundsProviderModifierNode.x.a();
                                if (c > a) {
                                    c = a;
                                }
                                while (obj == null && lazyLayoutBeyondBoundsProviderModifierNode.Y0((LazyLayoutBeyondBoundsInfo.Interval) obj2.j, i3) && i2 < c) {
                                    LazyLayoutBeyondBoundsInfo.Interval interval2 = (LazyLayoutBeyondBoundsInfo.Interval) obj2.j;
                                    int i6 = interval2.a;
                                    int i7 = interval2.b;
                                    if (lazyLayoutBeyondBoundsProviderModifierNode.Z0(i3)) {
                                        i7++;
                                    } else {
                                        i6--;
                                    }
                                    LazyLayoutBeyondBoundsInfo lazyLayoutBeyondBoundsInfo2 = lazyLayoutBeyondBoundsProviderModifierNode.y;
                                    lazyLayoutBeyondBoundsInfo2.getClass();
                                    LazyLayoutBeyondBoundsInfo.Interval interval3 = new LazyLayoutBeyondBoundsInfo.Interval(i6, i7);
                                    lazyLayoutBeyondBoundsInfo2.a.b(interval3);
                                    lazyLayoutBeyondBoundsProviderModifierNode.y.a.j((LazyLayoutBeyondBoundsInfo.Interval) obj2.j);
                                    obj2.j = interval3;
                                    i2++;
                                    DelegatableNodeKt.g(lazyLayoutBeyondBoundsProviderModifierNode).k();
                                    obj = function1.b(new BeyondBoundsLayout.BeyondBoundsScope() { // from class: androidx.compose.foundation.lazy.layout.LazyLayoutBeyondBoundsProviderModifierNode$layout$2
                                        @Override // androidx.compose.ui.layout.BeyondBoundsLayout.BeyondBoundsScope
                                        public final boolean a() {
                                            return LazyLayoutBeyondBoundsProviderModifierNode.this.Y0((LazyLayoutBeyondBoundsInfo.Interval) obj2.j, i3);
                                        }
                                    });
                                }
                                lazyLayoutBeyondBoundsProviderModifierNode.y.a.j((LazyLayoutBeyondBoundsInfo.Interval) obj2.j);
                                DelegatableNodeKt.g(lazyLayoutBeyondBoundsProviderModifierNode).k();
                                return obj;
                            }
                            return function1.b(LazyLayoutBeyondBoundsProviderModifierNode.A);
                        }
                    }
                }
            }
            i3 = i5;
            lazyLayoutBeyondBoundsProviderModifierNode = (LazyLayoutBeyondBoundsProviderModifierNode) c1;
            if (lazyLayoutBeyondBoundsProviderModifierNode.x.a() <= 0) {
            }
            return function1.b(LazyLayoutBeyondBoundsProviderModifierNode.A);
        }
        return null;
    }
}
