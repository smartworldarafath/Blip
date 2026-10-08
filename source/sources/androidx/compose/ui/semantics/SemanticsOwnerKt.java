package androidx.compose.ui.semantics;

import android.graphics.Region;
import android.os.Trace;
import androidx.collection.IntObjectMapKt;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableScatterMap;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.InnerNodeCoordinator;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import androidx.compose.ui.unit.IntSizeKt;
import java.util.List;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SemanticsOwnerKt {
    public static final Rect a = new Rect(0.0f, 0.0f, 10.0f, 10.0f);

    public static final MutableIntObjectMap a(SemanticsOwner semanticsOwner, Function1 function1) {
        Trace.beginSection("getAllUncoveredSemanticsNodesToIntObjectMap");
        try {
            SemanticsNode a2 = semanticsOwner.a();
            LayoutNode layoutNode = a2.c;
            if (layoutNode.M() && layoutNode.L()) {
                Rect g = a2.g();
                MutableIntObjectMap mutableIntObjectMap = new MutableIntObjectMap(48);
                SemanticRegionImpl semanticRegionImpl = new SemanticRegionImpl();
                semanticRegionImpl.a(IntRectKt.a(g));
                d(mutableIntObjectMap, a2, a2, new SemanticRegionImpl(), semanticRegionImpl, function1);
                return mutableIntObjectMap;
            }
            MutableIntObjectMap mutableIntObjectMap2 = IntObjectMapKt.a;
            mutableIntObjectMap2.getClass();
            return mutableIntObjectMap2;
        } finally {
            Trace.endSection();
        }
    }

    public static final void b(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2, SemanticsRegion semanticsRegion, SemanticsRegion semanticsRegion2, Function1 function1) {
        boolean z;
        Rect a2;
        LayoutNode layoutNode = semanticsNode2.c;
        LayoutNode layoutNode2 = semanticsNode2.c;
        if (layoutNode.M() && layoutNode2.L()) {
            Region region = ((SemanticRegionImpl) semanticsRegion2).a;
            if (!region.isEmpty()) {
                Rect m = semanticsNode2.m();
                if (m.f()) {
                    Object f = semanticsNode2.f();
                    if (f == null) {
                        InnerNodeCoordinator innerNodeCoordinator = layoutNode2.O.c;
                        a2 = LayoutCoordinatesKt.c(innerNodeCoordinator).l(innerNodeCoordinator, false);
                    } else {
                        Modifier.Node node = ((Modifier.Node) f).j;
                        Object e = semanticsNode2.d.j.e(SemanticsActions.b);
                        if (e == null) {
                            e = null;
                        }
                        if (e != null) {
                            z = true;
                        } else {
                            z = false;
                        }
                        a2 = SemanticsModifierNodeKt.a(node, z, false);
                    }
                    m = a2;
                }
                IntRect a3 = IntRectKt.a(m);
                SemanticRegionImpl semanticRegionImpl = (SemanticRegionImpl) semanticsRegion;
                Region region2 = semanticRegionImpl.a;
                semanticRegionImpl.a(a3);
                if (region2.op(region, Region.Op.INTERSECT)) {
                    int i = semanticsNode2.f;
                    if (i == semanticsNode.f) {
                        i = -1;
                    }
                    android.graphics.Rect bounds = region2.getBounds();
                    mutableIntObjectMap.i(i, new SemanticsNodeWithAdjustedBounds(semanticsNode2, new IntRect(bounds.left, bounds.top, bounds.right, bounds.bottom)));
                    List j = SemanticsNode.j(4, semanticsNode2);
                    for (int size = j.size() - 1; -1 < size; size--) {
                        if (!((Boolean) function1.b(j.get(size))).booleanValue()) {
                            b(mutableIntObjectMap, semanticsNode, (SemanticsNode) j.get(size), semanticRegionImpl, semanticsRegion2, function1);
                        }
                    }
                    if (f(semanticsNode2)) {
                        region.op(a3.a, a3.b, a3.c, a3.d, Region.Op.DIFFERENCE);
                        return;
                    }
                    return;
                }
                return;
            }
        }
        if (semanticsNode2.o()) {
            c(mutableIntObjectMap, semanticsNode, semanticsNode2);
        }
    }

    public static final void c(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        Rect rect;
        LayoutNode layoutNode;
        SemanticsNode l = semanticsNode2.l();
        if (l != null && (layoutNode = l.c) != null && layoutNode.M()) {
            rect = l.g();
        } else {
            rect = a;
        }
        int i = semanticsNode2.f;
        if (i == semanticsNode.f) {
            i = -1;
        }
        mutableIntObjectMap.i(i, new SemanticsNodeWithAdjustedBounds(semanticsNode2, IntRectKt.a(rect)));
    }

    /* JADX WARN: Code restructure failed: missing block: B:36:0x00ae, code lost:
    
        if (r10 != null) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00c2, code lost:
    
        if (r2 != null) goto L51;
     */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00ea  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f0  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0198  */
    /* JADX WARN: Removed duplicated region for block: B:67:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:76:0x0160  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static final void d(MutableIntObjectMap mutableIntObjectMap, SemanticsNode semanticsNode, SemanticsNode semanticsNode2, SemanticsRegion semanticsRegion, SemanticsRegion semanticsRegion2, Function1 function1) {
        boolean z;
        boolean z2;
        boolean z3;
        Rect a2;
        SemanticRegionImpl semanticRegionImpl;
        boolean z4;
        Function1 function12 = function1;
        int i = semanticsNode.f;
        LayoutNode layoutNode = semanticsNode2.c;
        SemanticsConfiguration semanticsConfiguration = semanticsNode2.d;
        LayoutNode layoutNode2 = semanticsNode2.c;
        int i2 = semanticsNode2.f;
        if (layoutNode.M() && layoutNode2.L()) {
            z = false;
        } else {
            z = true;
        }
        Region region = ((SemanticRegionImpl) semanticsRegion2).a;
        if (!region.isEmpty() || i2 == i) {
            if (!z || semanticsNode2.o()) {
                IntRect a3 = IntRectKt.a(semanticsNode2.m());
                SemanticRegionImpl semanticRegionImpl2 = (SemanticRegionImpl) semanticsRegion;
                Region region2 = semanticRegionImpl2.a;
                semanticRegionImpl2.a(a3);
                if (i2 == i) {
                    i2 = -1;
                }
                if (region2.op(region, Region.Op.INTERSECT)) {
                    android.graphics.Rect bounds = region2.getBounds();
                    mutableIntObjectMap.i(i2, new SemanticsNodeWithAdjustedBounds(semanticsNode2, new IntRect(bounds.left, bounds.top, bounds.right, bounds.bottom)));
                    List j = SemanticsNode.j(4, semanticsNode2);
                    Object obj = null;
                    if (semanticsConfiguration.l) {
                        SemanticsNode l = semanticsNode2.l();
                        while (true) {
                            if (l != null) {
                                MutableScatterMap mutableScatterMap = l.d.j;
                                if (mutableScatterMap.c(SemanticsProperties.w) || mutableScatterMap.c(SemanticsProperties.v)) {
                                    break;
                                } else {
                                    l = l.l();
                                }
                            } else {
                                l = null;
                                break;
                            }
                        }
                        if (l != null) {
                            NodeCoordinator d = semanticsNode2.d();
                            if (d != null) {
                                if (!d.d1().w) {
                                    d = null;
                                }
                            }
                            d = null;
                            NodeCoordinator d2 = l.d();
                            if (d2 != null) {
                                if (!d2.d1().w) {
                                    d2 = null;
                                }
                            }
                            d2 = null;
                            if (d != null && d2 != null) {
                                Rect l2 = d2.l(d, false);
                                z4 = !l2.equals(l2.e(RectKt.a(0L, IntSizeKt.a(d2.l))));
                                if (z4) {
                                    z2 = true;
                                    if (!z2) {
                                        SemanticRegionImpl semanticRegionImpl3 = new SemanticRegionImpl();
                                        Object f = semanticsNode2.f();
                                        if (f == null) {
                                            InnerNodeCoordinator innerNodeCoordinator = layoutNode2.O.c;
                                            a2 = LayoutCoordinatesKt.c(innerNodeCoordinator).l(innerNodeCoordinator, false);
                                        } else {
                                            Modifier.Node node = ((Modifier.Node) f).j;
                                            Object e = semanticsConfiguration.j.e(SemanticsActions.b);
                                            if (e != null) {
                                                obj = e;
                                            }
                                            if (obj != null) {
                                                z3 = true;
                                            } else {
                                                z3 = false;
                                            }
                                            a2 = SemanticsModifierNodeKt.a(node, z3, false);
                                        }
                                        semanticRegionImpl3.a(IntRectKt.a(a2));
                                        int size = j.size() - 1;
                                        while (-1 < size) {
                                            if (((Boolean) function12.b(j.get(size))).booleanValue()) {
                                                semanticRegionImpl = semanticRegionImpl3;
                                            } else {
                                                semanticRegionImpl = semanticRegionImpl3;
                                                b(mutableIntObjectMap, semanticsNode, (SemanticsNode) j.get(size), new SemanticRegionImpl(), semanticRegionImpl, function12);
                                            }
                                            size--;
                                            semanticRegionImpl3 = semanticRegionImpl;
                                        }
                                    } else {
                                        int size2 = j.size() - 1;
                                        while (-1 < size2) {
                                            if (!((Boolean) function12.b(j.get(size2))).booleanValue()) {
                                                d(mutableIntObjectMap, semanticsNode, (SemanticsNode) j.get(size2), semanticRegionImpl2, semanticsRegion2, function12);
                                            }
                                            size2--;
                                            function12 = function1;
                                        }
                                    }
                                    if (!f(semanticsNode2)) {
                                        region.op(a3.a, a3.b, a3.c, a3.d, Region.Op.DIFFERENCE);
                                        return;
                                    }
                                    return;
                                }
                            }
                        }
                        z4 = false;
                        if (z4) {
                        }
                    }
                    z2 = false;
                    if (!z2) {
                    }
                    if (!f(semanticsNode2)) {
                    }
                } else if (semanticsNode2.o()) {
                    c(mutableIntObjectMap, semanticsNode, semanticsNode2);
                } else if (i2 == -1) {
                    android.graphics.Rect bounds2 = region2.getBounds();
                    mutableIntObjectMap.i(i2, new SemanticsNodeWithAdjustedBounds(semanticsNode2, new IntRect(bounds2.left, bounds2.top, bounds2.right, bounds2.bottom)));
                }
            }
        }
    }

    public static final boolean e(SemanticsNode semanticsNode) {
        boolean z;
        NodeCoordinator d = semanticsNode.d();
        MutableScatterMap mutableScatterMap = semanticsNode.d.j;
        if (d != null) {
            z = d.m1();
        } else {
            z = false;
        }
        if (!z && !mutableScatterMap.c(SemanticsProperties.q) && !mutableScatterMap.c(SemanticsProperties.p)) {
            return false;
        }
        return true;
    }

    public static final boolean f(SemanticsNode semanticsNode) {
        if (!e(semanticsNode)) {
            SemanticsConfiguration semanticsConfiguration = semanticsNode.d;
            if (!semanticsConfiguration.l) {
                MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
                Object[] objArr = mutableScatterMap.b;
                Object[] objArr2 = mutableScatterMap.c;
                long[] jArr = mutableScatterMap.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128) {
                                    int i4 = (i << 3) + i3;
                                    Object obj = objArr[i4];
                                    Object obj2 = objArr2[i4];
                                    if (((SemanticsPropertyKey) obj).c) {
                                        return true;
                                    }
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
            } else {
                return true;
            }
        }
        return false;
    }
}
