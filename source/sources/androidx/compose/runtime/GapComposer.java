package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableIntIntMap;
import androidx.collection.MutableIntObjectMap;
import androidx.collection.MutableObjectIntMap;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.Composer;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScopeMap;
import androidx.compose.runtime.composer.GroupInfo;
import androidx.compose.runtime.composer.gapbuffer.GapAnchor;
import androidx.compose.runtime.composer.gapbuffer.GapAnchorKt;
import androidx.compose.runtime.composer.gapbuffer.KeyInfo;
import androidx.compose.runtime.composer.gapbuffer.SlotReader;
import androidx.compose.runtime.composer.gapbuffer.SlotTable;
import androidx.compose.runtime.composer.gapbuffer.SlotTableKt;
import androidx.compose.runtime.composer.gapbuffer.SlotWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.ChangeList;
import androidx.compose.runtime.composer.gapbuffer.changelist.ComposerChangeListWriter;
import androidx.compose.runtime.composer.gapbuffer.changelist.FixupList;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operation;
import androidx.compose.runtime.composer.gapbuffer.changelist.Operations;
import androidx.compose.runtime.internal.ComposableLambdaImpl;
import androidx.compose.runtime.internal.Expect_jvmKt;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.PersistentCompositionLocalHashMap;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.tooling.ComposeStackTrace;
import androidx.compose.runtime.tooling.ComposeStackTraceBuilderKt;
import androidx.compose.runtime.tooling.CompositionData;
import androidx.compose.runtime.tooling.CompositionErrorContextImpl;
import androidx.compose.runtime.tooling.CompositionErrorContextKt;
import androidx.compose.runtime.tooling.InspectionTablesKt;
import androidx.compose.runtime.tooling.ReaderTraceBuilder;
import androidx.compose.ui.node.UiApplier;
import defpackage.de;
import defpackage.fe;
import defpackage.n1;
import defpackage.q;
import defpackage.r1;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.collections.ArraysKt;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.collections.builders.ListBuilder;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.TypeIntrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GapComposer extends InternalComposer {
    public int A;
    public int B;
    public boolean C;
    public final GapComposer$derivedStateObserver$1 D;
    public final ArrayList E;
    public boolean F;
    public SlotReader G;
    public SlotTable H;
    public SlotWriter I;
    public boolean J;
    public PersistentCompositionLocalMap K;
    public ChangeList L;
    public final ComposerChangeListWriter M;
    public GapAnchor N;
    public FixupList O;
    public ShouldPauseCallback P;
    public final CompositionErrorContextImpl Q;
    public final CoroutineContext R;
    public boolean S;
    public long T;
    public GapCompositionDataImpl U;
    public final UiApplier a;
    public final CompositionContext b;
    public final SlotTable c;
    public final Set d;
    public final ChangeList e;
    public final ChangeList f;
    public final CompositionObserverHolder g;
    public final CompositionImpl h;
    public GapPending j;
    public int k;
    public int l;
    public int m;
    public int[] o;
    public MutableIntIntMap p;
    public boolean q;
    public boolean r;
    public MutableIntObjectMap v;
    public boolean w;
    public boolean y;
    public final ArrayList i = new ArrayList();
    public final IntStack n = new IntStack();
    public final ArrayList s = new ArrayList();
    public final IntStack t = new IntStack();
    public PersistentCompositionLocalMap u = PersistentCompositionLocalHashMap.m;
    public final IntStack x = new IntStack();
    public int z = -1;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class CompositionContextImpl extends CompositionContext {
        public final long a;
        public final boolean b;
        public final boolean c;
        public HashSet d;
        public final MutableScatterSet e;
        public final MutableState f;

        public CompositionContextImpl(long j, boolean z, boolean z2, CompositionObserverHolder compositionObserverHolder) {
            this.a = j;
            this.b = z;
            this.c = z2;
            MutableScatterSet mutableScatterSet = ScatterSetKt.a;
            this.e = new MutableScatterSet();
            this.f = new SnapshotMutableStateImpl(PersistentCompositionLocalHashMap.m, ReferentialEqualityPolicy.a);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void a(ControlledComposition controlledComposition, Function2 function2) {
            GapComposer.this.b.a(controlledComposition, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final ScatterSet b(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, Function2 function2) {
            return GapComposer.this.b.b(controlledComposition, shouldPauseCallback, function2);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void c() {
            GapComposer gapComposer = GapComposer.this;
            gapComposer.A--;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean d() {
            return GapComposer.this.b.d();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean e() {
            return this.b;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean f() {
            return this.c;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final long g() {
            return this.a;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final Composition h() {
            return GapComposer.this.h;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final PersistentCompositionLocalMap i() {
            return (PersistentCompositionLocalMap) ((SnapshotMutableStateImpl) this.f).getValue();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final CoroutineContext j() {
            return GapComposer.this.b.j();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final boolean k() {
            return GapComposer.this.b.k();
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void l(ControlledComposition controlledComposition) {
            GapComposer gapComposer = GapComposer.this;
            gapComposer.b.l(gapComposer.h);
            gapComposer.b.l(controlledComposition);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final MovableContentState m(MovableContentStateReference movableContentStateReference) {
            return GapComposer.this.b.m(movableContentStateReference);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final ScatterSet n(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet scatterSet) {
            return GapComposer.this.b.n(controlledComposition, shouldPauseCallback, scatterSet);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void o(Set set) {
            HashSet hashSet = this.d;
            if (hashSet == null) {
                hashSet = new HashSet();
                this.d = hashSet;
            }
            hashSet.add(set);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void p(GapComposer gapComposer) {
            this.e.d(gapComposer);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void q(RecomposeScopeImpl recomposeScopeImpl) {
            GapComposer.this.b.q(recomposeScopeImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void r(CompositionImpl compositionImpl) {
            GapComposer.this.b.r(compositionImpl);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final CancellationHandle s(r1 r1Var) {
            return GapComposer.this.b.s(r1Var);
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void t() {
            GapComposer.this.A++;
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void u(GapComposer gapComposer) {
            HashSet hashSet = this.d;
            if (hashSet != null) {
                Iterator it = hashSet.iterator();
                while (it.hasNext()) {
                    Set set = (Set) it.next();
                    gapComposer.getClass();
                    set.remove(gapComposer.v());
                }
            }
            if (gapComposer != null) {
                this.e.m(gapComposer);
            }
        }

        @Override // androidx.compose.runtime.CompositionContext
        public final void v(CompositionImpl compositionImpl) {
            GapComposer.this.b.v(compositionImpl);
        }

        public final void w() {
            MutableScatterSet mutableScatterSet = this.e;
            if (mutableScatterSet.c()) {
                HashSet hashSet = this.d;
                if (hashSet != null) {
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
                                        GapComposer gapComposer = (GapComposer) objArr[(i << 3) + i3];
                                        Iterator it = hashSet.iterator();
                                        while (it.hasNext()) {
                                            ((Set) it.next()).remove(gapComposer.v());
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
                            } else {
                                i++;
                            }
                        }
                    }
                }
                mutableScatterSet.f();
            }
        }
    }

    /* JADX WARN: Type inference failed for: r1v11, types: [androidx.compose.runtime.GapComposer$derivedStateObserver$1] */
    public GapComposer(UiApplier uiApplier, CompositionContext compositionContext, SlotTable slotTable, Set set, ChangeList changeList, ChangeList changeList2, CompositionObserverHolder compositionObserverHolder, CompositionImpl compositionImpl) {
        boolean z;
        this.a = uiApplier;
        this.b = compositionContext;
        this.c = slotTable;
        this.d = set;
        this.e = changeList;
        this.f = changeList2;
        this.g = compositionObserverHolder;
        this.h = compositionImpl;
        if (!compositionContext.f() && !compositionContext.d()) {
            z = false;
        } else {
            z = true;
        }
        this.C = z;
        this.D = new DerivedStateObserver() { // from class: androidx.compose.runtime.GapComposer$derivedStateObserver$1
            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void a() {
                GapComposer gapComposer = GapComposer.this;
                gapComposer.A--;
            }

            @Override // androidx.compose.runtime.DerivedStateObserver
            public final void start() {
                GapComposer.this.A++;
            }
        };
        this.E = new ArrayList();
        SlotReader d = slotTable.d();
        d.c();
        this.G = d;
        SlotTable slotTable2 = new SlotTable();
        if (compositionContext.f()) {
            slotTable2.c();
        }
        if (compositionContext.d()) {
            slotTable2.t = new MutableIntObjectMap();
        }
        this.H = slotTable2;
        SlotWriter e = slotTable2.e();
        e.e(true);
        this.I = e;
        this.M = new ComposerChangeListWriter(this, changeList);
        SlotReader d2 = this.H.d();
        try {
            GapAnchor a = d2.a(0);
            d2.c();
            this.N = a;
            this.O = new FixupList();
            this.Q = new CompositionErrorContextImpl(this);
            CoroutineContext j = compositionContext.j();
            CoroutineContext y = y();
            this.R = j.A(y == null ? EmptyCoroutineContext.j : y);
        } catch (Throwable th) {
            d2.c();
            throw th;
        }
    }

    public static final int M(GapComposer gapComposer, int i, boolean z, int i2) {
        int i3;
        boolean z2;
        int i4;
        RememberObserverHolder rememberObserverHolder;
        Object obj;
        long[] jArr;
        int i5;
        long[] jArr2;
        int i6;
        int i7;
        SlotReader slotReader;
        SlotReader slotReader2 = gapComposer.G;
        int i8 = 0;
        if (slotReader2.j(i)) {
            int i9 = slotReader2.i(i);
            Object p = slotReader2.p(slotReader2.b, i);
            if (i9 == 206 && Intrinsics.a(p, ComposerKt.e)) {
                Object h = slotReader2.h(i, 0);
                CompositionContextHolder compositionContextHolder = null;
                if (h instanceof RememberObserverHolder) {
                    rememberObserverHolder = (RememberObserverHolder) h;
                } else {
                    rememberObserverHolder = null;
                }
                if (rememberObserverHolder != null) {
                    obj = ((GapRememberObserverHolder) rememberObserverHolder).a;
                } else {
                    obj = null;
                }
                if (obj instanceof CompositionContextHolder) {
                    compositionContextHolder = (CompositionContextHolder) obj;
                }
                if (compositionContextHolder != null) {
                    MutableScatterSet mutableScatterSet = compositionContextHolder.j.e;
                    Object[] objArr = mutableScatterSet.b;
                    long[] jArr3 = mutableScatterSet.a;
                    int length = jArr3.length - 2;
                    if (length >= 0) {
                        int i10 = 0;
                        while (true) {
                            long j = jArr3[i10];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i11 = 8;
                                int i12 = 8 - ((~(i10 - length)) >>> 31);
                                int i13 = i8;
                                while (i13 < i12) {
                                    if ((255 & j) < 128) {
                                        GapComposer gapComposer2 = (GapComposer) objArr[(i10 << 3) + i13];
                                        SlotTable slotTable = gapComposer2.c;
                                        if (slotTable.k > 0 && (slotTable.j[1] & 67108864) != 0) {
                                            CompositionImpl compositionImpl = gapComposer2.h;
                                            synchronized (compositionImpl.m) {
                                                compositionImpl.s();
                                                i7 = i11;
                                                MutableScatterMap mutableScatterMap = compositionImpl.w;
                                                compositionImpl.w = ScopeMap.b();
                                                try {
                                                    compositionImpl.E.c0(mutableScatterMap);
                                                } finally {
                                                }
                                            }
                                            ChangeList changeList = new ChangeList();
                                            gapComposer2.L = changeList;
                                            SlotReader d = gapComposer2.c.d();
                                            try {
                                                gapComposer2.G = d;
                                                ComposerChangeListWriter composerChangeListWriter = gapComposer2.M;
                                                ChangeList changeList2 = composerChangeListWriter.b;
                                                try {
                                                    composerChangeListWriter.b = changeList;
                                                    gapComposer2.L(0);
                                                    ComposerChangeListWriter composerChangeListWriter2 = gapComposer2.M;
                                                    composerChangeListWriter2.b();
                                                    jArr2 = jArr3;
                                                    try {
                                                        if (composerChangeListWriter2.c) {
                                                            slotReader = d;
                                                            try {
                                                                composerChangeListWriter2.b.a.d(Operation.SkipToEndOfCurrentGroup.c);
                                                                if (composerChangeListWriter2.c) {
                                                                    composerChangeListWriter2.d(false);
                                                                    composerChangeListWriter2.d(false);
                                                                    composerChangeListWriter2.b.a.d(Operation.EndCurrentGroup.c);
                                                                    i6 = 0;
                                                                    composerChangeListWriter2.c = false;
                                                                    composerChangeListWriter.b = changeList2;
                                                                    slotReader.c();
                                                                }
                                                            } catch (Throwable th) {
                                                                th = th;
                                                                composerChangeListWriter.b = changeList2;
                                                                throw th;
                                                            }
                                                        } else {
                                                            slotReader = d;
                                                        }
                                                        composerChangeListWriter.b = changeList2;
                                                        slotReader.c();
                                                    } catch (Throwable th2) {
                                                        th = th2;
                                                        slotReader.c();
                                                        throw th;
                                                    }
                                                    i6 = 0;
                                                } catch (Throwable th3) {
                                                    th = th3;
                                                    slotReader = d;
                                                }
                                            } catch (Throwable th4) {
                                                th = th4;
                                                slotReader = d;
                                            }
                                        } else {
                                            jArr2 = jArr3;
                                            i6 = i8;
                                            i7 = i11;
                                        }
                                        gapComposer.b.r(gapComposer2.h);
                                    } else {
                                        jArr2 = jArr3;
                                        i6 = i8;
                                        i7 = i11;
                                    }
                                    j >>= i7;
                                    i13++;
                                    i11 = i7;
                                    i8 = i6;
                                    jArr3 = jArr2;
                                }
                                jArr = jArr3;
                                i5 = i8;
                                if (i12 != i11) {
                                    break;
                                }
                            } else {
                                jArr = jArr3;
                                i5 = i8;
                            }
                            if (i10 == length) {
                                break;
                            }
                            i10++;
                            i8 = i5;
                            jArr3 = jArr;
                        }
                    }
                }
                return slotReader2.o(i);
            }
            i3 = 1;
            if (!slotReader2.l(i)) {
                return slotReader2.o(i);
            }
        } else {
            i3 = 1;
            if (slotReader2.d(i)) {
                int i14 = slotReader2.b[(i * 5) + 3] + i;
                int i15 = 0;
                for (int i16 = i + 1; i16 < i14; i16 += slotReader2.b[(i16 * 5) + 3]) {
                    boolean l = slotReader2.l(i16);
                    if (l) {
                        gapComposer.M.c();
                        ComposerChangeListWriter composerChangeListWriter3 = gapComposer.M;
                        Object n = slotReader2.n(i16);
                        composerChangeListWriter3.c();
                        composerChangeListWriter3.h.add(n);
                    }
                    if (!l && !z) {
                        z2 = false;
                    } else {
                        z2 = true;
                    }
                    if (l) {
                        i4 = 0;
                    } else {
                        i4 = i2 + i15;
                    }
                    i15 += M(gapComposer, i16, z2, i4);
                    if (l) {
                        gapComposer.M.c();
                        gapComposer.M.a();
                    }
                }
                if (!slotReader2.l(i)) {
                    return i15;
                }
            } else if (!slotReader2.l(i)) {
                return slotReader2.o(i);
            }
        }
        return i3;
    }

    public final void A(ArrayList arrayList) {
        GapComposer gapComposer = this;
        ChangeList changeList = gapComposer.f;
        ComposerChangeListWriter composerChangeListWriter = gapComposer.M;
        ChangeList changeList2 = composerChangeListWriter.b;
        try {
            composerChangeListWriter.b = changeList;
            changeList.a.d(Operation.ResetSlots.c);
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Pair pair = (Pair) arrayList.get(i);
                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) pair.j;
                movableContentStateReference.getClass();
                GapAnchor a = GapAnchorKt.a(null);
                SlotTable d = SlotTableKt.d(null);
                int b = d.b(a);
                IntRef intRef = new IntRef();
                composerChangeListWriter.b();
                Operations operations = composerChangeListWriter.b.a;
                operations.d(Operation.DetermineMovableContentNodeIndex.c);
                Operations.WriteScope.b(operations, 0, intRef, 1, a);
                if (d == gapComposer.H) {
                    if (!gapComposer.I.w) {
                        ComposerKt.a("Check failed");
                    }
                    gapComposer.u();
                }
                SlotReader d2 = d.d();
                try {
                    d2.r(b);
                    composerChangeListWriter.f = b;
                    ChangeList changeList3 = new ChangeList();
                    gapComposer.F(null, null, null, EmptyList.j, new n1(gapComposer, changeList3, d2, movableContentStateReference));
                    ChangeList changeList4 = composerChangeListWriter.b;
                    changeList4.getClass();
                    if (!changeList3.a.c()) {
                        Operations operations2 = changeList4.a;
                        operations2.d(Operation.ApplyChangeList.c);
                        Operations.WriteScope.b(operations2, 0, changeList3, 1, intRef);
                    }
                    d2.c();
                    composerChangeListWriter.b.a.d(Operation.SkipToEndOfCurrentGroup.c);
                    i++;
                    gapComposer = this;
                } catch (Throwable th) {
                    d2.c();
                    throw th;
                }
            }
            composerChangeListWriter.b();
            composerChangeListWriter.b.a.d(Operation.EndMovableContentPlacement.c);
            composerChangeListWriter.f = 0;
            composerChangeListWriter.b = changeList2;
        } catch (Throwable th2) {
            composerChangeListWriter.b = changeList2;
            throw th2;
        }
    }

    public final void B(PersistentCompositionLocalMap persistentCompositionLocalMap, Object obj) {
        boolean z;
        U(126665345, null);
        C();
        h0(obj);
        long j = this.T;
        try {
            this.T = 126665345L;
            if (this.S) {
                SlotWriter.z(this.I);
            }
            if (this.S || Intrinsics.a(this.G.f(), persistentCompositionLocalMap)) {
                z = false;
            } else {
                z = true;
            }
            if (z) {
                I(persistentCompositionLocalMap);
            }
            R(202, 0, ComposerKt.c, persistentCompositionLocalMap);
            this.K = null;
            boolean z2 = this.w;
            this.w = z;
            Expect_jvmKt.a(this, new ComposableLambdaImpl(-59194059, true, new defpackage.d(9, obj)));
            this.w = z2;
        } finally {
        }
    }

    public final Object C() {
        boolean z = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (z) {
            if (this.r) {
                ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
                return composer$Companion$Empty$1;
            }
        } else {
            Object m = this.G.m();
            if (!this.y || (m instanceof ReusableRememberObserverHolder)) {
                return m;
            }
        }
        return composer$Companion$Empty$1;
    }

    public final List D() {
        CompositionImpl compositionImpl;
        CompositionContext compositionContext = this.b;
        Composition h = compositionContext.h();
        if (h != null) {
            compositionImpl = (CompositionImpl) h;
        } else {
            compositionImpl = null;
        }
        if (compositionImpl != null) {
            SlotTable slotTable = compositionImpl.o;
            SlotReader d = SlotTableKt.d(slotTable).d();
            try {
                Integer b = ComposeStackTraceBuilderKt.b(d, compositionContext, 0, d.c);
                if (b != null) {
                    d = SlotTableKt.d(slotTable).d();
                    try {
                        ArrayList c = ComposeStackTraceBuilderKt.c(d, b.intValue(), 0);
                        d.c();
                        return CollectionsKt.F(c, compositionImpl.E.D());
                    } finally {
                    }
                }
            } finally {
            }
        }
        return EmptyList.j;
    }

    public final int E(int i) {
        int q = this.G.q(i) + 1;
        int i2 = 0;
        while (q < i) {
            if (!this.G.k(q)) {
                i2++;
            }
            q += this.G.b[(q * 5) + 3];
        }
        return i2;
    }

    /* JADX WARN: Code restructure failed: missing block: B:26:0x005b, code lost:
    
        if (r10 == null) goto L30;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object F(ControlledComposition controlledComposition, ControlledComposition controlledComposition2, Integer num, List list, Function0 function0) {
        Object a;
        int i;
        boolean z = this.F;
        int i2 = this.k;
        try {
            this.F = true;
            this.k = 0;
            int size = list.size();
            for (int i3 = 0; i3 < size; i3++) {
                Pair pair = (Pair) list.get(i3);
                RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) pair.j;
                Object obj = pair.k;
                if (obj != null) {
                    b0(recomposeScopeImpl, obj);
                } else {
                    b0(recomposeScopeImpl, null);
                }
            }
            if (controlledComposition != null) {
                if (num != null) {
                    i = num.intValue();
                } else {
                    i = -1;
                }
                CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
                if (controlledComposition2 != null && !controlledComposition2.equals(compositionImpl) && i >= 0) {
                    compositionImpl.A = (CompositionImpl) controlledComposition2;
                    compositionImpl.B = i;
                    try {
                        a = function0.a();
                        compositionImpl.A = null;
                        compositionImpl.B = 0;
                    } catch (Throwable th) {
                        compositionImpl.A = null;
                        compositionImpl.B = 0;
                        throw th;
                    }
                } else {
                    a = function0.a();
                }
            }
            a = function0.a();
            this.F = z;
            this.k = i2;
            return a;
        } catch (Throwable th2) {
            this.F = z;
            this.k = i2;
            throw th2;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:7:0x0037, code lost:
    
        if (r3.b < r5) goto L11;
     */
    /* JADX WARN: Removed duplicated region for block: B:110:0x026d  */
    /* JADX WARN: Removed duplicated region for block: B:19:0x0125  */
    /* JADX WARN: Removed duplicated region for block: B:80:0x030a  */
    /* JADX WARN: Removed duplicated region for block: B:83:0x0313  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void G() {
        Invalidation invalidation;
        int i;
        boolean z;
        RecomposeScopeImpl recomposeScopeImpl;
        int i2;
        int i3;
        int i4;
        boolean z2;
        int i5;
        MutableObjectIntMap mutableObjectIntMap;
        long j;
        int c;
        int i6;
        boolean z3;
        long rotateLeft;
        int i7;
        Object b;
        int E;
        int i0;
        boolean z4 = this.F;
        boolean z5 = true;
        this.F = true;
        SlotReader slotReader = this.G;
        int i8 = slotReader.i;
        int i9 = (i8 * 5) + 3;
        int i10 = slotReader.b[i9] + i8;
        int i11 = this.k;
        long j2 = this.T;
        int i12 = this.l;
        int i13 = this.m;
        int i14 = slotReader.g;
        ArrayList arrayList = this.s;
        int c2 = GapComposerKt.c(i14, arrayList);
        if (c2 < 0) {
            c2 = -(c2 + 1);
        }
        if (c2 < arrayList.size()) {
            invalidation = (Invalidation) arrayList.get(c2);
        }
        invalidation = null;
        boolean z6 = false;
        int i15 = i8;
        while (invalidation != null) {
            boolean z7 = z5;
            RecomposeScopeImpl recomposeScopeImpl2 = invalidation.a;
            int i16 = invalidation.b;
            int c3 = GapComposerKt.c(i16, arrayList);
            if (c3 >= 0) {
            }
            Object obj = invalidation.c;
            if (obj == null) {
                recomposeScopeImpl2.getClass();
                z = z4;
                recomposeScopeImpl = recomposeScopeImpl2;
                i = i9;
            } else {
                int i17 = 8;
                MutableScatterMap mutableScatterMap = recomposeScopeImpl2.g;
                if (mutableScatterMap == null) {
                    z = z4;
                    recomposeScopeImpl = recomposeScopeImpl2;
                    i = i9;
                } else {
                    i = i9;
                    if (obj instanceof DerivedState) {
                        z2 = RecomposeScopeImpl.a((DerivedState) obj, mutableScatterMap);
                        z = z4;
                        recomposeScopeImpl = recomposeScopeImpl2;
                        i2 = i11;
                        i3 = i12;
                        i4 = i13;
                    } else if (obj instanceof ScatterSet) {
                        ScatterSet scatterSet = (ScatterSet) obj;
                        if (scatterSet.c()) {
                            Object[] objArr = scatterSet.b;
                            long[] jArr = scatterSet.a;
                            int length = jArr.length - 2;
                            if (length >= 0) {
                                i3 = i12;
                                i4 = i13;
                                int i18 = 0;
                                while (true) {
                                    long j3 = jArr[i18];
                                    z = z4;
                                    recomposeScopeImpl = recomposeScopeImpl2;
                                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                        int i19 = 8 - ((~(i18 - length)) >>> 31);
                                        int i20 = 0;
                                        while (i20 < i19) {
                                            if ((j3 & 255) < 128) {
                                                i5 = i20;
                                                Object obj2 = objArr[(i18 << 3) + i20];
                                                i2 = i11;
                                                if (!(obj2 instanceof DerivedState) || RecomposeScopeImpl.a((DerivedState) obj2, mutableScatterMap)) {
                                                    break;
                                                }
                                            } else {
                                                i5 = i20;
                                                i2 = i11;
                                            }
                                            j3 >>= i17;
                                            i20 = i5 + 1;
                                            i11 = i2;
                                        }
                                        i2 = i11;
                                        if (i19 != i17) {
                                            break;
                                        }
                                    } else {
                                        i2 = i11;
                                    }
                                    if (i18 == length) {
                                        break;
                                    }
                                    i18++;
                                    z4 = z;
                                    recomposeScopeImpl2 = recomposeScopeImpl;
                                    i11 = i2;
                                    i17 = 8;
                                }
                                z2 = false;
                            }
                        }
                        z = z4;
                        recomposeScopeImpl = recomposeScopeImpl2;
                        i2 = i11;
                        i3 = i12;
                        i4 = i13;
                        z2 = false;
                    } else {
                        z = z4;
                        recomposeScopeImpl = recomposeScopeImpl2;
                    }
                    if (!z2) {
                        this.G.r(i16);
                        int i21 = this.G.g;
                        J(i15, i21, i8);
                        int q = this.G.q(i21);
                        while (q != i8 && !this.G.l(q)) {
                            q = this.G.q(q);
                        }
                        if (this.G.l(q)) {
                            i6 = 0;
                        } else {
                            i6 = i2;
                        }
                        if (q != i21) {
                            int i02 = (i0(q) - this.G.o(i21)) + i6;
                            while (i6 < i02 && q != i16) {
                                q++;
                                while (q < i16) {
                                    SlotReader slotReader2 = this.G;
                                    int i22 = slotReader2.b[(q * 5) + 3] + q;
                                    if (i16 >= i22) {
                                        if (slotReader2.l(q)) {
                                            i0 = z7 ? 1 : 0;
                                        } else {
                                            i0 = i0(q);
                                        }
                                        i6 += i0;
                                        q = i22;
                                    }
                                }
                                break;
                            }
                        }
                        this.k = i6;
                        this.m = E(i21);
                        int q2 = this.G.q(i21);
                        long j4 = 0;
                        int i23 = 3;
                        int i24 = 0;
                        while (q2 >= 0) {
                            if (q2 == i8) {
                                rotateLeft = Long.rotateLeft(j2, i24);
                            } else {
                                SlotReader slotReader3 = this.G;
                                boolean k = slotReader3.k(q2);
                                int[] iArr = slotReader3.b;
                                if (k) {
                                    Object p = slotReader3.p(iArr, q2);
                                    if (p != null) {
                                        if (p instanceof Enum) {
                                            i7 = ((Enum) p).ordinal();
                                        } else {
                                            i7 = p.hashCode();
                                        }
                                    } else {
                                        i7 = 0;
                                    }
                                } else {
                                    int i25 = slotReader3.i(q2);
                                    if (i25 == 207 && (b = slotReader3.b(iArr, q2)) != null && !b.equals(Composer.Companion.a)) {
                                        i7 = b.hashCode();
                                    } else {
                                        i7 = i25;
                                    }
                                }
                                if (i7 == 126665345) {
                                    rotateLeft = Long.rotateLeft(i7, i24);
                                } else {
                                    if (this.G.k(q2)) {
                                        E = 0;
                                    } else {
                                        E = E(q2);
                                    }
                                    j4 = (j4 ^ Long.rotateLeft(i7, i23)) ^ Long.rotateLeft(E, i24);
                                    i23 = (i23 + 6) % 64;
                                    i24 = (i24 + 6) % 64;
                                    q2 = this.G.q(q2);
                                }
                            }
                            j4 ^= rotateLeft;
                            break;
                        }
                        this.T = j4;
                        this.K = null;
                        Function2 function2 = recomposeScopeImpl.d;
                        if (function2 != null) {
                            function2.n(this, Integer.valueOf(z7 ? 1 : 0));
                            this.K = null;
                            SlotReader slotReader4 = this.G;
                            int i26 = slotReader4.b[i] + i8;
                            int i27 = slotReader4.g;
                            if (i27 >= i8 && i27 <= i26) {
                                z3 = z7 ? 1 : 0;
                            } else {
                                z3 = false;
                            }
                            if (!z3) {
                                ComposerKt.a("Index " + i8 + " is not a parent of " + i27);
                            }
                            slotReader4.i = i8;
                            slotReader4.h = i26;
                            slotReader4.l = 0;
                            slotReader4.m = 0;
                            i15 = i21;
                            z6 = z7 ? 1 : 0;
                        } else {
                            u2.l("Invalid restart scope");
                            return;
                        }
                    } else {
                        RecomposeScopeImpl recomposeScopeImpl3 = recomposeScopeImpl;
                        ArrayList arrayList2 = this.E;
                        arrayList2.add(recomposeScopeImpl3);
                        this.g.a();
                        RecomposeScopeOwner recomposeScopeOwner = recomposeScopeImpl3.a;
                        if (recomposeScopeOwner != null && (mutableObjectIntMap = recomposeScopeImpl3.f) != null) {
                            recomposeScopeImpl3.e(z7);
                            try {
                                Object[] objArr2 = mutableObjectIntMap.b;
                                int[] iArr2 = mutableObjectIntMap.c;
                                long[] jArr2 = mutableObjectIntMap.a;
                                int length2 = jArr2.length - 2;
                                if (length2 >= 0) {
                                    int i28 = 0;
                                    while (true) {
                                        try {
                                            long j5 = jArr2[i28];
                                            Object[] objArr3 = objArr2;
                                            int[] iArr3 = iArr2;
                                            if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i29 = 8 - ((~(i28 - length2)) >>> 31);
                                                int i30 = 0;
                                                while (i30 < i29) {
                                                    if ((j5 & 255) < 128) {
                                                        int i31 = (i28 << 3) + i30;
                                                        j = j5;
                                                        Object obj3 = objArr3[i31];
                                                        int i32 = iArr3[i31];
                                                        recomposeScopeOwner.d(obj3);
                                                    } else {
                                                        j = j5;
                                                    }
                                                    i30++;
                                                    j5 = j >> 8;
                                                }
                                                if (i29 != 8) {
                                                    break;
                                                }
                                            }
                                            if (i28 == length2) {
                                                break;
                                            }
                                            i28++;
                                            objArr2 = objArr3;
                                            iArr2 = iArr3;
                                        } catch (Throwable th) {
                                            th = th;
                                            recomposeScopeImpl3 = recomposeScopeImpl3;
                                            recomposeScopeImpl3.e(false);
                                            throw th;
                                        }
                                    }
                                }
                                recomposeScopeImpl3.e(false);
                            } catch (Throwable th2) {
                                th = th2;
                            }
                        }
                        z7 = true;
                        arrayList2.remove(arrayList2.size() - 1);
                    }
                    c = GapComposerKt.c(this.G.g, arrayList);
                    if (c < 0) {
                        c = -(c + 1);
                    }
                    if (c < arrayList.size()) {
                        Invalidation invalidation2 = (Invalidation) arrayList.get(c);
                        if (invalidation2.b < i10) {
                            invalidation = invalidation2;
                            z5 = z7;
                            i9 = i;
                            i12 = i3;
                            i13 = i4;
                            z4 = z;
                            i11 = i2;
                        }
                    }
                    invalidation = null;
                    z5 = z7;
                    i9 = i;
                    i12 = i3;
                    i13 = i4;
                    z4 = z;
                    i11 = i2;
                }
            }
            i2 = i11;
            i3 = i12;
            i4 = i13;
            z2 = z7 ? 1 : 0;
            if (!z2) {
            }
            c = GapComposerKt.c(this.G.g, arrayList);
            if (c < 0) {
            }
            if (c < arrayList.size()) {
            }
            invalidation = null;
            z5 = z7;
            i9 = i;
            i12 = i3;
            i13 = i4;
            z4 = z;
            i11 = i2;
        }
        boolean z8 = z4;
        int i33 = i11;
        int i34 = i12;
        int i35 = i13;
        if (z6) {
            J(i15, i8, i8);
            this.G.t();
            int i03 = i0(i8);
            this.k = i33 + i03;
            this.l = i34 + i03;
            this.m = i35;
        } else {
            P();
        }
        this.T = j2;
        this.F = z8;
    }

    public final void H() {
        int i;
        L(this.G.g);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.d(false);
        IntStack intStack = composerChangeListWriter.d;
        GapComposer gapComposer = composerChangeListWriter.a;
        SlotReader slotReader = gapComposer.G;
        if (slotReader.c > 0 && intStack.a(-2) != (i = slotReader.i)) {
            if (!composerChangeListWriter.c && composerChangeListWriter.e) {
                composerChangeListWriter.d(false);
                composerChangeListWriter.b.a.d(Operation.EnsureRootGroupStarted.c);
                composerChangeListWriter.c = true;
            }
            if (i > 0) {
                GapAnchor a = slotReader.a(i);
                intStack.c(i);
                composerChangeListWriter.d(false);
                Operations operations = composerChangeListWriter.b.a;
                operations.d(Operation.EnsureGroupStarted.c);
                Operations.WriteScope.a(operations, 0, a);
                composerChangeListWriter.c = true;
            }
        }
        composerChangeListWriter.b.a.d(Operation.RemoveCurrentGroup.c);
        int i2 = composerChangeListWriter.f;
        SlotReader slotReader2 = gapComposer.G;
        composerChangeListWriter.f = slotReader2.b[(slotReader2.g * 5) + 3] + i2;
    }

    public final void I(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        MutableIntObjectMap mutableIntObjectMap = this.v;
        if (mutableIntObjectMap == null) {
            mutableIntObjectMap = new MutableIntObjectMap();
            this.v = mutableIntObjectMap;
        }
        mutableIntObjectMap.i(this.G.g, persistentCompositionLocalMap);
    }

    /* JADX WARN: Removed duplicated region for block: B:42:0x0075  */
    /* JADX WARN: Removed duplicated region for block: B:45:0x007a A[SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void J(int i, int i2, int i3) {
        SlotReader slotReader = this.G;
        if (i != i2) {
            if (i != i3 && i2 != i3) {
                if (slotReader.q(i) == i2) {
                    i3 = i2;
                } else if (slotReader.q(i2) != i) {
                    if (slotReader.q(i) == slotReader.q(i2)) {
                        i3 = slotReader.q(i);
                    } else {
                        int i4 = i;
                        int i5 = 0;
                        while (i4 > 0 && i4 != i3) {
                            i4 = slotReader.q(i4);
                            i5++;
                        }
                        int i6 = i2;
                        int i7 = 0;
                        while (i6 > 0 && i6 != i3) {
                            i6 = slotReader.q(i6);
                            i7++;
                        }
                        int i8 = i5 - i7;
                        int i9 = i;
                        for (int i10 = 0; i10 < i8; i10++) {
                            i9 = slotReader.q(i9);
                        }
                        int i11 = i7 - i5;
                        int i12 = i2;
                        for (int i13 = 0; i13 < i11; i13++) {
                            i12 = slotReader.q(i12);
                        }
                        i3 = i9;
                        for (int i14 = i12; i3 != i14; i14 = slotReader.q(i14)) {
                            i3 = slotReader.q(i3);
                        }
                    }
                }
            }
            while (i > 0 && i != i3) {
                if (!slotReader.l(i)) {
                    this.M.a();
                }
                i = slotReader.q(i);
            }
            o(i2, i3);
        }
        i3 = i;
        while (i > 0) {
            if (!slotReader.l(i)) {
            }
            i = slotReader.q(i);
        }
        o(i2, i3);
    }

    public final Object K() {
        boolean z = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (z) {
            if (this.r) {
                ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
                return composer$Companion$Empty$1;
            }
        } else {
            Object m = this.G.m();
            if (!this.y || (m instanceof ReusableRememberObserverHolder)) {
                if (m instanceof RememberObserverHolder) {
                    return ((GapRememberObserverHolder) ((RememberObserverHolder) m)).a;
                }
                return m;
            }
        }
        return composer$Companion$Empty$1;
    }

    public final void L(int i) {
        boolean l = this.G.l(i);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (l) {
            composerChangeListWriter.c();
            Object n = this.G.n(i);
            composerChangeListWriter.c();
            composerChangeListWriter.h.add(n);
        }
        M(this, i, l, 0);
        composerChangeListWriter.c();
        if (l) {
            composerChangeListWriter.a();
        }
    }

    public final boolean N(int i, boolean z) {
        RecomposeScopeImpl w;
        int i2;
        if ((i & 1) == 0 && (this.S || this.y)) {
            ShouldPauseCallback shouldPauseCallback = this.P;
            if (shouldPauseCallback != null && (w = w()) != null && shouldPauseCallback.a()) {
                int i3 = w.b;
                if ((i3 & 512) != 0) {
                    return true;
                }
                int i4 = i3 | 1;
                w.b = i4;
                if (this.y) {
                    i2 = i3 | 129;
                } else {
                    i2 = i4 & (-129);
                }
                w.b = i2 | 256;
                Operations operations = this.M.b.a;
                operations.d(Operation.RememberPausingScope.c);
                Operations.WriteScope.a(operations, 0, w);
                this.b.q(w);
                return false;
            }
        } else if (!z && z()) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x0093  */
    /* JADX WARN: Removed duplicated region for block: B:21:0x009f  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x00d0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void O() {
        Object obj;
        int hashCode;
        long rotateLeft;
        if (this.s.isEmpty()) {
            this.l = this.G.s() + this.l;
            return;
        }
        SlotReader slotReader = this.G;
        int g = slotReader.g();
        int[] iArr = slotReader.b;
        int i = slotReader.g;
        if (i < slotReader.h) {
            obj = slotReader.p(iArr, i);
        } else {
            obj = null;
        }
        Object f = slotReader.f();
        int i2 = this.m;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (obj == null) {
            if (f != null && g == 207 && !f.equals(composer$Companion$Empty$1)) {
                this.T = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ f.hashCode(), 3) ^ i2;
                boolean z = true;
                if ((iArr[(slotReader.g * 5) + 1] & 1073741824) == 0) {
                    z = false;
                }
                V(null, z);
                G();
                slotReader.e();
                if (obj != null) {
                    if (f != null && g == 207 && !f.equals(composer$Companion$Empty$1)) {
                        this.T = Long.rotateRight(Long.rotateRight(this.T ^ i2, 3) ^ f.hashCode(), 3);
                        return;
                    } else {
                        this.T = Long.rotateRight(g ^ Long.rotateRight(this.T ^ i2, 3), 3);
                        return;
                    }
                }
                if (obj instanceof Enum) {
                    this.T = Long.rotateRight(Long.rotateRight(this.T, 3) ^ ((Enum) obj).ordinal(), 3);
                    return;
                } else {
                    this.T = Long.rotateRight(Long.rotateRight(this.T, 3) ^ obj.hashCode(), 3);
                    return;
                }
            }
            rotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ g, 3) ^ i2;
        } else {
            if (obj instanceof Enum) {
                hashCode = ((Enum) obj).ordinal();
            } else {
                hashCode = obj.hashCode();
            }
            rotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ hashCode, 3);
        }
        this.T = rotateLeft;
        boolean z2 = true;
        if ((iArr[(slotReader.g * 5) + 1] & 1073741824) == 0) {
        }
        V(null, z2);
        G();
        slotReader.e();
        if (obj != null) {
        }
    }

    public final void P() {
        int i;
        SlotReader slotReader = this.G;
        int i2 = slotReader.i;
        if (i2 >= 0) {
            i = slotReader.b[(i2 * 5) + 1] & 67108863;
        } else {
            i = 0;
        }
        this.l = i;
        slotReader.t();
    }

    public final void Q() {
        if (this.l != 0) {
            ComposerKt.a("No nodes can be emitted before calling skipAndEndGroup");
        }
        if (!this.S) {
            RecomposeScopeImpl w = w();
            if (w != null) {
                int i = w.b;
                if ((i & 128) == 0) {
                    w.b = i | 16;
                }
            }
            if (this.s.isEmpty()) {
                P();
            } else {
                G();
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:14:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x007a  */
    /* JADX WARN: Removed duplicated region for block: B:201:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00c5  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x014d  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void R(int i, int i2, Object obj, Object obj2) {
        int hashCode;
        long rotateLeft;
        boolean z;
        boolean z2;
        boolean z3;
        GapPending gapPending;
        GapPending gapPending2;
        Object valueOf;
        int i3;
        Object obj3;
        int i4;
        int i5;
        int i6;
        int i7;
        Object[] objArr;
        Object[] objArr2;
        int i8;
        int i9;
        int i10;
        boolean z4;
        int i11;
        Object obj4;
        Object obj5 = obj;
        if (this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
        }
        int i12 = this.m;
        Object obj6 = Composer.Companion.a;
        if (obj5 == null) {
            if (obj2 != null && i == 207 && !obj2.equals(obj6)) {
                this.T = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ obj2.hashCode(), 3) ^ i12;
                if (obj5 == null) {
                    this.m++;
                }
                if (i2 == 0) {
                    z = true;
                } else {
                    z = false;
                }
                if (!this.S) {
                    this.G.k++;
                    SlotWriter slotWriter = this.I;
                    int i13 = slotWriter.t;
                    if (z) {
                        slotWriter.Q(i, obj6, obj6, true);
                    } else if (obj2 != null) {
                        if (obj5 == null) {
                            obj5 = obj6;
                        }
                        slotWriter.Q(i, obj5, obj2, false);
                    } else {
                        if (obj5 == null) {
                            obj5 = obj6;
                        }
                        slotWriter.Q(i, obj5, obj6, false);
                    }
                    GapPending gapPending3 = this.j;
                    if (gapPending3 != null) {
                        int i14 = (-2) - i13;
                        KeyInfo keyInfo = new KeyInfo(-1, i, i14, -1);
                        gapPending3.e.i(i14, new GroupInfo(-1, this.k - gapPending3.b, 0));
                        gapPending3.d.add(keyInfo);
                    }
                    t(z, null);
                    return;
                }
                if (i2 == 1 && this.y) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (this.j == null) {
                    int g = this.G.g();
                    if (!z2 && g == i) {
                        SlotReader slotReader = this.G;
                        int i15 = slotReader.g;
                        if (i15 < slotReader.h) {
                            obj4 = slotReader.p(slotReader.b, i15);
                        } else {
                            obj4 = null;
                        }
                        if (Intrinsics.a(obj5, obj4)) {
                            V(obj2, z);
                        }
                    }
                    SlotReader slotReader2 = this.G;
                    int[] iArr = slotReader2.b;
                    ArrayList arrayList = new ArrayList();
                    if (slotReader2.k <= 0) {
                        int i16 = slotReader2.g;
                        while (i16 < slotReader2.h) {
                            int i17 = i16 * 5;
                            int i18 = iArr[i17];
                            Object p = slotReader2.p(iArr, i16);
                            int i19 = iArr[i17 + 1];
                            if ((i19 & 1073741824) != 0) {
                                z4 = z2;
                                i11 = 1;
                            } else {
                                z4 = z2;
                                i11 = i19 & 67108863;
                            }
                            arrayList.add(new KeyInfo(p, i18, i16, i11));
                            i16 += iArr[i17 + 3];
                            z2 = z4;
                        }
                    }
                    z3 = z2;
                    this.j = new GapPending(this.k, arrayList);
                    gapPending = this.j;
                    if (gapPending != null) {
                        ArrayList arrayList2 = gapPending.d;
                        MutableIntObjectMap mutableIntObjectMap = gapPending.e;
                        int i20 = gapPending.b;
                        if (obj5 != null) {
                            valueOf = new JoinedKey(Integer.valueOf(i), obj5);
                        } else {
                            valueOf = Integer.valueOf(i);
                        }
                        MutableScatterMap mutableScatterMap = ((MultiValueMap) gapPending.f.getValue()).a;
                        Object e = mutableScatterMap.e(valueOf);
                        if (e == null) {
                            e = null;
                        } else if (e instanceof MutableObjectList) {
                            MutableObjectList mutableObjectList = (MutableObjectList) e;
                            Object m = mutableObjectList.m(0);
                            if (mutableObjectList.d()) {
                                mutableScatterMap.m(valueOf);
                            }
                            if (mutableObjectList.b == 1) {
                                mutableScatterMap.o(valueOf, mutableObjectList.a());
                            }
                            e = m;
                        } else {
                            mutableScatterMap.m(valueOf);
                        }
                        KeyInfo keyInfo2 = (KeyInfo) e;
                        if (!z3 && keyInfo2 != null) {
                            int i21 = keyInfo2.c;
                            arrayList2.add(keyInfo2);
                            GroupInfo groupInfo = (GroupInfo) mutableIntObjectMap.b(i21);
                            if (groupInfo != null) {
                                i5 = groupInfo.b;
                            } else {
                                i5 = -1;
                            }
                            this.k = i5 + i20;
                            GroupInfo groupInfo2 = (GroupInfo) mutableIntObjectMap.b(i21);
                            if (groupInfo2 != null) {
                                i6 = groupInfo2.a;
                            } else {
                                i6 = -1;
                            }
                            int i22 = gapPending.c;
                            int i23 = i6 - i22;
                            int i24 = 8;
                            if (i6 > i22) {
                                Object[] objArr3 = mutableIntObjectMap.c;
                                long[] jArr = mutableIntObjectMap.a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i25 = 0;
                                    while (true) {
                                        long j = jArr[i25];
                                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i26 = 8 - ((~(i25 - length)) >>> 31);
                                            int i27 = 0;
                                            while (i27 < i26) {
                                                if ((j & 255) < 128) {
                                                    i10 = i24;
                                                    GroupInfo groupInfo3 = (GroupInfo) objArr3[(i25 << 3) + i27];
                                                    i9 = i23;
                                                    int i28 = groupInfo3.a;
                                                    if (i28 == i6) {
                                                        groupInfo3.a = i22;
                                                    } else if (i22 <= i28 && i28 < i6) {
                                                        groupInfo3.a = i28 + 1;
                                                    }
                                                } else {
                                                    i9 = i23;
                                                    i10 = i24;
                                                }
                                                j >>= i10;
                                                i27++;
                                                i23 = i9;
                                                i24 = i10;
                                            }
                                            i7 = i23;
                                            if (i26 != i24) {
                                                break;
                                            }
                                        } else {
                                            i7 = i23;
                                        }
                                        if (i25 == length) {
                                            break;
                                        }
                                        i25++;
                                        i23 = i7;
                                        i24 = 8;
                                    }
                                } else {
                                    i7 = i23;
                                }
                            } else {
                                i7 = i23;
                                if (i22 > i6) {
                                    Object[] objArr4 = mutableIntObjectMap.c;
                                    long[] jArr2 = mutableIntObjectMap.a;
                                    int length2 = jArr2.length - 2;
                                    if (length2 >= 0) {
                                        int i29 = 0;
                                        while (true) {
                                            long j2 = jArr2[i29];
                                            if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                int i30 = 8 - ((~(i29 - length2)) >>> 31);
                                                int i31 = 0;
                                                while (i31 < i30) {
                                                    if ((j2 & 255) < 128) {
                                                        GroupInfo groupInfo4 = (GroupInfo) objArr4[(i29 << 3) + i31];
                                                        int i32 = groupInfo4.a;
                                                        if (i32 == i6) {
                                                            groupInfo4.a = i22;
                                                        } else {
                                                            objArr2 = objArr4;
                                                            if (i6 + 1 <= i32 && i32 < i22) {
                                                                groupInfo4.a = i32 - 1;
                                                            }
                                                            j2 >>= 8;
                                                            i31++;
                                                            objArr4 = objArr2;
                                                        }
                                                    }
                                                    objArr2 = objArr4;
                                                    j2 >>= 8;
                                                    i31++;
                                                    objArr4 = objArr2;
                                                }
                                                objArr = objArr4;
                                                if (i30 != 8) {
                                                    break;
                                                }
                                            } else {
                                                objArr = objArr4;
                                            }
                                            if (i29 == length2) {
                                                break;
                                            }
                                            i29++;
                                            objArr4 = objArr;
                                        }
                                    }
                                }
                            }
                            ComposerChangeListWriter composerChangeListWriter = this.M;
                            int i33 = composerChangeListWriter.f;
                            GapComposer gapComposer = composerChangeListWriter.a;
                            composerChangeListWriter.f = (i21 - gapComposer.G.g) + i33;
                            this.G.r(i21);
                            if (i7 > 0) {
                                composerChangeListWriter.d(false);
                                IntStack intStack = composerChangeListWriter.d;
                                SlotReader slotReader3 = gapComposer.G;
                                if (slotReader3.c > 0 && intStack.a(-2) != (i8 = slotReader3.i)) {
                                    if (!composerChangeListWriter.c && composerChangeListWriter.e) {
                                        composerChangeListWriter.d(false);
                                        composerChangeListWriter.b.a.d(Operation.EnsureRootGroupStarted.c);
                                        composerChangeListWriter.c = true;
                                    }
                                    if (i8 > 0) {
                                        GapAnchor a = slotReader3.a(i8);
                                        intStack.c(i8);
                                        composerChangeListWriter.d(false);
                                        Operations operations = composerChangeListWriter.b.a;
                                        operations.d(Operation.EnsureGroupStarted.c);
                                        Operations.WriteScope.a(operations, 0, a);
                                        composerChangeListWriter.c = true;
                                    }
                                }
                                Operations operations2 = composerChangeListWriter.b.a;
                                operations2.d(Operation.MoveCurrentGroup.c);
                                operations2.c[operations2.d - operations2.a[operations2.b - 1].a] = i7;
                            }
                            V(obj2, z);
                        } else {
                            this.G.k++;
                            this.S = true;
                            this.K = null;
                            if (this.I.w) {
                                SlotWriter e2 = this.H.e();
                                this.I = e2;
                                e2.M();
                                this.J = false;
                                this.K = null;
                            }
                            this.I.d();
                            SlotWriter slotWriter2 = this.I;
                            int i34 = slotWriter2.t;
                            if (z) {
                                slotWriter2.Q(i, obj6, obj6, true);
                                i3 = 0;
                            } else if (obj2 != null) {
                                if (obj != null) {
                                    obj6 = obj;
                                }
                                i3 = 0;
                                slotWriter2.Q(i, obj6, obj2, false);
                            } else {
                                i3 = 0;
                                if (obj == null) {
                                    obj3 = obj6;
                                } else {
                                    obj3 = obj;
                                }
                                slotWriter2.Q(i, obj3, obj6, false);
                            }
                            this.N = this.I.b(i34);
                            int i35 = (-2) - i34;
                            KeyInfo keyInfo3 = new KeyInfo(-1, i, i35, -1);
                            mutableIntObjectMap.i(i35, new GroupInfo(-1, this.k - i20, i3));
                            arrayList2.add(keyInfo3);
                            ArrayList arrayList3 = new ArrayList();
                            if (z) {
                                i4 = i3;
                            } else {
                                i4 = this.k;
                            }
                            gapPending2 = new GapPending(i4, arrayList3);
                            t(z, gapPending2);
                            return;
                        }
                    }
                    gapPending2 = null;
                    t(z, gapPending2);
                    return;
                }
                z3 = z2;
                gapPending = this.j;
                if (gapPending != null) {
                }
                gapPending2 = null;
                t(z, gapPending2);
                return;
            }
            rotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ i, 3) ^ i12;
        } else {
            if (obj5 instanceof Enum) {
                hashCode = ((Enum) obj5).ordinal();
            } else {
                hashCode = obj5.hashCode();
            }
            rotateLeft = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ hashCode, 3);
        }
        this.T = rotateLeft;
        if (obj5 == null) {
        }
        if (i2 == 0) {
        }
        if (!this.S) {
        }
    }

    public final void S() {
        R(-127, 0, null, null);
    }

    public final void T(int i, OpaqueKey opaqueKey) {
        R(i, 0, opaqueKey, null);
    }

    public final void U(int i, Object obj) {
        R(i, 0, obj, null);
    }

    public final void V(Object obj, boolean z) {
        if (z) {
            SlotReader slotReader = this.G;
            if (slotReader.k <= 0) {
                if ((slotReader.b[(slotReader.g * 5) + 1] & 1073741824) == 0) {
                    PreconditionsKt.a("Expected a node group");
                }
                slotReader.u();
                return;
            }
            return;
        }
        if (obj != null && this.G.f() != obj) {
            ComposerChangeListWriter composerChangeListWriter = this.M;
            composerChangeListWriter.getClass();
            composerChangeListWriter.d(false);
            Operations operations = composerChangeListWriter.b.a;
            operations.d(Operation.UpdateAuxData.c);
            Operations.WriteScope.a(operations, 0, obj);
        }
        this.G.u();
    }

    public final void W(int i) {
        int i2;
        int i3;
        if (this.j != null) {
            R(i, 0, null, null);
            return;
        }
        if (this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected");
        }
        this.T = Long.rotateLeft(Long.rotateLeft(this.T, 3) ^ i, 3) ^ this.m;
        this.m++;
        SlotReader slotReader = this.G;
        boolean z = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (z) {
            slotReader.k++;
            this.I.Q(i, composer$Companion$Empty$1, composer$Companion$Empty$1, false);
            t(false, null);
            return;
        }
        if (slotReader.g() == i && ((i3 = slotReader.g) >= slotReader.h || (slotReader.b[(i3 * 5) + 1] & 536870912) == 0)) {
            slotReader.u();
            t(false, null);
            return;
        }
        if (slotReader.k <= 0 && (i2 = slotReader.g) != slotReader.h) {
            int i4 = this.k;
            H();
            this.M.e(i4, slotReader.s());
            GapComposerKt.a(i2, slotReader.g, this.s);
        }
        slotReader.k++;
        this.S = true;
        this.K = null;
        if (this.I.w) {
            SlotWriter e = this.H.e();
            this.I = e;
            e.M();
            this.J = false;
            this.K = null;
        }
        SlotWriter slotWriter = this.I;
        slotWriter.d();
        int i5 = slotWriter.t;
        slotWriter.Q(i, composer$Companion$Empty$1, composer$Companion$Empty$1, false);
        this.N = slotWriter.b(i5);
        t(false, null);
    }

    /* JADX WARN: Removed duplicated region for block: B:23:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x0076  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final GapComposer X(int i) {
        Invalidation invalidation;
        RecomposeScopeImpl recomposeScopeImpl;
        boolean z;
        int i2;
        int i3;
        boolean z2;
        W(i);
        boolean z3 = this.S;
        CompositionObserverHolder compositionObserverHolder = this.g;
        ArrayList arrayList = this.E;
        CompositionImpl compositionImpl = this.h;
        if (z3) {
            RecomposeScopeImpl recomposeScopeImpl2 = new RecomposeScopeImpl(compositionImpl);
            arrayList.add(recomposeScopeImpl2);
            h0(recomposeScopeImpl2);
            recomposeScopeImpl2.e = this.B;
            recomposeScopeImpl2.b &= -17;
            compositionObserverHolder.a();
            return this;
        }
        int i4 = this.G.i;
        ArrayList arrayList2 = this.s;
        int c = GapComposerKt.c(i4, arrayList2);
        if (c >= 0) {
            invalidation = (Invalidation) arrayList2.remove(c);
        } else {
            invalidation = null;
        }
        Object m = this.G.m();
        if (Intrinsics.a(m, Composer.Companion.a)) {
            recomposeScopeImpl = new RecomposeScopeImpl(compositionImpl);
            h0(recomposeScopeImpl);
        } else {
            m.getClass();
            recomposeScopeImpl = (RecomposeScopeImpl) m;
        }
        if (invalidation == null) {
            int i5 = recomposeScopeImpl.b;
            if ((i5 & 64) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if (z2) {
                recomposeScopeImpl.b = i5 & (-65);
            }
            if (!z2) {
                z = false;
                int i6 = recomposeScopeImpl.b;
                if (!z) {
                    i2 = i6 | 8;
                } else {
                    i2 = i6 & (-9);
                }
                recomposeScopeImpl.b = i2;
                arrayList.add(recomposeScopeImpl);
                recomposeScopeImpl.e = this.B;
                recomposeScopeImpl.b &= -17;
                compositionObserverHolder.a();
                i3 = recomposeScopeImpl.b;
                if ((i3 & 256) != 0) {
                    recomposeScopeImpl.b = (i3 & (-257)) | 512;
                    Operations operations = this.M.b.a;
                    operations.d(Operation.StartResumingScope.c);
                    Operations.WriteScope.a(operations, 0, recomposeScopeImpl);
                    if (!this.y) {
                        int i7 = recomposeScopeImpl.b;
                        if ((i7 & 128) != 0) {
                            this.y = true;
                            this.z = this.G.i;
                            recomposeScopeImpl.b = i7 | 1024;
                        }
                    }
                }
                return this;
            }
        }
        z = true;
        int i62 = recomposeScopeImpl.b;
        if (!z) {
        }
        recomposeScopeImpl.b = i2;
        arrayList.add(recomposeScopeImpl);
        recomposeScopeImpl.e = this.B;
        recomposeScopeImpl.b &= -17;
        compositionObserverHolder.a();
        i3 = recomposeScopeImpl.b;
        if ((i3 & 256) != 0) {
        }
        return this;
    }

    public final void Y(Object obj) {
        if (!this.S && this.G.g() == 207 && !Intrinsics.a(this.G.f(), obj) && this.z < 0) {
            this.z = this.G.g;
            this.y = true;
        }
        R(207, 0, null, obj);
    }

    public final void Z() {
        R(125, 2, null, null);
        this.r = true;
    }

    public final void a() {
        i();
        this.i.clear();
        this.n.b = 0;
        this.t.b = 0;
        this.x.b = 0;
        this.v = null;
        FixupList fixupList = this.O;
        fixupList.b.a();
        fixupList.a.a();
        this.T = 0L;
        this.A = 0;
        this.r = false;
        this.S = false;
        this.y = false;
        this.F = false;
        this.z = -1;
        SlotReader slotReader = this.G;
        if (!slotReader.f) {
            slotReader.c();
        }
        if (!this.I.w) {
            u();
        }
    }

    public final void a0() {
        this.m = 0;
        this.G = this.c.d();
        R(100, 0, null, null);
        CompositionContext compositionContext = this.b;
        compositionContext.t();
        PersistentCompositionLocalMap i = compositionContext.i();
        this.x.c(this.w ? 1 : 0);
        this.w = f(i);
        this.K = null;
        if (!this.q) {
            this.q = compositionContext.e();
        }
        if (!this.C) {
            this.C = compositionContext.f();
        }
        if (this.C) {
            StaticProvidableCompositionLocal staticProvidableCompositionLocal = CompositionErrorContextKt.a;
            staticProvidableCompositionLocal.getClass();
            i = ((PersistentCompositionLocalHashMap) i).b(staticProvidableCompositionLocal, new StaticValueHolder(y()));
        }
        this.u = i;
        Set set = (Set) CompositionLocalMapKt.a(i, InspectionTablesKt.a);
        if (set != null) {
            set.add(v());
            compositionContext.o(set);
        }
        R(Long.hashCode(compositionContext.g()), 0, null, null);
    }

    public final void b(Object obj, Function2 function2) {
        if (this.S) {
            Operations operations = this.O.a;
            operations.d(Operation.UpdateNode.c);
            Operations.WriteScope.a(operations, 0, obj);
            TypeIntrinsics.c(2, function2);
            Operations.WriteScope.a(operations, 1, function2);
            return;
        }
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.b();
        Operations operations2 = composerChangeListWriter.b.a;
        operations2.d(Operation.UpdateNode.c);
        TypeIntrinsics.c(2, function2);
        Operations.WriteScope.b(operations2, 0, obj, 1, function2);
    }

    public final boolean b0(RecomposeScopeImpl recomposeScopeImpl, Object obj) {
        GapAnchor gapAnchor = recomposeScopeImpl.c;
        if (gapAnchor != null) {
            int b = this.G.a.b(GapAnchorKt.a(gapAnchor));
            if (this.F && b >= this.G.g) {
                ArrayList arrayList = this.s;
                int c = GapComposerKt.c(b, arrayList);
                if (c < 0) {
                    int i = -(c + 1);
                    if (!(obj instanceof DerivedState)) {
                        obj = null;
                    }
                    arrayList.add(i, new Invalidation(recomposeScopeImpl, b, obj));
                    return true;
                }
                Invalidation invalidation = (Invalidation) arrayList.get(c);
                if (obj instanceof DerivedState) {
                    Object obj2 = invalidation.c;
                    if (obj2 == null) {
                        invalidation.c = obj;
                        return true;
                    }
                    if (obj2 instanceof MutableScatterSet) {
                        ((MutableScatterSet) obj2).d(obj);
                        return true;
                    }
                    MutableScatterSet mutableScatterSet = ScatterSetKt.a;
                    MutableScatterSet mutableScatterSet2 = new MutableScatterSet(2);
                    mutableScatterSet2.l(obj2);
                    mutableScatterSet2.l(obj);
                    invalidation.c = mutableScatterSet2;
                    return true;
                }
                invalidation.c = null;
                return true;
            }
            return false;
        }
        return false;
    }

    public final boolean c(float f) {
        Object C = C();
        if ((C instanceof Float) && f == ((Number) C).floatValue()) {
            return false;
        }
        h0(Float.valueOf(f));
        return true;
    }

    public final void c0(MutableScatterMap mutableScatterMap) {
        GapAnchor gapAnchor;
        ArrayList arrayList = this.s;
        for (int u = CollectionsKt.u(arrayList); -1 < u; u--) {
            Invalidation invalidation = (Invalidation) arrayList.get(u);
            GapAnchor gapAnchor2 = invalidation.a.c;
            if (gapAnchor2 != null) {
                gapAnchor = GapAnchorKt.a(gapAnchor2);
            } else {
                gapAnchor = null;
            }
            if (gapAnchor != null && gapAnchor.a()) {
                int i = invalidation.b;
                int i2 = gapAnchor.a;
                if (i != i2) {
                    invalidation.b = i2;
                }
            } else {
                arrayList.remove(u);
            }
        }
        Object[] objArr = mutableScatterMap.b;
        Object[] objArr2 = mutableScatterMap.c;
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
                            int i6 = (i3 << 3) + i5;
                            Object obj = objArr[i6];
                            Object obj2 = objArr2[i6];
                            obj.getClass();
                            RecomposeScopeImpl recomposeScopeImpl = (RecomposeScopeImpl) obj;
                            GapAnchor gapAnchor3 = recomposeScopeImpl.c;
                            if (gapAnchor3 != null) {
                                int i7 = GapAnchorKt.a(gapAnchor3).a;
                                if (obj2 == ScopeInvalidated.a) {
                                    obj2 = null;
                                }
                                arrayList.add(new Invalidation(recomposeScopeImpl, i7, obj2));
                            }
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
        CollectionsKt.P(arrayList, GapComposerKt.a);
    }

    public final boolean d(int i) {
        Object C = C();
        if ((C instanceof Integer) && i == ((Number) C).intValue()) {
            return false;
        }
        h0(Integer.valueOf(i));
        return true;
    }

    public final void d0(int i, int i2) {
        if (i0(i) != i2) {
            if (i < 0) {
                MutableIntIntMap mutableIntIntMap = this.p;
                if (mutableIntIntMap == null) {
                    mutableIntIntMap = new MutableIntIntMap();
                    this.p = mutableIntIntMap;
                }
                mutableIntIntMap.f(i, i2);
                return;
            }
            int[] iArr = this.o;
            if (iArr == null) {
                int i3 = this.G.c;
                int[] iArr2 = new int[i3];
                Arrays.fill(iArr2, 0, i3, -1);
                this.o = iArr2;
                iArr = iArr2;
            }
            iArr[i] = i2;
        }
    }

    public final boolean e(long j) {
        Object C = C();
        if ((C instanceof Long) && j == ((Number) C).longValue()) {
            return false;
        }
        h0(Long.valueOf(j));
        return true;
    }

    public final void e0(int i, int i2) {
        int i0 = i0(i);
        if (i0 != i2) {
            int i3 = i2 - i0;
            ArrayList arrayList = this.i;
            int size = arrayList.size() - 1;
            while (i != -1) {
                int i02 = i0(i) + i3;
                d0(i, i02);
                int i4 = size;
                while (true) {
                    if (-1 < i4) {
                        GapPending gapPending = (GapPending) arrayList.get(i4);
                        if (gapPending != null && gapPending.a(i, i02)) {
                            size = i4 - 1;
                            break;
                        }
                        i4--;
                    } else {
                        break;
                    }
                }
                SlotReader slotReader = this.G;
                if (i < 0) {
                    i = slotReader.i;
                } else if (!slotReader.l(i)) {
                    i = this.G.q(i);
                } else {
                    return;
                }
            }
        }
    }

    public final boolean f(Object obj) {
        if (!Intrinsics.a(C(), obj)) {
            h0(obj);
            return true;
        }
        return false;
    }

    public final PersistentCompositionLocalHashMap f0(PersistentCompositionLocalMap persistentCompositionLocalMap, PersistentCompositionLocalHashMap persistentCompositionLocalHashMap) {
        PersistentCompositionLocalHashMap persistentCompositionLocalHashMap2 = (PersistentCompositionLocalHashMap) persistentCompositionLocalMap;
        persistentCompositionLocalHashMap2.getClass();
        PersistentCompositionLocalHashMap.Builder builder = new PersistentCompositionLocalHashMap.Builder(persistentCompositionLocalHashMap2);
        builder.putAll(persistentCompositionLocalHashMap);
        PersistentCompositionLocalHashMap b = builder.b();
        T(204, ComposerKt.d);
        C();
        h0(b);
        C();
        h0(persistentCompositionLocalHashMap);
        p(false);
        return b;
    }

    public final boolean g(boolean z) {
        Object C = C();
        if ((C instanceof Boolean) && z == ((Boolean) C).booleanValue()) {
            return false;
        }
        h0(Boolean.valueOf(z));
        return true;
    }

    public final void g0(Object obj) {
        if (obj instanceof RememberObserver) {
            GapRememberObserverHolder gapRememberObserverHolder = new GapRememberObserverHolder((RememberObserver) obj, this.m - 1);
            if (this.S) {
                Operations operations = this.M.b.a;
                operations.d(Operation.Remember.c);
                Operations.WriteScope.a(operations, 0, gapRememberObserverHolder);
            }
            this.d.add(obj);
            obj = gapRememberObserverHolder;
        }
        h0(obj);
    }

    public final boolean h(Object obj) {
        if (C() != obj) {
            h0(obj);
            return true;
        }
        return false;
    }

    public final void h0(Object obj) {
        if (this.S) {
            SlotWriter slotWriter = this.I;
            if (slotWriter.n > 0 && slotWriter.i != slotWriter.k) {
                MutableIntObjectMap mutableIntObjectMap = slotWriter.s;
                if (mutableIntObjectMap == null) {
                    mutableIntObjectMap = new MutableIntObjectMap();
                }
                slotWriter.s = mutableIntObjectMap;
                int i = slotWriter.v;
                Object b = mutableIntObjectMap.b(i);
                if (b == null) {
                    b = new MutableObjectList();
                    mutableIntObjectMap.i(i, b);
                }
                ((MutableObjectList) b).g(obj);
                return;
            }
            slotWriter.F(obj);
            return;
        }
        SlotReader slotReader = this.G;
        boolean z = slotReader.n;
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (z) {
            int b2 = (slotReader.l - SlotTableKt.b(slotReader.b, slotReader.i)) - 1;
            if (composerChangeListWriter.a.G.i - composerChangeListWriter.f < 0) {
                SlotReader slotReader2 = this.G;
                GapAnchor a = slotReader2.a(slotReader2.i);
                Operations operations = composerChangeListWriter.b.a;
                operations.d(Operation.UpdateAnchoredValue.c);
                Operations.WriteScope.b(operations, 0, obj, 1, a);
                operations.c[operations.d - operations.a[operations.b - 1].a] = b2;
                return;
            }
            composerChangeListWriter.d(true);
            Operations operations2 = composerChangeListWriter.b.a;
            operations2.d(Operation.UpdateValue.c);
            Operations.WriteScope.a(operations2, 0, obj);
            operations2.c[operations2.d - operations2.a[operations2.b - 1].a] = b2;
            return;
        }
        GapAnchor a2 = slotReader.a(slotReader.i);
        Operations operations3 = composerChangeListWriter.b.a;
        operations3.d(Operation.AppendValue.c);
        Operations.WriteScope.b(operations3, 0, a2, 1, obj);
    }

    public final void i() {
        this.j = null;
        this.k = 0;
        this.l = 0;
        this.T = 0L;
        this.r = false;
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.c = false;
        composerChangeListWriter.d.b = 0;
        composerChangeListWriter.f = 0;
        composerChangeListWriter.e = true;
        composerChangeListWriter.g = 0;
        composerChangeListWriter.h.clear();
        composerChangeListWriter.i = -1;
        composerChangeListWriter.j = -1;
        composerChangeListWriter.k = -1;
        composerChangeListWriter.l = 0;
        this.E.clear();
        this.o = null;
        this.p = null;
    }

    public final int i0(int i) {
        int i2;
        if (i < 0) {
            MutableIntIntMap mutableIntIntMap = this.p;
            if (mutableIntIntMap != null && mutableIntIntMap.a(i) >= 0) {
                int a = mutableIntIntMap.a(i);
                if (a >= 0) {
                    return mutableIntIntMap.c[a];
                }
                fe.o(q.g(i, "Cannot find value for key "));
            }
            return 0;
        }
        int[] iArr = this.o;
        if (iArr != null && (i2 = iArr[i]) >= 0) {
            return i2;
        }
        return this.G.o(i);
    }

    public final Object j(CompositionLocal compositionLocal) {
        return CompositionLocalMapKt.a(l(), compositionLocal);
    }

    public final void j0() {
        if (!this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.r = false;
        if (this.S) {
            ComposerKt.a("useNode() called while inserting");
        }
        SlotReader slotReader = this.G;
        Object n = slotReader.n(slotReader.i);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        composerChangeListWriter.c();
        composerChangeListWriter.h.add(n);
        if (this.y && (n instanceof ComposeNodeLifecycleCallback)) {
            composerChangeListWriter.b();
            composerChangeListWriter.b.a.d(Operation.UseCurrentNode.c);
        }
    }

    public final void k(Function0 function0) {
        if (!this.r) {
            ComposerKt.a("A call to createNode(), emitNode() or useNode() expected was not expected");
        }
        this.r = false;
        if (!this.S) {
            ComposerKt.a("createNode() can only be called when inserting");
        }
        IntStack intStack = this.n;
        int i = intStack.a[intStack.b - 1];
        SlotWriter slotWriter = this.I;
        GapAnchor b = slotWriter.b(slotWriter.v);
        this.l++;
        FixupList fixupList = this.O;
        Operations operations = fixupList.a;
        operations.d(Operation.InsertNodeFixup.c);
        Operations.WriteScope.a(operations, 0, function0);
        operations.c[operations.d - operations.a[operations.b - 1].a] = i;
        Operations.WriteScope.a(operations, 1, b);
        Operations operations2 = fixupList.b;
        operations2.d(Operation.PostInsertNodeFixup.c);
        operations2.c[operations2.d - operations2.a[operations2.b - 1].a] = i;
        Operations.WriteScope.a(operations2, 0, b);
    }

    public final PersistentCompositionLocalMap l() {
        PersistentCompositionLocalMap persistentCompositionLocalMap;
        PersistentCompositionLocalMap persistentCompositionLocalMap2 = this.K;
        if (persistentCompositionLocalMap2 != null) {
            return persistentCompositionLocalMap2;
        }
        int i = this.G.i;
        boolean z = this.S;
        OpaqueKey opaqueKey = ComposerKt.c;
        if (z && this.J) {
            int i2 = this.I.v;
            while (i2 > 0) {
                if (this.I.s(i2) == 202 && Intrinsics.a(this.I.t(i2), opaqueKey)) {
                    Object q = this.I.q(i2);
                    q.getClass();
                    PersistentCompositionLocalMap persistentCompositionLocalMap3 = (PersistentCompositionLocalMap) q;
                    this.K = persistentCompositionLocalMap3;
                    return persistentCompositionLocalMap3;
                }
                SlotWriter slotWriter = this.I;
                i2 = slotWriter.E(slotWriter.b, i2);
            }
        }
        if (this.G.c > 0) {
            while (i > 0) {
                if (this.G.i(i) == 202) {
                    SlotReader slotReader = this.G;
                    if (Intrinsics.a(slotReader.p(slotReader.b, i), opaqueKey)) {
                        MutableIntObjectMap mutableIntObjectMap = this.v;
                        if (mutableIntObjectMap == null || (persistentCompositionLocalMap = (PersistentCompositionLocalMap) mutableIntObjectMap.b(i)) == null) {
                            SlotReader slotReader2 = this.G;
                            Object b = slotReader2.b(slotReader2.b, i);
                            b.getClass();
                            persistentCompositionLocalMap = (PersistentCompositionLocalMap) b;
                        }
                        this.K = persistentCompositionLocalMap;
                        return persistentCompositionLocalMap;
                    }
                }
                i = this.G.q(i);
            }
        }
        PersistentCompositionLocalMap persistentCompositionLocalMap4 = this.u;
        this.K = persistentCompositionLocalMap4;
        return persistentCompositionLocalMap4;
    }

    public final ComposeStackTrace m() {
        Collection collection;
        Object obj;
        if (!this.b.k()) {
            return null;
        }
        ListBuilder o = CollectionsKt.o();
        SlotWriter slotWriter = this.I;
        o.addAll(ComposeStackTraceBuilderKt.a(slotWriter, null, slotWriter.t, null));
        SlotReader slotReader = this.G;
        boolean z = slotReader.f;
        int[] iArr = slotReader.b;
        if (!z && slotReader.c != 0) {
            ReaderTraceBuilder readerTraceBuilder = new ReaderTraceBuilder(slotReader);
            int i = slotReader.i;
            Object valueOf = Integer.valueOf(slotReader.l - SlotTableKt.b(iArr, i));
            while (i >= 0) {
                if (slotReader.k(i)) {
                    obj = slotReader.p(iArr, i);
                } else {
                    obj = Composer.Companion.a;
                }
                readerTraceBuilder.c(slotReader.i(i), obj, slotReader.a.g(i), valueOf);
                valueOf = slotReader.a(i);
                i = slotReader.q(i);
            }
            collection = readerTraceBuilder.a;
        } else {
            collection = EmptyList.j;
        }
        o.addAll(collection);
        o.addAll(D());
        return new ComposeStackTrace(CollectionsKt.l(o), this.C);
    }

    public final void n(MutableScatterMap mutableScatterMap, Function2 function2) {
        ArrayList arrayList = this.s;
        if (this.F) {
            ComposerKt.a("Reentrant composition is not supported");
        }
        this.g.a();
        Trace.beginSection("Compose:recompose");
        try {
            this.B = Long.hashCode(SnapshotKt.i().g());
            this.v = null;
            c0(mutableScatterMap);
            this.k = 0;
            this.F = true;
            try {
                a0();
                Object C = C();
                if (C != function2 && function2 != null) {
                    h0(function2);
                }
                GapComposer$derivedStateObserver$1 gapComposer$derivedStateObserver$1 = this.D;
                MutableVector c = SnapshotStateKt.c();
                try {
                    c.b(gapComposer$derivedStateObserver$1);
                    OpaqueKey opaqueKey = ComposerKt.a;
                    if (function2 != null) {
                        T(200, opaqueKey);
                        Expect_jvmKt.a(this, function2);
                        p(false);
                    } else if (this.w && C != null && !C.equals(Composer.Companion.a)) {
                        T(200, opaqueKey);
                        TypeIntrinsics.c(2, C);
                        Expect_jvmKt.a(this, (Function2) C);
                        p(false);
                    } else {
                        O();
                    }
                    c.k(c.l - 1);
                    s();
                    this.F = false;
                    arrayList.clear();
                    if (!this.I.w) {
                        ComposerKt.a("Check failed");
                    }
                    u();
                } catch (Throwable th) {
                    c.k(c.l - 1);
                    throw th;
                }
            } finally {
            }
        } finally {
            Trace.endSection();
        }
    }

    public final void o(int i, int i2) {
        if (i > 0 && i != i2) {
            o(this.G.q(i), i2);
            if (this.G.l(i)) {
                Object n = this.G.n(i);
                ComposerChangeListWriter composerChangeListWriter = this.M;
                composerChangeListWriter.c();
                composerChangeListWriter.h.add(n);
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:147:0x03a5  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x042b  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x05ae  */
    /* JADX WARN: Type inference failed for: r3v19 */
    /* JADX WARN: Type inference failed for: r3v29, types: [int, boolean] */
    /* JADX WARN: Type inference failed for: r3v32 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(boolean z) {
        int hashCode;
        long rotateRight;
        IntStack intStack;
        ArrayList arrayList;
        int i;
        boolean z2;
        int i2;
        SlotReader slotReader;
        GapPending gapPending;
        ?? r3;
        int i3;
        int i4;
        int i5;
        int i6;
        int i7;
        IntStack intStack2;
        int i8;
        int i9;
        int i10;
        ArrayList arrayList2;
        MutableScatterSet mutableScatterSet;
        int i11;
        int i12;
        ArrayList arrayList3;
        ArrayList arrayList4;
        HashSet hashSet;
        int i13;
        GapPending gapPending2;
        int i14;
        int i15;
        int i16;
        int i17;
        Object[] objArr;
        long[] jArr;
        int i18;
        Object[] objArr2;
        long[] jArr2;
        int i19;
        Object[] objArr3;
        long[] jArr3;
        int i20;
        Object[] objArr4;
        long[] jArr4;
        int hashCode2;
        long rotateRight2;
        IntStack intStack3 = this.n;
        int i21 = intStack3.a[intStack3.b - 2] - 1;
        boolean z3 = this.S;
        Composer$Companion$Empty$1 composer$Companion$Empty$1 = Composer.Companion.a;
        if (z3) {
            SlotWriter slotWriter = this.I;
            int i22 = slotWriter.v;
            int s = slotWriter.s(i22);
            Object t = this.I.t(i22);
            Object q = this.I.q(i22);
            if (t == null) {
                if (q != null && s == 207 && !q.equals(composer$Companion$Empty$1)) {
                    this.T = Long.rotateRight(Long.rotateRight(this.T ^ i21, 3) ^ q.hashCode(), 3);
                } else {
                    rotateRight2 = Long.rotateRight(this.T ^ i21, 3) ^ s;
                }
            } else {
                if (t instanceof Enum) {
                    hashCode2 = ((Enum) t).ordinal();
                } else {
                    hashCode2 = t.hashCode();
                }
                rotateRight2 = Long.rotateRight(this.T, 3) ^ hashCode2;
            }
            this.T = Long.rotateRight(rotateRight2, 3);
        } else {
            SlotReader slotReader2 = this.G;
            int i23 = slotReader2.i;
            int i24 = slotReader2.i(i23);
            SlotReader slotReader3 = this.G;
            Object p = slotReader3.p(slotReader3.b, i23);
            SlotReader slotReader4 = this.G;
            Object b = slotReader4.b(slotReader4.b, i23);
            if (p == null) {
                if (b != null && i24 == 207 && !b.equals(composer$Companion$Empty$1)) {
                    this.T = Long.rotateRight(Long.rotateRight(this.T ^ i21, 3) ^ b.hashCode(), 3);
                } else {
                    rotateRight = Long.rotateRight(this.T ^ i21, 3) ^ i24;
                }
            } else {
                if (p instanceof Enum) {
                    hashCode = ((Enum) p).ordinal();
                } else {
                    hashCode = p.hashCode();
                }
                rotateRight = Long.rotateRight(this.T, 3) ^ hashCode;
            }
            this.T = Long.rotateRight(rotateRight, 3);
        }
        int i25 = this.l;
        GapPending gapPending3 = this.j;
        ArrayList arrayList5 = this.s;
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (gapPending3 != null) {
            MutableIntObjectMap mutableIntObjectMap = gapPending3.e;
            int i26 = gapPending3.b;
            ArrayList arrayList6 = gapPending3.a;
            if (arrayList6.size() > 0) {
                ArrayList arrayList7 = gapPending3.d;
                HashSet hashSet2 = new HashSet(arrayList7.size());
                int size = arrayList7.size();
                for (int i27 = 0; i27 < size; i27++) {
                    hashSet2.add(arrayList7.get(i27));
                }
                i = -1;
                MutableScatterSet mutableScatterSet2 = ScatterSetKt.a;
                MutableScatterSet mutableScatterSet3 = new MutableScatterSet();
                int size2 = arrayList7.size();
                int size3 = arrayList6.size();
                int i28 = 0;
                int i29 = 0;
                int i30 = 0;
                while (i28 < size3) {
                    KeyInfo keyInfo = (KeyInfo) arrayList6.get(i28);
                    if (!hashSet2.contains(keyInfo)) {
                        intStack2 = intStack3;
                        GroupInfo groupInfo = (GroupInfo) mutableIntObjectMap.b(keyInfo.c);
                        if (groupInfo != null) {
                            i8 = groupInfo.b;
                        } else {
                            i8 = -1;
                        }
                        int i31 = keyInfo.c;
                        i9 = i28;
                        composerChangeListWriter.e(i8 + i26, keyInfo.d);
                        gapPending3.a(i31, 0);
                        composerChangeListWriter.f = (i31 - composerChangeListWriter.a.G.g) + composerChangeListWriter.f;
                        this.G.r(i31);
                        H();
                        this.G.s();
                        GapComposerKt.a(i31, this.G.b[(i31 * 5) + 3] + i31, arrayList5);
                    } else {
                        intStack2 = intStack3;
                        i9 = i28;
                        if (!mutableScatterSet3.a(keyInfo)) {
                            int i32 = i29;
                            if (i32 < size2) {
                                KeyInfo keyInfo2 = (KeyInfo) arrayList7.get(i32);
                                if (keyInfo2 != keyInfo) {
                                    GroupInfo groupInfo2 = (GroupInfo) mutableIntObjectMap.b(keyInfo2.c);
                                    if (groupInfo2 != null) {
                                        i16 = groupInfo2.b;
                                    } else {
                                        i16 = -1;
                                    }
                                    mutableScatterSet3.d(keyInfo2);
                                    i10 = i32;
                                    i13 = i30;
                                    gapPending2 = gapPending3;
                                    if (i16 != i13) {
                                        GroupInfo groupInfo3 = (GroupInfo) mutableIntObjectMap.b(keyInfo2.c);
                                        if (groupInfo3 != null) {
                                            i17 = groupInfo3.c;
                                        } else {
                                            i17 = keyInfo2.d;
                                        }
                                        mutableScatterSet = mutableScatterSet3;
                                        int i33 = i16 + i26;
                                        i11 = size2;
                                        int i34 = i13 + i26;
                                        if (i17 > 0) {
                                            i12 = i26;
                                            int i35 = composerChangeListWriter.l;
                                            if (i35 > 0) {
                                                arrayList3 = arrayList6;
                                                if (composerChangeListWriter.j == i33 - i35 && composerChangeListWriter.k == i34 - i35) {
                                                    composerChangeListWriter.l = i35 + i17;
                                                }
                                            } else {
                                                arrayList3 = arrayList6;
                                            }
                                            composerChangeListWriter.c();
                                            composerChangeListWriter.j = i33;
                                            composerChangeListWriter.k = i34;
                                            composerChangeListWriter.l = i17;
                                        } else {
                                            i12 = i26;
                                            arrayList3 = arrayList6;
                                            composerChangeListWriter.getClass();
                                        }
                                        if (i16 > i13) {
                                            Object[] objArr5 = mutableIntObjectMap.c;
                                            long[] jArr5 = mutableIntObjectMap.a;
                                            int length = jArr5.length - 2;
                                            if (length >= 0) {
                                                arrayList4 = arrayList7;
                                                hashSet = hashSet2;
                                                int i36 = 0;
                                                while (true) {
                                                    long j = jArr5[i36];
                                                    int i37 = i17;
                                                    arrayList2 = arrayList5;
                                                    if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                                        int i38 = 8 - ((~(i36 - length)) >>> 31);
                                                        int i39 = 0;
                                                        while (i39 < i38) {
                                                            if ((j & 255) < 128) {
                                                                i20 = i39;
                                                                GroupInfo groupInfo4 = (GroupInfo) objArr5[(i36 << 3) + i39];
                                                                objArr4 = objArr5;
                                                                int i40 = groupInfo4.b;
                                                                jArr4 = jArr5;
                                                                if (i16 <= i40 && i40 < i16 + i37) {
                                                                    groupInfo4.b = (i40 - i16) + i13;
                                                                } else if (i13 <= i40 && i40 < i16) {
                                                                    groupInfo4.b = i40 + i37;
                                                                }
                                                            } else {
                                                                i20 = i39;
                                                                objArr4 = objArr5;
                                                                jArr4 = jArr5;
                                                            }
                                                            j >>= 8;
                                                            i39 = i20 + 1;
                                                            objArr5 = objArr4;
                                                            jArr5 = jArr4;
                                                        }
                                                        objArr3 = objArr5;
                                                        jArr3 = jArr5;
                                                        if (i38 != 8) {
                                                            break;
                                                        }
                                                    } else {
                                                        objArr3 = objArr5;
                                                        jArr3 = jArr5;
                                                    }
                                                    if (i36 == length) {
                                                        break;
                                                    }
                                                    i36++;
                                                    arrayList5 = arrayList2;
                                                    i17 = i37;
                                                    objArr5 = objArr3;
                                                    jArr5 = jArr3;
                                                }
                                            } else {
                                                arrayList2 = arrayList5;
                                            }
                                        } else {
                                            int i41 = i17;
                                            arrayList2 = arrayList5;
                                            arrayList4 = arrayList7;
                                            hashSet = hashSet2;
                                            if (i13 > i16) {
                                                Object[] objArr6 = mutableIntObjectMap.c;
                                                long[] jArr6 = mutableIntObjectMap.a;
                                                int length2 = jArr6.length - 2;
                                                if (length2 >= 0) {
                                                    int i42 = 0;
                                                    while (true) {
                                                        long j2 = jArr6[i42];
                                                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                            int i43 = 8 - ((~(i42 - length2)) >>> 31);
                                                            int i44 = 0;
                                                            while (i44 < i43) {
                                                                if ((j2 & 255) < 128) {
                                                                    objArr2 = objArr6;
                                                                    GroupInfo groupInfo5 = (GroupInfo) objArr6[(i42 << 3) + i44];
                                                                    jArr2 = jArr6;
                                                                    int i45 = groupInfo5.b;
                                                                    i19 = i16;
                                                                    if (i16 <= i45 && i45 < i19 + i41) {
                                                                        groupInfo5.b = (i45 - i19) + i13;
                                                                    } else if (i19 + 1 <= i45 && i45 < i13) {
                                                                        groupInfo5.b = i45 - i41;
                                                                    }
                                                                } else {
                                                                    objArr2 = objArr6;
                                                                    jArr2 = jArr6;
                                                                    i19 = i16;
                                                                }
                                                                j2 >>= 8;
                                                                i44++;
                                                                jArr6 = jArr2;
                                                                objArr6 = objArr2;
                                                                i16 = i19;
                                                            }
                                                            objArr = objArr6;
                                                            jArr = jArr6;
                                                            i18 = i16;
                                                            if (i43 != 8) {
                                                                break;
                                                            }
                                                        } else {
                                                            objArr = objArr6;
                                                            jArr = jArr6;
                                                            i18 = i16;
                                                        }
                                                        if (i42 == length2) {
                                                            break;
                                                        }
                                                        i42++;
                                                        jArr6 = jArr;
                                                        objArr6 = objArr;
                                                        i16 = i18;
                                                    }
                                                }
                                            }
                                        }
                                        i14 = i9;
                                    } else {
                                        arrayList2 = arrayList5;
                                        mutableScatterSet = mutableScatterSet3;
                                        i11 = size2;
                                        i12 = i26;
                                        arrayList3 = arrayList6;
                                    }
                                    arrayList4 = arrayList7;
                                    hashSet = hashSet2;
                                    i14 = i9;
                                } else {
                                    i10 = i32;
                                    arrayList2 = arrayList5;
                                    mutableScatterSet = mutableScatterSet3;
                                    i11 = size2;
                                    i12 = i26;
                                    arrayList3 = arrayList6;
                                    arrayList4 = arrayList7;
                                    hashSet = hashSet2;
                                    i13 = i30;
                                    gapPending2 = gapPending3;
                                    i14 = i9 + 1;
                                }
                                i29 = i10 + 1;
                                GroupInfo groupInfo6 = (GroupInfo) mutableIntObjectMap.b(keyInfo2.c);
                                if (groupInfo6 != null) {
                                    i15 = groupInfo6.c;
                                } else {
                                    i15 = keyInfo2.d;
                                }
                                int i46 = i13 + i15;
                                i28 = i14;
                                gapPending3 = gapPending2;
                                mutableScatterSet3 = mutableScatterSet;
                                size2 = i11;
                                i26 = i12;
                                arrayList6 = arrayList3;
                                arrayList7 = arrayList4;
                                hashSet2 = hashSet;
                                arrayList5 = arrayList2;
                                i30 = i46;
                                intStack3 = intStack2;
                            } else {
                                i29 = i32;
                                intStack3 = intStack2;
                                i28 = i9;
                            }
                        }
                    }
                    i28 = i9 + 1;
                    intStack3 = intStack2;
                }
                intStack = intStack3;
                arrayList = arrayList5;
                composerChangeListWriter.c();
                if (arrayList6.size() > 0) {
                    SlotReader slotReader5 = this.G;
                    composerChangeListWriter.f = (slotReader5.h - composerChangeListWriter.a.G.g) + composerChangeListWriter.f;
                    slotReader5.t();
                }
                z2 = this.S;
                if (!z2) {
                    SlotReader slotReader6 = this.G;
                    int i47 = slotReader6.m - slotReader6.l;
                    if (i47 > 0) {
                        if (i47 > 0) {
                            composerChangeListWriter.d(false);
                            IntStack intStack4 = composerChangeListWriter.d;
                            SlotReader slotReader7 = composerChangeListWriter.a.G;
                            if (slotReader7.c > 0 && intStack4.a(-2) != (i7 = slotReader7.i)) {
                                if (!composerChangeListWriter.c && composerChangeListWriter.e) {
                                    composerChangeListWriter.d(false);
                                    composerChangeListWriter.b.a.d(Operation.EnsureRootGroupStarted.c);
                                    composerChangeListWriter.c = true;
                                }
                                if (i7 > 0) {
                                    GapAnchor a = slotReader7.a(i7);
                                    intStack4.c(i7);
                                    composerChangeListWriter.d(false);
                                    Operations operations = composerChangeListWriter.b.a;
                                    operations.d(Operation.EnsureGroupStarted.c);
                                    Operations.WriteScope.a(operations, 0, a);
                                    composerChangeListWriter.c = true;
                                }
                            }
                            Operations operations2 = composerChangeListWriter.b.a;
                            operations2.d(Operation.TrimParentValues.c);
                            operations2.c[operations2.d - operations2.a[operations2.b - 1].a] = i47;
                        } else {
                            composerChangeListWriter.getClass();
                        }
                    }
                }
                i2 = this.k;
                while (true) {
                    slotReader = this.G;
                    if (slotReader.k > 0 && (i6 = slotReader.g) != slotReader.h) {
                        H();
                        composerChangeListWriter.e(i2, this.G.s());
                        GapComposerKt.a(i6, this.G.g, arrayList);
                    }
                }
                if (!z2) {
                    if (z) {
                        FixupList fixupList = this.O;
                        Operations operations3 = fixupList.b;
                        if (operations3.b == 0) {
                            ComposerKt.a("Cannot end node insertion, there are no pending operations that can be realized.");
                        }
                        Operations operations4 = fixupList.a;
                        Operation[] operationArr = operations3.a;
                        int i48 = operations3.b - 1;
                        operations3.b = i48;
                        Operation operation = operationArr[i48];
                        operationArr[i48] = null;
                        operations4.d(operation);
                        Object[] objArr7 = operations3.e;
                        Object[] objArr8 = operations4.e;
                        int i49 = operations4.f;
                        int i50 = operation.b;
                        int i51 = operations3.f;
                        int i52 = i51 - i50;
                        System.arraycopy(objArr7, i52, objArr8, i49 - i50, i51 - i52);
                        Object[] objArr9 = operations3.e;
                        int i53 = operations3.f;
                        Arrays.fill(objArr9, i53 - i50, i53, (Object) null);
                        int[] iArr = operations3.c;
                        int[] iArr2 = operations4.c;
                        int i54 = operations4.d;
                        int i55 = operation.a;
                        int i56 = operations3.d;
                        ArraysKt.f(i54 - i55, i56 - i55, i56, iArr, iArr2);
                        operations3.f -= i50;
                        operations3.d -= i55;
                        i25 = 1;
                    }
                    if (this.G.k <= 0) {
                        PreconditionsKt.a("Unbalanced begin/end empty");
                    }
                    r4.k--;
                    SlotWriter slotWriter2 = this.I;
                    int i57 = slotWriter2.v;
                    slotWriter2.j();
                    if (this.G.k <= 0) {
                        int i58 = (-2) - i57;
                        this.I.k();
                        this.I.e(true);
                        GapAnchor gapAnchor = this.N;
                        boolean c = this.O.a.c();
                        SlotTable slotTable = this.H;
                        if (c) {
                            composerChangeListWriter.b();
                            composerChangeListWriter.d(false);
                            IntStack intStack5 = composerChangeListWriter.d;
                            SlotReader slotReader8 = composerChangeListWriter.a.G;
                            if (slotReader8.c > 0 && intStack5.a(-2) != (i5 = slotReader8.i)) {
                                if (!composerChangeListWriter.c && composerChangeListWriter.e) {
                                    composerChangeListWriter.d(false);
                                    composerChangeListWriter.b.a.d(Operation.EnsureRootGroupStarted.c);
                                    composerChangeListWriter.c = true;
                                }
                                if (i5 > 0) {
                                    GapAnchor a2 = slotReader8.a(i5);
                                    intStack5.c(i5);
                                    composerChangeListWriter.d(false);
                                    Operations operations5 = composerChangeListWriter.b.a;
                                    operations5.d(Operation.EnsureGroupStarted.c);
                                    Operations.WriteScope.a(operations5, 0, a2);
                                    i4 = 1;
                                    composerChangeListWriter.c = true;
                                    composerChangeListWriter.c();
                                    Operations operations6 = composerChangeListWriter.b.a;
                                    operations6.d(Operation.InsertSlots.c);
                                    Operations.WriteScope.b(operations6, 0, gapAnchor, i4, slotTable);
                                    r3 = 0;
                                }
                            }
                            i4 = 1;
                            composerChangeListWriter.c();
                            Operations operations62 = composerChangeListWriter.b.a;
                            operations62.d(Operation.InsertSlots.c);
                            Operations.WriteScope.b(operations62, 0, gapAnchor, i4, slotTable);
                            r3 = 0;
                        } else {
                            FixupList fixupList2 = this.O;
                            composerChangeListWriter.b();
                            composerChangeListWriter.d(false);
                            IntStack intStack6 = composerChangeListWriter.d;
                            SlotReader slotReader9 = composerChangeListWriter.a.G;
                            if (slotReader9.c > 0 && intStack6.a(-2) != (i3 = slotReader9.i)) {
                                if (!composerChangeListWriter.c && composerChangeListWriter.e) {
                                    composerChangeListWriter.d(false);
                                    composerChangeListWriter.b.a.d(Operation.EnsureRootGroupStarted.c);
                                    composerChangeListWriter.c = true;
                                }
                                if (i3 > 0) {
                                    GapAnchor a3 = slotReader9.a(i3);
                                    intStack6.c(i3);
                                    composerChangeListWriter.d(false);
                                    Operations operations7 = composerChangeListWriter.b.a;
                                    operations7.d(Operation.EnsureGroupStarted.c);
                                    Operations.WriteScope.a(operations7, 0, a3);
                                    composerChangeListWriter.c = true;
                                }
                            }
                            composerChangeListWriter.c();
                            Operations operations8 = composerChangeListWriter.b.a;
                            operations8.d(Operation.InsertSlotsWithFixups.c);
                            int i59 = operations8.f - operations8.a[operations8.b - 1].b;
                            Object[] objArr10 = operations8.e;
                            objArr10[i59] = gapAnchor;
                            objArr10[i59 + 1] = slotTable;
                            objArr10[i59 + 2] = fixupList2;
                            this.O = new FixupList();
                            r3 = 0;
                        }
                        this.S = r3;
                        if (this.c.k != 0) {
                            d0(i58, r3);
                            e0(i58, i25);
                        }
                    }
                } else {
                    if (z) {
                        composerChangeListWriter.a();
                    }
                    int i60 = composerChangeListWriter.a.G.i;
                    IntStack intStack7 = composerChangeListWriter.d;
                    int i61 = i;
                    if (intStack7.a(i61) > i60) {
                        ComposerKt.a("Missed recording an endGroup");
                    }
                    if (intStack7.a(i61) == i60) {
                        composerChangeListWriter.d(false);
                        intStack7.b();
                        composerChangeListWriter.b.a.d(Operation.EndCurrentGroup.c);
                    }
                    int i62 = this.G.i;
                    if (i25 != i0(i62)) {
                        e0(i62, i25);
                    }
                    if (z) {
                        i25 = 1;
                    }
                    this.G.e();
                    composerChangeListWriter.c();
                }
                gapPending = (GapPending) this.i.remove(r3.size() - 1);
                if (gapPending != null && !z2) {
                    gapPending.c++;
                }
                this.j = gapPending;
                this.k = intStack.b() + i25;
                this.m = intStack.b();
                this.l = intStack.b() + i25;
            }
        }
        intStack = intStack3;
        arrayList = arrayList5;
        i = -1;
        z2 = this.S;
        if (!z2) {
        }
        i2 = this.k;
        while (true) {
            slotReader = this.G;
            if (slotReader.k > 0) {
                break;
            }
            H();
            composerChangeListWriter.e(i2, this.G.s());
            GapComposerKt.a(i6, this.G.g, arrayList);
        }
        if (!z2) {
        }
        gapPending = (GapPending) this.i.remove(r3.size() - 1);
        if (gapPending != null) {
            gapPending.c++;
        }
        this.j = gapPending;
        this.k = intStack.b() + i25;
        this.m = intStack.b();
        this.l = intStack.b() + i25;
    }

    public final void q() {
        p(false);
        RecomposeScopeImpl w = w();
        if (w != null) {
            int i = w.b;
            if ((i & 1) != 0) {
                w.b = i | 2;
            }
        }
    }

    public final RecomposeScopeImpl r() {
        RecomposeScopeImpl recomposeScopeImpl;
        RecomposeScopeImpl recomposeScopeImpl2;
        GapAnchor a;
        de deVar;
        ArrayList arrayList = this.E;
        if (!arrayList.isEmpty()) {
            recomposeScopeImpl = (RecomposeScopeImpl) arrayList.remove(arrayList.size() - 1);
        } else {
            recomposeScopeImpl = null;
        }
        int i = 0;
        if (recomposeScopeImpl != null) {
            recomposeScopeImpl.b &= -9;
            this.g.a();
            int i2 = this.B;
            MutableObjectIntMap mutableObjectIntMap = recomposeScopeImpl.f;
            if (mutableObjectIntMap != null && (recomposeScopeImpl.b & 16) == 0) {
                Object[] objArr = mutableObjectIntMap.b;
                int[] iArr = mutableObjectIntMap.c;
                long[] jArr = mutableObjectIntMap.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    loop0: while (true) {
                        long j = jArr[i3];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i4 = 8 - ((~(i3 - length)) >>> 31);
                            for (int i5 = 0; i5 < i4; i5++) {
                                if ((j & 255) < 128) {
                                    int i6 = (i3 << 3) + i5;
                                    Object obj = objArr[i6];
                                    if (iArr[i6] != i2) {
                                        deVar = new de(i2, i, recomposeScopeImpl, mutableObjectIntMap);
                                        break loop0;
                                    }
                                }
                                j >>= 8;
                            }
                            if (i4 != 8) {
                                break;
                            }
                        }
                        if (i3 == length) {
                            break;
                        }
                        i3++;
                    }
                }
            }
            deVar = null;
            ComposerChangeListWriter composerChangeListWriter = this.M;
            if (deVar != null) {
                Operations operations = composerChangeListWriter.b.a;
                operations.d(Operation.EndCompositionScope.c);
                Operations.WriteScope.b(operations, 0, deVar, 1, this.h);
            }
            int i7 = recomposeScopeImpl.b;
            if ((i7 & 512) != 0) {
                recomposeScopeImpl.b = i7 & (-513);
                Operations operations2 = composerChangeListWriter.b.a;
                operations2.d(Operation.EndResumingScope.c);
                Operations.WriteScope.a(operations2, 0, recomposeScopeImpl);
                int i8 = recomposeScopeImpl.b;
                recomposeScopeImpl.b = i8 & (-129);
                if ((i8 & 1024) != 0) {
                    recomposeScopeImpl.b = i8 & (-1153);
                    if (this.z == this.G.i) {
                        this.y = false;
                        this.z = -1;
                    }
                }
            }
        }
        if (recomposeScopeImpl != null) {
            int i9 = recomposeScopeImpl.b;
            if ((i9 & 16) == 0 && ((i9 & 1) != 0 || this.q)) {
                if (recomposeScopeImpl.c == null) {
                    if (this.S) {
                        SlotWriter slotWriter = this.I;
                        a = slotWriter.b(slotWriter.v);
                    } else {
                        SlotReader slotReader = this.G;
                        a = slotReader.a(slotReader.i);
                    }
                    recomposeScopeImpl.c = a;
                }
                recomposeScopeImpl.b &= -5;
                recomposeScopeImpl2 = recomposeScopeImpl;
                p(false);
                return recomposeScopeImpl2;
            }
        }
        recomposeScopeImpl2 = null;
        p(false);
        return recomposeScopeImpl2;
    }

    public final void s() {
        boolean z = false;
        p(false);
        this.b.c();
        p(false);
        ComposerChangeListWriter composerChangeListWriter = this.M;
        if (composerChangeListWriter.c) {
            composerChangeListWriter.d(false);
            composerChangeListWriter.d(false);
            composerChangeListWriter.b.a.d(Operation.EndCurrentGroup.c);
            composerChangeListWriter.c = false;
        }
        composerChangeListWriter.b();
        if (composerChangeListWriter.d.b != 0) {
            ComposerKt.a("Missed recording an endGroup()");
        }
        if (!this.i.isEmpty()) {
            ComposerKt.a("Start/end imbalance");
        }
        i();
        this.G.c();
        if (this.x.b() != 0) {
            z = true;
        }
        this.w = z;
    }

    public final void t(boolean z, GapPending gapPending) {
        this.i.add(this.j);
        this.j = gapPending;
        int i = this.l;
        IntStack intStack = this.n;
        intStack.c(i);
        intStack.c(this.m);
        intStack.c(this.k);
        if (z) {
            this.k = 0;
        }
        this.l = 0;
        this.m = 0;
    }

    public final void u() {
        SlotTable slotTable = new SlotTable();
        if (this.C) {
            slotTable.c();
        }
        if (this.b.d()) {
            slotTable.t = new MutableIntObjectMap();
        }
        this.H = slotTable;
        SlotWriter e = slotTable.e();
        e.e(true);
        this.I = e;
    }

    public final CompositionData v() {
        GapCompositionDataImpl gapCompositionDataImpl = this.U;
        if (gapCompositionDataImpl == null) {
            GapCompositionDataImpl gapCompositionDataImpl2 = new GapCompositionDataImpl(this.h);
            this.U = gapCompositionDataImpl2;
            return gapCompositionDataImpl2;
        }
        return gapCompositionDataImpl;
    }

    public final RecomposeScopeImpl w() {
        if (this.A == 0) {
            ArrayList arrayList = this.E;
            if (!arrayList.isEmpty()) {
                return (RecomposeScopeImpl) arrayList.get(arrayList.size() - 1);
            }
            return null;
        }
        return null;
    }

    public final boolean x() {
        if (z() && !this.w) {
            RecomposeScopeImpl w = w();
            if (w == null || (w.b & 4) == 0) {
                return false;
            }
            return true;
        }
        return true;
    }

    public final CompositionErrorContextImpl y() {
        if (this.b.k()) {
            return this.Q;
        }
        return null;
    }

    public final boolean z() {
        RecomposeScopeImpl w;
        if (!this.S && !this.y && !this.w && (w = w()) != null && (w.b & 8) == 0) {
            return true;
        }
        return false;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class CompositionContextHolder implements RememberObserver {
        public final CompositionContextImpl j;

        public CompositionContextHolder(CompositionContextImpl compositionContextImpl) {
            this.j = compositionContextImpl;
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void a() {
            this.j.w();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void b() {
            this.j.w();
        }

        @Override // androidx.compose.runtime.RememberObserver
        public final void c() {
        }
    }
}
