package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.collection.MutableLongObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.LayoutCoordinates;
import defpackage.p0;
import java.util.List;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HitPathTracker {
    public final LayoutCoordinates a;
    public boolean b;
    public boolean c;
    public boolean d;
    public boolean e;
    public final MutableObjectList f = new MutableObjectList();
    public final NodeParent g = new NodeParent();
    public final MutableLongObjectMap h = new MutableLongObjectMap(10);

    public HitPathTracker(LayoutCoordinates layoutCoordinates) {
        this.a = layoutCoordinates;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r14v2, types: [java.lang.Object[]] */
    /* JADX WARN: Type inference failed for: r16v6 */
    /* JADX WARN: Type inference failed for: r16v7 */
    /* JADX WARN: Type inference failed for: r16v8 */
    public final void a(long j, List list, boolean z) {
        MutableLongObjectMap mutableLongObjectMap;
        long[] jArr;
        long[] jArr2;
        int i;
        Node node;
        Node node2;
        int size = list.size();
        NodeParent nodeParent = this.g;
        NodeParent nodeParent2 = nodeParent;
        boolean z2 = true;
        int i2 = 0;
        while (true) {
            mutableLongObjectMap = this.h;
            if (i2 >= size) {
                break;
            }
            Modifier.Node node3 = (Modifier.Node) list.get(i2);
            if (node3.w) {
                node3.v = new p0(18, this, node3);
                if (z2) {
                    MutableVector mutableVector = nodeParent2.a;
                    ?? r14 = mutableVector.j;
                    int i3 = mutableVector.l;
                    int i4 = 0;
                    while (true) {
                        if (i4 < i3) {
                            node2 = r14[i4];
                            if (Intrinsics.a(((Node) node2).c, node3)) {
                                break;
                            } else {
                                i4++;
                            }
                        } else {
                            node2 = 0;
                            break;
                        }
                    }
                    node = node2;
                    if (node != null) {
                        node.i = true;
                        node.d.a(j);
                        if (z) {
                            Object b = mutableLongObjectMap.b(j);
                            if (b == null) {
                                b = new MutableObjectList();
                                mutableLongObjectMap.g(j, b);
                            }
                            ((MutableObjectList) b).g(node);
                        }
                        nodeParent2 = node;
                    } else {
                        z2 = false;
                    }
                }
                node = new Node(node3);
                node.d.a(j);
                if (z) {
                    Object b2 = mutableLongObjectMap.b(j);
                    if (b2 == null) {
                        b2 = new MutableObjectList();
                        mutableLongObjectMap.g(j, b2);
                    }
                    ((MutableObjectList) b2).g(node);
                }
                nodeParent2.a.b(node);
                nodeParent2 = node;
            }
            i2++;
        }
        if (z) {
            long[] jArr3 = mutableLongObjectMap.b;
            Object[] objArr = mutableLongObjectMap.c;
            long[] jArr4 = mutableLongObjectMap.a;
            int length = jArr4.length - 2;
            if (length >= 0) {
                int i5 = 0;
                while (true) {
                    long j2 = jArr4[i5];
                    if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i6 = 8;
                        int i7 = 8 - ((~(i5 - length)) >>> 31);
                        int i8 = 0;
                        while (i8 < i7) {
                            if ((255 & j2) < 128) {
                                int i9 = (i5 << 3) + i8;
                                long j3 = jArr3[i9];
                                MutableObjectList mutableObjectList = (MutableObjectList) objArr[i9];
                                MutableVector mutableVector2 = nodeParent.a;
                                i = i6;
                                Object[] objArr2 = mutableVector2.j;
                                int i10 = mutableVector2.l;
                                jArr2 = jArr3;
                                for (int i11 = 0; i11 < i10; i11++) {
                                    ((Node) objArr2[i11]).f(j3, mutableObjectList);
                                }
                            } else {
                                jArr2 = jArr3;
                                i = i6;
                            }
                            j2 >>= i;
                            i8++;
                            i6 = i;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        if (i7 != i6) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                    }
                    if (i5 == length) {
                        break;
                    }
                    i5++;
                    jArr3 = jArr;
                }
            }
        }
        mutableLongObjectMap.c();
    }

    public final boolean b(InternalPointerEvent internalPointerEvent, boolean z) {
        LongSparseArray longSparseArray = internalPointerEvent.a;
        LayoutCoordinates layoutCoordinates = this.a;
        NodeParent nodeParent = this.g;
        boolean a = nodeParent.a(longSparseArray, layoutCoordinates, internalPointerEvent, z);
        MutableVector mutableVector = nodeParent.a;
        if (!a) {
            return false;
        }
        boolean z2 = true;
        this.b = true;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        boolean z3 = false;
        for (int i2 = 0; i2 < i; i2++) {
            if (!((Node) objArr[i2]).e(internalPointerEvent, z) && !z3) {
                z3 = false;
            } else {
                z3 = true;
            }
        }
        Object[] objArr2 = mutableVector.j;
        int i3 = mutableVector.l;
        boolean z4 = false;
        for (int i4 = 0; i4 < i3; i4++) {
            if (!((Node) objArr2[i4]).d(internalPointerEvent) && !z4) {
                z4 = false;
            } else {
                z4 = true;
            }
        }
        nodeParent.b(internalPointerEvent);
        if (!z4 && !z3) {
            z2 = false;
        }
        this.b = false;
        if (this.e) {
            this.e = false;
            MutableObjectList mutableObjectList = this.f;
            int i5 = mutableObjectList.b;
            for (int i6 = 0; i6 < i5; i6++) {
                d((Modifier.Node) mutableObjectList.b(i6));
            }
            mutableObjectList.k();
        }
        if (this.c) {
            this.c = false;
            c();
        }
        if (this.d) {
            this.d = false;
            nodeParent.a.g();
        }
        return z2;
    }

    public final void c() {
        if (this.b) {
            this.c = true;
            return;
        }
        NodeParent nodeParent = this.g;
        MutableVector mutableVector = nodeParent.a;
        Object[] objArr = mutableVector.j;
        int i = mutableVector.l;
        for (int i2 = 0; i2 < i; i2++) {
            ((Node) objArr[i2]).c();
        }
        if (this.d) {
            this.d = true;
        } else {
            nodeParent.a.g();
        }
    }

    public final void d(Modifier.Node node) {
        if (this.b) {
            this.e = true;
            this.f.g(node);
            return;
        }
        NodeParent nodeParent = this.g;
        MutableObjectList mutableObjectList = nodeParent.b;
        mutableObjectList.k();
        mutableObjectList.g(nodeParent);
        while (mutableObjectList.e()) {
            NodeParent nodeParent2 = (NodeParent) mutableObjectList.m(mutableObjectList.b - 1);
            int i = 0;
            while (true) {
                MutableVector mutableVector = nodeParent2.a;
                if (i < mutableVector.l) {
                    Node node2 = (Node) mutableVector.j[i];
                    if (Intrinsics.a(node2.c, node)) {
                        nodeParent2.a.j(node2);
                        node2.c();
                    } else {
                        mutableObjectList.g(node2);
                        i++;
                    }
                }
            }
        }
    }
}
