package androidx.compose.ui.node;

import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterMapKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.layout.MeasureResult;
import androidx.compose.ui.layout.MeasureScope;
import androidx.compose.ui.layout.Placeable;
import androidx.compose.ui.layout.PlaceableKt;
import androidx.compose.ui.layout.Ruler;
import androidx.compose.ui.layout.RulerScope;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntSize;
import defpackage.n1;
import java.util.Arrays;
import java.util.Map;
import kotlin.Unit;
import kotlin.collections.ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LookaheadCapablePlaceable extends Placeable implements MeasureScope, MotionReferencePlacementDelegate, OwnerScope {
    public static final a B;
    public static final a C;
    public MutableScatterMap A;
    public ResettableRulerScope o;
    public Function1 p;
    public Function2 q;
    public Function1 r;
    public PlaceableResult s;
    public MutableScatterMap t;
    public boolean u;
    public MutableScatterMap v;
    public boolean w;
    public boolean x;
    public final Placeable.PlacementScope y = PlaceableKt.a(this);
    public RulerTrackingMap z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ResettableRulerScope implements RulerScope {
        public boolean j;
        public long k = 9223372034707292159L;
        public long l = 0;

        public ResettableRulerScope() {
        }

        public final void a(Ruler ruler, float f) {
            LookaheadCapablePlaceable lookaheadCapablePlaceable = LookaheadCapablePlaceable.this;
            RulerTrackingMap rulerTrackingMap = lookaheadCapablePlaceable.z;
            if (rulerTrackingMap == null) {
                rulerTrackingMap = new RulerTrackingMap();
                lookaheadCapablePlaceable.z = rulerTrackingMap;
            }
            int t = ArraysKt.t(rulerTrackingMap.b, ruler);
            if (t < 0) {
                int i = rulerTrackingMap.a;
                Ruler[] rulerArr = rulerTrackingMap.b;
                if (i == rulerArr.length) {
                    int i2 = i * 2;
                    rulerTrackingMap.b = (Ruler[]) Arrays.copyOf(rulerArr, i2);
                    rulerTrackingMap.c = Arrays.copyOf(rulerTrackingMap.c, i2);
                    rulerTrackingMap.d = Arrays.copyOf(rulerTrackingMap.d, i2);
                }
                rulerTrackingMap.b[i] = ruler;
                rulerTrackingMap.d[i] = 3;
                rulerTrackingMap.c[i] = f;
                rulerTrackingMap.a++;
                return;
            }
            float[] fArr = rulerTrackingMap.c;
            if (fArr[t] == f) {
                byte[] bArr = rulerTrackingMap.d;
                if (bArr[t] == 2) {
                    bArr[t] = 0;
                    return;
                }
                return;
            }
            fArr[t] = f;
            rulerTrackingMap.d[t] = 1;
        }

        @Override // androidx.compose.ui.unit.FontScaling
        public final float e0() {
            return LookaheadCapablePlaceable.this.e0();
        }

        @Override // androidx.compose.ui.unit.Density
        public final float getDensity() {
            return LookaheadCapablePlaceable.this.getDensity();
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.compose.ui.node.a] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.node.a] */
    static {
        final int i = 0;
        B = new Function1() { // from class: androidx.compose.ui.node.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Ruler ruler;
                int i2 = i;
                Unit unit = Unit.a;
                MutableScatterSet mutableScatterSet = null;
                switch (i2) {
                    case 0:
                        PlaceableResult placeableResult = (PlaceableResult) obj;
                        if (placeableResult.z()) {
                            LookaheadCapablePlaceable lookaheadCapablePlaceable = placeableResult.k;
                            if (!lookaheadCapablePlaceable.x) {
                                Function1 g = placeableResult.j.g();
                                if (placeableResult.j.f() != null) {
                                    lookaheadCapablePlaceable.R0();
                                } else if (g == null) {
                                    lookaheadCapablePlaceable.q = null;
                                    lookaheadCapablePlaceable.r = null;
                                    lookaheadCapablePlaceable.p = null;
                                    lookaheadCapablePlaceable.R0();
                                } else {
                                    lookaheadCapablePlaceable.q = null;
                                    lookaheadCapablePlaceable.r = null;
                                    lookaheadCapablePlaceable.w0(placeableResult, 9223372034707292159L, 0L);
                                    lookaheadCapablePlaceable.p = g;
                                }
                            }
                        }
                        return unit;
                    default:
                        PlaceableResult placeableResult2 = (PlaceableResult) obj;
                        if (placeableResult2.z() && (ruler = placeableResult2.l) != null) {
                            LookaheadCapablePlaceable lookaheadCapablePlaceable2 = placeableResult2.k;
                            MutableScatterMap mutableScatterMap = lookaheadCapablePlaceable2.A;
                            if (mutableScatterMap != null) {
                                mutableScatterSet = (MutableScatterSet) mutableScatterMap.e(ruler);
                            }
                            if (mutableScatterSet != null) {
                                RulerTrackingMap rulerTrackingMap = lookaheadCapablePlaceable2.z;
                                if (rulerTrackingMap != null) {
                                    rulerTrackingMap.a(ruler);
                                }
                                lookaheadCapablePlaceable2.P0(mutableScatterSet);
                                mutableScatterSet.f();
                            }
                        }
                        return unit;
                }
            }
        };
        final int i2 = 1;
        C = new Function1() { // from class: androidx.compose.ui.node.a
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                Ruler ruler;
                int i22 = i2;
                Unit unit = Unit.a;
                MutableScatterSet mutableScatterSet = null;
                switch (i22) {
                    case 0:
                        PlaceableResult placeableResult = (PlaceableResult) obj;
                        if (placeableResult.z()) {
                            LookaheadCapablePlaceable lookaheadCapablePlaceable = placeableResult.k;
                            if (!lookaheadCapablePlaceable.x) {
                                Function1 g = placeableResult.j.g();
                                if (placeableResult.j.f() != null) {
                                    lookaheadCapablePlaceable.R0();
                                } else if (g == null) {
                                    lookaheadCapablePlaceable.q = null;
                                    lookaheadCapablePlaceable.r = null;
                                    lookaheadCapablePlaceable.p = null;
                                    lookaheadCapablePlaceable.R0();
                                } else {
                                    lookaheadCapablePlaceable.q = null;
                                    lookaheadCapablePlaceable.r = null;
                                    lookaheadCapablePlaceable.w0(placeableResult, 9223372034707292159L, 0L);
                                    lookaheadCapablePlaceable.p = g;
                                }
                            }
                        }
                        return unit;
                    default:
                        PlaceableResult placeableResult2 = (PlaceableResult) obj;
                        if (placeableResult2.z() && (ruler = placeableResult2.l) != null) {
                            LookaheadCapablePlaceable lookaheadCapablePlaceable2 = placeableResult2.k;
                            MutableScatterMap mutableScatterMap = lookaheadCapablePlaceable2.A;
                            if (mutableScatterMap != null) {
                                mutableScatterSet = (MutableScatterSet) mutableScatterMap.e(ruler);
                            }
                            if (mutableScatterSet != null) {
                                RulerTrackingMap rulerTrackingMap = lookaheadCapablePlaceable2.z;
                                if (rulerTrackingMap != null) {
                                    rulerTrackingMap.a(ruler);
                                }
                                lookaheadCapablePlaceable2.P0(mutableScatterSet);
                                mutableScatterSet.f();
                            }
                        }
                        return unit;
                }
            }
        };
    }

    public static void O0(NodeCoordinator nodeCoordinator) {
        LayoutNode layoutNode;
        LayoutNodeAlignmentLines layoutNodeAlignmentLines;
        NodeCoordinator nodeCoordinator2 = nodeCoordinator.E;
        LayoutNode layoutNode2 = nodeCoordinator.D;
        if (nodeCoordinator2 != null) {
            layoutNode = nodeCoordinator2.D;
        } else {
            layoutNode = null;
        }
        if (!Intrinsics.a(layoutNode, layoutNode2)) {
            layoutNode2.P.p.H.g();
            return;
        }
        AlignmentLinesOwner h = layoutNode2.P.p.h();
        if (h != null && (layoutNodeAlignmentLines = ((MeasurePassDelegate) h).H) != null) {
            layoutNodeAlignmentLines.g();
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:62:0x011f  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0141 A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void A0(MeasureResult measureResult) {
        boolean z;
        long j;
        char c;
        long j2;
        long j3;
        ResettableRulerScope resettableRulerScope;
        MutableScatterMap mutableScatterMap;
        long[] jArr;
        Object[] objArr;
        int i;
        long[] jArr2;
        Object[] objArr2;
        int i2;
        boolean z2;
        MutableScatterSet mutableScatterSet;
        ResettableRulerScope resettableRulerScope2;
        long j4;
        if (!this.x) {
            Function1 g = measureResult.g();
            Function2 f = measureResult.f();
            Function1 e = measureResult.e();
            long j5 = 0;
            if (f != null) {
                if (f == this.q && e == this.r) {
                    MutableScatterMap mutableScatterMap2 = this.v;
                    long j6 = -9187201950435737472L;
                    int i3 = 8;
                    if (mutableScatterMap2 != null) {
                        Object[] objArr3 = mutableScatterMap2.c;
                        long[] jArr3 = mutableScatterMap2.a;
                        j2 = 128;
                        int length = jArr3.length - 2;
                        if (length >= 0) {
                            c = 7;
                            int i4 = 0;
                            resettableRulerScope2 = null;
                            while (true) {
                                long j7 = jArr3[i4];
                                j3 = 255;
                                if ((((~j7) << 7) & j7 & j6) != j6) {
                                    int i5 = 8 - ((~(i4 - length)) >>> 31);
                                    int i6 = 0;
                                    while (i6 < i5) {
                                        if ((j7 & 255) < 128) {
                                            j4 = j6;
                                            ResettableRulerScope resettableRulerScope3 = (ResettableRulerScope) objArr3[(i4 << 3) + i6];
                                            if (resettableRulerScope3.j) {
                                                resettableRulerScope2 = resettableRulerScope3;
                                            }
                                        } else {
                                            j4 = j6;
                                        }
                                        j7 >>= 8;
                                        i6++;
                                        j6 = j4;
                                    }
                                    j = j6;
                                    if (i5 != 8) {
                                        break;
                                    }
                                } else {
                                    j = j6;
                                }
                                if (i4 == length) {
                                    break;
                                }
                                i4++;
                                j6 = j;
                            }
                        } else {
                            j = -9187201950435737472L;
                            c = 7;
                            j3 = 255;
                            resettableRulerScope2 = null;
                        }
                        resettableRulerScope = resettableRulerScope2;
                    } else {
                        j = -9187201950435737472L;
                        c = 7;
                        j2 = 128;
                        j3 = 255;
                        resettableRulerScope = null;
                    }
                    if (resettableRulerScope != null) {
                        LayoutCoordinates F0 = F0();
                        long b = IntOffsetKt.b(F0.u(0L));
                        long f2 = F0.f();
                        if ((!IntOffset.a(b, resettableRulerScope.k) || !IntSize.a(f2, resettableRulerScope.l)) && (mutableScatterMap = this.v) != null) {
                            Object[] objArr4 = mutableScatterMap.b;
                            Object[] objArr5 = mutableScatterMap.c;
                            long[] jArr4 = mutableScatterMap.a;
                            int length2 = jArr4.length - 2;
                            if (length2 >= 0) {
                                int i7 = 0;
                                while (true) {
                                    long j8 = jArr4[i7];
                                    int i8 = length2;
                                    if ((((~j8) << c) & j8 & j) != j) {
                                        int i9 = 8 - ((~(i7 - i8)) >>> 31);
                                        int i10 = 0;
                                        while (i10 < i9) {
                                            if ((j8 & j3) < j2) {
                                                int i11 = (i7 << 3) + i10;
                                                Object obj = objArr4[i11];
                                                ResettableRulerScope resettableRulerScope4 = (ResettableRulerScope) objArr5[i11];
                                                i2 = i3;
                                                Ruler ruler = (Ruler) obj;
                                                jArr2 = jArr4;
                                                if (resettableRulerScope4.j) {
                                                    objArr2 = objArr4;
                                                    if (!IntSize.a(resettableRulerScope4.l, f2) || !IntOffset.a(resettableRulerScope4.k, b)) {
                                                        z2 = true;
                                                        resettableRulerScope4.l = f2;
                                                        resettableRulerScope4.k = b;
                                                        resettableRulerScope4.j = false;
                                                        if (z2) {
                                                            RulerTrackingMap rulerTrackingMap = this.z;
                                                            if (rulerTrackingMap != null) {
                                                                rulerTrackingMap.a(ruler);
                                                            }
                                                            MutableScatterMap mutableScatterMap3 = this.A;
                                                            if (mutableScatterMap3 != null) {
                                                                mutableScatterSet = (MutableScatterSet) mutableScatterMap3.e(ruler);
                                                            } else {
                                                                mutableScatterSet = null;
                                                            }
                                                            if (mutableScatterSet != null) {
                                                                P0(mutableScatterSet);
                                                                mutableScatterSet.f();
                                                            }
                                                        }
                                                    }
                                                } else {
                                                    objArr2 = objArr4;
                                                }
                                                z2 = false;
                                                resettableRulerScope4.l = f2;
                                                resettableRulerScope4.k = b;
                                                resettableRulerScope4.j = false;
                                                if (z2) {
                                                }
                                            } else {
                                                jArr2 = jArr4;
                                                objArr2 = objArr4;
                                                i2 = i3;
                                            }
                                            j8 >>= i2;
                                            i10++;
                                            objArr4 = objArr2;
                                            i3 = i2;
                                            jArr4 = jArr2;
                                        }
                                        jArr = jArr4;
                                        objArr = objArr4;
                                        i = i3;
                                        if (i9 != i) {
                                            return;
                                        }
                                    } else {
                                        jArr = jArr4;
                                        objArr = objArr4;
                                        i = i3;
                                    }
                                    length2 = i8;
                                    if (i7 != length2) {
                                        i7++;
                                        i3 = i;
                                        objArr4 = objArr;
                                        jArr4 = jArr;
                                    } else {
                                        return;
                                    }
                                }
                            }
                        }
                    }
                } else {
                    this.q = f;
                    this.r = e;
                    R0();
                }
            } else {
                long j9 = 9223372034707292159L;
                if (g == null) {
                    R0();
                    this.p = null;
                    this.q = null;
                    this.r = null;
                    ResettableRulerScope resettableRulerScope5 = this.o;
                    if (resettableRulerScope5 != null) {
                        resettableRulerScope5.j = false;
                    }
                    if (resettableRulerScope5 != null) {
                        resettableRulerScope5.k = 9223372034707292159L;
                        return;
                    }
                    return;
                }
                boolean z3 = false;
                this.q = null;
                this.r = null;
                if (this.p != g) {
                    z = true;
                } else {
                    z = false;
                }
                if (!z && N0().j) {
                    LayoutCoordinates F02 = F0();
                    j9 = IntOffsetKt.b(F02.u(0L));
                    j5 = F02.f();
                    if (!IntOffset.a(j9, N0().k) || !IntSize.a(j5, N0().l)) {
                        z3 = true;
                    }
                    z = z3;
                }
                if (z) {
                    PlaceableResult placeableResult = this.s;
                    if (placeableResult != null) {
                        placeableResult.j = measureResult;
                    } else {
                        placeableResult = new PlaceableResult(measureResult, this, null);
                        this.s = placeableResult;
                    }
                    w0(placeableResult, j9, j5);
                    this.p = measureResult.g();
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    public final float C0(Ruler ruler) {
        float f;
        Function1 function1;
        float f2;
        int t;
        OwnerSnapshotObserver snapshotObserver;
        int t2;
        if (this.x) {
            return Float.NaN;
        }
        ?? obj = new Object();
        obj.j = this;
        while (true) {
            RulerTrackingMap rulerTrackingMap = ((LookaheadCapablePlaceable) obj.j).z;
            if (rulerTrackingMap != null && (t2 = ArraysKt.t(rulerTrackingMap.b, ruler)) >= 0) {
                f = rulerTrackingMap.c[t2];
            } else {
                f = Float.NaN;
            }
            boolean isNaN = Float.isNaN(f);
            Object obj2 = obj.j;
            if (!isNaN) {
                ((LookaheadCapablePlaceable) obj2).n0(J0(), ruler);
                return ruler.a(f, ((LookaheadCapablePlaceable) obj.j).F0(), F0());
            }
            LookaheadCapablePlaceable lookaheadCapablePlaceable = (LookaheadCapablePlaceable) obj2;
            Function2 function2 = lookaheadCapablePlaceable.q;
            if (function2 != null && (function1 = lookaheadCapablePlaceable.r) != null && ((Boolean) function1.b(ruler)).booleanValue()) {
                LookaheadCapablePlaceable lookaheadCapablePlaceable2 = (LookaheadCapablePlaceable) obj.j;
                MutableScatterMap mutableScatterMap = lookaheadCapablePlaceable2.t;
                if (mutableScatterMap == null) {
                    long[] jArr = ScatterMapKt.a;
                    mutableScatterMap = new MutableScatterMap();
                    lookaheadCapablePlaceable2.t = mutableScatterMap;
                }
                Object e = mutableScatterMap.e(ruler);
                if (e == null) {
                    e = new PlaceableResult(lookaheadCapablePlaceable2.K0(), lookaheadCapablePlaceable2, ruler);
                    mutableScatterMap.o(ruler, e);
                }
                PlaceableResult placeableResult = (PlaceableResult) e;
                placeableResult.j = lookaheadCapablePlaceable2.K0();
                Owner owner = J0().w;
                if (owner != null && (snapshotObserver = owner.getSnapshotObserver()) != null) {
                    snapshotObserver.a.e(placeableResult, C, new n1(function2, (Object) obj, ruler, 6));
                }
                ((LookaheadCapablePlaceable) obj.j).n0(J0(), ruler);
                RulerTrackingMap rulerTrackingMap2 = ((LookaheadCapablePlaceable) obj.j).z;
                if (rulerTrackingMap2 != null && (t = ArraysKt.t(rulerTrackingMap2.b, ruler)) >= 0) {
                    f2 = rulerTrackingMap2.c[t];
                } else {
                    f2 = Float.NaN;
                }
                if (!Float.isNaN(f2)) {
                    return ruler.a(f2, ((LookaheadCapablePlaceable) obj.j).F0(), F0());
                }
            }
            LookaheadCapablePlaceable L0 = ((LookaheadCapablePlaceable) obj.j).L0();
            if (L0 == null) {
                ((LookaheadCapablePlaceable) obj.j).n0(J0(), ruler);
                return Float.NaN;
            }
            obj.j = L0;
        }
    }

    public abstract LookaheadCapablePlaceable E0();

    public abstract LayoutCoordinates F0();

    public abstract boolean G0();

    public abstract LayoutNode J0();

    @Override // androidx.compose.ui.layout.Measured
    public final int K(AlignmentLine alignmentLine) {
        int s0;
        if (!G0() || (s0 = s0(alignmentLine)) == Integer.MIN_VALUE) {
            return Integer.MIN_VALUE;
        }
        return s0 + ((int) (this.n & 4294967295L));
    }

    public abstract MeasureResult K0();

    public abstract LookaheadCapablePlaceable L0();

    @Override // androidx.compose.ui.node.MotionReferencePlacementDelegate
    public final void M(boolean z) {
        LayoutNode layoutNode;
        LayoutNode.LayoutState layoutState;
        LookaheadCapablePlaceable L0 = L0();
        LayoutNode.LayoutState layoutState2 = null;
        if (L0 != null) {
            layoutNode = L0.J0();
        } else {
            layoutNode = null;
        }
        if (Intrinsics.a(layoutNode, J0())) {
            this.u = z;
            return;
        }
        if (layoutNode != null) {
            layoutState = layoutNode.P.d;
        } else {
            layoutState = null;
        }
        if (layoutState != LayoutNode.LayoutState.l) {
            if (layoutNode != null) {
                layoutState2 = layoutNode.P.d;
            }
            if (layoutState2 != LayoutNode.LayoutState.m) {
                return;
            }
        }
        this.u = z;
    }

    public abstract long M0();

    public final ResettableRulerScope N0() {
        ResettableRulerScope resettableRulerScope = this.o;
        if (resettableRulerScope == null) {
            ResettableRulerScope resettableRulerScope2 = new ResettableRulerScope();
            this.o = resettableRulerScope2;
            return resettableRulerScope2;
        }
        return resettableRulerScope;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void P0(MutableScatterSet mutableScatterSet) {
        LayoutNode layoutNode;
        Object[] objArr = mutableScatterSet.b;
        long[] jArr = mutableScatterSet.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i = 0;
            while (true) {
                long j = jArr[i];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i2 = 8 - ((~(i - length)) >>> 31);
                    for (int i3 = 0; i3 < i2; i3++) {
                        if ((255 & j) < 128 && (layoutNode = (LayoutNode) ((WeakReference) objArr[(i << 3) + i3]).get()) != null) {
                            if (f0()) {
                                layoutNode.W(false);
                            } else {
                                layoutNode.Y(false);
                            }
                        }
                        j >>= 8;
                    }
                    if (i2 != 8) {
                        return;
                    }
                }
                if (i != length) {
                    i++;
                } else {
                    return;
                }
            }
        }
    }

    public abstract void Q0();

    public final void R0() {
        RulerTrackingMap rulerTrackingMap = this.z;
        if (rulerTrackingMap != null) {
            int i = rulerTrackingMap.a;
            for (int i2 = 0; i2 < i; i2++) {
                rulerTrackingMap.b[i2] = null;
                rulerTrackingMap.c[i2] = Float.NaN;
                rulerTrackingMap.d[i2] = 0;
            }
            rulerTrackingMap.a = 0;
        }
        MutableScatterMap mutableScatterMap = this.A;
        if (mutableScatterMap == null) {
            return;
        }
        Object[] objArr = mutableScatterMap.c;
        long[] jArr = mutableScatterMap.a;
        int length = jArr.length - 2;
        if (length >= 0) {
            int i3 = 0;
            while (true) {
                long j = jArr[i3];
                if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i4 = 8 - ((~(i3 - length)) >>> 31);
                    for (int i5 = 0; i5 < i4; i5++) {
                        if ((255 & j) < 128) {
                            P0((MutableScatterSet) objArr[(i3 << 3) + i5]);
                        }
                        j >>= 8;
                    }
                    if (i4 != 8) {
                        break;
                    }
                }
                if (i3 == length) {
                    break;
                } else {
                    i3++;
                }
            }
        }
        mutableScatterMap.h();
    }

    @Override // androidx.compose.ui.layout.IntrinsicMeasureScope
    public boolean f0() {
        return false;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:55:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:81:0x0168  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0175  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void n0(LayoutNode layoutNode, Ruler ruler) {
        char c;
        long j;
        long j2;
        long j3;
        MutableScatterMap mutableScatterMap;
        MutableScatterMap mutableScatterMap2;
        Object e;
        long[] jArr;
        long[] jArr2;
        long j4;
        int i;
        char c2;
        long j5;
        long j6;
        int i2;
        int i3;
        int i4;
        MutableScatterMap mutableScatterMap3 = this.A;
        char c3 = 7;
        long j7 = -9187201950435737472L;
        int i5 = 8;
        if (mutableScatterMap3 != null) {
            Object[] objArr = mutableScatterMap3.c;
            long[] jArr3 = mutableScatterMap3.a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i6 = 0;
                long j8 = 128;
                while (true) {
                    long j9 = jArr3[i6];
                    j2 = 255;
                    if ((((~j9) << c3) & j9 & j7) != j7) {
                        int i7 = 8 - ((~(i6 - length)) >>> 31);
                        int i8 = 0;
                        while (i8 < i7) {
                            if ((j9 & 255) < j8) {
                                c2 = c3;
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) objArr[(i6 << 3) + i8];
                                j5 = j7;
                                Object[] objArr2 = mutableScatterSet.b;
                                long[] jArr4 = mutableScatterSet.a;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    j6 = j8;
                                    int i9 = 0;
                                    int i10 = i5;
                                    while (true) {
                                        int i11 = length2;
                                        long j10 = jArr4[i9];
                                        jArr2 = jArr3;
                                        j4 = j9;
                                        if ((((~j10) << c2) & j10 & j5) != j5) {
                                            int i12 = 8 - ((~(i9 - i11)) >>> 31);
                                            int i13 = 0;
                                            while (i13 < i12) {
                                                if ((j10 & 255) < j6) {
                                                    int i14 = (i9 << 3) + i13;
                                                    LayoutNode layoutNode2 = (LayoutNode) ((WeakReference) objArr2[i14]).get();
                                                    i3 = i13;
                                                    if (layoutNode2 != null) {
                                                        boolean L = layoutNode2.L();
                                                        i4 = i8;
                                                        if (L) {
                                                        }
                                                    } else {
                                                        i4 = i8;
                                                    }
                                                    mutableScatterSet.n(i14);
                                                } else {
                                                    i3 = i13;
                                                    i4 = i8;
                                                }
                                                j10 >>= i10;
                                                i13 = i3 + 1;
                                                i8 = i4;
                                            }
                                            i = i8;
                                            if (i12 != i10) {
                                                break;
                                            }
                                        } else {
                                            i = i8;
                                        }
                                        length2 = i11;
                                        if (i9 == length2) {
                                            break;
                                        }
                                        i9++;
                                        jArr3 = jArr2;
                                        j9 = j4;
                                        i8 = i;
                                        i10 = 8;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    j4 = j9;
                                    i = i8;
                                    j6 = j8;
                                }
                                i2 = 8;
                            } else {
                                jArr2 = jArr3;
                                j4 = j9;
                                i = i8;
                                c2 = c3;
                                j5 = j7;
                                j6 = j8;
                                i2 = i5;
                            }
                            i5 = i2;
                            j9 = j4 >> i2;
                            c3 = c2;
                            j7 = j5;
                            j8 = j6;
                            i8 = i + 1;
                            jArr3 = jArr2;
                        }
                        jArr = jArr3;
                        c = c3;
                        j = j7;
                        j3 = j8;
                        if (i7 != i5) {
                            break;
                        }
                    } else {
                        jArr = jArr3;
                        c = c3;
                        j = j7;
                        j3 = j8;
                    }
                    if (i6 == length) {
                        break;
                    }
                    i6++;
                    c3 = c;
                    j7 = j;
                    j8 = j3;
                    jArr3 = jArr;
                    i5 = 8;
                }
                mutableScatterMap = this.A;
                if (mutableScatterMap != null) {
                    long[] jArr5 = mutableScatterMap.a;
                    int length3 = jArr5.length - 2;
                    if (length3 >= 0) {
                        int i15 = 0;
                        while (true) {
                            long j11 = jArr5[i15];
                            if ((((~j11) << c) & j11 & j) != j) {
                                int i16 = 8 - ((~(i15 - length3)) >>> 31);
                                for (int i17 = 0; i17 < i16; i17++) {
                                    if ((j11 & j2) < j3) {
                                        int i18 = (i15 << 3) + i17;
                                        if (((MutableScatterSet) mutableScatterMap.c[i18]).b()) {
                                            mutableScatterMap.n(i18);
                                        }
                                    }
                                    j11 >>= 8;
                                }
                                if (i16 != 8) {
                                    break;
                                }
                            }
                            if (i15 == length3) {
                                break;
                            } else {
                                i15++;
                            }
                        }
                    }
                }
                mutableScatterMap2 = this.A;
                if (mutableScatterMap2 == null) {
                    mutableScatterMap2 = new MutableScatterMap();
                    this.A = mutableScatterMap2;
                }
                e = mutableScatterMap2.e(ruler);
                if (e == null) {
                    e = new MutableScatterSet();
                    mutableScatterMap2.o(ruler, e);
                }
                ((MutableScatterSet) e).l(new java.lang.ref.WeakReference(layoutNode));
            }
        }
        c = 7;
        j = -9187201950435737472L;
        j2 = 255;
        j3 = 128;
        mutableScatterMap = this.A;
        if (mutableScatterMap != null) {
        }
        mutableScatterMap2 = this.A;
        if (mutableScatterMap2 == null) {
        }
        e = mutableScatterMap2.e(ruler);
        if (e == null) {
        }
        ((MutableScatterSet) e).l(new java.lang.ref.WeakReference(layoutNode));
    }

    public abstract int s0(AlignmentLine alignmentLine);

    @Override // androidx.compose.ui.layout.MeasureScope
    public final MeasureResult v0(final int i, final int i2, final Map map, final Function1 function1, final Function1 function12) {
        if ((i & (-16777216)) != 0 || ((-16777216) & i2) != 0) {
            InlineClassHelperKt.b("Size(" + i + " x " + i2 + ") is out of range. Each dimension must be between 0 and 16777215.");
        }
        return new MeasureResult() { // from class: androidx.compose.ui.node.LookaheadCapablePlaceable$layout$1
            @Override // androidx.compose.ui.layout.MeasureResult
            public final int a() {
                return i2;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final int b() {
                return i;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final Map c() {
                return map;
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final void d() {
                function12.b(this.y);
            }

            @Override // androidx.compose.ui.layout.MeasureResult
            public final Function1 g() {
                return function1;
            }
        };
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void w0(final PlaceableResult placeableResult, final long j, final long j2) {
        boolean z;
        char c;
        long j3;
        long j4;
        long j5;
        LayoutNode layoutNode;
        boolean z2;
        int i;
        char c2;
        long j6;
        LookaheadCapablePlaceable lookaheadCapablePlaceable;
        MutableScatterSet mutableScatterSet;
        OwnerSnapshotObserver snapshotObserver;
        MutableScatterMap mutableScatterMap = this.A;
        RulerTrackingMap rulerTrackingMap = this.z;
        if (rulerTrackingMap == null) {
            rulerTrackingMap = new RulerTrackingMap();
            this.z = rulerTrackingMap;
        }
        RulerTrackingMap rulerTrackingMap2 = rulerTrackingMap;
        Owner owner = J0().w;
        if (owner != null && (snapshotObserver = owner.getSnapshotObserver()) != null) {
            snapshotObserver.a.e(placeableResult, B, new Function0() { // from class: androidx.compose.ui.node.b
                @Override // kotlin.jvm.functions.Function0
                public final Object a() {
                    LookaheadCapablePlaceable lookaheadCapablePlaceable2 = LookaheadCapablePlaceable.this;
                    lookaheadCapablePlaceable2.N0().j = false;
                    lookaheadCapablePlaceable2.N0().k = j;
                    lookaheadCapablePlaceable2.N0().l = j2;
                    Function1 g = placeableResult.j.g();
                    if (g != null) {
                        g.b(lookaheadCapablePlaceable2.N0());
                    }
                    return Unit.a;
                }
            });
        }
        boolean f0 = f0();
        MutableScatterSet mutableScatterSet2 = rulerTrackingMap2.e;
        MutableScatterSet mutableScatterSet3 = rulerTrackingMap2.f;
        int i2 = rulerTrackingMap2.a;
        for (int i3 = 0; i3 < i2; i3++) {
            byte b = rulerTrackingMap2.d[i3];
            if (b == 3) {
                Ruler ruler = rulerTrackingMap2.b[i3];
                ruler.getClass();
                mutableScatterSet3.l(ruler);
            } else if (b != 0 && mutableScatterMap != null) {
                Ruler ruler2 = rulerTrackingMap2.b[i3];
                ruler2.getClass();
                MutableScatterSet mutableScatterSet4 = (MutableScatterSet) mutableScatterMap.m(ruler2);
                if (mutableScatterSet4 != null) {
                    mutableScatterSet2.k(mutableScatterSet4);
                }
            }
        }
        int i4 = rulerTrackingMap2.a;
        int i5 = 0;
        for (int i6 = 0; i6 < i4; i6++) {
            byte[] bArr = rulerTrackingMap2.d;
            if (bArr[i6] == 2) {
                i5++;
            } else if (i5 > 0) {
                Ruler[] rulerArr = rulerTrackingMap2.b;
                rulerArr[i6 - i5] = rulerArr[i6];
            }
            bArr[i6] = 2;
        }
        int i7 = rulerTrackingMap2.a;
        for (int i8 = i7 - i5; i8 < i7; i8++) {
            rulerTrackingMap2.b[i8] = null;
        }
        rulerTrackingMap2.a -= i5;
        LookaheadCapablePlaceable L0 = L0();
        Object[] objArr = mutableScatterSet3.b;
        long[] jArr = mutableScatterSet3.a;
        int length = jArr.length - 2;
        char c3 = 7;
        long j7 = -9187201950435737472L;
        int i9 = 8;
        if (length >= 0) {
            j4 = 128;
            int i10 = 0;
            while (true) {
                long j8 = jArr[i10];
                j5 = 255;
                if ((((~j8) << c3) & j8 & j7) != j7) {
                    int i11 = 8 - ((~(i10 - length)) >>> 31);
                    int i12 = 0;
                    while (i12 < i11) {
                        if ((j8 & 255) < 128) {
                            c2 = c3;
                            Ruler ruler3 = (Ruler) objArr[(i10 << 3) + i12];
                            j6 = j7;
                            if (L0 == null) {
                                lookaheadCapablePlaceable = this;
                            } else {
                                lookaheadCapablePlaceable = L0;
                            }
                            i = i9;
                            LookaheadCapablePlaceable lookaheadCapablePlaceable2 = lookaheadCapablePlaceable;
                            while (true) {
                                RulerTrackingMap rulerTrackingMap3 = lookaheadCapablePlaceable2.z;
                                if (rulerTrackingMap3 != null) {
                                    z2 = f0;
                                    if (ArraysKt.c(rulerTrackingMap3.b, ruler3)) {
                                        break;
                                    }
                                } else {
                                    z2 = f0;
                                }
                                LookaheadCapablePlaceable L02 = lookaheadCapablePlaceable2.L0();
                                if (L02 == null) {
                                    break;
                                }
                                lookaheadCapablePlaceable2 = L02;
                                f0 = z2;
                            }
                            MutableScatterMap mutableScatterMap2 = lookaheadCapablePlaceable2.A;
                            if (mutableScatterMap2 != null) {
                                mutableScatterSet = (MutableScatterSet) mutableScatterMap2.m(ruler3);
                            } else {
                                mutableScatterSet = null;
                            }
                            if (mutableScatterSet != null) {
                                lookaheadCapablePlaceable.P0(mutableScatterSet);
                            }
                        } else {
                            z2 = f0;
                            i = i9;
                            c2 = c3;
                            j6 = j7;
                        }
                        j8 >>= i;
                        i12++;
                        c3 = c2;
                        j7 = j6;
                        i9 = i;
                        f0 = z2;
                    }
                    z = f0;
                    c = c3;
                    j3 = j7;
                    if (i11 != i9) {
                        break;
                    }
                } else {
                    z = f0;
                    c = c3;
                    j3 = j7;
                }
                if (i10 == length) {
                    break;
                }
                i10++;
                c3 = c;
                j7 = j3;
                f0 = z;
                i9 = 8;
            }
        } else {
            z = f0;
            c = 7;
            j3 = -9187201950435737472L;
            j4 = 128;
            j5 = 255;
        }
        mutableScatterSet3.f();
        Object[] objArr2 = mutableScatterSet2.b;
        long[] jArr2 = mutableScatterSet2.a;
        int length2 = jArr2.length - 2;
        if (length2 >= 0) {
            int i13 = 0;
            while (true) {
                long j9 = jArr2[i13];
                if ((((~j9) << c) & j9 & j3) != j3) {
                    int i14 = 8 - ((~(i13 - length2)) >>> 31);
                    for (int i15 = 0; i15 < i14; i15++) {
                        if ((j9 & j5) < j4 && (layoutNode = (LayoutNode) ((WeakReference) objArr2[(i13 << 3) + i15]).get()) != null) {
                            if (z) {
                                layoutNode.W(false);
                            } else {
                                layoutNode.Y(false);
                            }
                        }
                        j9 >>= 8;
                    }
                    if (i14 != 8) {
                        break;
                    }
                }
                if (i13 == length2) {
                    break;
                } else {
                    i13++;
                }
            }
        }
        mutableScatterSet2.f();
    }

    @Override // androidx.compose.ui.node.OwnerScope
    public boolean z() {
        return J0().L();
    }
}
