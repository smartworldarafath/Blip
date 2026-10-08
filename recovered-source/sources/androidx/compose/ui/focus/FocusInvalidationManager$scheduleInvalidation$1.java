package androidx.compose.ui.focus;

import androidx.collection.MutableScatterSet;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class FocusInvalidationManager$scheduleInvalidation$1 extends FunctionReferenceImpl implements Function0<Unit> {
    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        NodeChain nodeChain;
        FocusInvalidationManager focusInvalidationManager = (FocusInvalidationManager) this.k;
        MutableScatterSet mutableScatterSet = focusInvalidationManager.c;
        MutableScatterSet mutableScatterSet2 = focusInvalidationManager.d;
        FocusOwnerImpl focusOwnerImpl = focusInvalidationManager.a;
        FocusTargetNode g = focusOwnerImpl.g();
        if (g == null) {
            Object[] objArr = mutableScatterSet2.b;
            long[] jArr = mutableScatterSet2.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((j & 255) < 128) {
                                ((FocusEventModifierNode) objArr[(i << 3) + i3]).j0(FocusStateImpl.m);
                            }
                            j >>= 8;
                        }
                        if (i2 != 8) {
                            break;
                        }
                    }
                    if (i == length) {
                        break;
                    }
                    i++;
                }
            }
        } else if (g.w) {
            if (mutableScatterSet.a(g)) {
                g.e1();
            }
            FocusStateImpl d1 = g.d1();
            if (!g.j.w) {
                InlineClassHelperKt.b("visitAncestors called on an unattached node");
            }
            Modifier.Node node = g.j;
            LayoutNode g2 = DelegatableNodeKt.g(g);
            int i4 = 0;
            while (g2 != null) {
                if ((g2.O.f.m & 5120) != 0) {
                    while (node != null) {
                        int i5 = node.l;
                        if ((i5 & 5120) != 0) {
                            if ((i5 & 1024) != 0) {
                                i4++;
                            }
                            if ((node instanceof FocusEventModifierNode) && mutableScatterSet2.a(node)) {
                                if (i4 <= 1) {
                                    ((FocusEventModifierNode) node).j0(d1);
                                } else {
                                    ((FocusEventModifierNode) node).j0(FocusStateImpl.k);
                                }
                                mutableScatterSet2.m(node);
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
            Object[] objArr2 = mutableScatterSet2.b;
            long[] jArr2 = mutableScatterSet2.a;
            int length2 = jArr2.length - 2;
            if (length2 >= 0) {
                int i6 = 0;
                while (true) {
                    long j2 = jArr2[i6];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i7 = 8 - ((~(i6 - length2)) >>> 31);
                        for (int i8 = 0; i8 < i7; i8++) {
                            if ((j2 & 255) < 128) {
                                ((FocusEventModifierNode) objArr2[(i6 << 3) + i8]).j0(FocusStateImpl.m);
                            }
                            j2 >>= 8;
                        }
                        if (i7 != 8) {
                            break;
                        }
                    }
                    if (i6 == length2) {
                        break;
                    }
                    i6++;
                }
            }
        }
        if (focusOwnerImpl.g() == null || focusOwnerImpl.c.d1() == FocusStateImpl.m) {
            focusOwnerImpl.d();
        }
        mutableScatterSet.f();
        mutableScatterSet2.f();
        focusInvalidationManager.e = false;
        return Unit.a;
    }
}
