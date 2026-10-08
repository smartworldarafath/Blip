package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.internal.AtomicInt;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.internal.WeakReference;
import defpackage.a7;
import defpackage.le;
import defpackage.zf;
import java.util.HashMap;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;
import kotlin.collections.ArraysKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotKt {
    public static final le a = new le(23);
    public static final SnapshotThreadLocal b = new SnapshotThreadLocal();
    public static final Object c = new Object();
    public static SnapshotIdSet d;
    public static long e;
    public static final SnapshotDoubleIndexHeap f;
    public static final SnapshotWeakSet g;
    public static List h;
    public static List i;
    public static final GlobalSnapshot j;
    public static final AtomicInt k;

    /* JADX WARN: Type inference failed for: r0v12, types: [java.util.concurrent.atomic.AtomicInteger, androidx.compose.runtime.internal.AtomicInt] */
    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.compose.runtime.snapshots.SnapshotDoubleIndexHeap, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.runtime.snapshots.SnapshotWeakSet, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot, androidx.compose.runtime.snapshots.GlobalSnapshot] */
    static {
        SnapshotIdSet snapshotIdSet = SnapshotIdSet.n;
        d = snapshotIdSet;
        e = 2L;
        ?? obj = new Object();
        obj.b = new long[16];
        obj.c = new int[16];
        int[] iArr = new int[16];
        int i2 = 0;
        while (i2 < 16) {
            int i3 = i2 + 1;
            iArr[i2] = i3;
            i2 = i3;
        }
        obj.d = iArr;
        f = obj;
        ?? obj2 = new Object();
        obj2.b = new int[16];
        obj2.c = new WeakReference[16];
        g = obj2;
        EmptyList emptyList = EmptyList.j;
        h = emptyList;
        i = emptyList;
        long j2 = e;
        e = 1 + j2;
        ?? mutableSnapshot = new MutableSnapshot(j2, snapshotIdSet, null, new a7(13));
        d = d.f(mutableSnapshot.b);
        j = mutableSnapshot;
        k = new AtomicInteger(0);
    }

    public static final HashMap a(long j2, MutableSnapshot mutableSnapshot, SnapshotIdSet snapshotIdSet) {
        long[] jArr;
        SnapshotIdSet snapshotIdSet2;
        long[] jArr2;
        SnapshotIdSet snapshotIdSet3;
        int i2;
        int i3;
        StateRecord r;
        MutableScatterSet x = mutableSnapshot.x();
        if (x != null) {
            long g2 = mutableSnapshot.g();
            SnapshotIdSet e2 = mutableSnapshot.d().f(g2).e(mutableSnapshot.j);
            Object[] objArr = x.b;
            long[] jArr3 = x.a;
            int length = jArr3.length - 2;
            if (length >= 0) {
                int i4 = 0;
                HashMap hashMap = null;
                while (true) {
                    long j3 = jArr3[i4];
                    if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                        int i5 = 8;
                        int i6 = 8 - ((~(i4 - length)) >>> 31);
                        int i7 = 0;
                        while (i7 < i6) {
                            if ((j3 & 255) < 128) {
                                StateObject stateObject = (StateObject) objArr[(i4 << 3) + i7];
                                StateRecord c2 = stateObject.c();
                                jArr2 = jArr3;
                                i2 = i5;
                                i3 = i7;
                                StateRecord r2 = r(c2, j2, snapshotIdSet);
                                if (r2 != null && (r = r(c2, g2, e2)) != null && !r2.equals(r)) {
                                    snapshotIdSet3 = e2;
                                    StateRecord r3 = r(c2, g2, mutableSnapshot.d());
                                    if (r3 != null) {
                                        StateRecord e3 = stateObject.e(r, r2, r3);
                                        if (e3 == null) {
                                            return null;
                                        }
                                        if (hashMap == null) {
                                            hashMap = new HashMap();
                                        }
                                        hashMap.put(r2, e3);
                                        hashMap = hashMap;
                                    } else {
                                        q();
                                        throw null;
                                    }
                                } else {
                                    snapshotIdSet3 = e2;
                                }
                            } else {
                                jArr2 = jArr3;
                                snapshotIdSet3 = e2;
                                i2 = i5;
                                i3 = i7;
                            }
                            j3 >>= i2;
                            i7 = i3 + 1;
                            i5 = i2;
                            jArr3 = jArr2;
                            e2 = snapshotIdSet3;
                        }
                        jArr = jArr3;
                        snapshotIdSet2 = e2;
                        if (i6 != i5) {
                            return hashMap;
                        }
                    } else {
                        jArr = jArr3;
                        snapshotIdSet2 = e2;
                    }
                    if (i4 != length) {
                        i4++;
                        jArr3 = jArr;
                        e2 = snapshotIdSet2;
                    } else {
                        return hashMap;
                    }
                }
            }
        }
        return null;
    }

    public static final void b(Snapshot snapshot) {
        MutableSnapshot mutableSnapshot;
        Object obj;
        long j2;
        Long valueOf;
        if (!d.d(snapshot.g())) {
            long g2 = snapshot.g();
            boolean z = snapshot.c;
            if (snapshot instanceof MutableSnapshot) {
                mutableSnapshot = (MutableSnapshot) snapshot;
            } else {
                mutableSnapshot = null;
            }
            if (mutableSnapshot != null) {
                obj = Boolean.valueOf(mutableSnapshot.m);
            } else {
                obj = "read-only";
            }
            synchronized (c) {
                SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f;
                if (snapshotDoubleIndexHeap.a > 0) {
                    j2 = snapshotDoubleIndexHeap.b[0];
                } else {
                    j2 = -1;
                }
                valueOf = Long.valueOf(j2);
            }
            throw new IllegalStateException(("Snapshot is not open: snapshotId=" + g2 + ", disposed=" + z + ", applied=" + obj + ", lowestPin=" + valueOf).toString());
        }
    }

    public static final SnapshotIdSet c(SnapshotIdSet snapshotIdSet, long j2, long j3) {
        while (Intrinsics.c(j2, j3) < 0) {
            snapshotIdSet = snapshotIdSet.f(j2);
            j2++;
        }
        return snapshotIdSet;
    }

    public static final Object d(Function1 function1) {
        MutableScatterSet mutableScatterSet;
        Object u;
        GlobalSnapshot globalSnapshot = j;
        synchronized (c) {
            try {
                mutableScatterSet = globalSnapshot.h;
                if (mutableScatterSet != null) {
                    k.addAndGet(1);
                }
                u = u(globalSnapshot, function1);
            } catch (Throwable th) {
                throw th;
            }
        }
        if (mutableScatterSet != null) {
            try {
                List list = h;
                ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(mutableScatterSet);
                int size = list.size();
                for (int i2 = 0; i2 < size; i2++) {
                    ((Function2) list.get(i2)).n(scatterSetWrapper, globalSnapshot);
                }
            } finally {
                k.addAndGet(-1);
            }
        }
        synchronized (c) {
            e();
            if (mutableScatterSet != null) {
                Object[] objArr = mutableScatterSet.b;
                long[] jArr = mutableScatterSet.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i3 = 0;
                    while (true) {
                        long j2 = jArr[i3];
                        if ((((~j2) << 7) & j2 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i4 = 8 - ((~(i3 - length)) >>> 31);
                            for (int i5 = 0; i5 < i4; i5++) {
                                if ((255 & j2) < 128) {
                                    p((StateObject) objArr[(i3 << 3) + i5]);
                                }
                                j2 >>= 8;
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
        }
        return u;
    }

    public static final void e() {
        SnapshotWeakSet snapshotWeakSet = g;
        int i2 = snapshotWeakSet.a;
        int i3 = 0;
        int i4 = 0;
        while (true) {
            Object obj = null;
            if (i3 >= i2) {
                break;
            }
            WeakReference weakReference = snapshotWeakSet.c[i3];
            if (weakReference != null) {
                obj = weakReference.get();
            }
            if (obj != null && o((StateObject) obj)) {
                if (i4 != i3) {
                    snapshotWeakSet.c[i4] = weakReference;
                    int[] iArr = snapshotWeakSet.b;
                    iArr[i4] = iArr[i3];
                }
                i4++;
            }
            i3++;
        }
        for (int i5 = i4; i5 < i2; i5++) {
            snapshotWeakSet.c[i5] = null;
            snapshotWeakSet.b[i5] = 0;
        }
        if (i4 != i2) {
            snapshotWeakSet.a = i4;
        }
    }

    public static final Snapshot f(Snapshot snapshot, Function1 function1, boolean z) {
        MutableSnapshot mutableSnapshot;
        boolean z2 = snapshot instanceof MutableSnapshot;
        if (!z2 && snapshot != null) {
            return new TransparentObserverSnapshot(snapshot, function1, false, z);
        }
        if (z2) {
            mutableSnapshot = (MutableSnapshot) snapshot;
        } else {
            mutableSnapshot = null;
        }
        return new TransparentObserverMutableSnapshot(mutableSnapshot, function1, null, false, z);
    }

    public static final StateRecord g(StateRecord stateRecord) {
        StateRecord r;
        Snapshot i2 = i();
        StateRecord r2 = r(stateRecord, i2.g(), i2.d());
        if (r2 == null) {
            synchronized (c) {
                Snapshot i3 = i();
                r = r(stateRecord, i3.g(), i3.d());
            }
            if (r != null) {
                return r;
            }
            q();
            throw null;
        }
        return r2;
    }

    public static final StateRecord h(StateRecord stateRecord, Snapshot snapshot) {
        StateRecord r;
        StateRecord r2 = r(stateRecord, snapshot.g(), snapshot.d());
        if (r2 == null) {
            synchronized (c) {
                r = r(stateRecord, snapshot.g(), snapshot.d());
            }
            if (r != null) {
                return r;
            }
            q();
            throw null;
        }
        return r2;
    }

    public static final Snapshot i() {
        Snapshot snapshot = (Snapshot) b.a();
        if (snapshot == null) {
            return j;
        }
        return snapshot;
    }

    public static final Function1 j(Function1 function1, Function1 function12, boolean z) {
        if (!z) {
            function12 = null;
        }
        if (function1 != null && function12 != null && function1 != function12) {
            return new zf(function1, function12, 0);
        }
        if (function1 == null) {
            return function12;
        }
        return function1;
    }

    public static final Function1 k(Function1 function1, Function1 function12) {
        if (function1 != null && function12 != null && function1 != function12) {
            return new zf(function1, function12, 1);
        }
        if (function1 == null) {
            return function12;
        }
        return function1;
    }

    public static final StateRecord l(StateRecord stateRecord, StateObject stateObject) {
        StateRecord c2 = stateObject.c();
        long j2 = e;
        SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f;
        if (snapshotDoubleIndexHeap.a > 0) {
            j2 = snapshotDoubleIndexHeap.b[0];
        }
        long j3 = j2 - 1;
        StateRecord stateRecord2 = null;
        StateRecord stateRecord3 = null;
        while (true) {
            if (c2 == null) {
                break;
            }
            long j4 = c2.a;
            if (j4 == 0) {
                break;
            }
            if (j4 != 0 && Intrinsics.c(j4, j3) <= 0 && !SnapshotIdSet.n.d(j4)) {
                if (stateRecord3 == null) {
                    stateRecord3 = c2;
                } else if (Intrinsics.c(c2.a, stateRecord3.a) >= 0) {
                    stateRecord2 = stateRecord3;
                }
            }
            c2 = c2.b;
        }
        stateRecord2 = c2;
        if (stateRecord2 != null) {
            stateRecord2.a = Long.MAX_VALUE;
            return stateRecord2;
        }
        StateRecord b2 = stateRecord.b(Long.MAX_VALUE);
        b2.b = stateObject.c();
        stateObject.b(b2);
        return b2;
    }

    public static final void m(Snapshot snapshot, StateObject stateObject) {
        snapshot.t(snapshot.h() + 1);
        Function1 i2 = snapshot.i();
        if (i2 != null) {
            i2.b(stateObject);
        }
    }

    public static final StateRecord n(StateRecord stateRecord, StateObjectImpl stateObjectImpl, Snapshot snapshot, StateRecord stateRecord2) {
        StateRecord l;
        if (snapshot.f()) {
            snapshot.n(stateObjectImpl);
        }
        long g2 = snapshot.g();
        if (stateRecord2.a == g2) {
            return stateRecord2;
        }
        synchronized (c) {
            l = l(stateRecord, stateObjectImpl);
        }
        l.a = g2;
        snapshot.n(stateObjectImpl);
        return l;
    }

    public static final boolean o(StateObject stateObject) {
        StateRecord stateRecord;
        long j2 = e;
        SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f;
        if (snapshotDoubleIndexHeap.a > 0) {
            j2 = snapshotDoubleIndexHeap.b[0];
        }
        StateRecord stateRecord2 = null;
        StateRecord stateRecord3 = null;
        int i2 = 0;
        for (StateRecord c2 = stateObject.c(); c2 != null; c2 = c2.b) {
            long j3 = c2.a;
            if (j3 != 0) {
                if (Intrinsics.c(j3, j2) < 0) {
                    if (stateRecord2 == null) {
                        i2++;
                        stateRecord2 = c2;
                    } else {
                        if (Intrinsics.c(c2.a, stateRecord2.a) < 0) {
                            stateRecord = stateRecord2;
                            stateRecord2 = c2;
                        } else {
                            stateRecord = c2;
                        }
                        if (stateRecord3 == null) {
                            stateRecord3 = stateObject.c();
                            StateRecord stateRecord4 = stateRecord3;
                            while (true) {
                                if (stateRecord3 != null) {
                                    if (Intrinsics.c(stateRecord3.a, j2) >= 0) {
                                        break;
                                    }
                                    if (Intrinsics.c(stateRecord4.a, stateRecord3.a) < 0) {
                                        stateRecord4 = stateRecord3;
                                    }
                                    stateRecord3 = stateRecord3.b;
                                } else {
                                    stateRecord3 = stateRecord4;
                                    break;
                                }
                            }
                        }
                        stateRecord2.a = 0L;
                        stateRecord2.a(stateRecord3);
                        stateRecord2 = stateRecord;
                    }
                } else {
                    i2++;
                }
            }
        }
        if (i2 <= 1) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void p(StateObject stateObject) {
        Object obj;
        Object obj2;
        Object obj3;
        if (o(stateObject)) {
            SnapshotWeakSet snapshotWeakSet = g;
            int i2 = snapshotWeakSet.a;
            int identityHashCode = System.identityHashCode(stateObject);
            int i3 = -1;
            if (i2 > 0) {
                int i4 = snapshotWeakSet.a - 1;
                int i5 = 0;
                while (true) {
                    if (i5 <= i4) {
                        int i6 = (i5 + i4) >>> 1;
                        int i7 = snapshotWeakSet.b[i6];
                        if (i7 < identityHashCode) {
                            i5 = i6 + 1;
                        } else if (i7 > identityHashCode) {
                            i4 = i6 - 1;
                        } else {
                            WeakReference weakReference = snapshotWeakSet.c[i6];
                            if (weakReference != null) {
                                obj = weakReference.get();
                            } else {
                                obj = null;
                            }
                            if (stateObject != obj) {
                                for (int i8 = i6 - 1; -1 < i8 && snapshotWeakSet.b[i8] == identityHashCode; i8--) {
                                    WeakReference weakReference2 = snapshotWeakSet.c[i8];
                                    if (weakReference2 != null) {
                                        obj3 = weakReference2.get();
                                    } else {
                                        obj3 = null;
                                    }
                                    if (obj3 == stateObject) {
                                        i3 = i8;
                                        break;
                                    }
                                }
                                i6++;
                                int i9 = snapshotWeakSet.a;
                                while (true) {
                                    if (i6 < i9) {
                                        if (snapshotWeakSet.b[i6] != identityHashCode) {
                                            i3 = -(i6 + 1);
                                            break;
                                        }
                                        WeakReference weakReference3 = snapshotWeakSet.c[i6];
                                        if (weakReference3 != null) {
                                            obj2 = weakReference3.get();
                                        } else {
                                            obj2 = null;
                                        }
                                        if (obj2 == stateObject) {
                                            break;
                                        } else {
                                            i6++;
                                        }
                                    } else {
                                        i3 = -(snapshotWeakSet.a + 1);
                                        break;
                                    }
                                }
                            }
                            i3 = i6;
                        }
                    } else {
                        i3 = -(i5 + 1);
                        break;
                    }
                }
                if (i3 >= 0) {
                    return;
                }
            }
            int i10 = -(i3 + 1);
            WeakReference[] weakReferenceArr = snapshotWeakSet.c;
            int length = weakReferenceArr.length;
            if (i2 == length) {
                int i11 = length * 2;
                WeakReference[] weakReferenceArr2 = new WeakReference[i11];
                int[] iArr = new int[i11];
                int i12 = i10 + 1;
                System.arraycopy(weakReferenceArr, i10, weakReferenceArr2, i12, i2 - i10);
                System.arraycopy(snapshotWeakSet.c, 0, weakReferenceArr2, 0, i10);
                ArraysKt.f(i12, i10, i2, snapshotWeakSet.b, iArr);
                ArraysKt.i(0, i10, 6, snapshotWeakSet.b, iArr);
                snapshotWeakSet.c = weakReferenceArr2;
                snapshotWeakSet.b = iArr;
            } else {
                int i13 = i10 + 1;
                System.arraycopy(weakReferenceArr, i10, weakReferenceArr, i13, i2 - i10);
                int[] iArr2 = snapshotWeakSet.b;
                ArraysKt.f(i13, i10, i2, iArr2, iArr2);
            }
            snapshotWeakSet.c[i10] = new java.lang.ref.WeakReference(stateObject);
            snapshotWeakSet.b[i10] = identityHashCode;
            snapshotWeakSet.a++;
        }
    }

    public static final void q() {
        throw new IllegalStateException("Reading a state that was created after the snapshot was taken or in a snapshot that has not yet been applied");
    }

    public static final StateRecord r(StateRecord stateRecord, long j2, SnapshotIdSet snapshotIdSet) {
        StateRecord stateRecord2 = null;
        while (stateRecord != null) {
            long j3 = stateRecord.a;
            if (j3 != 0 && Intrinsics.c(j3, j2) <= 0 && !snapshotIdSet.d(j3) && (stateRecord2 == null || Intrinsics.c(stateRecord2.a, stateRecord.a) < 0)) {
                stateRecord2 = stateRecord;
            }
            stateRecord = stateRecord.b;
        }
        if (stateRecord2 == null) {
            return null;
        }
        return stateRecord2;
    }

    public static final StateRecord s(StateRecord stateRecord, StateObject stateObject) {
        StateRecord r;
        Snapshot i2 = i();
        Function1 e2 = i2.e();
        if (e2 != null) {
            e2.b(stateObject);
        }
        StateRecord r2 = r(stateRecord, i2.g(), i2.d());
        if (r2 == null) {
            synchronized (c) {
                Snapshot i3 = i();
                StateRecord c2 = stateObject.c();
                c2.getClass();
                r = r(c2, i3.g(), i3.d());
                if (r == null) {
                    q();
                    throw null;
                }
            }
            return r;
        }
        return r2;
    }

    public static final void t(int i2) {
        SnapshotDoubleIndexHeap snapshotDoubleIndexHeap = f;
        int i3 = snapshotDoubleIndexHeap.d[i2];
        snapshotDoubleIndexHeap.b(i3, snapshotDoubleIndexHeap.a - 1);
        snapshotDoubleIndexHeap.a--;
        long[] jArr = snapshotDoubleIndexHeap.b;
        long j2 = jArr[i3];
        int i4 = i3;
        while (i4 > 0) {
            int i5 = ((i4 + 1) >> 1) - 1;
            if (Intrinsics.c(jArr[i5], j2) <= 0) {
                break;
            }
            snapshotDoubleIndexHeap.b(i5, i4);
            i4 = i5;
        }
        long[] jArr2 = snapshotDoubleIndexHeap.b;
        int i6 = snapshotDoubleIndexHeap.a >> 1;
        while (i3 < i6) {
            int i7 = (i3 + 1) << 1;
            int i8 = i7 - 1;
            if (i7 < snapshotDoubleIndexHeap.a && Intrinsics.c(jArr2[i7], jArr2[i8]) < 0) {
                if (Intrinsics.c(jArr2[i7], jArr2[i3]) >= 0) {
                    break;
                }
                snapshotDoubleIndexHeap.b(i7, i3);
                i3 = i7;
            } else {
                if (Intrinsics.c(jArr2[i8], jArr2[i3]) >= 0) {
                    break;
                }
                snapshotDoubleIndexHeap.b(i8, i3);
                i3 = i8;
            }
        }
        snapshotDoubleIndexHeap.d[i2] = snapshotDoubleIndexHeap.e;
        snapshotDoubleIndexHeap.e = i2;
    }

    public static final Object u(GlobalSnapshot globalSnapshot, Function1 function1) {
        long j2 = globalSnapshot.b;
        Object b2 = function1.b(d.c(j2));
        long j3 = e;
        e = 1 + j3;
        SnapshotIdSet c2 = d.c(j2);
        d = c2;
        globalSnapshot.b = j3;
        globalSnapshot.a = c2;
        globalSnapshot.g = 0;
        globalSnapshot.h = null;
        globalSnapshot.o();
        d = d.f(j3);
        return b2;
    }

    public static final StateRecord v(StateRecord stateRecord, StateObject stateObject, Snapshot snapshot) {
        StateRecord r;
        StateRecord r2;
        if (snapshot.f()) {
            snapshot.n(stateObject);
        }
        long g2 = snapshot.g();
        StateRecord r3 = r(stateRecord, g2, snapshot.d());
        if (r3 == null) {
            synchronized (c) {
                Snapshot i2 = i();
                StateRecord c2 = stateObject.c();
                c2.getClass();
                r2 = r(c2, i2.g(), i2.d());
                if (r2 == null) {
                    q();
                    throw null;
                }
            }
            r3 = r2;
        }
        if (r3.a == snapshot.g()) {
            return r3;
        }
        synchronized (c) {
            r = r(stateObject.c(), g2, snapshot.d());
            if (r != null) {
                if (r.a != g2) {
                    StateRecord l = l(r, stateObject);
                    l.a(r);
                    l.a = snapshot.g();
                    r = l;
                }
            } else {
                q();
                throw null;
            }
        }
        snapshot.n(stateObject);
        return r;
    }
}
