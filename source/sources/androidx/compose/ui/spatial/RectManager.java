package androidx.compose.ui.spatial;

import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectList;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.geometry.MutableRect;
import androidx.compose.ui.graphics.Matrix;
import androidx.compose.ui.graphics.MatrixKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.LayoutNodeKt;
import androidx.compose.ui.node.MeasurePassDelegate;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.OwnedLayer;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.platform.GraphicsLayerOwnerLayer;
import androidx.compose.ui.spatial.ThrottledCallbacks;
import androidx.compose.ui.unit.IntOffset;
import defpackage.kb;
import defpackage.q0;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RectManager {
    public final IntObjectMap a;
    public final AndroidComposeView b;
    public final RectList c;
    public final ThrottledCallbacks d;
    public final MutableObjectList e;
    public boolean f;
    public boolean g;
    public boolean h;
    public q0 i;
    public long j;
    public final kb k;
    public final MutableRect l;

    /* JADX WARN: Type inference failed for: r2v1, types: [androidx.compose.ui.spatial.RectList, java.lang.Object] */
    public RectManager(MutableIntObjectMap mutableIntObjectMap, AndroidComposeView androidComposeView) {
        this.a = mutableIntObjectMap;
        this.b = androidComposeView;
        ?? obj = new Object();
        obj.a = new long[192];
        obj.b = new long[192];
        this.c = obj;
        this.d = new ThrottledCallbacks();
        this.e = new MutableObjectList();
        this.j = -1L;
        this.k = new kb(6, this);
        this.l = new MutableRect();
    }

    public static boolean c(NodeCoordinator nodeCoordinator) {
        OwnedLayer ownedLayer = nodeCoordinator.c0;
        if (ownedLayer != null && !MatrixKt.a(((GraphicsLayerOwnerLayer) ownedLayer).b())) {
            return true;
        }
        return false;
    }

    public static boolean d(LayoutNode layoutNode) {
        if (layoutNode.p != -4) {
            return true;
        }
        return false;
    }

    public static long g(LayoutNode layoutNode) {
        NodeChain nodeChain = layoutNode.O;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        long j = 0;
        for (NodeCoordinator nodeCoordinator2 = nodeChain.c; nodeCoordinator2 != null && nodeCoordinator2 != nodeCoordinator; nodeCoordinator2 = nodeCoordinator2.F) {
            if (c(nodeCoordinator2)) {
                return 9223372034707292159L;
            }
            j = IntOffset.c(j, nodeCoordinator2.O);
        }
        return j;
    }

    public static void j(LayoutNode layoutNode) {
        if (layoutNode.l && !c(layoutNode.O.d)) {
            layoutNode.l = false;
            if (layoutNode.n) {
                layoutNode.m = g(layoutNode);
                layoutNode.n = false;
            }
            if (!IntOffset.a(layoutNode.m, 9223372034707292159L)) {
                MutableVector D = layoutNode.D();
                Object[] objArr = D.j;
                int i = D.l;
                for (int i2 = 0; i2 < i; i2++) {
                    j((LayoutNode) objArr[i2]);
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:123:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:126:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:129:0x0207  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x017b  */
    /* JADX WARN: Removed duplicated region for block: B:78:0x01c6  */
    /* JADX WARN: Removed duplicated region for block: B:94:0x020f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void a() {
        boolean z;
        boolean z2;
        long j;
        RectList rectList;
        int i;
        long j2;
        long j3;
        int i2;
        long[] jArr;
        boolean z3;
        long j4;
        long j5;
        q0 q0Var = this.i;
        if (q0Var != null) {
            this.b.removeCallbacks(q0Var);
            this.i = null;
        }
        long currentTimeMillis = System.currentTimeMillis();
        boolean z4 = this.f;
        if (!z4 && !this.g) {
            z = false;
        } else {
            z = true;
        }
        RectList rectList2 = this.c;
        boolean z5 = true;
        ThrottledCallbacks throttledCallbacks = this.d;
        if (z4) {
            this.f = false;
            MutableObjectList mutableObjectList = this.e;
            Object[] objArr = mutableObjectList.a;
            int i3 = mutableObjectList.b;
            for (int i4 = 0; i4 < i3; i4++) {
                ((Function0) objArr[i4]).a();
            }
            long[] jArr2 = rectList2.a;
            int i5 = rectList2.c;
            int i6 = 0;
            while (i6 < jArr2.length - 2 && i6 < i5) {
                long j6 = jArr2[i6 + 2];
                boolean z6 = z5;
                int i7 = i5;
                if ((((int) (j6 >> 60)) & 1) != 0) {
                    long j7 = jArr2[i6];
                    long j8 = jArr2[i6 + 1];
                    ThrottledCallbacks.Entry entry = (ThrottledCallbacks.Entry) throttledCallbacks.a.b(((int) j6) & 33554431);
                    while (entry != null) {
                        ThrottledCallbacks.Entry entry2 = entry.d;
                        boolean z7 = z;
                        long j9 = entry.g;
                        if (currentTimeMillis - j9 < 0 && j9 != Long.MIN_VALUE) {
                            z3 = false;
                        } else {
                            z3 = z6;
                        }
                        entry.e = j7;
                        entry.f = j8;
                        if (z3) {
                            entry.g = currentTimeMillis;
                            j4 = j7;
                            j5 = j8;
                            entry.a(j4, j5, throttledCallbacks.d, throttledCallbacks.e, throttledCallbacks.g);
                        } else {
                            j4 = j7;
                            j5 = j8;
                        }
                        entry = entry2;
                        j7 = j4;
                        j8 = j5;
                        z = z7;
                    }
                }
                i6 += 3;
                z5 = z6;
                i5 = i7;
                z = z;
            }
            z2 = z;
            j = 0;
            long[] jArr3 = rectList2.a;
            int i8 = rectList2.c;
            for (int i9 = 0; i9 < jArr3.length - 2 && i9 < i8; i9 += 3) {
                int i10 = i9 + 2;
                jArr3[i10] = jArr3[i10] & (-1152921504606846977L);
            }
        } else {
            z2 = z;
            j = 0;
        }
        if (this.g) {
            this.g = false;
            long j10 = throttledCallbacks.d;
            long j11 = throttledCallbacks.e;
            float[] fArr = throttledCallbacks.g;
            MutableIntObjectMap mutableIntObjectMap = throttledCallbacks.a;
            j2 = 128;
            Object[] objArr2 = mutableIntObjectMap.c;
            long[] jArr4 = mutableIntObjectMap.a;
            int length = jArr4.length - 2;
            if (length >= 0) {
                int i11 = 0;
                int i12 = 8;
                j3 = 255;
                while (true) {
                    long j12 = j10;
                    long j13 = jArr4[i11];
                    int i13 = i12;
                    rectList = rectList2;
                    if ((((~j13) << 7) & j13 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i14 = 8 - ((~(i11 - length)) >>> 31);
                        long j14 = j13;
                        int i15 = 0;
                        while (i15 < i14) {
                            if ((j14 & 255) < 128) {
                                ThrottledCallbacks.Entry entry3 = (ThrottledCallbacks.Entry) objArr2[(i11 << 3) + i15];
                                while (entry3 != null) {
                                    throttledCallbacks.a(entry3, j12, j11, fArr, currentTimeMillis);
                                    entry3 = entry3.d;
                                    i13 = i13;
                                    jArr4 = jArr4;
                                }
                            }
                            long[] jArr5 = jArr4;
                            int i16 = i13;
                            j14 >>= i16;
                            i15++;
                            j12 = j12;
                            i13 = i16;
                            jArr4 = jArr5;
                        }
                        jArr = jArr4;
                        i = i13;
                        j10 = j12;
                        if (i14 != i) {
                            break;
                        }
                    } else {
                        jArr = jArr4;
                        i = i13;
                        j10 = j12;
                    }
                    if (i11 == length) {
                        break;
                    }
                    i11++;
                    i12 = i;
                    rectList2 = rectList;
                    jArr4 = jArr;
                }
                if (z2) {
                    long j15 = throttledCallbacks.d;
                    long j16 = throttledCallbacks.e;
                    float[] fArr2 = throttledCallbacks.g;
                    ThrottledCallbacks.Entry entry4 = throttledCallbacks.b;
                    if (entry4 != null) {
                        while (entry4 != null) {
                            LayoutNode g = DelegatableNodeKt.g(entry4.b);
                            entry4.e = LayoutNodeKt.a(g).getRectManager().b(g);
                            entry4.f = ((g.A() + ((int) (r12 >> 32))) << 32) | ((g.p() + ((int) (r12 & 4294967295L))) & 4294967295L);
                            throttledCallbacks.a(entry4, j15, j16, fArr2, currentTimeMillis);
                            entry4 = entry4.d;
                        }
                    }
                }
                if (!this.h) {
                    i2 = 0;
                    this.h = false;
                    RectList rectList3 = rectList;
                    long[] jArr6 = rectList3.a;
                    int i17 = rectList3.c;
                    long[] jArr7 = rectList3.b;
                    int i18 = 0;
                    for (int i19 = 0; i19 < jArr6.length - 2 && i18 < jArr7.length - 2 && i19 < i17; i19 += 3) {
                        int i20 = i19 + 2;
                        if (jArr6[i20] != RectListKt.a) {
                            jArr7[i18] = jArr6[i19];
                            jArr7[i18 + 1] = jArr6[i19 + 1];
                            jArr7[i18 + 2] = jArr6[i20];
                            i18 += 3;
                        }
                    }
                    rectList3.c = i18;
                    rectList3.a = jArr7;
                    rectList3.b = jArr6;
                } else {
                    i2 = 0;
                }
                if (throttledCallbacks.c <= currentTimeMillis) {
                    MutableIntObjectMap mutableIntObjectMap2 = throttledCallbacks.a;
                    Object[] objArr3 = mutableIntObjectMap2.c;
                    long[] jArr8 = mutableIntObjectMap2.a;
                    int length2 = jArr8.length - 2;
                    if (length2 >= 0) {
                        int i21 = i2;
                        while (true) {
                            long j17 = jArr8[i21];
                            if ((((~j17) << 7) & j17 & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i22 = 8 - ((~(i21 - length2)) >>> 31);
                                long j18 = j17;
                                for (int i23 = i2; i23 < i22; i23++) {
                                    if ((j18 & j3) < j2) {
                                        for (ThrottledCallbacks.Entry entry5 = (ThrottledCallbacks.Entry) objArr3[(i21 << 3) + i23]; entry5 != null; entry5 = entry5.d) {
                                        }
                                    }
                                    j18 >>= i;
                                }
                                if (i22 != i) {
                                    break;
                                }
                            }
                            if (i21 == length2) {
                                break;
                            } else {
                                i21++;
                            }
                        }
                    }
                    ThrottledCallbacks.Entry entry6 = throttledCallbacks.b;
                    if (entry6 != null) {
                        while (entry6 != null) {
                            entry6 = entry6.d;
                        }
                    }
                    throttledCallbacks.c = -1L;
                }
                if (throttledCallbacks.c <= j) {
                    k();
                    return;
                }
                return;
            }
            rectList = rectList2;
            i = 8;
        } else {
            rectList = rectList2;
            i = 8;
            j2 = 128;
        }
        j3 = 255;
        if (z2) {
        }
        if (!this.h) {
        }
        if (throttledCallbacks.c <= currentTimeMillis) {
        }
        if (throttledCallbacks.c <= j) {
        }
    }

    public final long b(LayoutNode layoutNode) {
        if (d(layoutNode)) {
            return (((int) r4) & 4294967295L) | (((int) (this.c.a[e(layoutNode)] >> 32)) << 32);
        }
        return 9223372034707292159L;
    }

    /* JADX WARN: Removed duplicated region for block: B:5:0x003c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int e(LayoutNode layoutNode) {
        int i = layoutNode.p;
        if (i != -4) {
            int i2 = layoutNode.k;
            RectList rectList = this.c;
            long[] jArr = rectList.a;
            if (i < 0 || i >= rectList.c - 2 || (((int) jArr[i + 2]) & 33554431) != (i2 & 33554431)) {
                int i3 = i2 & 33554431;
                int i4 = rectList.c;
                for (int i5 = 0; i5 < i4 - 2; i5 += 3) {
                    if ((((int) jArr[i5 + 2]) & 33554431) == i3) {
                        i = i5;
                        break;
                    }
                }
            }
            if (i == -4) {
                InlineClassHelperKt.a("LayoutNode " + layoutNode.k + " not found in RectList");
            }
            layoutNode.p = i;
            return i;
        }
        i = -4;
        if (i == -4) {
        }
        layoutNode.p = i;
        return i;
    }

    public final void f(LayoutNode layoutNode) {
        int i;
        layoutNode.l = true;
        NodeChain nodeChain = layoutNode.O;
        NodeCoordinator nodeCoordinator = nodeChain.d;
        MeasurePassDelegate measurePassDelegate = layoutNode.P.p;
        int Z = measurePassDelegate.Z();
        float W = measurePassDelegate.W();
        MutableRect mutableRect = this.l;
        mutableRect.a = 0.0f;
        mutableRect.b = 0.0f;
        mutableRect.c = Z;
        mutableRect.d = W;
        while (true) {
            if (nodeCoordinator == null) {
                break;
            }
            LayoutNode layoutNode2 = nodeCoordinator.D;
            if (nodeCoordinator == layoutNode2.O.d && !layoutNode2.l) {
                if (!IntOffset.a(b(layoutNode2), 9223372034707292159L)) {
                    mutableRect.c((Float.floatToRawIntBits((int) (r9 >> 32)) << 32) | (Float.floatToRawIntBits((int) (r9 & 4294967295L)) & 4294967295L));
                    break;
                }
            }
            OwnedLayer ownedLayer = nodeCoordinator.c0;
            if (ownedLayer != null) {
                float[] b = ((GraphicsLayerOwnerLayer) ownedLayer).b();
                if (!MatrixKt.a(b)) {
                    Matrix.c(b, mutableRect);
                }
            }
            long j = nodeCoordinator.O;
            mutableRect.c((4294967295L & Float.floatToRawIntBits((int) (j & 4294967295L))) | (Float.floatToRawIntBits((int) (j >> 32)) << 32));
            nodeCoordinator = nodeCoordinator.F;
        }
        int i2 = (int) mutableRect.a;
        int i3 = (int) mutableRect.b;
        int i4 = (int) mutableRect.c;
        int i5 = (int) mutableRect.d;
        int i6 = layoutNode.k;
        int i7 = layoutNode.p;
        RectList rectList = this.c;
        int i8 = -4;
        if (i7 != -4) {
            int e = e(layoutNode);
            long[] jArr = rectList.a;
            jArr[e] = (i2 << 32) | (i3 & 4294967295L);
            jArr[e + 1] = (4294967295L & i5) | (i4 << 32);
            int i9 = e + 2;
            long j2 = jArr[i9];
            jArr[i9] = j2 | (((j2 >> 63) & 1) << 60);
        } else {
            LayoutNode w = layoutNode.w();
            if (w != null) {
                i = w.k;
            } else {
                i = -1;
            }
            int i10 = i;
            if (w != null) {
                i8 = e(w);
            }
            layoutNode.p = rectList.a(i6, i2, i3, i4, i5, i10, i8, nodeChain.d(1024), nodeChain.d(16), this.d.a.a(i6));
        }
        layoutNode.o = false;
        this.f = true;
        MutableVector D = layoutNode.D();
        Object[] objArr = D.j;
        int i11 = D.l;
        for (int i12 = 0; i12 < i11; i12++) {
            LayoutNode layoutNode3 = (LayoutNode) objArr[i12];
            if (layoutNode3.M()) {
                f(layoutNode3);
            }
        }
    }

    public final void h(LayoutNode layoutNode) {
        long j;
        boolean M = layoutNode.M();
        NodeChain nodeChain = layoutNode.O;
        if (M && layoutNode.o) {
            LayoutNode w = layoutNode.w();
            if (w != null && !w.l) {
                if (w.n) {
                    w.n = false;
                    w.m = g(w);
                }
                j = w.m;
            } else if (w == null) {
                j = 0;
            } else {
                j = 9223372034707292159L;
            }
            NodeCoordinator nodeCoordinator = nodeChain.d;
            if (!IntOffset.a(j, 9223372034707292159L) && !c(nodeCoordinator)) {
                if (!layoutNode.l) {
                    long c = IntOffset.c(j, nodeCoordinator.O);
                    MeasurePassDelegate measurePassDelegate = layoutNode.P.p;
                    int Z = measurePassDelegate.Z();
                    int W = measurePassDelegate.W();
                    int i = layoutNode.p;
                    RectList rectList = this.c;
                    if (i != -4) {
                        int e = e(layoutNode);
                        if (w != null) {
                            int e2 = e(w);
                            long[] jArr = rectList.a;
                            long j2 = jArr[e2];
                            int i2 = ((int) (j2 >> 32)) + ((int) (c >> 32));
                            int i3 = ((int) j2) + ((int) (c & 4294967295L));
                            long j3 = jArr[e];
                            int i4 = i2 - ((int) (j3 >> 32));
                            int i5 = i3 - ((int) j3);
                            int i6 = e + 2;
                            long j4 = jArr[i6];
                            jArr[e] = (i2 << 32) | (i3 & 4294967295L);
                            jArr[e + 1] = ((Z + i2) << 32) | ((W + i3) & 4294967295L);
                            jArr[i6] = (((j4 >> 63) & 1) << 60) | j4;
                            if (i4 != 0 || i5 != 0) {
                                rectList.b(e, i4, i5, j4);
                            }
                        } else {
                            int e3 = e(layoutNode);
                            int i7 = (int) (c >> 32);
                            int i8 = (int) (c & 4294967295L);
                            long[] jArr2 = rectList.a;
                            long j5 = jArr2[e3];
                            jArr2[e3] = (i8 & 4294967295L) | (i7 << 32);
                            jArr2[e3 + 1] = ((W + i8) & 4294967295L) | ((Z + i7) << 32);
                            int i9 = e3 + 2;
                            long j6 = jArr2[i9];
                            jArr2[i9] = (((j6 >> 63) & 1) << 60) | j6;
                            int i10 = i7 - ((int) (j5 >> 32));
                            int i11 = i8 - ((int) j5);
                            if (i10 != 0 || i11 != 0) {
                                rectList.b(e3, i10, i11, j6);
                            }
                        }
                    } else {
                        int i12 = layoutNode.k;
                        boolean d = nodeChain.d(1024);
                        boolean d2 = nodeChain.d(16);
                        boolean a = this.d.a.a(i12);
                        if (w != null) {
                            int i13 = w.k;
                            int e4 = e(w);
                            int i14 = (int) (c >> 32);
                            int i15 = (int) (c & 4294967295L);
                            int i16 = i12 & 33554431;
                            long[] jArr3 = rectList.a;
                            if ((((int) jArr3[e4 + 2]) & 33554431) != (33554431 & i13)) {
                                InlineClassHelperKt.a("Inserted child " + i16 + " without valid parent index or parent " + i13 + " not found");
                            }
                            long j7 = jArr3[e4];
                            int i17 = (int) j7;
                            int i18 = ((int) (j7 >> 32)) + i14;
                            int i19 = i17 + i15;
                            layoutNode.p = rectList.a(i16, i18, i19, Z + i18, i19 + W, i13, e4, d, d2, a);
                        } else {
                            int i20 = (int) (c >> 32);
                            int i21 = (int) (c & 4294967295L);
                            layoutNode.p = rectList.a(i12, i20, i21, i20 + Z, i21 + W, -1, -4, d, d2, a);
                        }
                    }
                } else {
                    f(layoutNode);
                    j(layoutNode);
                }
            } else {
                f(layoutNode);
            }
            layoutNode.o = false;
            this.f = true;
            k();
        }
    }

    public final void i(LayoutNode layoutNode) {
        if (d(layoutNode)) {
            int e = e(layoutNode);
            long[] jArr = this.c.a;
            jArr[e] = -1;
            jArr[e + 1] = -1;
            jArr[e + 2] = RectListKt.a;
            layoutNode.p = -4;
            layoutNode.o = true;
            this.f = true;
            this.h = true;
        }
    }

    public final void k() {
        boolean z;
        q0 q0Var = this.i;
        int i = 1;
        if (q0Var != null) {
            z = true;
        } else {
            z = false;
        }
        long j = this.d.c;
        if (j >= 0 || !z) {
            if (this.j == j && z) {
                return;
            }
            AndroidComposeView androidComposeView = this.b;
            if (q0Var != null) {
                androidComposeView.removeCallbacks(q0Var);
            }
            long currentTimeMillis = System.currentTimeMillis();
            long max = Math.max(j, 16 + currentTimeMillis);
            this.j = max;
            q0 q0Var2 = new q0(i, this.k);
            androidComposeView.postDelayed(q0Var2, max - currentTimeMillis);
            this.i = q0Var2;
        }
    }
}
