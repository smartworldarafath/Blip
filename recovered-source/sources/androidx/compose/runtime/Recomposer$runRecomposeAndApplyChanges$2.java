package androidx.compose.runtime;

import android.os.Trace;
import androidx.collection.MutableObjectList;
import androidx.collection.MutableScatterSet;
import androidx.collection.ObjectListKt;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.BroadcastFrameClock;
import androidx.compose.runtime.collection.MultiValueMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.snapshots.MutableSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.TransparentObserverMutableSnapshot;
import androidx.compose.runtime.snapshots.TransparentObserverSnapshot;
import defpackage.u2;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.Pair;
import kotlin.Result;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.intrinsics.IntrinsicsKt;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.CancellableContinuationImpl;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.flow.MutableStateFlow;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.runtime.Recomposer$runRecomposeAndApplyChanges$2", f = "Recomposer.kt", l = {615, 626}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class Recomposer$runRecomposeAndApplyChanges$2 extends SuspendLambda implements Function3<CoroutineScope, MonotonicFrameClock, Continuation<? super Unit>, Object> {
    public List n;
    public List o;
    public List p;
    public MutableScatterSet q;
    public MutableScatterSet r;
    public MutableScatterSet s;
    public Set t;
    public MutableScatterSet u;
    public int v;
    public /* synthetic */ MonotonicFrameClock w;
    public final /* synthetic */ Recomposer x;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public Recomposer$runRecomposeAndApplyChanges$2(Recomposer recomposer, Continuation continuation) {
        super(3, continuation);
        this.x = recomposer;
    }

    public static final void x(Recomposer recomposer, List list, List list2, List list3, MutableScatterSet mutableScatterSet, MutableScatterSet mutableScatterSet2, MutableScatterSet mutableScatterSet3, MutableScatterSet mutableScatterSet4) {
        char c;
        long j;
        long j2;
        synchronized (recomposer.c) {
            try {
                list.clear();
                list2.clear();
                int size = list3.size();
                for (int i = 0; i < size; i++) {
                    CompositionImpl compositionImpl = (CompositionImpl) ((ControlledComposition) list3.get(i));
                    compositionImpl.e();
                    recomposer.M(compositionImpl);
                }
                list3.clear();
                Object[] objArr = mutableScatterSet.b;
                long[] jArr = mutableScatterSet.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    j = 255;
                    while (true) {
                        long j3 = jArr[i2];
                        c = 7;
                        j2 = -9187201950435737472L;
                        if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8 - ((~(i2 - length)) >>> 31);
                            for (int i4 = 0; i4 < i3; i4++) {
                                if ((j3 & 255) < 128) {
                                    CompositionImpl compositionImpl2 = (CompositionImpl) ((ControlledComposition) objArr[(i2 << 3) + i4]);
                                    compositionImpl2.e();
                                    recomposer.M(compositionImpl2);
                                }
                                j3 >>= 8;
                            }
                            if (i3 != 8) {
                                break;
                            }
                        }
                        if (i2 == length) {
                            break;
                        } else {
                            i2++;
                        }
                    }
                } else {
                    c = 7;
                    j = 255;
                    j2 = -9187201950435737472L;
                }
                mutableScatterSet.f();
                Object[] objArr2 = mutableScatterSet2.b;
                long[] jArr2 = mutableScatterSet2.a;
                int length2 = jArr2.length - 2;
                if (length2 >= 0) {
                    int i5 = 0;
                    while (true) {
                        long j4 = jArr2[i5];
                        if ((((~j4) << c) & j4 & j2) != j2) {
                            int i6 = 8 - ((~(i5 - length2)) >>> 31);
                            for (int i7 = 0; i7 < i6; i7++) {
                                if ((j4 & j) < 128) {
                                    ((CompositionImpl) ((ControlledComposition) objArr2[(i5 << 3) + i7])).k();
                                }
                                j4 >>= 8;
                            }
                            if (i6 != 8) {
                                break;
                            }
                        }
                        if (i5 == length2) {
                            break;
                        } else {
                            i5++;
                        }
                    }
                }
                mutableScatterSet2.f();
                mutableScatterSet3.f();
                Object[] objArr3 = mutableScatterSet4.b;
                long[] jArr3 = mutableScatterSet4.a;
                int length3 = jArr3.length - 2;
                if (length3 >= 0) {
                    int i8 = 0;
                    while (true) {
                        long j5 = jArr3[i8];
                        if ((((~j5) << c) & j5 & j2) != j2) {
                            int i9 = 8 - ((~(i8 - length3)) >>> 31);
                            for (int i10 = 0; i10 < i9; i10++) {
                                if ((j5 & j) < 128) {
                                    CompositionImpl compositionImpl3 = (CompositionImpl) ((ControlledComposition) objArr3[(i8 << 3) + i10]);
                                    compositionImpl3.e();
                                    recomposer.M(compositionImpl3);
                                }
                                j5 >>= 8;
                            }
                            if (i9 != 8) {
                                break;
                            }
                        }
                        if (i8 == length3) {
                            break;
                        } else {
                            i8++;
                        }
                    }
                }
                mutableScatterSet4.f();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public static final void y(List list, Recomposer recomposer) {
        list.clear();
        synchronized (recomposer.c) {
            try {
                ArrayList arrayList = recomposer.k;
                int size = arrayList.size();
                for (int i = 0; i < size; i++) {
                    list.add((MovableContentStateReference) arrayList.get(i));
                }
                recomposer.k.clear();
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // kotlin.jvm.functions.Function3
    public final Object f(Object obj, Object obj2, Object obj3) {
        Recomposer$runRecomposeAndApplyChanges$2 recomposer$runRecomposeAndApplyChanges$2 = new Recomposer$runRecomposeAndApplyChanges$2(this.x, (Continuation) obj3);
        recomposer$runRecomposeAndApplyChanges$2.w = (MonotonicFrameClock) obj2;
        recomposer$runRecomposeAndApplyChanges$2.v(Unit.a);
        return CoroutineSingletons.j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0098 A[DONT_GENERATE] */
    /* JADX WARN: Removed duplicated region for block: B:44:0x00ff  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0131 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.lang.Object, kotlin.jvm.functions.Function1] */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:44:0x0124 -> B:6:0x012c). Please report as a decompilation issue!!! */
    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:45:0x01cf -> B:20:0x0093). Please report as a decompilation issue!!! */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        MonotonicFrameClock monotonicFrameClock;
        MutableScatterSet mutableScatterSet;
        MutableScatterSet mutableScatterSet2;
        List list;
        Set set;
        final List list2;
        MutableScatterSet mutableScatterSet3;
        List list3;
        MutableScatterSet mutableScatterSet4;
        final List list4;
        final MutableScatterSet mutableScatterSet5;
        final List list5;
        final MutableScatterSet mutableScatterSet6;
        Recomposer recomposer;
        Object obj2;
        CancellableContinuationImpl cancellableContinuationImpl;
        CoroutineSingletons coroutineSingletons;
        MonotonicFrameClock monotonicFrameClock2;
        MutableObjectList mutableObjectList;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        int i = this.v;
        int i2 = 2;
        int i3 = 1;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    MutableScatterSet mutableScatterSet7 = this.u;
                    set = this.t;
                    mutableScatterSet3 = this.s;
                    mutableScatterSet4 = this.r;
                    mutableScatterSet = this.q;
                    list3 = this.p;
                    list2 = this.o;
                    list = this.n;
                    MonotonicFrameClock monotonicFrameClock3 = this.w;
                    ResultKt.b(obj);
                    mutableScatterSet2 = mutableScatterSet7;
                    monotonicFrameClock = monotonicFrameClock3;
                    Recomposer recomposer2 = this.x;
                    synchronized (recomposer2.c) {
                        try {
                            if (recomposer2.l.g()) {
                                MutableObjectList b = MultiValueMap.b(recomposer2.l);
                                recomposer2.l.h();
                                NestedContentMap nestedContentMap = recomposer2.m;
                                nestedContentMap.a.h();
                                nestedContentMap.b.h();
                                recomposer2.o.h();
                                mutableObjectList = new MutableObjectList(b.b);
                                Object[] objArr = b.a;
                                int i4 = b.b;
                                coroutineSingletons = coroutineSingletons2;
                                int i5 = 0;
                                while (i5 < i4) {
                                    int i6 = i5;
                                    MovableContentStateReference movableContentStateReference = (MovableContentStateReference) objArr[i5];
                                    mutableObjectList.g(new Pair(movableContentStateReference, recomposer2.n.e(movableContentStateReference)));
                                    i5 = i6 + 1;
                                    monotonicFrameClock = monotonicFrameClock;
                                    objArr = objArr;
                                }
                                monotonicFrameClock2 = monotonicFrameClock;
                                recomposer2.n.h();
                            } else {
                                coroutineSingletons = coroutineSingletons2;
                                monotonicFrameClock2 = monotonicFrameClock;
                                mutableObjectList = ObjectListKt.b;
                                mutableObjectList.getClass();
                            }
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    Object[] objArr2 = mutableObjectList.a;
                    int i7 = mutableObjectList.b;
                    for (int i8 = 0; i8 < i7; i8++) {
                        Pair pair = (Pair) objArr2[i8];
                    }
                    NextFrameEndCallbackQueue nextFrameEndCallbackQueue = this.x.b;
                    nextFrameEndCallbackQueue.a.set(0);
                    nextFrameEndCallbackQueue.b.b(new Object());
                    coroutineSingletons2 = coroutineSingletons;
                    monotonicFrameClock = monotonicFrameClock2;
                    i2 = 2;
                    i3 = 1;
                    synchronized (this.x.c) {
                    }
                    Recomposer recomposer3 = this.x;
                    this.w = monotonicFrameClock;
                    this.n = list;
                    this.o = list2;
                    this.p = list3;
                    this.q = mutableScatterSet;
                    this.r = mutableScatterSet4;
                    this.s = mutableScatterSet3;
                    this.t = set;
                    this.u = mutableScatterSet2;
                    this.v = i3;
                    if (!recomposer3.C()) {
                        CancellableContinuationImpl cancellableContinuationImpl2 = new CancellableContinuationImpl(i3, IntrinsicsKt.b(this));
                        cancellableContinuationImpl2.v();
                        synchronized (recomposer3.c) {
                            if (recomposer3.C()) {
                                cancellableContinuationImpl = cancellableContinuationImpl2;
                            } else {
                                recomposer3.r = cancellableContinuationImpl2;
                                cancellableContinuationImpl = null;
                            }
                        }
                        if (cancellableContinuationImpl != null) {
                            cancellableContinuationImpl.g(Unit.a);
                        }
                        obj2 = cancellableContinuationImpl2.u();
                        if (obj2 != CoroutineSingletons.j) {
                            obj2 = Unit.a;
                        }
                    } else {
                        obj2 = Unit.a;
                    }
                    if (obj2 != coroutineSingletons2) {
                        List list6 = list;
                        mutableScatterSet5 = mutableScatterSet;
                        mutableScatterSet6 = mutableScatterSet2;
                        list4 = list3;
                        list5 = list6;
                        final Set set2 = set;
                        final MutableScatterSet mutableScatterSet8 = mutableScatterSet4;
                        final MutableScatterSet mutableScatterSet9 = mutableScatterSet3;
                        recomposer = this.x;
                        MutableStateFlow mutableStateFlow = Recomposer.z;
                        if (!recomposer.L()) {
                            final Recomposer recomposer4 = this.x;
                            Function1 function1 = new Function1() { // from class: androidx.compose.runtime.h
                                /* JADX WARN: Multi-variable type inference failed */
                                @Override // kotlin.jvm.functions.Function1
                                public final Object b(Object obj3) {
                                    boolean z;
                                    boolean z2;
                                    Object[] objArr3;
                                    Snapshot transparentObserverSnapshot;
                                    List list7;
                                    List list8;
                                    long j;
                                    List list9;
                                    List list10;
                                    Object[] objArr4;
                                    Recomposer recomposer5 = Recomposer.this;
                                    MutableScatterSet mutableScatterSet10 = mutableScatterSet9;
                                    MutableScatterSet mutableScatterSet11 = mutableScatterSet6;
                                    List list11 = list5;
                                    List list12 = list2;
                                    MutableScatterSet mutableScatterSet12 = mutableScatterSet5;
                                    List list13 = list4;
                                    MutableScatterSet mutableScatterSet13 = mutableScatterSet8;
                                    Set set3 = set2;
                                    final long longValue = ((Long) obj3).longValue();
                                    synchronized (recomposer5.c) {
                                        z = recomposer5.z();
                                    }
                                    if (z) {
                                        Trace.beginSection("Recomposer:animation");
                                        try {
                                            recomposer5.a.k.b(new Function1() { // from class: androidx.compose.runtime.a
                                                @Override // kotlin.jvm.functions.Function1
                                                public final Object b(Object obj4) {
                                                    CancellableContinuationImpl cancellableContinuationImpl3;
                                                    Object failure;
                                                    long j2 = longValue;
                                                    BroadcastFrameClock.FrameAwaiter frameAwaiter = (BroadcastFrameClock.FrameAwaiter) obj4;
                                                    Function1 function12 = frameAwaiter.b;
                                                    if (function12 != null && (cancellableContinuationImpl3 = frameAwaiter.a) != null) {
                                                        try {
                                                            failure = function12.b(Long.valueOf(j2));
                                                        } catch (Throwable th2) {
                                                            failure = new Result.Failure(th2);
                                                        }
                                                        cancellableContinuationImpl3.g(failure);
                                                    }
                                                    return Unit.a;
                                                }
                                            });
                                            Snapshot.Companion.f();
                                        } finally {
                                        }
                                    }
                                    Trace.beginSection("Recomposer:recompose");
                                    try {
                                        recomposer5.L();
                                        synchronized (recomposer5.c) {
                                            try {
                                                MutableVector mutableVector = recomposer5.i;
                                                Object[] objArr5 = mutableVector.j;
                                                int i9 = mutableVector.l;
                                                z2 = 0;
                                                for (int i10 = 0; i10 < i9; i10++) {
                                                    list11.add((ControlledComposition) objArr5[i10]);
                                                }
                                                recomposer5.i.g();
                                            } finally {
                                            }
                                        }
                                        mutableScatterSet10.f();
                                        mutableScatterSet11.f();
                                        while (true) {
                                            if (list11.isEmpty() && list12.isEmpty()) {
                                                break;
                                            }
                                            try {
                                                int size = list11.size();
                                                for (int i11 = 0; i11 < size; i11++) {
                                                    ControlledComposition controlledComposition = (ControlledComposition) list11.get(i11);
                                                    CompositionImpl J = recomposer5.J(controlledComposition, mutableScatterSet10);
                                                    if (J != null) {
                                                        list13.add(J);
                                                    }
                                                    mutableScatterSet11.d(controlledComposition);
                                                }
                                                list11.clear();
                                                if (mutableScatterSet10.c() || recomposer5.i.l != 0) {
                                                    synchronized (recomposer5.c) {
                                                        try {
                                                            List E = recomposer5.E();
                                                            int size2 = E.size();
                                                            for (int i12 = 0; i12 < size2; i12++) {
                                                                ControlledComposition controlledComposition2 = (ControlledComposition) E.get(i12);
                                                                if (!mutableScatterSet11.a(controlledComposition2)) {
                                                                    CompositionImpl compositionImpl = (CompositionImpl) controlledComposition2;
                                                                    if (compositionImpl.x(set3)) {
                                                                        list11.add(compositionImpl);
                                                                    }
                                                                }
                                                            }
                                                            MutableVector mutableVector2 = recomposer5.i;
                                                            int i13 = mutableVector2.l;
                                                            int i14 = 0;
                                                            int i15 = 0;
                                                            while (true) {
                                                                objArr3 = mutableVector2.j;
                                                                if (i14 >= i13) {
                                                                    break;
                                                                }
                                                                ControlledComposition controlledComposition3 = (ControlledComposition) objArr3[i14];
                                                                if (!mutableScatterSet11.a(controlledComposition3) && !list11.contains(controlledComposition3)) {
                                                                    list11.add(controlledComposition3);
                                                                    i15++;
                                                                } else if (i15 > 0) {
                                                                    Object[] objArr6 = mutableVector2.j;
                                                                    objArr6[i14 - i15] = objArr6[i14];
                                                                }
                                                                i14++;
                                                            }
                                                            int i16 = i13 - i15;
                                                            Arrays.fill(objArr3, i16, i13, (Object) null);
                                                            mutableVector2.l = i16;
                                                        } finally {
                                                        }
                                                    }
                                                }
                                                if (list11.isEmpty()) {
                                                    try {
                                                        Recomposer$runRecomposeAndApplyChanges$2.y(list12, recomposer5);
                                                        while (!list12.isEmpty()) {
                                                            List I = recomposer5.I(list12, mutableScatterSet10);
                                                            mutableScatterSet12.getClass();
                                                            Iterator it = I.iterator();
                                                            while (it.hasNext()) {
                                                                mutableScatterSet12.l(it.next());
                                                            }
                                                            Recomposer$runRecomposeAndApplyChanges$2.y(list12, recomposer5);
                                                        }
                                                    } catch (Throwable th2) {
                                                        recomposer5.K(th2, null);
                                                        Recomposer$runRecomposeAndApplyChanges$2.x(recomposer5, list11, list12, list13, mutableScatterSet12, mutableScatterSet13, mutableScatterSet10, mutableScatterSet11);
                                                    }
                                                }
                                                z2 = 0;
                                            } catch (Throwable th3) {
                                                try {
                                                    recomposer5.K(th3, null);
                                                    Recomposer$runRecomposeAndApplyChanges$2.x(recomposer5, list11, list12, list13, mutableScatterSet12, mutableScatterSet13, mutableScatterSet10, mutableScatterSet11);
                                                } finally {
                                                    list11.clear();
                                                }
                                            }
                                        }
                                        Snapshot i17 = SnapshotKt.i();
                                        if (i17 instanceof MutableSnapshot) {
                                            transparentObserverSnapshot = new TransparentObserverMutableSnapshot((MutableSnapshot) i17, null, null, true, false);
                                        } else {
                                            transparentObserverSnapshot = new TransparentObserverSnapshot(i17, null, true, z2);
                                        }
                                        try {
                                            Snapshot j2 = transparentObserverSnapshot.j();
                                            try {
                                                if (!list13.isEmpty()) {
                                                    try {
                                                        int size3 = list13.size();
                                                        for (int i18 = z2; i18 < size3; i18++) {
                                                            mutableScatterSet13.d((ControlledComposition) list13.get(i18));
                                                        }
                                                        int size4 = list13.size();
                                                        for (int i19 = z2; i19 < size4; i19++) {
                                                            ((CompositionImpl) ((ControlledComposition) list13.get(i19))).h();
                                                        }
                                                    } catch (Throwable th4) {
                                                        try {
                                                            recomposer5.K(th4, null);
                                                            Recomposer$runRecomposeAndApplyChanges$2.x(recomposer5, list11, list12, list13, mutableScatterSet12, mutableScatterSet13, mutableScatterSet10, mutableScatterSet11);
                                                            Snapshot.q(j2);
                                                            return Unit.a;
                                                        } finally {
                                                            list13.clear();
                                                        }
                                                    }
                                                }
                                                if (mutableScatterSet12.c()) {
                                                    try {
                                                        mutableScatterSet13.k(mutableScatterSet12);
                                                        Object[] objArr7 = mutableScatterSet12.b;
                                                        long[] jArr = mutableScatterSet12.a;
                                                        j = 128;
                                                        int length = jArr.length - 2;
                                                        if (length >= 0) {
                                                            int i20 = 0;
                                                            while (true) {
                                                                long j3 = jArr[i20];
                                                                list7 = list11;
                                                                list8 = list12;
                                                                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                    int i21 = 8 - ((~(i20 - length)) >>> 31);
                                                                    for (int i22 = 0; i22 < i21; i22++) {
                                                                        if ((j3 & 255) < 128) {
                                                                            try {
                                                                                ((CompositionImpl) ((ControlledComposition) objArr7[(i20 << 3) + i22])).j();
                                                                            } catch (Throwable th5) {
                                                                                th = th5;
                                                                                try {
                                                                                    recomposer5.K(th, null);
                                                                                    Recomposer$runRecomposeAndApplyChanges$2.x(recomposer5, list7, list8, list13, mutableScatterSet12, mutableScatterSet13, mutableScatterSet10, mutableScatterSet11);
                                                                                    Snapshot.q(j2);
                                                                                    return Unit.a;
                                                                                } finally {
                                                                                    mutableScatterSet12.f();
                                                                                }
                                                                            }
                                                                        }
                                                                        j3 >>= 8;
                                                                    }
                                                                    if (i21 != 8) {
                                                                        break;
                                                                    }
                                                                }
                                                                if (i20 == length) {
                                                                    break;
                                                                }
                                                                i20++;
                                                                list11 = list7;
                                                                list12 = list8;
                                                            }
                                                        } else {
                                                            list7 = list11;
                                                            list8 = list12;
                                                        }
                                                        list11 = list7;
                                                        list12 = list8;
                                                    } catch (Throwable th6) {
                                                        th = th6;
                                                        list7 = list11;
                                                        list8 = list12;
                                                    }
                                                } else {
                                                    j = 128;
                                                }
                                                if (mutableScatterSet13.c()) {
                                                    try {
                                                        Object[] objArr8 = mutableScatterSet13.b;
                                                        long[] jArr2 = mutableScatterSet13.a;
                                                        int length2 = jArr2.length - 2;
                                                        if (length2 >= 0) {
                                                            int i23 = 0;
                                                            while (true) {
                                                                long j4 = jArr2[i23];
                                                                list9 = list11;
                                                                list10 = list12;
                                                                if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                                    int i24 = 8 - ((~(i23 - length2)) >>> 31);
                                                                    int i25 = 0;
                                                                    while (i25 < i24) {
                                                                        if ((j4 & 255) < j) {
                                                                            try {
                                                                                ((CompositionImpl) ((ControlledComposition) objArr8[(i23 << 3) + i25])).k();
                                                                            } catch (Throwable th7) {
                                                                                th = th7;
                                                                                try {
                                                                                    recomposer5.K(th, null);
                                                                                    Recomposer$runRecomposeAndApplyChanges$2.x(recomposer5, list9, list10, list13, mutableScatterSet12, mutableScatterSet13, mutableScatterSet10, mutableScatterSet11);
                                                                                    return Unit.a;
                                                                                } finally {
                                                                                    mutableScatterSet13.f();
                                                                                }
                                                                            }
                                                                        }
                                                                        j4 >>= 8;
                                                                        i25++;
                                                                        objArr8 = objArr8;
                                                                    }
                                                                    objArr4 = objArr8;
                                                                    if (i24 != 8) {
                                                                        break;
                                                                    }
                                                                } else {
                                                                    objArr4 = objArr8;
                                                                }
                                                                if (i23 == length2) {
                                                                    break;
                                                                }
                                                                i23++;
                                                                list11 = list9;
                                                                list12 = list10;
                                                                objArr8 = objArr4;
                                                            }
                                                        }
                                                    } catch (Throwable th8) {
                                                        th = th8;
                                                        list9 = list11;
                                                        list10 = list12;
                                                    }
                                                }
                                                transparentObserverSnapshot.c();
                                                synchronized (recomposer5.c) {
                                                    if (recomposer5.y() != null) {
                                                        ComposerKt.a("unexpected to get continuation here");
                                                    }
                                                }
                                                SnapshotKt.i().m();
                                                mutableScatterSet11.f();
                                                mutableScatterSet10.f();
                                                recomposer5.q = null;
                                                return Unit.a;
                                            } finally {
                                                Snapshot.q(j2);
                                            }
                                        } finally {
                                            transparentObserverSnapshot.c();
                                        }
                                    } finally {
                                    }
                                }
                            };
                            this.w = monotonicFrameClock;
                            this.n = list5;
                            this.o = list2;
                            this.p = list4;
                            this.q = mutableScatterSet5;
                            this.r = mutableScatterSet8;
                            this.s = mutableScatterSet9;
                            this.t = set2;
                            this.u = mutableScatterSet6;
                            this.v = i2;
                            if (monotonicFrameClock.w(this, function1) != coroutineSingletons2) {
                                List list7 = list4;
                                mutableScatterSet2 = mutableScatterSet6;
                                mutableScatterSet = mutableScatterSet5;
                                list = list5;
                                list3 = list7;
                                mutableScatterSet3 = mutableScatterSet9;
                                mutableScatterSet4 = mutableScatterSet8;
                                set = set2;
                                Recomposer recomposer22 = this.x;
                                synchronized (recomposer22.c) {
                                }
                            }
                        } else {
                            List list8 = list4;
                            mutableScatterSet2 = mutableScatterSet6;
                            mutableScatterSet = mutableScatterSet5;
                            list = list5;
                            list3 = list8;
                            mutableScatterSet3 = mutableScatterSet9;
                            mutableScatterSet4 = mutableScatterSet8;
                            set = set2;
                            synchronized (this.x.c) {
                            }
                        }
                    }
                    return coroutineSingletons2;
                }
                u2.l("call to 'resume' before 'invoke' with coroutine");
                return null;
            }
            MutableScatterSet mutableScatterSet10 = this.u;
            set = this.t;
            mutableScatterSet3 = this.s;
            mutableScatterSet4 = this.r;
            MutableScatterSet mutableScatterSet11 = this.q;
            List list9 = this.p;
            list2 = this.o;
            List list10 = this.n;
            MonotonicFrameClock monotonicFrameClock4 = this.w;
            ResultKt.b(obj);
            mutableScatterSet6 = mutableScatterSet10;
            monotonicFrameClock = monotonicFrameClock4;
            list4 = list9;
            list5 = list10;
            mutableScatterSet5 = mutableScatterSet11;
            final Set set22 = set;
            final MutableScatterSet mutableScatterSet82 = mutableScatterSet4;
            final MutableScatterSet mutableScatterSet92 = mutableScatterSet3;
            recomposer = this.x;
            MutableStateFlow mutableStateFlow2 = Recomposer.z;
            if (!recomposer.L()) {
            }
        } else {
            ResultKt.b(obj);
            monotonicFrameClock = this.w;
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            ArrayList arrayList3 = new ArrayList();
            MutableScatterSet mutableScatterSet12 = ScatterSetKt.a;
            mutableScatterSet = new MutableScatterSet();
            MutableScatterSet mutableScatterSet13 = new MutableScatterSet();
            MutableScatterSet mutableScatterSet14 = new MutableScatterSet();
            ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(mutableScatterSet14);
            mutableScatterSet2 = new MutableScatterSet();
            list = arrayList;
            set = scatterSetWrapper;
            list2 = arrayList2;
            mutableScatterSet3 = mutableScatterSet14;
            list3 = arrayList3;
            mutableScatterSet4 = mutableScatterSet13;
            synchronized (this.x.c) {
            }
        }
    }
}
