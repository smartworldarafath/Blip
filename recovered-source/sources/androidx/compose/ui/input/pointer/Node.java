package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.LongSparseArrayKt;
import androidx.collection.MutableObjectList;
import androidx.collection.internal.ContainerHelpersKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.util.PointerIdArray;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.PointerInputModifierNode;
import java.util.ArrayList;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Node extends NodeParent {
    public final Modifier.Node c;
    public final PointerIdArray d;
    public final LongSparseArray e;
    public NodeCoordinator f;
    public PointerEvent g;
    public boolean h;
    public boolean i;
    public boolean j;

    /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Object, androidx.compose.ui.input.pointer.util.PointerIdArray] */
    public Node(Modifier.Node node) {
        this.c = node;
        ?? obj = new Object();
        obj.b = new long[2];
        this.d = obj;
        this.e = new LongSparseArray(2);
        this.i = true;
        this.j = true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r4v6, types: [java.util.List] */
    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v38 */
    /* JADX WARN: Type inference failed for: r5v39, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r5v40, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r5v41 */
    /* JADX WARN: Type inference failed for: r5v42 */
    /* JADX WARN: Type inference failed for: r5v43 */
    /* JADX WARN: Type inference failed for: r5v44 */
    /* JADX WARN: Type inference failed for: r5v45 */
    /* JADX WARN: Type inference failed for: r5v46 */
    /* JADX WARN: Type inference failed for: r5v47 */
    /* JADX WARN: Type inference failed for: r5v8 */
    /* JADX WARN: Type inference failed for: r5v9, types: [int] */
    /* JADX WARN: Type inference failed for: r8v0 */
    /* JADX WARN: Type inference failed for: r8v1 */
    /* JADX WARN: Type inference failed for: r8v18 */
    /* JADX WARN: Type inference failed for: r8v19, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v20 */
    /* JADX WARN: Type inference failed for: r8v21 */
    /* JADX WARN: Type inference failed for: r8v22, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r8v24 */
    /* JADX WARN: Type inference failed for: r8v25 */
    /* JADX WARN: Type inference failed for: r8v26 */
    /* JADX WARN: Type inference failed for: r8v27 */
    @Override // androidx.compose.ui.input.pointer.NodeParent
    public final boolean a(LongSparseArray longSparseArray, LayoutCoordinates layoutCoordinates, InternalPointerEvent internalPointerEvent, boolean z) {
        PointerIdArray pointerIdArray;
        LongSparseArray longSparseArray2;
        Object obj;
        boolean z2;
        boolean z3;
        PointerEvent pointerEvent;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        int i;
        int i2;
        boolean z8;
        int i3;
        boolean z9;
        int i4;
        int i5;
        PointerInputChange pointerInputChange;
        LayoutCoordinates layoutCoordinates2 = layoutCoordinates;
        boolean a = super.a(longSparseArray, layoutCoordinates, internalPointerEvent, z);
        DelegatingNode delegatingNode = this.c;
        boolean z10 = true;
        if (delegatingNode.w) {
            ?? r8 = 0;
            while (delegatingNode != 0) {
                if (delegatingNode instanceof PointerInputModifierNode) {
                    this.f = DelegatableNodeKt.e((PointerInputModifierNode) delegatingNode, 16);
                } else if ((delegatingNode.l & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                    Modifier.Node node = delegatingNode.y;
                    int i6 = 0;
                    delegatingNode = delegatingNode;
                    r8 = r8;
                    while (node != null) {
                        if ((node.l & 16) != 0) {
                            i6++;
                            r8 = r8;
                            if (i6 == 1) {
                                delegatingNode = node;
                            } else {
                                if (r8 == 0) {
                                    r8 = new MutableVector(new Modifier.Node[16]);
                                }
                                if (delegatingNode != 0) {
                                    r8.b(delegatingNode);
                                    delegatingNode = 0;
                                }
                                r8.b(node);
                            }
                        }
                        node = node.o;
                        delegatingNode = delegatingNode;
                        r8 = r8;
                    }
                    if (i6 == 1) {
                    }
                }
                delegatingNode = DelegatableNodeKt.b(r8);
            }
            if (this.f != null) {
                int f = longSparseArray.f();
                int i7 = 0;
                while (true) {
                    pointerIdArray = this.d;
                    longSparseArray2 = this.e;
                    if (i7 >= f) {
                        break;
                    }
                    long c = longSparseArray.c(i7);
                    PointerInputChange pointerInputChange2 = (PointerInputChange) longSparseArray.g(i7);
                    if (pointerIdArray.b(c)) {
                        boolean z11 = z10;
                        long j = pointerInputChange2.g;
                        long j2 = pointerInputChange2.c;
                        if ((((j & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0 && (((j2 & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                            z9 = z11;
                            z8 = a;
                            ArrayList arrayList = new ArrayList(pointerInputChange2.b().size());
                            List b = pointerInputChange2.b();
                            i3 = f;
                            int size = b.size();
                            i4 = i7;
                            int i8 = 0;
                            while (i8 < size) {
                                List list = b;
                                HistoricalChange historicalChange = (HistoricalChange) b.get(i8);
                                LongSparseArray longSparseArray3 = longSparseArray2;
                                long j3 = c;
                                long j4 = historicalChange.b;
                                if ((((j4 & 9223372034707292159L) + 36028792732385279L) & (-9223372034707292160L)) == 0) {
                                    pointerInputChange = pointerInputChange2;
                                    long j5 = historicalChange.a;
                                    i5 = size;
                                    NodeCoordinator nodeCoordinator = this.f;
                                    nodeCoordinator.getClass();
                                    arrayList.add(new HistoricalChange(j5, nodeCoordinator.t(layoutCoordinates2, j4), historicalChange.c, historicalChange.d, historicalChange.e));
                                } else {
                                    i5 = size;
                                    pointerInputChange = pointerInputChange2;
                                }
                                i8++;
                                size = i5;
                                b = list;
                                longSparseArray2 = longSparseArray3;
                                c = j3;
                                pointerInputChange2 = pointerInputChange;
                            }
                            LongSparseArray longSparseArray4 = longSparseArray2;
                            long j6 = c;
                            NodeCoordinator nodeCoordinator2 = this.f;
                            nodeCoordinator2.getClass();
                            long t = nodeCoordinator2.t(layoutCoordinates2, j);
                            NodeCoordinator nodeCoordinator3 = this.f;
                            nodeCoordinator3.getClass();
                            PointerInputChange pointerInputChange3 = new PointerInputChange(pointerInputChange2.a, pointerInputChange2.b, nodeCoordinator3.t(layoutCoordinates2, j2), pointerInputChange2.d, pointerInputChange2.e, pointerInputChange2.f, t, pointerInputChange2.h, pointerInputChange2.i, arrayList, pointerInputChange2.j, pointerInputChange2.k, pointerInputChange2.l, pointerInputChange2.n);
                            PointerInputChange pointerInputChange4 = pointerInputChange2.q;
                            if (pointerInputChange4 == null) {
                                pointerInputChange4 = pointerInputChange2;
                            }
                            pointerInputChange3.q = pointerInputChange4;
                            PointerInputChange pointerInputChange5 = pointerInputChange2.q;
                            if (pointerInputChange5 != null) {
                                pointerInputChange2 = pointerInputChange5;
                            }
                            pointerInputChange3.q = pointerInputChange2;
                            longSparseArray4.d(j6, pointerInputChange3);
                        } else {
                            z8 = a;
                            i3 = f;
                            i4 = i7;
                            z9 = z11;
                        }
                    } else {
                        z8 = a;
                        i3 = f;
                        z9 = z10;
                        i4 = i7;
                    }
                    i7 = i4 + 1;
                    layoutCoordinates2 = layoutCoordinates;
                    z10 = z9;
                    f = i3;
                    a = z8;
                }
                boolean z12 = a;
                boolean z13 = z10;
                if (longSparseArray2.f() == 0) {
                    pointerIdArray.a = 0;
                    this.a.g();
                    return z13;
                }
                int i9 = pointerIdArray.a;
                while (true) {
                    i9--;
                    if (-1 >= i9) {
                        break;
                    }
                    long j7 = pointerIdArray.b[i9];
                    if (longSparseArray.j) {
                        int i10 = longSparseArray.m;
                        long[] jArr = longSparseArray.k;
                        Object[] objArr = longSparseArray.l;
                        int i11 = 0;
                        for (int i12 = 0; i12 < i10; i12++) {
                            Object obj2 = objArr[i12];
                            if (obj2 != LongSparseArrayKt.a) {
                                if (i12 != i11) {
                                    jArr[i11] = jArr[i12];
                                    objArr[i11] = obj2;
                                    objArr[i12] = null;
                                }
                                i11++;
                            }
                        }
                        longSparseArray.j = false;
                        longSparseArray.m = i11;
                    }
                    if (ContainerHelpersKt.b(longSparseArray.k, longSparseArray.m, j7) < 0 && i9 < (i2 = pointerIdArray.a)) {
                        int i13 = i2 - 1;
                        int i14 = i9;
                        while (i14 < i13) {
                            long[] jArr2 = pointerIdArray.b;
                            int i15 = i14 + 1;
                            jArr2[i14] = jArr2[i15];
                            i14 = i15;
                        }
                        pointerIdArray.a--;
                    }
                }
                ArrayList arrayList2 = new ArrayList(longSparseArray2.f());
                int f2 = longSparseArray2.f();
                for (int i16 = 0; i16 < f2; i16++) {
                    arrayList2.add(longSparseArray2.g(i16));
                }
                PointerEvent pointerEvent2 = new PointerEvent(arrayList2, internalPointerEvent);
                int size2 = arrayList2.size();
                int i17 = 0;
                while (true) {
                    if (i17 < size2) {
                        obj = arrayList2.get(i17);
                        if (internalPointerEvent.a(((PointerInputChange) obj).a)) {
                            break;
                        }
                        i17++;
                    } else {
                        obj = null;
                        break;
                    }
                }
                PointerInputChange pointerInputChange6 = (PointerInputChange) obj;
                if (pointerInputChange6 != null) {
                    boolean z14 = pointerInputChange6.d;
                    if (!z) {
                        z2 = false;
                        this.i = false;
                    } else {
                        z2 = false;
                        if (!this.i && (z14 || pointerInputChange6.h)) {
                            NodeCoordinator nodeCoordinator4 = this.f;
                            nodeCoordinator4.getClass();
                            long j8 = nodeCoordinator4.l;
                            long j9 = pointerInputChange6.c;
                            float intBitsToFloat = Float.intBitsToFloat((int) (j9 >> 32));
                            float intBitsToFloat2 = Float.intBitsToFloat((int) (j9 & 4294967295L));
                            int i18 = (int) (j8 >> 32);
                            int i19 = (int) (j8 & 4294967295L);
                            if (intBitsToFloat < 0.0f) {
                                z4 = z13;
                            } else {
                                z4 = false;
                            }
                            if (intBitsToFloat > i18) {
                                z5 = z13;
                            } else {
                                z5 = false;
                            }
                            boolean z15 = z5 | z4;
                            if (intBitsToFloat2 < 0.0f) {
                                z6 = z13;
                            } else {
                                z6 = false;
                            }
                            boolean z16 = z6 | z15;
                            if (intBitsToFloat2 > i19) {
                                z7 = z13;
                            } else {
                                z7 = false;
                            }
                            this.i = !(z7 | z16);
                        }
                    }
                    boolean z17 = this.i;
                    boolean z18 = this.h;
                    int i20 = 5;
                    if (z17 != z18 && ((i = pointerEvent2.f) == 3 || i == 4 || i == 5)) {
                        if (z17) {
                            i20 = 4;
                        }
                        pointerEvent2.f = i20;
                    } else {
                        int i21 = pointerEvent2.f;
                        if (i21 == 4 && z18 && !this.j) {
                            pointerEvent2.f = 3;
                        } else if (i21 == 5 && z17 && z14) {
                            pointerEvent2.f = 3;
                        }
                    }
                } else {
                    z2 = false;
                }
                if (!z12 && pointerEvent2.f == 3 && (pointerEvent = this.g) != null) {
                    ?? r1 = pointerEvent.a;
                    int size3 = r1.size();
                    ?? r4 = pointerEvent2.a;
                    if (size3 == r4.size()) {
                        int size4 = r4.size();
                        for (?? r5 = z2; r5 < size4; r5++) {
                            if (Offset.c(((PointerInputChange) r1.get(r5)).c, ((PointerInputChange) r4.get(r5)).c)) {
                            }
                        }
                        z3 = z2;
                        this.g = pointerEvent2;
                        return z3;
                    }
                }
                z3 = z13;
                this.g = pointerEvent2;
                return z3;
            }
        }
        return true;
    }

    @Override // androidx.compose.ui.input.pointer.NodeParent
    public final void b(InternalPointerEvent internalPointerEvent) {
        super.b(internalPointerEvent);
        PointerEvent pointerEvent = this.g;
        if (pointerEvent == null) {
            return;
        }
        this.h = this.i;
        List list = pointerEvent.a;
        int size = list.size();
        boolean z = false;
        for (int i = 0; i < size; i++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i);
            boolean z2 = pointerInputChange.d;
            long j = pointerInputChange.a;
            boolean a = internalPointerEvent.a(j);
            boolean z3 = this.i;
            if ((!z2 && !a) || (!z2 && !z3)) {
                this.d.c(j);
            }
        }
        this.i = false;
        if (pointerEvent.f == 5) {
            z = true;
        }
        this.j = z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v10 */
    /* JADX WARN: Type inference failed for: r1v11 */
    /* JADX WARN: Type inference failed for: r1v12 */
    /* JADX WARN: Type inference failed for: r1v2 */
    /* JADX WARN: Type inference failed for: r1v3 */
    /* JADX WARN: Type inference failed for: r1v4, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v6 */
    /* JADX WARN: Type inference failed for: r1v7, types: [androidx.compose.runtime.collection.MutableVector] */
    /* JADX WARN: Type inference failed for: r1v9 */
    /* JADX WARN: Type inference failed for: r8v1, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v10 */
    /* JADX WARN: Type inference failed for: r8v11 */
    /* JADX WARN: Type inference failed for: r8v12 */
    /* JADX WARN: Type inference failed for: r8v2, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v4 */
    /* JADX WARN: Type inference failed for: r8v5, types: [androidx.compose.ui.Modifier$Node] */
    /* JADX WARN: Type inference failed for: r8v6, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r8v7 */
    /* JADX WARN: Type inference failed for: r8v8 */
    /* JADX WARN: Type inference failed for: r8v9 */
    public final void c() {
        MutableVector mutableVector = this.a;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        for (int i2 = 0; i2 < i; i2++) {
            ((Node) objArr[i2]).c();
        }
        DelegatingNode delegatingNode = this.c;
        ?? r1 = 0;
        while (delegatingNode != 0) {
            if (delegatingNode instanceof PointerInputModifierNode) {
                ((PointerInputModifierNode) delegatingNode).L();
            } else if ((delegatingNode.l & 16) != 0 && (delegatingNode instanceof DelegatingNode)) {
                Modifier.Node node = delegatingNode.y;
                int i3 = 0;
                r1 = r1;
                delegatingNode = delegatingNode;
                while (node != null) {
                    if ((node.l & 16) != 0) {
                        i3++;
                        r1 = r1;
                        if (i3 == 1) {
                            delegatingNode = node;
                        } else {
                            if (r1 == 0) {
                                r1 = new MutableVector(new Modifier.Node[16]);
                            }
                            if (delegatingNode != 0) {
                                r1.b(delegatingNode);
                                delegatingNode = 0;
                            }
                            r1.b(node);
                        }
                    }
                    node = node.o;
                    r1 = r1;
                    delegatingNode = delegatingNode;
                }
                if (i3 == 1) {
                }
            }
            delegatingNode = DelegatableNodeKt.b(r1);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final boolean d(InternalPointerEvent internalPointerEvent) {
        boolean z;
        Object[] objArr;
        Object[] objArr2;
        Object[] objArr3;
        LayoutNode layoutNode;
        LongSparseArray longSparseArray = this.e;
        boolean z2 = false;
        z2 = false;
        z2 = false;
        if (longSparseArray.f() != 0) {
            Modifier.Node node = this.c;
            if (node.w) {
                NodeCoordinator nodeCoordinator = node.q;
                if (nodeCoordinator != null && (layoutNode = nodeCoordinator.D) != null) {
                    z = layoutNode.M();
                } else {
                    z = false;
                }
                if (z) {
                    PointerEvent pointerEvent = this.g;
                    pointerEvent.getClass();
                    NodeCoordinator nodeCoordinator2 = this.f;
                    nodeCoordinator2.getClass();
                    long j = nodeCoordinator2.l;
                    Modifier.Node node2 = node;
                    MutableVector mutableVector = null;
                    while (node2 != null) {
                        if (node2 instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) node2).K(pointerEvent, PointerEventPass.l, j);
                            objArr = false;
                        } else {
                            objArr = true;
                        }
                        if (objArr != false) {
                            if ((node2.l & 16) != 0) {
                                objArr2 = true;
                            } else {
                                objArr2 = false;
                            }
                            if (objArr2 != false && (node2 instanceof DelegatingNode)) {
                                int i = 0;
                                for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                    if ((node3.l & 16) != 0) {
                                        objArr3 = true;
                                    } else {
                                        objArr3 = false;
                                    }
                                    if (objArr3 != false) {
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
                        }
                        node2 = DelegatableNodeKt.b(mutableVector);
                    }
                    if (node.w) {
                        MutableVector mutableVector2 = this.a;
                        Object[] objArr4 = mutableVector2.j;
                        int i2 = mutableVector2.l;
                        for (int i3 = 0; i3 < i2; i3++) {
                            ((Node) objArr4[i3]).d(internalPointerEvent);
                        }
                    }
                    z2 = true;
                }
            }
        }
        b(internalPointerEvent);
        longSparseArray.a();
        this.f = null;
        return z2;
    }

    public final boolean e(InternalPointerEvent internalPointerEvent, boolean z) {
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        LayoutNode layoutNode;
        if (this.e.f() == 0) {
            return false;
        }
        Modifier.Node node = this.c;
        if (node.w) {
            NodeCoordinator nodeCoordinator = node.q;
            if (nodeCoordinator != null && (layoutNode = nodeCoordinator.D) != null) {
                z2 = layoutNode.M();
            } else {
                z2 = false;
            }
            if (z2) {
                PointerEvent pointerEvent = this.g;
                pointerEvent.getClass();
                NodeCoordinator nodeCoordinator2 = this.f;
                nodeCoordinator2.getClass();
                long j = nodeCoordinator2.l;
                Modifier.Node node2 = node;
                MutableVector mutableVector = null;
                while (node2 != null) {
                    if (node2 instanceof PointerInputModifierNode) {
                        ((PointerInputModifierNode) node2).K(pointerEvent, PointerEventPass.j, j);
                        z6 = false;
                    } else {
                        z6 = true;
                    }
                    if (z6) {
                        if ((node2.l & 16) != 0) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        if (z7 && (node2 instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                if ((node3.l & 16) != 0) {
                                    z8 = true;
                                } else {
                                    z8 = false;
                                }
                                if (z8) {
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
                    }
                    node2 = DelegatableNodeKt.b(mutableVector);
                }
                if (node.w) {
                    MutableVector mutableVector2 = this.a;
                    Object[] objArr = mutableVector2.j;
                    int i2 = mutableVector2.l;
                    for (int i3 = 0; i3 < i2; i3++) {
                        Node node4 = (Node) objArr[i3];
                        this.f.getClass();
                        node4.e(internalPointerEvent, z);
                    }
                }
                if (node.w) {
                    MutableVector mutableVector3 = null;
                    while (node != null) {
                        if (node instanceof PointerInputModifierNode) {
                            ((PointerInputModifierNode) node).K(pointerEvent, PointerEventPass.k, j);
                            z3 = false;
                        } else {
                            z3 = true;
                        }
                        if (z3) {
                            if ((node.l & 16) != 0) {
                                z4 = true;
                            } else {
                                z4 = false;
                            }
                            if (z4 && (node instanceof DelegatingNode)) {
                                int i4 = 0;
                                for (Modifier.Node node5 = ((DelegatingNode) node).y; node5 != null; node5 = node5.o) {
                                    if ((node5.l & 16) != 0) {
                                        z5 = true;
                                    } else {
                                        z5 = false;
                                    }
                                    if (z5) {
                                        i4++;
                                        if (i4 == 1) {
                                            node = node5;
                                        } else {
                                            if (mutableVector3 == null) {
                                                mutableVector3 = new MutableVector(new Modifier.Node[16]);
                                            }
                                            if (node != null) {
                                                mutableVector3.b(node);
                                                node = null;
                                            }
                                            mutableVector3.b(node5);
                                        }
                                    }
                                }
                                if (i4 == 1) {
                                }
                            }
                        }
                        node = DelegatableNodeKt.b(mutableVector3);
                    }
                }
                return true;
            }
        }
        return false;
    }

    public final void f(long j, MutableObjectList mutableObjectList) {
        PointerIdArray pointerIdArray = this.d;
        if (pointerIdArray.b(j) && mutableObjectList.c(this) < 0) {
            pointerIdArray.c(j);
            this.e.e(j);
        }
        MutableVector mutableVector = this.a;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        for (int i2 = 0; i2 < i; i2++) {
            ((Node) objArr[i2]).f(j, mutableObjectList);
        }
    }

    public final String toString() {
        return "Node(modifierNode=" + this.c + ", children=" + this.a + ", pointerIds=" + this.d + ")";
    }
}
