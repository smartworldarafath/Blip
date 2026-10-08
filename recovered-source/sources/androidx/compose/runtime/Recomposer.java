package androidx.compose.runtime;

import android.util.Log;
import androidx.collection.MutableScatterMap;
import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.PersistentHashMap;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.immutableMap.TrieNode;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.Links;
import androidx.compose.runtime.external.kotlinx.collections.immutable.implementations.persistentOrderedSet.PersistentOrderedSet;
import androidx.compose.runtime.external.kotlinx.collections.immutable.internal.EndOfChain;
import androidx.compose.runtime.internal.AwaiterQueue;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import androidx.compose.runtime.snapshots.SnapshotKt;
import defpackage.ec;
import defpackage.ee;
import defpackage.ma;
import defpackage.p0;
import defpackage.r1;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.concurrent.CancellationException;
import java.util.concurrent.atomic.AtomicReference;
import kotlin.Pair;
import kotlin.Unit;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.enums.EnumEntriesKt;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CancellableContinuation;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.JobImpl;
import kotlinx.coroutines.flow.CancellableFlow;
import kotlinx.coroutines.flow.FlowKt;
import kotlinx.coroutines.flow.MutableStateFlow;
import kotlinx.coroutines.flow.StateFlowKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Recomposer extends CompositionContext {
    public final BroadcastFrameClock a;
    public final NextFrameEndCallbackQueue b;
    public final Object c;
    public Job d;
    public Throwable e;
    public final ArrayList f;
    public List g;
    public MutableScatterSet h;
    public final MutableVector i;
    public final ArrayList j;
    public final ArrayList k;
    public final MutableScatterMap l;
    public final NestedContentMap m;
    public final MutableScatterMap n;
    public final MutableScatterMap o;
    public ArrayList p;
    public MutableScatterSet q;
    public CancellableContinuationImpl r;
    public final MutableStateFlow s;
    public boolean t;
    public final MutableStateFlow u;
    public final SnapshotThreadLocal v;
    public final JobImpl w;
    public final CoroutineContext x;
    public final RecomposerInfoImpl y;
    public static final MutableStateFlow z = StateFlowKt.a(PersistentOrderedSet.m);
    public static final AtomicReference A = new AtomicReference(Boolean.FALSE);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        /* JADX WARN: Multi-variable type inference failed */
        public static final void a(RecomposerInfoImpl recomposerInfoImpl) {
            MutableStateFlow mutableStateFlow;
            PersistentSet persistentSet;
            PersistentOrderedSet persistentOrderedSet;
            int i;
            Object obj;
            MutableStateFlow mutableStateFlow2 = Recomposer.z;
            do {
                mutableStateFlow = Recomposer.z;
                persistentSet = (PersistentSet) mutableStateFlow.getValue();
                persistentOrderedSet = (PersistentOrderedSet) persistentSet;
                PersistentHashMap persistentHashMap = persistentOrderedSet.l;
                Links links = (Links) persistentHashMap.get(recomposerInfoImpl);
                if (links != null) {
                    Object obj2 = links.a;
                    Object obj3 = links.b;
                    TrieNode trieNode = persistentHashMap.j;
                    if (recomposerInfoImpl != null) {
                        i = recomposerInfoImpl.hashCode();
                    } else {
                        i = 0;
                    }
                    TrieNode v = trieNode.v(i, 0, recomposerInfoImpl);
                    if (trieNode != v) {
                        if (v == null) {
                            persistentHashMap = PersistentHashMap.l;
                        } else {
                            persistentHashMap = new PersistentHashMap(v, persistentHashMap.k - 1);
                        }
                    }
                    EndOfChain endOfChain = EndOfChain.a;
                    if (obj2 != endOfChain) {
                        V v2 = persistentHashMap.get(obj2);
                        v2.getClass();
                        persistentHashMap = persistentHashMap.a(obj2, new Links(((Links) v2).a, obj3));
                    }
                    if (obj3 != endOfChain) {
                        V v3 = persistentHashMap.get(obj3);
                        v3.getClass();
                        persistentHashMap = persistentHashMap.a(obj3, new Links(obj2, ((Links) v3).b));
                    }
                    if (obj2 != endOfChain) {
                        obj = persistentOrderedSet.j;
                    } else {
                        obj = obj3;
                    }
                    if (obj3 != endOfChain) {
                        obj2 = persistentOrderedSet.k;
                    }
                    persistentOrderedSet = new PersistentOrderedSet(obj, obj2, persistentHashMap);
                }
                if (persistentSet == persistentOrderedSet) {
                    return;
                }
            } while (!mutableStateFlow.e(persistentSet, persistentOrderedSet));
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class RecomposerErrorState {
        public final Throwable a;

        public RecomposerErrorState(Throwable th) {
            this.a = th;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class RecomposerInfoImpl {
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class State {
        public static final State j;
        public static final State k;
        public static final State l;
        public static final State m;
        public static final State n;
        public static final State o;
        public static final /* synthetic */ State[] p;

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, androidx.compose.runtime.Recomposer$State] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, androidx.compose.runtime.Recomposer$State] */
        /* JADX WARN: Type inference failed for: r2v2, types: [java.lang.Enum, androidx.compose.runtime.Recomposer$State] */
        /* JADX WARN: Type inference failed for: r3v2, types: [java.lang.Enum, androidx.compose.runtime.Recomposer$State] */
        /* JADX WARN: Type inference failed for: r4v2, types: [java.lang.Enum, androidx.compose.runtime.Recomposer$State] */
        /* JADX WARN: Type inference failed for: r5v2, types: [java.lang.Enum, androidx.compose.runtime.Recomposer$State] */
        static {
            ?? r0 = new Enum("ShutDown", 0);
            j = r0;
            ?? r1 = new Enum("ShuttingDown", 1);
            k = r1;
            ?? r2 = new Enum("Inactive", 2);
            l = r2;
            ?? r3 = new Enum("InactivePendingWork", 3);
            m = r3;
            ?? r4 = new Enum("Idle", 4);
            n = r4;
            ?? r5 = new Enum("PendingWork", 5);
            o = r5;
            State[] stateArr = {r0, r1, r2, r3, r4, r5};
            p = stateArr;
            EnumEntriesKt.a(stateArr);
        }

        public static State valueOf(String str) {
            return (State) Enum.valueOf(State.class, str);
        }

        public static State[] values() {
            return (State[]) p.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [androidx.compose.runtime.Recomposer$RecomposerInfoImpl, java.lang.Object] */
    public Recomposer(CoroutineContext coroutineContext) {
        BroadcastFrameClock broadcastFrameClock = new BroadcastFrameClock(new ee(this, 0));
        this.a = broadcastFrameClock;
        this.b = new NextFrameEndCallbackQueue(new ee(this, 1));
        this.c = new Object();
        this.f = new ArrayList();
        this.h = new MutableScatterSet();
        this.i = new MutableVector(new ControlledComposition[16]);
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.l = new MutableScatterMap();
        this.m = new NestedContentMap();
        this.n = new MutableScatterMap();
        this.o = new MutableScatterMap();
        this.s = StateFlowKt.a(null);
        this.u = StateFlowKt.a(State.l);
        this.v = new SnapshotThreadLocal();
        JobImpl jobImpl = new JobImpl((Job) coroutineContext.v(Job.Key.j));
        jobImpl.v0(new ma(13, this));
        this.w = jobImpl;
        this.x = coroutineContext.A(broadcastFrameClock).A(jobImpl);
        this.y = new Object();
    }

    public static final void H(ArrayList arrayList, Recomposer recomposer, CompositionImpl compositionImpl) {
        arrayList.clear();
        synchronized (recomposer.c) {
            Iterator it = recomposer.k.iterator();
            if (it.hasNext()) {
                ((MovableContentStateReference) it.next()).getClass();
                throw null;
            }
        }
    }

    public static void w(MutableSnapshot mutableSnapshot) {
        try {
            if (!(mutableSnapshot.w() instanceof SnapshotApplyResult.Failure)) {
            } else {
                throw new IllegalStateException("Unsupported concurrent change during composition. A state object was modified by composition as well as being modified outside composition.");
            }
        } finally {
            mutableSnapshot.c();
        }
    }

    public final boolean A() {
        if (this.i.l == 0 && !z() && !B() && !this.l.g()) {
            return false;
        }
        return true;
    }

    public final boolean B() {
        if (!this.t && (this.b.b.c.get() & 134217727) > 0) {
            return true;
        }
        return false;
    }

    public final boolean C() {
        boolean z2;
        synchronized (this.c) {
            if (!this.h.c() && this.i.l == 0 && !z()) {
                if (!B()) {
                    z2 = false;
                }
            }
            z2 = true;
        }
        return z2;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.coroutines.jvm.internal.SuspendLambda, kotlin.jvm.functions.Function2] */
    public final Object D(Continuation continuation) {
        Object m = FlowKt.m((CancellableFlow) this.u, new SuspendLambda(2, null), (ContinuationImpl) continuation);
        if (m == CoroutineSingletons.j) {
            return m;
        }
        return Unit.a;
    }

    public final List E() {
        List arrayList;
        List list = this.g;
        if (list != null) {
            return list;
        }
        ArrayList arrayList2 = this.f;
        if (arrayList2.isEmpty()) {
            arrayList = EmptyList.j;
        } else {
            arrayList = new ArrayList(arrayList2);
        }
        this.g = arrayList;
        return arrayList;
    }

    public final void F() {
        CancellableContinuation y;
        synchronized (this.c) {
            y = y();
            if (((State) this.u.getValue()).compareTo(State.k) <= 0) {
                Throwable th = this.e;
                CancellationException cancellationException = new CancellationException("Recomposer shutdown; frame clock awaiter will never resume");
                cancellationException.initCause(th);
                throw cancellationException;
            }
        }
        if (y != null) {
            ((CancellableContinuationImpl) y).g(Unit.a);
        }
    }

    public final void G(CompositionImpl compositionImpl) {
        synchronized (this.c) {
            ArrayList arrayList = this.k;
            if (arrayList.size() > 0) {
                ((MovableContentStateReference) arrayList.get(0)).getClass();
                throw null;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:53:0x0126, code lost:
    
        r3 = r11.size();
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x012b, code lost:
    
        if (r4 >= r3) goto L106;
     */
    /* JADX WARN: Code restructure failed: missing block: B:56:0x0135, code lost:
    
        if (((kotlin.Pair) r11.get(r4)).k == null) goto L105;
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x0137, code lost:
    
        r4 = r4 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:59:0x013a, code lost:
    
        r3 = new java.util.ArrayList(r11.size());
        r4 = r11.size();
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x0148, code lost:
    
        if (r9 >= r4) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:61:0x014a, code lost:
    
        r12 = (kotlin.Pair) r11.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0152, code lost:
    
        if (r12.k != null) goto L108;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0154, code lost:
    
        r12 = (androidx.compose.runtime.MovableContentStateReference) r12.j;
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x015b, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x015e, code lost:
    
        r4 = r18.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x0160, code lost:
    
        monitor-enter(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0161, code lost:
    
        kotlin.collections.CollectionsKt.g(r18.k, r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0166, code lost:
    
        monitor-exit(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:73:0x0167, code lost:
    
        r3 = new java.util.ArrayList(r11.size());
        r4 = r11.size();
        r9 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0175, code lost:
    
        if (r9 >= r4) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0177, code lost:
    
        r12 = r11.get(r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:76:0x0180, code lost:
    
        if (((kotlin.Pair) r12).k == null) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x0182, code lost:
    
        r3.add(r12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:79:0x0185, code lost:
    
        r9 = r9 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:82:0x0188, code lost:
    
        r11 = r3;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final List I(List list, MutableScatterSet mutableScatterSet) {
        ArrayList arrayList;
        HashMap hashMap = new HashMap(list.size());
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object obj = list.get(i);
            ((MovableContentStateReference) obj).getClass();
            Object obj2 = hashMap.get(null);
            if (obj2 == null) {
                obj2 = new ArrayList();
                hashMap.put(null, obj2);
            }
            ((ArrayList) obj2).add(obj);
        }
        for (Map.Entry entry : hashMap.entrySet()) {
            ControlledComposition controlledComposition = (ControlledComposition) entry.getKey();
            List list2 = (List) entry.getValue();
            CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
            if (compositionImpl.E.F) {
                ComposerKt.a("Check failed");
            }
            MutableSnapshot g = Snapshot.Companion.g(new ma(12, compositionImpl), new ec(8, compositionImpl, mutableScatterSet));
            try {
                Snapshot j = g.j();
                try {
                    synchronized (this.c) {
                        try {
                            arrayList = new ArrayList(list2.size());
                            int size2 = list2.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                MovableContentStateReference movableContentStateReference = (MovableContentStateReference) list2.get(i2);
                                MutableScatterMap mutableScatterMap = this.l;
                                movableContentStateReference.getClass();
                                Object a = MultiValueMap.a(mutableScatterMap);
                                arrayList.add(new Pair(movableContentStateReference, a));
                            }
                            int size3 = arrayList.size();
                            int i3 = 0;
                            while (true) {
                                if (i3 >= size3) {
                                    break;
                                }
                                Pair pair = (Pair) arrayList.get(i3);
                                if (pair.k == null) {
                                    NestedContentMap nestedContentMap = this.m;
                                    ((MovableContentStateReference) pair.j).getClass();
                                    if (nestedContentMap.a.b(null)) {
                                        ArrayList arrayList2 = new ArrayList(arrayList.size());
                                        int size4 = arrayList.size();
                                        for (int i4 = 0; i4 < size4; i4++) {
                                            Pair pair2 = (Pair) arrayList.get(i4);
                                            if (pair2.k == null) {
                                                NestedContentMap nestedContentMap2 = this.m;
                                                ((MovableContentStateReference) pair2.j).getClass();
                                                MutableScatterMap mutableScatterMap2 = nestedContentMap2.a;
                                                if (mutableScatterMap2.f()) {
                                                    nestedContentMap2.b.h();
                                                }
                                            }
                                            arrayList2.add(pair2);
                                        }
                                        arrayList = arrayList2;
                                    }
                                }
                                i3++;
                            }
                        } finally {
                        }
                    }
                    int size5 = arrayList.size();
                    int i5 = 0;
                    while (true) {
                        if (i5 >= size5) {
                            break;
                        }
                        if (((Pair) arrayList.get(i5)).k != null) {
                            break;
                        }
                        i5++;
                    }
                    compositionImpl.u(arrayList);
                    Snapshot.q(j);
                } catch (Throwable th) {
                    Snapshot.q(j);
                    throw th;
                }
            } finally {
                w(g);
            }
        }
        return CollectionsKt.X(hashMap.keySet());
    }

    public final CompositionImpl J(ControlledComposition controlledComposition, MutableScatterSet mutableScatterSet) {
        CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
        if (compositionImpl.E.F || compositionImpl.F == 3) {
            return null;
        }
        MutableScatterSet mutableScatterSet2 = this.q;
        if (mutableScatterSet2 == null || !mutableScatterSet2.a(compositionImpl)) {
            MutableSnapshot g = Snapshot.Companion.g(new ma(12, compositionImpl), new ec(8, compositionImpl, mutableScatterSet));
            try {
                Snapshot j = g.j();
                if (mutableScatterSet != null) {
                    try {
                        if (mutableScatterSet.c()) {
                            p0 p0Var = new p0(26, mutableScatterSet, compositionImpl);
                            GapComposer gapComposer = compositionImpl.E;
                            if (gapComposer.F) {
                                ComposerKt.a("Preparing a composition while composing is not supported");
                            }
                            gapComposer.F = true;
                            try {
                                p0Var.a();
                                gapComposer.F = false;
                            } catch (Throwable th) {
                                gapComposer.F = false;
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        Snapshot.q(j);
                        throw th2;
                    }
                }
                boolean y = compositionImpl.y();
                Snapshot.q(j);
                if (y) {
                    return compositionImpl;
                }
            } finally {
                w(g);
            }
        }
        return null;
    }

    public final void K(Throwable th, CompositionImpl compositionImpl) {
        if (((Boolean) A.get()).booleanValue() && !(th instanceof ComposeRuntimeError)) {
            synchronized (this.c) {
                try {
                    Log.e("ComposeInternal", "Error was captured in composition while live edit was enabled.", th);
                    this.j.clear();
                    this.i.g();
                    this.h = new MutableScatterSet();
                    this.k.clear();
                    this.l.h();
                    this.n.h();
                    this.s.setValue(new RecomposerErrorState(th));
                    if (compositionImpl != null) {
                        M(compositionImpl);
                    }
                    if (y() != null) {
                        ComposerKt.a("expected to go to inactive state due to composition error");
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            return;
        }
        synchronized (this.c) {
            Log.e("ComposeInternal", "Error was captured in composition.", th);
            RecomposerErrorState recomposerErrorState = (RecomposerErrorState) this.s.getValue();
            if (recomposerErrorState == null) {
                this.s.setValue(new RecomposerErrorState(th));
            } else {
                throw recomposerErrorState.a;
            }
        }
        throw th;
    }

    public final boolean L() {
        boolean A2;
        synchronized (this.c) {
            if (this.h.b()) {
                return A();
            }
            List E = E();
            ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(this.h);
            this.h = new MutableScatterSet();
            try {
                int size = E.size();
                for (int i = 0; i < size; i++) {
                    ((CompositionImpl) ((ControlledComposition) E.get(i))).z(scatterSetWrapper);
                    if (((State) this.u.getValue()).compareTo(State.k) <= 0) {
                        break;
                    }
                }
                synchronized (this.c) {
                    if (y() == null) {
                        A2 = A();
                    } else {
                        throw new IllegalStateException("called outside of runRecomposeAndApplyChanges");
                    }
                }
                return A2;
            } catch (Throwable th) {
                synchronized (this.c) {
                    MutableScatterSet mutableScatterSet = this.h;
                    mutableScatterSet.getClass();
                    Iterator<T> it = scatterSetWrapper.iterator();
                    while (it.hasNext()) {
                        mutableScatterSet.l(it.next());
                    }
                    throw th;
                }
            }
        }
    }

    public final void M(ControlledComposition controlledComposition) {
        ArrayList arrayList = this.p;
        if (arrayList == null) {
            arrayList = new ArrayList();
            this.p = arrayList;
        }
        if (!arrayList.contains(controlledComposition)) {
            arrayList.add(controlledComposition);
        }
        if (this.f.remove(controlledComposition)) {
            this.g = null;
        }
    }

    public final Object N(Continuation continuation) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this, null);
        CoroutineContext coroutineContext = ((ContinuationImpl) continuation).k;
        coroutineContext.getClass();
        Object e = BuildersKt.e(this.a, new Recomposer$recompositionRunner$2(this, recomposer$runRecomposeAndApplyChanges$2, MonotonicFrameClockKt.a(coroutineContext), null), continuation);
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        Unit unit = Unit.a;
        if (e != coroutineSingletons) {
            e = unit;
        }
        if (e == coroutineSingletons) {
            return e;
        }
        return unit;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void a(ControlledComposition controlledComposition, Function2 function2) {
        State state;
        boolean z2;
        CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
        boolean z3 = compositionImpl.E.F;
        synchronized (this.c) {
            State state2 = (State) this.u.getValue();
            state = State.k;
            z2 = true;
            if (state2.compareTo(state) > 0) {
                z2 = true ^ E().contains(compositionImpl);
            }
        }
        try {
            MutableSnapshot g = Snapshot.Companion.g(new ma(12, compositionImpl), new ec(8, compositionImpl, null));
            try {
                Snapshot j = g.j();
                try {
                    compositionImpl.n(function2);
                    synchronized (this.c) {
                        if (((State) this.u.getValue()).compareTo(state) > 0 && !E().contains(compositionImpl)) {
                            this.f.add(compositionImpl);
                            this.g = null;
                        }
                    }
                    if (!z3) {
                        SnapshotKt.i().m();
                    }
                    try {
                        G(compositionImpl);
                        try {
                            compositionImpl.h();
                            compositionImpl.j();
                            if (!z3) {
                                SnapshotKt.i().m();
                            }
                        } catch (Throwable th) {
                            K(th, null);
                        }
                    } catch (Throwable th2) {
                        K(th2, compositionImpl);
                    }
                } finally {
                    Snapshot.q(j);
                }
            } finally {
                w(g);
            }
        } catch (Throwable th3) {
            if (z2) {
                synchronized (this.c) {
                }
            }
            K(th3, compositionImpl);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final ScatterSet b(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, Function2 function2) {
        SnapshotThreadLocal snapshotThreadLocal = this.v;
        try {
            CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
            ShouldPauseCallback shouldPauseCallback2 = compositionImpl.y;
            compositionImpl.y = shouldPauseCallback;
            try {
                a(controlledComposition, function2);
                MutableScatterSet mutableScatterSet = (MutableScatterSet) snapshotThreadLocal.a();
                if (mutableScatterSet == null) {
                    mutableScatterSet = ScatterSetKt.a;
                    mutableScatterSet.getClass();
                }
                return mutableScatterSet;
            } finally {
                ((CompositionImpl) controlledComposition).y = shouldPauseCallback2;
            }
        } finally {
            snapshotThreadLocal.b(null);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean d() {
        return ((Boolean) A.get()).booleanValue();
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean e() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean f() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final long g() {
        return 1000L;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final Composition h() {
        return null;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final CoroutineContext j() {
        return this.x;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final boolean k() {
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void l(ControlledComposition controlledComposition) {
        CancellableContinuation cancellableContinuation;
        synchronized (this.c) {
            if (!this.i.h(controlledComposition)) {
                this.i.b(controlledComposition);
                cancellableContinuation = y();
            } else {
                cancellableContinuation = null;
            }
        }
        if (cancellableContinuation != null) {
            ((CancellableContinuationImpl) cancellableContinuation).g(Unit.a);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final MovableContentState m(MovableContentStateReference movableContentStateReference) {
        MovableContentState movableContentState;
        synchronized (this.c) {
            movableContentState = (MovableContentState) this.n.m(movableContentStateReference);
        }
        return movableContentState;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final ScatterSet n(ControlledComposition controlledComposition, ShouldPauseCallback shouldPauseCallback, ScatterSet scatterSet) {
        SnapshotThreadLocal snapshotThreadLocal = this.v;
        try {
            L();
            CompositionImpl compositionImpl = (CompositionImpl) controlledComposition;
            compositionImpl.z(new ScatterSetWrapper(scatterSet));
            ShouldPauseCallback shouldPauseCallback2 = compositionImpl.y;
            compositionImpl.y = shouldPauseCallback;
            try {
                CompositionImpl J = J(compositionImpl, null);
                if (J != null) {
                    G(compositionImpl);
                    J.h();
                    J.j();
                }
                MutableScatterSet mutableScatterSet = (MutableScatterSet) snapshotThreadLocal.a();
                if (mutableScatterSet == null) {
                    mutableScatterSet = ScatterSetKt.a;
                    mutableScatterSet.getClass();
                }
                return mutableScatterSet;
            } finally {
                compositionImpl.y = shouldPauseCallback2;
            }
        } finally {
            snapshotThreadLocal.b(null);
        }
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void q(RecomposeScopeImpl recomposeScopeImpl) {
        SnapshotThreadLocal snapshotThreadLocal = this.v;
        MutableScatterSet mutableScatterSet = (MutableScatterSet) snapshotThreadLocal.a();
        if (mutableScatterSet == null) {
            MutableScatterSet mutableScatterSet2 = ScatterSetKt.a;
            mutableScatterSet = new MutableScatterSet();
            snapshotThreadLocal.b(mutableScatterSet);
        }
        mutableScatterSet.d(recomposeScopeImpl);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void r(CompositionImpl compositionImpl) {
        synchronized (this.c) {
            try {
                MutableScatterSet mutableScatterSet = this.q;
                if (mutableScatterSet == null) {
                    MutableScatterSet mutableScatterSet2 = ScatterSetKt.a;
                    mutableScatterSet = new MutableScatterSet();
                    this.q = mutableScatterSet;
                }
                mutableScatterSet.d(compositionImpl);
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [androidx.compose.runtime.internal.AwaiterQueue$Awaiter, java.lang.Object, androidx.compose.runtime.NextFrameEndCallbackQueue$NextFrameEndAwaiter] */
    @Override // androidx.compose.runtime.CompositionContext
    public final CancellationHandle s(r1 r1Var) {
        NextFrameEndCallbackQueue nextFrameEndCallbackQueue = this.b;
        AwaiterQueue awaiterQueue = nextFrameEndCallbackQueue.b;
        ?? obj = new Object();
        obj.a = r1Var;
        return awaiterQueue.a(obj, nextFrameEndCallbackQueue.c);
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void v(CompositionImpl compositionImpl) {
        synchronized (this.c) {
            if (this.f.remove(compositionImpl)) {
                this.g = null;
            }
            this.i.j(compositionImpl);
            this.j.remove(compositionImpl);
        }
    }

    public final void x() {
        synchronized (this.c) {
            if (((State) this.u.getValue()).compareTo(State.n) >= 0) {
                this.u.setValue(State.k);
            }
        }
        this.w.n(null);
    }

    public final CancellableContinuation y() {
        State state;
        MutableStateFlow mutableStateFlow = this.u;
        int compareTo = ((State) mutableStateFlow.getValue()).compareTo(State.k);
        MutableStateFlow mutableStateFlow2 = this.s;
        ArrayList arrayList = this.k;
        ArrayList arrayList2 = this.j;
        MutableVector mutableVector = this.i;
        if (compareTo <= 0) {
            List E = E();
            int size = E.size();
            for (int i = 0; i < size; i++) {
            }
            this.f.clear();
            this.g = EmptyList.j;
            this.h = new MutableScatterSet();
            mutableVector.g();
            arrayList2.clear();
            arrayList.clear();
            this.p = null;
            CancellableContinuationImpl cancellableContinuationImpl = this.r;
            if (cancellableContinuationImpl != null) {
                cancellableContinuationImpl.p(null);
            }
            this.r = null;
            mutableStateFlow2.setValue(null);
            return null;
        }
        if (mutableStateFlow2.getValue() != null) {
            state = State.l;
        } else if (this.d == null) {
            this.h = new MutableScatterSet();
            mutableVector.g();
            if (!z() && !B()) {
                state = State.l;
            } else {
                state = State.m;
            }
        } else if (mutableVector.l == 0 && !this.h.c() && arrayList2.isEmpty() && arrayList.isEmpty() && !z() && !B() && !this.l.g()) {
            state = State.n;
        } else {
            state = State.o;
        }
        mutableStateFlow.setValue(state);
        if (state != State.o) {
            return null;
        }
        CancellableContinuationImpl cancellableContinuationImpl2 = this.r;
        this.r = null;
        return cancellableContinuationImpl2;
    }

    public final boolean z() {
        if (!this.t && (this.a.k.c.get() & 134217727) > 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.compose.runtime.CompositionContext
    public final void o(Set set) {
    }
}
