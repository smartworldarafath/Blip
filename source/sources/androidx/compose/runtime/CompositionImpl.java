package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectIntMap;
import androidx.collection.ScatterSet;
import androidx.compose.runtime.DerivedSnapshotState;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.RememberEventDispatcher;
import androidx.compose.runtime.internal.Thread_jvmKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.ui.node.UiApplier;
import defpackage.a0;
import defpackage.f7;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Set;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.collections.EmptySet;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class CompositionImpl implements ControlledComposition, ReusableComposition, RecomposeScopeOwner, PausableComposition {
    public CompositionImpl A;
    public int B;
    public final CompositionObserverHolder C;
    public final RememberEventDispatcher D;
    public final GapComposer E;
    public int F;
    public final CompositionContext j;
    public final UiApplier k;
    public final AtomicReference l = new AtomicReference(null);
    public final Object m = new Object();
    public final Set n;
    public final SlotTable o;
    public final MutableScatterMap p;
    public final MutableScatterSet q;
    public final MutableScatterSet r;
    public final MutableScatterMap s;
    public final ChangeList t;
    public final ChangeList u;
    public final MutableScatterMap v;
    public MutableScatterMap w;
    public boolean x;
    public ShouldPauseCallback y;
    public PausedCompositionImpl z;

    public CompositionImpl(CompositionContext compositionContext, UiApplier uiApplier) {
        this.j = compositionContext;
        this.k = uiApplier;
        Set e = new MutableScatterSet().e();
        this.n = e;
        SlotTable slotTable = new SlotTable();
        if (compositionContext.d()) {
            slotTable.t = new MutableIntObjectMap();
        }
        if (compositionContext.f()) {
            slotTable.c();
        }
        this.o = slotTable;
        this.p = ScopeMap.b();
        this.q = new MutableScatterSet();
        this.r = new MutableScatterSet();
        this.s = ScopeMap.b();
        ChangeList changeList = new ChangeList();
        this.t = changeList;
        ChangeList changeList2 = new ChangeList();
        this.u = changeList2;
        this.v = ScopeMap.b();
        this.w = ScopeMap.b();
        CompositionObserverHolder compositionObserverHolder = new CompositionObserverHolder(compositionContext);
        this.C = compositionObserverHolder;
        this.D = new RememberEventDispatcher();
        GapComposer gapComposer = new GapComposer(uiApplier, compositionContext, SlotTableKt.d(slotTable), e, changeList, changeList2, compositionObserverHolder, this);
        compositionContext.p(gapComposer);
        this.E = gapComposer;
    }

    public final void A(Object obj) {
        synchronized (this.m) {
            try {
                w(obj);
                Object e = this.s.e(obj);
                if (e != null) {
                    if (e instanceof MutableScatterSet) {
                        MutableScatterSet mutableScatterSet = (MutableScatterSet) e;
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
                                        if ((255 & j) < 128) {
                                            w((DerivedState) objArr[(i << 3) + i3]);
                                        }
                                        j >>= 8;
                                    }
                                    if (i2 != 8) {
                                        break;
                                    }
                                }
                                if (i == length) {
                                    break;
                                } else {
                                    i++;
                                }
                            }
                        }
                    } else {
                        w((DerivedState) e);
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void B(Function2 function2) {
        boolean m = m();
        t();
        CompositionContext compositionContext = this.j;
        if (m) {
            GapComposer gapComposer = this.E;
            gapComposer.z = 0;
            gapComposer.y = true;
            compositionContext.a(this, function2);
            if (gapComposer.F || gapComposer.z != 0) {
                PreconditionsKt.a("Cannot disable reuse from root if it was caused by other groups");
            }
            gapComposer.z = -1;
            gapComposer.y = false;
            return;
        }
        compositionContext.a(this, function2);
    }

    @Override // androidx.compose.runtime.Composition
    public final void a() {
        boolean z;
        synchronized (this.m) {
            try {
                if (this.E.F) {
                    PreconditionsKt.b("Composition is disposed while composing. If dispose is triggered by a call in @Composable function, consider wrapping it with SideEffect block.");
                }
                if (this.F != 3) {
                    this.F = 3;
                    ChangeList changeList = this.E.L;
                    if (changeList != null) {
                        i(changeList);
                    }
                    if (this.o.k == 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (!z || !this.n.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.D;
                        try {
                            rememberEventDispatcher.g(this.n, this.E.y());
                            if (!z) {
                                SlotTable slotTable = this.o;
                                RememberEventDispatcher rememberEventDispatcher2 = this.D;
                                SlotWriter e = slotTable.e();
                                try {
                                    e.n(e.t, new defpackage.d(4, rememberEventDispatcher2));
                                    e.H();
                                    e.e(true);
                                    this.k.k();
                                    this.k.j();
                                    rememberEventDispatcher.c();
                                } catch (Throwable th) {
                                    e.e(false);
                                    throw th;
                                }
                            }
                            rememberEventDispatcher.b();
                            rememberEventDispatcher.a();
                        } catch (Throwable th2) {
                            rememberEventDispatcher.a();
                            throw th2;
                        }
                    }
                    this.v.h();
                    GapComposer gapComposer = this.E;
                    gapComposer.getClass();
                    Trace.beginSection("Compose:Composer.dispose");
                    try {
                        gapComposer.b.u(gapComposer);
                        gapComposer.E.clear();
                        gapComposer.s.clear();
                        gapComposer.e.a.a();
                        gapComposer.v = null;
                        gapComposer.a.k();
                        Trace.endSection();
                    } catch (Throwable th3) {
                        Trace.endSection();
                        throw th3;
                    }
                }
            } catch (Throwable th4) {
                throw th4;
            }
        }
        this.j.v(this);
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public final void b() {
        this.x = true;
        this.C.a();
    }

    @Override // androidx.compose.runtime.RecomposeScopeOwner
    public final InvalidationResult c(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        CompositionImpl compositionImpl;
        int i = recomposeScopeImpl.b;
        if ((i & 2) != 0) {
            recomposeScopeImpl.b = i | 4;
        }
        GapAnchor gapAnchor = recomposeScopeImpl.c;
        if (gapAnchor != null && gapAnchor.a()) {
            SlotTable slotTable = this.o;
            slotTable.getClass();
            GapAnchor gapAnchor2 = recomposeScopeImpl.c;
            if (gapAnchor2 != null && slotTable.f(GapAnchorKt.a(gapAnchor2))) {
                if (recomposeScopeImpl.d != null) {
                    InvalidationResult v = v(recomposeScopeImpl, gapAnchor, obj);
                    if (v != InvalidationResult.j) {
                        this.C.a();
                    }
                    return v;
                }
                return InvalidationResult.j;
            }
            synchronized (this.m) {
                compositionImpl = this.A;
            }
            if (compositionImpl != null) {
                GapComposer gapComposer = compositionImpl.E;
                if (gapComposer.F && gapComposer.b0(recomposeScopeImpl, obj)) {
                    return InvalidationResult.m;
                }
            }
            return InvalidationResult.j;
        }
        return InvalidationResult.j;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x004c  */
    /* JADX WARN: Removed duplicated region for block: B:46:? A[RETURN, SYNTHETIC] */
    @Override // androidx.compose.runtime.RecomposeScopeOwner
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void d(Object obj) {
        RecomposeScopeImpl w;
        int i;
        boolean z;
        int i2;
        GapComposer gapComposer = this.E;
        if (gapComposer.A <= 0 && (w = gapComposer.w()) != null) {
            int i3 = w.b | 1;
            w.b = i3;
            if ((i3 & 32) == 0) {
                MutableObjectIntMap mutableObjectIntMap = w.f;
                if (mutableObjectIntMap == null) {
                    mutableObjectIntMap = new MutableObjectIntMap();
                    w.f = mutableObjectIntMap;
                }
                int i4 = w.e;
                int d = mutableObjectIntMap.d(obj);
                if (d < 0) {
                    d = ~d;
                    i = -1;
                } else {
                    i = mutableObjectIntMap.c[d];
                }
                mutableObjectIntMap.b[d] = obj;
                mutableObjectIntMap.c[d] = i4;
                if (i == w.e) {
                    z = true;
                    this.C.a();
                    if (z) {
                        if (obj instanceof StateObjectImpl) {
                            ((StateObjectImpl) obj).i(1);
                        }
                        ScopeMap.a(this.p, obj, w);
                        if (obj instanceof DerivedState) {
                            DerivedState derivedState = (DerivedState) obj;
                            DerivedSnapshotState.ResultRecord g = ((DerivedSnapshotState) derivedState).g();
                            MutableScatterMap mutableScatterMap = this.s;
                            ScopeMap.d(mutableScatterMap, obj);
                            ObjectIntMap objectIntMap = g.e;
                            Object[] objArr = objectIntMap.b;
                            long[] jArr = objectIntMap.a;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                int i5 = 0;
                                while (true) {
                                    long j = jArr[i5];
                                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i6 = 8;
                                        int i7 = 8 - ((~(i5 - length)) >>> 31);
                                        int i8 = 0;
                                        while (i8 < i7) {
                                            if ((j & 255) < 128) {
                                                StateObject stateObject = (StateObject) objArr[(i5 << 3) + i8];
                                                i2 = i6;
                                                if (stateObject instanceof StateObjectImpl) {
                                                    ((StateObjectImpl) stateObject).i(1);
                                                }
                                                ScopeMap.a(mutableScatterMap, stateObject, obj);
                                            } else {
                                                i2 = i6;
                                            }
                                            j >>= i2;
                                            i8++;
                                            i6 = i2;
                                        }
                                        if (i7 != i6) {
                                            break;
                                        }
                                    }
                                    if (i5 == length) {
                                        break;
                                    } else {
                                        i5++;
                                    }
                                }
                            }
                            Object obj2 = g.f;
                            MutableScatterMap mutableScatterMap2 = w.g;
                            if (mutableScatterMap2 == null) {
                                mutableScatterMap2 = new MutableScatterMap();
                                w.g = mutableScatterMap2;
                            }
                            mutableScatterMap2.o(derivedState, obj2);
                            return;
                        }
                        return;
                    }
                    return;
                }
            }
            z = false;
            this.C.a();
            if (z) {
            }
        }
    }

    public final void e() {
        this.l.set(null);
        this.t.a.a();
        this.u.a.a();
        Set set = this.n;
        if (!set.isEmpty()) {
            RememberEventDispatcher rememberEventDispatcher = this.D;
            try {
                rememberEventDispatcher.g(set, this.E.y());
                rememberEventDispatcher.b();
            } finally {
                rememberEventDispatcher.a();
            }
        }
    }

    public final void f(Object obj, boolean z) {
        Object e = this.p.e(obj);
        if (e != null) {
            boolean z2 = e instanceof MutableScatterSet;
            MutableScatterSet mutableScatterSet = this.q;
            MutableScatterSet mutableScatterSet2 = this.r;
            MutableScatterMap mutableScatterMap = this.v;
            if (z2) {
                MutableScatterSet mutableScatterSet3 = (MutableScatterSet) e;
                Object[] objArr = mutableScatterSet3.b;
                long[] jArr = mutableScatterSet3.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i = 0;
                    while (true) {
                        long j = jArr[i];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i2 = 8 - ((~(i - length)) >>> 31);
                            for (int i3 = 0; i3 < i2; i3++) {
                                if ((255 & j) < 128) {
                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr[(i << 3) + i3];
                                    if (!ScopeMap.c(mutableScatterMap, obj, recomposeScopeImpl) && recomposeScopeImpl.c(obj) != InvalidationResult.j) {
                                        if (recomposeScopeImpl.g != null && !z) {
                                            mutableScatterSet2.d(recomposeScopeImpl);
                                        } else {
                                            mutableScatterSet.d(recomposeScopeImpl);
                                        }
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
            } else {
                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) e;
                if (!ScopeMap.c(mutableScatterMap, obj, recomposeScopeImpl2) && recomposeScopeImpl2.c(obj) != InvalidationResult.j) {
                    if (recomposeScopeImpl2.g != null && !z) {
                        mutableScatterSet2.d(recomposeScopeImpl2);
                    } else {
                        mutableScatterSet.d(recomposeScopeImpl2);
                    }
                }
            }
        }
    }

    public final void g(Set set, boolean z) {
        long j;
        long j2;
        long j3;
        char c;
        long[] jArr;
        boolean z2;
        long[] jArr2;
        long j4;
        boolean a;
        boolean z3;
        long[] jArr3;
        long j5;
        long[] jArr4;
        long[] jArr5;
        int i;
        long j6;
        boolean z4;
        int i2;
        long j7;
        long[] jArr6;
        long[] jArr7;
        char c2;
        long j8;
        int i3;
        int i4;
        long[] jArr8;
        boolean z5 = set instanceof ScatterSetWrapper;
        MutableScatterMap mutableScatterMap = this.s;
        Object obj = null;
        int i5 = 8;
        if (z5) {
            ScatterSet scatterSet = ((ScatterSetWrapper) set).j;
            Object[] objArr = scatterSet.b;
            long[] jArr9 = scatterSet.a;
            int length = jArr9.length - 2;
            if (length >= 0) {
                int i6 = 0;
                j = 128;
                j2 = 255;
                while (true) {
                    long j9 = jArr9[i6];
                    char c3 = 7;
                    j3 = -9187201950435737472L;
                    if ((((~j9) << 7) & j9 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i7 = 8 - ((~(i6 - length)) >>> 31);
                        int i8 = 0;
                        while (i8 < i7) {
                            if ((j9 & 255) < 128) {
                                Object obj2 = objArr[(i6 << 3) + i8];
                                c2 = c3;
                                if (obj2 instanceof RecomposeScopeImpl) {
                                    ((RecomposeScopeImpl) obj2).c(obj);
                                } else {
                                    f(obj2, z);
                                    Object e = mutableScatterMap.e(obj2);
                                    if (e != null) {
                                        if (e instanceof MutableScatterSet) {
                                            MutableScatterSet mutableScatterSet = (MutableScatterSet) e;
                                            Object[] objArr2 = mutableScatterSet.b;
                                            long[] jArr10 = mutableScatterSet.a;
                                            int length2 = jArr10.length - 2;
                                            if (length2 >= 0) {
                                                int i9 = i5;
                                                i3 = length;
                                                int i10 = 0;
                                                while (true) {
                                                    long j10 = jArr10[i10];
                                                    j8 = j9;
                                                    long[] jArr11 = jArr10;
                                                    if ((((~j10) << c2) & j10 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i11 = 8 - ((~(i10 - length2)) >>> 31);
                                                        int i12 = 0;
                                                        while (i12 < i11) {
                                                            if ((j10 & 255) < 128) {
                                                                jArr8 = jArr9;
                                                                f((DerivedState) objArr2[(i10 << 3) + i12], z);
                                                            } else {
                                                                jArr8 = jArr9;
                                                            }
                                                            j10 >>= i9;
                                                            i12++;
                                                            jArr9 = jArr8;
                                                        }
                                                        jArr7 = jArr9;
                                                        if (i11 != i9) {
                                                            break;
                                                        }
                                                    } else {
                                                        jArr7 = jArr9;
                                                    }
                                                    if (i10 == length2) {
                                                        break;
                                                    }
                                                    i10++;
                                                    jArr10 = jArr11;
                                                    j9 = j8;
                                                    jArr9 = jArr7;
                                                    i9 = 8;
                                                }
                                            }
                                        } else {
                                            jArr7 = jArr9;
                                            j8 = j9;
                                            i3 = length;
                                            f((DerivedState) e, z);
                                        }
                                        i4 = 8;
                                    }
                                }
                                jArr7 = jArr9;
                                j8 = j9;
                                i3 = length;
                                i4 = 8;
                            } else {
                                jArr7 = jArr9;
                                c2 = c3;
                                j8 = j9;
                                i3 = length;
                                i4 = i5;
                            }
                            j9 = j8 >> i4;
                            i8++;
                            length = i3;
                            i5 = i4;
                            c3 = c2;
                            jArr9 = jArr7;
                            obj = null;
                        }
                        jArr6 = jArr9;
                        c = c3;
                        int i13 = length;
                        if (i7 != i5) {
                            break;
                        } else {
                            length = i13;
                        }
                    } else {
                        jArr6 = jArr9;
                        c = 7;
                    }
                    if (i6 == length) {
                        break;
                    }
                    i6++;
                    jArr9 = jArr6;
                    obj = null;
                    i5 = 8;
                }
            } else {
                j = 128;
                j2 = 255;
                j3 = -9187201950435737472L;
                c = 7;
            }
        } else {
            j = 128;
            j2 = 255;
            j3 = -9187201950435737472L;
            c = 7;
            for (Object obj3 : set) {
                if (obj3 instanceof RecomposeScopeImpl) {
                    ((RecomposeScopeImpl) obj3).c(null);
                } else {
                    f(obj3, z);
                    Object e2 = mutableScatterMap.e(obj3);
                    if (e2 != null) {
                        if (e2 instanceof MutableScatterSet) {
                            MutableScatterSet mutableScatterSet2 = (MutableScatterSet) e2;
                            Object[] objArr3 = mutableScatterSet2.b;
                            long[] jArr12 = mutableScatterSet2.a;
                            int length3 = jArr12.length - 2;
                            if (length3 >= 0) {
                                int i14 = 0;
                                while (true) {
                                    long j11 = jArr12[i14];
                                    if ((((~j11) << 7) & j11 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i15 = 8 - ((~(i14 - length3)) >>> 31);
                                        for (int i16 = 0; i16 < i15; i16++) {
                                            if ((j11 & 255) < 128) {
                                                f((DerivedState) objArr3[(i14 << 3) + i16], z);
                                            }
                                            j11 >>= 8;
                                        }
                                        if (i15 != 8) {
                                            break;
                                        }
                                    }
                                    if (i14 != length3) {
                                        i14++;
                                    }
                                }
                            }
                        } else {
                            f((DerivedState) e2, z);
                        }
                    }
                }
            }
        }
        MutableScatterMap mutableScatterMap2 = this.p;
        MutableScatterSet mutableScatterSet3 = this.q;
        if (z) {
            MutableScatterSet mutableScatterSet4 = this.r;
            if (mutableScatterSet4.c()) {
                long[] jArr13 = mutableScatterMap2.a;
                int length4 = jArr13.length - 2;
                if (length4 >= 0) {
                    int i17 = 0;
                    while (true) {
                        long j12 = jArr13[i17];
                        if ((((~j12) << c) & j12 & j3) != j3) {
                            int i18 = 8 - ((~(i17 - length4)) >>> 31);
                            int i19 = 0;
                            while (i19 < i18) {
                                if ((j12 & j2) < j) {
                                    int i20 = (i17 << 3) + i19;
                                    Object obj4 = mutableScatterMap2.b[i20];
                                    Object obj5 = mutableScatterMap2.c[i20];
                                    if (obj5 instanceof MutableScatterSet) {
                                        MutableScatterSet mutableScatterSet5 = (MutableScatterSet) obj5;
                                        Object[] objArr4 = mutableScatterSet5.b;
                                        long[] jArr14 = mutableScatterSet5.a;
                                        int length5 = jArr14.length - 2;
                                        if (length5 >= 0) {
                                            j6 = j12;
                                            int i21 = 0;
                                            while (true) {
                                                long j13 = jArr14[i21];
                                                jArr5 = jArr13;
                                                i = length4;
                                                if ((((~j13) << c) & j13 & j3) != j3) {
                                                    int i22 = 8 - ((~(i21 - length5)) >>> 31);
                                                    for (int i23 = 0; i23 < i22; i23 = i2 + 1) {
                                                        if ((j13 & j2) < j) {
                                                            i2 = i23;
                                                            int i24 = (i21 << 3) + i2;
                                                            j7 = j13;
                                                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr4[i24];
                                                            if (mutableScatterSet4.a(recomposeScopeImpl) || mutableScatterSet3.a(recomposeScopeImpl)) {
                                                                mutableScatterSet5.n(i24);
                                                            }
                                                        } else {
                                                            i2 = i23;
                                                            j7 = j13;
                                                        }
                                                        j13 = j7 >> 8;
                                                    }
                                                    if (i22 != 8) {
                                                        break;
                                                    }
                                                }
                                                if (i21 == length5) {
                                                    break;
                                                }
                                                i21++;
                                                length4 = i;
                                                jArr13 = jArr5;
                                            }
                                        } else {
                                            jArr5 = jArr13;
                                            i = length4;
                                            j6 = j12;
                                        }
                                        z4 = mutableScatterSet5.b();
                                    } else {
                                        jArr5 = jArr13;
                                        i = length4;
                                        j6 = j12;
                                        obj5.getClass();
                                        RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) obj5;
                                        if (!mutableScatterSet4.a(recomposeScopeImpl2) && !mutableScatterSet3.a(recomposeScopeImpl2)) {
                                            z4 = false;
                                        } else {
                                            z4 = true;
                                        }
                                    }
                                    if (z4) {
                                        mutableScatterMap2.n(i20);
                                    }
                                } else {
                                    jArr5 = jArr13;
                                    i = length4;
                                    j6 = j12;
                                }
                                j12 = j6 >> 8;
                                i19++;
                                length4 = i;
                                jArr13 = jArr5;
                            }
                            jArr4 = jArr13;
                            int i25 = length4;
                            if (i18 != 8) {
                                break;
                            } else {
                                length4 = i25;
                            }
                        } else {
                            jArr4 = jArr13;
                        }
                        if (i17 == length4) {
                            break;
                        }
                        i17++;
                        jArr13 = jArr4;
                    }
                }
                mutableScatterSet4.f();
                l();
                return;
            }
        }
        if (mutableScatterSet3.c()) {
            long[] jArr15 = mutableScatterMap2.a;
            int length6 = jArr15.length - 2;
            if (length6 >= 0) {
                int i26 = 0;
                while (true) {
                    long j14 = jArr15[i26];
                    if ((((~j14) << c) & j14 & j3) != j3) {
                        int i27 = 8 - ((~(i26 - length6)) >>> 31);
                        int i28 = 0;
                        while (i28 < i27) {
                            if ((j14 & j2) < j) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                int i29 = (i26 << 3) + i28;
                                Object obj6 = mutableScatterMap2.b[i29];
                                Object obj7 = mutableScatterMap2.c[i29];
                                if (obj7 instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet6 = (MutableScatterSet) obj7;
                                    Object[] objArr5 = mutableScatterSet6.b;
                                    long[] jArr16 = mutableScatterSet6.a;
                                    int length7 = jArr16.length - 2;
                                    if (length7 >= 0) {
                                        j4 = j14;
                                        int i30 = 0;
                                        while (true) {
                                            long j15 = jArr16[i30];
                                            Object[] objArr6 = objArr5;
                                            long[] jArr17 = jArr16;
                                            if ((((~j15) << c) & j15 & j3) != j3) {
                                                int i31 = 8 - ((~(i30 - length7)) >>> 31);
                                                int i32 = 0;
                                                while (i32 < i31) {
                                                    if ((j15 & j2) < j) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    if (z3) {
                                                        jArr3 = jArr15;
                                                        int i33 = (i30 << 3) + i32;
                                                        j5 = j15;
                                                        if (mutableScatterSet3.a((RecomposeScopeImpl) objArr6[i33])) {
                                                            mutableScatterSet6.n(i33);
                                                        }
                                                    } else {
                                                        jArr3 = jArr15;
                                                        j5 = j15;
                                                    }
                                                    i32++;
                                                    jArr15 = jArr3;
                                                    j15 = j5 >> 8;
                                                }
                                                jArr2 = jArr15;
                                                if (i31 != 8) {
                                                    break;
                                                }
                                            } else {
                                                jArr2 = jArr15;
                                            }
                                            if (i30 == length7) {
                                                break;
                                            }
                                            i30++;
                                            objArr5 = objArr6;
                                            jArr16 = jArr17;
                                            jArr15 = jArr2;
                                        }
                                    } else {
                                        jArr2 = jArr15;
                                        j4 = j14;
                                    }
                                    a = mutableScatterSet6.b();
                                } else {
                                    jArr2 = jArr15;
                                    j4 = j14;
                                    obj7.getClass();
                                    a = mutableScatterSet3.a((RecomposeScopeImpl) obj7);
                                }
                                if (a) {
                                    mutableScatterMap2.n(i29);
                                }
                            } else {
                                jArr2 = jArr15;
                                j4 = j14;
                            }
                            i28++;
                            j14 = j4 >> 8;
                            jArr15 = jArr2;
                        }
                        jArr = jArr15;
                        if (i27 != 8) {
                            break;
                        }
                    } else {
                        jArr = jArr15;
                    }
                    if (i26 == length6) {
                        break;
                    }
                    i26++;
                    jArr15 = jArr;
                }
            }
            l();
            mutableScatterSet3.f();
        }
    }

    public final void h() {
        synchronized (this.m) {
            try {
                i(this.t);
                r();
            } catch (Throwable th) {
                try {
                    if (!this.n.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.D;
                        try {
                            rememberEventDispatcher.g(this.n, this.E.y());
                            rememberEventDispatcher.b();
                            rememberEventDispatcher.a();
                        } catch (Throwable th2) {
                            rememberEventDispatcher.a();
                            throw th2;
                        }
                    }
                    throw th;
                } catch (Throwable th3) {
                    e();
                    throw th3;
                }
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:117:0x01a6  */
    /* JADX WARN: Removed duplicated region for block: B:31:0x008e A[Catch: all -> 0x003e, TRY_LEAVE, TryCatch #7 {all -> 0x003e, blocks: (B:3:0x0013, B:5:0x0035, B:7:0x0039, B:11:0x0047, B:12:0x004b, B:16:0x0056, B:29:0x0081, B:31:0x008e, B:148:0x0043), top: B:2:0x0013 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(ChangeList changeList) {
        Applier applier;
        RecordingApplier recordingApplier;
        String str;
        RememberEventDispatcher rememberEventDispatcher;
        SlotWriter e;
        RememberEventDispatcher rememberEventDispatcher2;
        long[] jArr;
        int i;
        long[] jArr2;
        RememberEventDispatcher rememberEventDispatcher3;
        long j;
        char c;
        long j2;
        int i2;
        boolean z;
        long j3;
        ChangeList changeList2 = this.u;
        GapComposer gapComposer = this.E;
        CompositionErrorContextImpl y = gapComposer.y();
        RememberEventDispatcher rememberEventDispatcher4 = this.D;
        rememberEventDispatcher4.g(this.n, y);
        try {
            if (changeList.a.c()) {
                try {
                    if (changeList2.a.c() && this.z == null) {
                        rememberEventDispatcher4.b();
                    }
                    return;
                } finally {
                }
            }
            PausedCompositionImpl pausedCompositionImpl = this.z;
            if (pausedCompositionImpl == null || (applier = pausedCompositionImpl.l) == null) {
                applier = this.k;
            }
            if (pausedCompositionImpl != null) {
                recordingApplier = pausedCompositionImpl.l;
            } else {
                recordingApplier = null;
            }
            if (applier.equals(recordingApplier)) {
                str = "Compose:recordChanges";
            } else {
                str = "Compose:applyChanges";
            }
            try {
                Trace.beginSection(str);
                try {
                    PausedCompositionImpl pausedCompositionImpl2 = this.z;
                    try {
                        try {
                            if (pausedCompositionImpl2 != null) {
                                rememberEventDispatcher = pausedCompositionImpl2.k;
                                if (rememberEventDispatcher == null) {
                                }
                                SlotTable slotTable = this.o;
                                CompositionErrorContextImpl y2 = gapComposer.y();
                                e = SlotTableKt.d(slotTable).e();
                                int i3 = 0;
                                changeList.a(applier, e, rememberEventDispatcher, y2);
                                e.e(true);
                                applier.j();
                                Trace.endSection();
                                rememberEventDispatcher4.c();
                                rememberEventDispatcher4.d();
                                if (!this.x) {
                                    Trace.beginSection("Compose:unobserve");
                                    try {
                                        this.x = false;
                                        MutableScatterMap mutableScatterMap = this.p;
                                        long[] jArr3 = mutableScatterMap.a;
                                        int length = jArr3.length - 2;
                                        if (length >= 0) {
                                            int i4 = 0;
                                            while (true) {
                                                long j4 = jArr3[i4];
                                                char c2 = 7;
                                                long j5 = -9187201950435737472L;
                                                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i5 = 8;
                                                    int i6 = 8 - ((~(i4 - length)) >>> 31);
                                                    int i7 = i3;
                                                    while (i7 < i6) {
                                                        if ((j4 & 255) < 128) {
                                                            c = c2;
                                                            int i8 = (i4 << 3) + i7;
                                                            j2 = j5;
                                                            Object obj = mutableScatterMap.b[i8];
                                                            Object obj2 = mutableScatterMap.c[i8];
                                                            if (obj2 instanceof MutableScatterSet) {
                                                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                                                Object[] objArr = mutableScatterSet.b;
                                                                long[] jArr4 = mutableScatterSet.a;
                                                                int i9 = i5;
                                                                int length2 = jArr4.length - 2;
                                                                i = i7;
                                                                jArr2 = jArr3;
                                                                rememberEventDispatcher3 = rememberEventDispatcher4;
                                                                if (length2 >= 0) {
                                                                    int i10 = 0;
                                                                    while (true) {
                                                                        try {
                                                                            long j6 = jArr4[i10];
                                                                            j = j4;
                                                                            long[] jArr5 = jArr4;
                                                                            if ((((~j6) << c) & j6 & j2) != j2) {
                                                                                int i11 = 8 - ((~(i10 - length2)) >>> 31);
                                                                                for (int i12 = 0; i12 < i11; i12++) {
                                                                                    if ((j6 & 255) < 128) {
                                                                                        j3 = j6;
                                                                                        int i13 = (i10 << 3) + i12;
                                                                                        if (!((RecomposeScopeImpl) objArr[i13]).b()) {
                                                                                            mutableScatterSet.n(i13);
                                                                                        }
                                                                                    } else {
                                                                                        j3 = j6;
                                                                                    }
                                                                                    j6 = j3 >> i9;
                                                                                }
                                                                                if (i11 != i9) {
                                                                                    break;
                                                                                }
                                                                            }
                                                                            if (i10 == length2) {
                                                                                break;
                                                                            }
                                                                            i10++;
                                                                            jArr4 = jArr5;
                                                                            j4 = j;
                                                                            i9 = 8;
                                                                        } catch (Throwable th) {
                                                                            th = th;
                                                                            Trace.endSection();
                                                                            throw th;
                                                                        }
                                                                    }
                                                                } else {
                                                                    j = j4;
                                                                }
                                                                z = mutableScatterSet.b();
                                                            } else {
                                                                i = i7;
                                                                jArr2 = jArr3;
                                                                rememberEventDispatcher3 = rememberEventDispatcher4;
                                                                j = j4;
                                                                obj2.getClass();
                                                                if (!((RecomposeScopeImpl) obj2).b()) {
                                                                    z = true;
                                                                } else {
                                                                    z = false;
                                                                }
                                                            }
                                                            if (z) {
                                                                mutableScatterMap.n(i8);
                                                            }
                                                            i2 = 8;
                                                        } else {
                                                            i = i7;
                                                            jArr2 = jArr3;
                                                            rememberEventDispatcher3 = rememberEventDispatcher4;
                                                            j = j4;
                                                            c = c2;
                                                            j2 = j5;
                                                            i2 = i5;
                                                        }
                                                        j4 = j >> i2;
                                                        i7 = i + 1;
                                                        i5 = i2;
                                                        c2 = c;
                                                        j5 = j2;
                                                        rememberEventDispatcher4 = rememberEventDispatcher3;
                                                        jArr3 = jArr2;
                                                    }
                                                    jArr = jArr3;
                                                    rememberEventDispatcher2 = rememberEventDispatcher4;
                                                    if (i6 != i5) {
                                                        break;
                                                    }
                                                } else {
                                                    jArr = jArr3;
                                                    rememberEventDispatcher2 = rememberEventDispatcher4;
                                                }
                                                if (i4 == length) {
                                                    break;
                                                }
                                                i4++;
                                                rememberEventDispatcher4 = rememberEventDispatcher2;
                                                jArr3 = jArr;
                                                i3 = 0;
                                            }
                                        } else {
                                            rememberEventDispatcher2 = rememberEventDispatcher4;
                                        }
                                        l();
                                        Trace.endSection();
                                    } catch (Throwable th2) {
                                        th = th2;
                                    }
                                } else {
                                    rememberEventDispatcher2 = rememberEventDispatcher4;
                                }
                                if (changeList2.a.c() && this.z == null) {
                                    rememberEventDispatcher2.b();
                                }
                                return;
                            }
                            if (changeList2.a.c()) {
                                rememberEventDispatcher2.b();
                            }
                            return;
                        } finally {
                            rememberEventDispatcher2.a();
                        }
                        changeList.a(applier, e, rememberEventDispatcher, y2);
                        e.e(true);
                        applier.j();
                        Trace.endSection();
                        rememberEventDispatcher4.c();
                        rememberEventDispatcher4.d();
                        if (!this.x) {
                        }
                    } catch (Throwable th3) {
                        try {
                            e.e(false);
                            throw th3;
                        } catch (Throwable th4) {
                            th = th4;
                            Trace.endSection();
                            throw th;
                        }
                    }
                    rememberEventDispatcher = rememberEventDispatcher4;
                    SlotTable slotTable2 = this.o;
                    CompositionErrorContextImpl y22 = gapComposer.y();
                    e = SlotTableKt.d(slotTable2).e();
                    int i32 = 0;
                } catch (Throwable th5) {
                    th = th5;
                }
            } catch (Throwable th6) {
                th = th6;
                try {
                    if (changeList2.a.c() && this.z == null) {
                        rememberEventDispatcher4.b();
                    }
                    throw th;
                } finally {
                }
            }
        } catch (Throwable th7) {
            th = th7;
        }
    }

    public final void j() {
        synchronized (this.m) {
            try {
                ChangeList changeList = this.u;
                changeList.getClass();
                if (!changeList.a.c()) {
                    i(this.u);
                }
            } catch (Throwable th) {
                try {
                    if (!this.n.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.D;
                        try {
                            rememberEventDispatcher.g(this.n, this.E.y());
                            rememberEventDispatcher.b();
                            rememberEventDispatcher.a();
                        } catch (Throwable th2) {
                            rememberEventDispatcher.a();
                            throw th2;
                        }
                    }
                    throw th;
                } catch (Throwable th3) {
                    e();
                    throw th3;
                }
            }
        }
    }

    public final void k() {
        RememberEventDispatcher rememberEventDispatcher;
        synchronized (this.m) {
            try {
                this.E.v = null;
                if (!this.n.isEmpty()) {
                    rememberEventDispatcher = this.D;
                    try {
                        rememberEventDispatcher.g(this.n, this.E.y());
                        rememberEventDispatcher.b();
                        rememberEventDispatcher.a();
                    } finally {
                    }
                }
            } catch (Throwable th) {
                try {
                    if (!this.n.isEmpty()) {
                        rememberEventDispatcher = this.D;
                        try {
                            rememberEventDispatcher.g(this.n, this.E.y());
                            rememberEventDispatcher.b();
                            rememberEventDispatcher.a();
                        } finally {
                        }
                    }
                    throw th;
                } catch (Throwable th2) {
                    e();
                    throw th2;
                }
            }
        }
    }

    public final void l() {
        char c;
        long j;
        long j2;
        long j3;
        boolean z;
        boolean z2;
        long[] jArr;
        long[] jArr2;
        int i;
        long j4;
        char c2;
        long j5;
        long j6;
        int i2;
        boolean z3;
        int i3;
        long j7;
        MutableScatterMap mutableScatterMap = this.s;
        long[] jArr3 = mutableScatterMap.a;
        int length = jArr3.length - 2;
        char c3 = 7;
        long j8 = -9187201950435737472L;
        int i4 = 8;
        if (length >= 0) {
            int i5 = 0;
            long j9 = 128;
            while (true) {
                long j10 = jArr3[i5];
                j2 = 255;
                if ((((~j10) << c3) & j10 & j8) != j8) {
                    int i6 = 8 - ((~(i5 - length)) >>> 31);
                    int i7 = 0;
                    while (i7 < i6) {
                        if ((j10 & 255) < j9) {
                            c2 = c3;
                            int i8 = (i5 << 3) + i7;
                            j5 = j8;
                            Object obj = mutableScatterMap.b[i8];
                            Object obj2 = mutableScatterMap.c[i8];
                            boolean z4 = obj2 instanceof MutableScatterSet;
                            MutableScatterMap mutableScatterMap2 = this.p;
                            if (z4) {
                                MutableScatterSet mutableScatterSet = (MutableScatterSet) obj2;
                                Object[] objArr = mutableScatterSet.b;
                                long[] jArr4 = mutableScatterSet.a;
                                j6 = j9;
                                int length2 = jArr4.length - 2;
                                if (length2 >= 0) {
                                    j4 = j10;
                                    int i9 = i4;
                                    int i10 = 0;
                                    while (true) {
                                        long j11 = jArr4[i10];
                                        jArr2 = jArr3;
                                        i = length;
                                        if ((((~j11) << c2) & j11 & j5) != j5) {
                                            int i11 = 8 - ((~(i10 - length2)) >>> 31);
                                            int i12 = 0;
                                            while (i12 < i11) {
                                                if ((j11 & 255) < j6) {
                                                    i3 = i12;
                                                    int i13 = (i10 << 3) + i3;
                                                    j7 = j11;
                                                    if (!mutableScatterMap2.c((DerivedState) objArr[i13])) {
                                                        mutableScatterSet.n(i13);
                                                    }
                                                } else {
                                                    i3 = i12;
                                                    j7 = j11;
                                                }
                                                j11 = j7 >> i9;
                                                i12 = i3 + 1;
                                            }
                                            if (i11 != i9) {
                                                break;
                                            }
                                        }
                                        if (i10 == length2) {
                                            break;
                                        }
                                        i10++;
                                        jArr3 = jArr2;
                                        length = i;
                                        i9 = 8;
                                    }
                                } else {
                                    jArr2 = jArr3;
                                    i = length;
                                    j4 = j10;
                                }
                                z3 = mutableScatterSet.b();
                            } else {
                                jArr2 = jArr3;
                                i = length;
                                j4 = j10;
                                j6 = j9;
                                obj2.getClass();
                                if (!mutableScatterMap2.c((DerivedState) obj2)) {
                                    z3 = true;
                                } else {
                                    z3 = false;
                                }
                            }
                            if (z3) {
                                mutableScatterMap.n(i8);
                            }
                            i2 = 8;
                        } else {
                            jArr2 = jArr3;
                            i = length;
                            j4 = j10;
                            c2 = c3;
                            j5 = j8;
                            j6 = j9;
                            i2 = i4;
                        }
                        j10 = j4 >> i2;
                        i7++;
                        i4 = i2;
                        c3 = c2;
                        j8 = j5;
                        j9 = j6;
                        jArr3 = jArr2;
                        length = i;
                    }
                    jArr = jArr3;
                    int i14 = length;
                    c = c3;
                    j = j8;
                    j3 = j9;
                    if (i6 != i4) {
                        break;
                    } else {
                        length = i14;
                    }
                } else {
                    jArr = jArr3;
                    c = c3;
                    j = j8;
                    j3 = j9;
                }
                if (i5 == length) {
                    break;
                }
                i5++;
                c3 = c;
                j8 = j;
                j9 = j3;
                jArr3 = jArr;
                i4 = 8;
            }
        } else {
            c = 7;
            j = -9187201950435737472L;
            j2 = 255;
            j3 = 128;
        }
        MutableScatterSet mutableScatterSet2 = this.r;
        if (mutableScatterSet2.c()) {
            Object[] objArr2 = mutableScatterSet2.b;
            long[] jArr5 = mutableScatterSet2.a;
            int length3 = jArr5.length - 2;
            if (length3 >= 0) {
                int i15 = 0;
                while (true) {
                    long j12 = jArr5[i15];
                    if ((((~j12) << c) & j12 & j) != j) {
                        int i16 = 8 - ((~(i15 - length3)) >>> 31);
                        for (int i17 = 0; i17 < i16; i17++) {
                            if ((j12 & j2) < j3) {
                                z = true;
                            } else {
                                z = false;
                            }
                            if (z) {
                                int i18 = (i15 << 3) + i17;
                                if (((RecomposeScopeImpl) objArr2[i18]).g != null) {
                                    z2 = true;
                                } else {
                                    z2 = false;
                                }
                                if (!z2) {
                                    mutableScatterSet2.n(i18);
                                }
                            }
                            j12 >>= 8;
                        }
                        if (i16 != 8) {
                            return;
                        }
                    }
                    if (i15 != length3) {
                        i15++;
                    } else {
                        return;
                    }
                }
            }
        }
    }

    public final boolean m() {
        boolean z;
        synchronized (this.m) {
            z = true;
            if (this.F != 1) {
                z = false;
            }
            if (z) {
                this.F = 0;
            }
        }
        return z;
    }

    public final void n(Function2 function2) {
        try {
            synchronized (this.m) {
                q();
                MutableScatterMap mutableScatterMap = this.w;
                this.w = ScopeMap.b();
                try {
                    GapComposer gapComposer = this.E;
                    ShouldPauseCallback shouldPauseCallback = this.y;
                    if (!gapComposer.e.a.c()) {
                        ComposerKt.a("Expected applyChanges() to have been called");
                    }
                    gapComposer.P = shouldPauseCallback;
                    try {
                        gapComposer.n(mutableScatterMap, function2);
                    } finally {
                        gapComposer.P = null;
                    }
                } catch (Throwable th) {
                    this.w = mutableScatterMap;
                    throw th;
                }
            }
        } catch (Throwable th2) {
            try {
                if (!this.n.isEmpty()) {
                    RememberEventDispatcher rememberEventDispatcher = this.D;
                    try {
                        rememberEventDispatcher.g(this.n, this.E.y());
                        rememberEventDispatcher.b();
                        rememberEventDispatcher.a();
                    } catch (Throwable th3) {
                        rememberEventDispatcher.a();
                        throw th3;
                    }
                }
                throw th2;
            } catch (Throwable th4) {
                e();
                throw th4;
            }
        }
    }

    public final PausedCompositionImpl o(boolean z, Function2 function2) {
        if (this.z != null) {
            PreconditionsKt.b("A pausable composition is in progress");
        }
        PausedCompositionImpl pausedCompositionImpl = new PausedCompositionImpl(this, this.j, this.E, this.n, function2, z, this.k, this.m);
        this.z = pausedCompositionImpl;
        return pausedCompositionImpl;
    }

    public final void p() {
        boolean z;
        RememberEventDispatcher rememberEventDispatcher;
        synchronized (this.m) {
            try {
                if (this.z != null) {
                    PreconditionsKt.b("Deactivate is not supported while pausable composition is in progress");
                }
                if (this.o.k == 0) {
                    z = true;
                } else {
                    z = false;
                }
                try {
                    try {
                        if (z) {
                            if (!this.n.isEmpty()) {
                            }
                            this.p.h();
                            this.s.h();
                            this.w.h();
                            this.t.a.a();
                            this.u.a.a();
                            GapComposer gapComposer = this.E;
                            gapComposer.E.clear();
                            gapComposer.s.clear();
                            gapComposer.e.a.a();
                            gapComposer.v = null;
                            this.F = 1;
                        }
                        rememberEventDispatcher.g(this.n, this.E.y());
                        if (!z) {
                            SlotTable slotTable = this.o;
                            RememberEventDispatcher rememberEventDispatcher2 = this.D;
                            SlotWriter e = slotTable.e();
                            try {
                                e.n(e.t, new a0(13, rememberEventDispatcher2, e));
                                e.e(true);
                                this.k.j();
                                rememberEventDispatcher.c();
                            } catch (Throwable th) {
                                e.e(false);
                                throw th;
                            }
                        }
                        rememberEventDispatcher.b();
                        rememberEventDispatcher.a();
                        this.p.h();
                        this.s.h();
                        this.w.h();
                        this.t.a.a();
                        this.u.a.a();
                        GapComposer gapComposer2 = this.E;
                        gapComposer2.E.clear();
                        gapComposer2.s.clear();
                        gapComposer2.e.a.a();
                        gapComposer2.v = null;
                        this.F = 1;
                    } catch (Throwable th2) {
                        rememberEventDispatcher.a();
                        throw th2;
                    }
                    rememberEventDispatcher = this.D;
                } finally {
                    Trace.endSection();
                }
                Trace.beginSection("Compose:deactivate");
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public final void q() {
        AtomicReference atomicReference = this.l;
        Object obj = CompositionKt.a;
        Object andSet = atomicReference.getAndSet(obj);
        if (andSet != null) {
            if (!andSet.equals(obj)) {
                if (andSet instanceof Set) {
                    g((Set) andSet, true);
                    return;
                }
                if (andSet instanceof Object[]) {
                    for (Set set : (Set[]) andSet) {
                        g(set, true);
                    }
                    return;
                }
                ComposerKt.b("corrupt pendingModifications drain: " + atomicReference);
                f7.h();
                return;
            }
            ComposerKt.b("pending composition has not been applied");
            f7.h();
        }
    }

    public final void r() {
        AtomicReference atomicReference = this.l;
        Object andSet = atomicReference.getAndSet(null);
        if (!Intrinsics.a(andSet, CompositionKt.a)) {
            if (andSet instanceof Set) {
                g((Set) andSet, false);
                return;
            }
            if (andSet instanceof Object[]) {
                for (Set set : (Set[]) andSet) {
                    g(set, false);
                }
                return;
            }
            if (andSet == null) {
                if (this.z == null) {
                    ComposerKt.a("calling recordModificationsOf and applyChanges concurrently is not supported");
                }
            } else {
                ComposerKt.b("corrupt pendingModifications drain: " + atomicReference);
                f7.h();
            }
        }
    }

    public final void s() {
        EmptySet emptySet = EmptySet.j;
        AtomicReference atomicReference = this.l;
        Object andSet = atomicReference.getAndSet(emptySet);
        if (!Intrinsics.a(andSet, CompositionKt.a) && andSet != null) {
            if (andSet instanceof Set) {
                g((Set) andSet, false);
                return;
            }
            if (andSet instanceof Object[]) {
                for (Set set : (Set[]) andSet) {
                    g(set, false);
                }
                return;
            }
            ComposerKt.b("corrupt pendingModifications drain: " + atomicReference);
            f7.h();
        }
    }

    public final void t() {
        String str;
        int i = this.F;
        if (i != 0) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        str = "";
                    } else {
                        str = "The composition is disposed";
                    }
                } else {
                    str = "A previous pausable composition for this composition was cancelled. This composition must be disposed.";
                }
            } else {
                str = "The composition should be activated before setting content.";
            }
            PreconditionsKt.b(str);
        }
        if (this.z == null) {
            return;
        }
        PreconditionsKt.b("A pausable composition is in progress");
    }

    public final void u(ArrayList arrayList) {
        Set set = this.n;
        GapComposer gapComposer = this.E;
        if (arrayList.size() <= 0) {
            try {
                gapComposer.getClass();
                Trace.beginSection("Compose:insertMovableContent");
                try {
                    try {
                        gapComposer.A(arrayList);
                        gapComposer.i();
                        return;
                    } catch (Throwable th) {
                        gapComposer.a();
                        throw th;
                    }
                } finally {
                    Trace.endSection();
                }
            } catch (Throwable th2) {
                try {
                    if (!set.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.D;
                        try {
                            rememberEventDispatcher.g(set, gapComposer.y());
                            rememberEventDispatcher.b();
                            rememberEventDispatcher.a();
                        } catch (Throwable th3) {
                            rememberEventDispatcher.a();
                            throw th3;
                        }
                    }
                    throw th2;
                } catch (Throwable th4) {
                    e();
                    throw th4;
                }
            }
        }
        ((MovableContentStateReference) ((Pair) arrayList.get(0)).j).getClass();
        throw null;
    }

    public final InvalidationResult v(RecomposeScopeImpl recomposeScopeImpl, Anchor anchor, Object obj) {
        boolean z;
        synchronized (this.m) {
            try {
                CompositionImpl compositionImpl = this.A;
                CompositionImpl compositionImpl2 = null;
                if (compositionImpl != null) {
                    SlotTable slotTable = this.o;
                    int i = this.B;
                    if (slotTable.p) {
                        ComposerKt.a("Writer is active");
                    }
                    if (i < 0 || i >= slotTable.k) {
                        ComposerKt.a("Invalid group index");
                    }
                    GapAnchor a = GapAnchorKt.a(anchor);
                    if (slotTable.f(a)) {
                        int i2 = slotTable.j[(i * 5) + 3] + i;
                        int i3 = a.a;
                        if (i <= i3 && i3 < i2) {
                            compositionImpl2 = compositionImpl;
                        }
                    }
                    compositionImpl = null;
                    compositionImpl2 = compositionImpl;
                }
                if (compositionImpl2 == null) {
                    GapComposer gapComposer = this.E;
                    if (gapComposer.F && gapComposer.b0(recomposeScopeImpl, obj)) {
                        z = true;
                    } else {
                        z = false;
                    }
                    if (z) {
                        return InvalidationResult.m;
                    }
                    if (obj == null) {
                        this.w.o(recomposeScopeImpl, ScopeInvalidated.a);
                    } else {
                        boolean z2 = obj instanceof DerivedState;
                        MutableScatterMap mutableScatterMap = this.w;
                        if (!z2) {
                            mutableScatterMap.o(recomposeScopeImpl, ScopeInvalidated.a);
                        } else {
                            Object e = mutableScatterMap.e(recomposeScopeImpl);
                            if (e != null) {
                                if (e instanceof MutableScatterSet) {
                                    MutableScatterSet mutableScatterSet = (MutableScatterSet) e;
                                    Object[] objArr = mutableScatterSet.b;
                                    long[] jArr = mutableScatterSet.a;
                                    int length = jArr.length - 2;
                                    if (length >= 0) {
                                        int i4 = 0;
                                        loop0: while (true) {
                                            long j = jArr[i4];
                                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i5 = 8 - ((~(i4 - length)) >>> 31);
                                                for (int i6 = 0; i6 < i5; i6++) {
                                                    if ((255 & j) < 128 && objArr[(i4 << 3) + i6] == ScopeInvalidated.a) {
                                                        break loop0;
                                                    }
                                                    j >>= 8;
                                                }
                                                if (i5 != 8) {
                                                    break;
                                                }
                                            }
                                            if (i4 == length) {
                                                break;
                                            }
                                            i4++;
                                        }
                                    }
                                } else if (e == ScopeInvalidated.a) {
                                }
                            }
                            ScopeMap.a(this.w, recomposeScopeImpl, obj);
                        }
                    }
                }
                if (compositionImpl2 != null) {
                    return compositionImpl2.v(recomposeScopeImpl, anchor, obj);
                }
                this.j.l(this);
                if (this.E.F) {
                    return InvalidationResult.l;
                }
                return InvalidationResult.k;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void w(Object obj) {
        Object e = this.p.e(obj);
        if (e != null) {
            boolean z = e instanceof MutableScatterSet;
            MutableScatterMap mutableScatterMap = this.v;
            if (z) {
                MutableScatterSet mutableScatterSet = (MutableScatterSet) e;
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
                                if ((255 & j) < 128) {
                                    RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) objArr[(i << 3) + i3];
                                    if (recomposeScopeImpl.c(obj) == InvalidationResult.m && !(obj instanceof DerivedState)) {
                                        ScopeMap.a(mutableScatterMap, obj, recomposeScopeImpl);
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
            } else {
                RecomposeScopeImpl recomposeScopeImpl2 = (RecomposeScopeImpl) e;
                if (recomposeScopeImpl2.c(obj) == InvalidationResult.m && !(obj instanceof DerivedState)) {
                    ScopeMap.a(mutableScatterMap, obj, recomposeScopeImpl2);
                }
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:17:0x0052, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean x(Set set) {
        boolean z = set instanceof ScatterSetWrapper;
        MutableScatterMap mutableScatterMap = this.s;
        MutableScatterMap mutableScatterMap2 = this.p;
        if (z) {
            ScatterSet scatterSet = ((ScatterSetWrapper) set).j;
            Object[] objArr = scatterSet.b;
            long[] jArr = scatterSet.a;
            int length = jArr.length - 2;
            if (length >= 0) {
                int i = 0;
                loop0: while (true) {
                    long j = jArr[i];
                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i2 = 8 - ((~(i - length)) >>> 31);
                        for (int i3 = 0; i3 < i2; i3++) {
                            if ((255 & j) < 128) {
                                Object obj = objArr[(i << 3) + i3];
                                if (mutableScatterMap2.c(obj) || mutableScatterMap.c(obj)) {
                                    break loop0;
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
            for (Object obj2 : set) {
                if (mutableScatterMap2.c(obj2) || mutableScatterMap.c(obj2)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final boolean y() {
        synchronized (this.m) {
            PausedCompositionImpl pausedCompositionImpl = this.z;
            boolean z = false;
            if (pausedCompositionImpl != null && (pausedCompositionImpl.h.get() != PausedCompositionState.n || pausedCompositionImpl.i != Thread_jvmKt.a())) {
                AtomicReference atomicReference = pausedCompositionImpl.h;
                PausedCompositionState pausedCompositionState = PausedCompositionState.o;
                PausedCompositionState pausedCompositionState2 = PausedCompositionState.m;
                while (!atomicReference.compareAndSet(pausedCompositionState, pausedCompositionState2) && atomicReference.get() == pausedCompositionState) {
                }
                pausedCompositionImpl.l.a.b(9);
                return false;
            }
            q();
            try {
                MutableScatterMap mutableScatterMap = this.w;
                this.w = ScopeMap.b();
                try {
                    GapComposer gapComposer = this.E;
                    ShouldPauseCallback shouldPauseCallback = this.y;
                    Operations operations = gapComposer.e.a;
                    if (!operations.c()) {
                        ComposerKt.a("Expected applyChanges() to have been called");
                    }
                    if (mutableScatterMap.e > 0 || !gapComposer.s.isEmpty()) {
                        gapComposer.P = shouldPauseCallback;
                        try {
                            gapComposer.n(mutableScatterMap, null);
                            gapComposer.P = null;
                            z = !operations.c();
                        } catch (Throwable th) {
                            gapComposer.P = null;
                            throw th;
                        }
                    }
                    if (!z) {
                        r();
                    }
                    return z;
                } catch (Throwable th2) {
                    this.w = mutableScatterMap;
                    throw th2;
                }
            } catch (Throwable th3) {
                try {
                    if (!this.n.isEmpty()) {
                        RememberEventDispatcher rememberEventDispatcher = this.D;
                        try {
                            rememberEventDispatcher.g(this.n, this.E.y());
                            rememberEventDispatcher.b();
                            rememberEventDispatcher.a();
                        } catch (Throwable th4) {
                            rememberEventDispatcher.a();
                            throw th4;
                        }
                    }
                    throw th3;
                } catch (Throwable th5) {
                    e();
                    throw th5;
                }
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v11, types: [java.util.Set[]] */
    /* JADX WARN: Type inference failed for: r1v9, types: [java.lang.Object[]] */
    public final void z(ScatterSetWrapper scatterSetWrapper) {
        ScatterSetWrapper scatterSetWrapper2;
        while (true) {
            Object obj = this.l.get();
            if (obj != null && !obj.equals(CompositionKt.a)) {
                if (obj instanceof Set) {
                    scatterSetWrapper2 = new Set[]{obj, scatterSetWrapper};
                } else if (obj instanceof Object[]) {
                    Set[] setArr = (Set[]) obj;
                    int length = setArr.length;
                    ?? copyOf = Arrays.copyOf(setArr, length + 1);
                    copyOf[length] = scatterSetWrapper;
                    scatterSetWrapper2 = copyOf;
                } else {
                    throw new IllegalStateException(("corrupt pendingModifications: " + this.l).toString());
                }
            } else {
                scatterSetWrapper2 = scatterSetWrapper;
            }
            AtomicReference atomicReference = this.l;
            while (!atomicReference.compareAndSet(obj, scatterSetWrapper2)) {
                if (atomicReference.get() != obj) {
                    break;
                }
            }
            if (obj == null) {
                synchronized (this.m) {
                    r();
                }
                return;
            }
            return;
        }
    }
}
