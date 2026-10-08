package androidx.compose.runtime;

import androidx.collection.MutableObjectIntMap;
import androidx.collection.ObjectIntMap;
import androidx.collection.ObjectIntMapKt;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.runtime.internal.IntRef;
import androidx.compose.runtime.internal.SnapshotThreadLocal;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.StateObject;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import defpackage.u2;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DerivedSnapshotState<T> extends StateObjectImpl implements DerivedState<T> {
    public final Function0 k;
    public final SnapshotMutationPolicy l;
    public ResultRecord m = new ResultRecord(SnapshotKt.i().g());

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ResultRecord<T> extends StateRecord {
        public static final Object h = new Object();
        public long c;
        public int d;
        public ObjectIntMap e;
        public Object f;
        public int g;

        public ResultRecord(long j) {
            super(j);
            MutableObjectIntMap mutableObjectIntMap = ObjectIntMapKt.a;
            mutableObjectIntMap.getClass();
            this.e = mutableObjectIntMap;
            this.f = h;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            ResultRecord resultRecord = (ResultRecord) stateRecord;
            this.e = resultRecord.e;
            this.f = resultRecord.f;
            this.g = resultRecord.g;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b(long j) {
            return new ResultRecord(j);
        }

        public final boolean c(DerivedState derivedState, Snapshot snapshot) {
            boolean z;
            boolean z2;
            Object obj = SnapshotKt.c;
            synchronized (obj) {
                z = true;
                if (this.c == snapshot.g()) {
                    if (this.d == snapshot.h()) {
                        z2 = false;
                    }
                }
                z2 = true;
            }
            if (this.f == h || (z2 && this.g != d(derivedState, snapshot))) {
                z = false;
            }
            if (z && z2) {
                synchronized (obj) {
                    this.c = snapshot.g();
                    this.d = snapshot.h();
                }
                return z;
            }
            return z;
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r13v10, types: [androidx.compose.runtime.DerivedSnapshotState$ResultRecord] */
        /* JADX WARN: Type inference failed for: r13v5, types: [androidx.compose.runtime.snapshots.StateRecord] */
        /* JADX WARN: Type inference failed for: r13v6, types: [java.lang.Object, androidx.compose.runtime.snapshots.StateRecord] */
        public final int d(DerivedState derivedState, Snapshot snapshot) {
            ObjectIntMap objectIntMap;
            int i;
            long[] jArr;
            int i2;
            Object[] objArr;
            long[] jArr2;
            int i3;
            Object[] objArr2;
            long j;
            long j2;
            int i4;
            ?? h2;
            synchronized (SnapshotKt.c) {
                objectIntMap = this.e;
            }
            int i5 = 7;
            if (objectIntMap.e == 0) {
                return 7;
            }
            MutableVector c = SnapshotStateKt.c();
            Object[] objArr3 = c.j;
            int i6 = c.l;
            boolean z = false;
            for (int i7 = 0; i7 < i6; i7++) {
                ((DerivedStateObserver) objArr3[i7]).start();
            }
            try {
                Object[] objArr4 = objectIntMap.b;
                int[] iArr = objectIntMap.c;
                long[] jArr3 = objectIntMap.a;
                int length = jArr3.length - 2;
                if (length >= 0) {
                    i = 7;
                    int i8 = 0;
                    while (true) {
                        long j3 = jArr3[i8];
                        long j4 = -9187201950435737472L;
                        if ((((~j3) << i5) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i9 = 8;
                            int i10 = 8 - ((~(i8 - length)) >>> 31);
                            i2 = i5;
                            int i11 = z ? 1 : 0;
                            while (i11 < i10) {
                                if ((j3 & 255) < 128) {
                                    int i12 = (i8 << 3) + i11;
                                    j2 = j4;
                                    StateObject stateObject = (StateObject) objArr4[i12];
                                    int i13 = i9;
                                    if (iArr[i12] != 1) {
                                        jArr2 = jArr3;
                                        i3 = i11;
                                        objArr2 = objArr4;
                                        j = j3;
                                    } else {
                                        if (stateObject instanceof DerivedSnapshotState) {
                                            DerivedSnapshotState derivedSnapshotState = (DerivedSnapshotState) stateObject;
                                            h2 = derivedSnapshotState.j((ResultRecord) SnapshotKt.h(derivedSnapshotState.m, snapshot), snapshot, z, derivedSnapshotState.k);
                                            ObjectIntMap objectIntMap2 = h2.e;
                                            Object[] objArr5 = objectIntMap2.b;
                                            long[] jArr4 = objectIntMap2.a;
                                            int length2 = jArr4.length - 2;
                                            jArr2 = jArr3;
                                            i3 = i11;
                                            objArr2 = objArr4;
                                            if (length2 >= 0) {
                                                int i14 = 0;
                                                while (true) {
                                                    long j5 = jArr4[i14];
                                                    j = j3;
                                                    int i15 = i;
                                                    if ((((~j5) << i2) & j5 & j2) != j2) {
                                                        int i16 = 8 - ((~(i14 - length2)) >>> 31);
                                                        for (int i17 = 0; i17 < i16; i17++) {
                                                            if ((j5 & 255) < 128) {
                                                                i15 = (i15 * 31) + System.identityHashCode((StateObject) objArr5[(i14 << 3) + i17]);
                                                            }
                                                            j5 >>= i13;
                                                        }
                                                        if (i16 != i13) {
                                                            i = i15;
                                                            break;
                                                        }
                                                    }
                                                    i = i15;
                                                    if (i14 == length2) {
                                                        break;
                                                    }
                                                    i14++;
                                                    j3 = j;
                                                    i13 = 8;
                                                }
                                            } else {
                                                j = j3;
                                            }
                                        } else {
                                            jArr2 = jArr3;
                                            i3 = i11;
                                            objArr2 = objArr4;
                                            j = j3;
                                            h2 = SnapshotKt.h(stateObject.c(), snapshot);
                                        }
                                        i = (((i * 31) + System.identityHashCode(h2)) * 31) + Long.hashCode(h2.a);
                                    }
                                    i4 = 8;
                                } else {
                                    jArr2 = jArr3;
                                    i3 = i11;
                                    objArr2 = objArr4;
                                    j = j3;
                                    j2 = j4;
                                    i4 = i9;
                                }
                                j3 = j >> i4;
                                i9 = i4;
                                j4 = j2;
                                objArr4 = objArr2;
                                z = false;
                                i11 = i3 + 1;
                                jArr3 = jArr2;
                            }
                            jArr = jArr3;
                            objArr = objArr4;
                            if (i10 != i9) {
                                break;
                            }
                        } else {
                            jArr = jArr3;
                            i2 = i5;
                            objArr = objArr4;
                        }
                        if (i8 != length) {
                            i8++;
                            i5 = i2;
                            jArr3 = jArr;
                            objArr4 = objArr;
                            z = false;
                        } else {
                            i5 = i;
                            break;
                        }
                    }
                }
                i = i5;
                Object[] objArr6 = c.j;
                int i18 = c.l;
                for (int i19 = 0; i19 < i18; i19++) {
                    ((DerivedStateObserver) objArr6[i19]).a();
                }
                return i;
            } catch (Throwable th) {
                Object[] objArr7 = c.j;
                int i20 = c.l;
                for (int i21 = 0; i21 < i20; i21++) {
                    ((DerivedStateObserver) objArr7[i21]).a();
                }
                throw th;
            }
        }
    }

    public DerivedSnapshotState(SnapshotMutationPolicy snapshotMutationPolicy, Function0 function0) {
        this.k = function0;
        this.l = snapshotMutationPolicy;
    }

    @Override // androidx.compose.runtime.DerivedState
    public final SnapshotMutationPolicy a() {
        return this.l;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void b(StateRecord stateRecord) {
        stateRecord.getClass();
        this.m = (ResultRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord c() {
        return this.m;
    }

    @Override // androidx.compose.runtime.DerivedState
    public final ResultRecord g() {
        Snapshot i = SnapshotKt.i();
        return j((ResultRecord) SnapshotKt.h(this.m, i), i, false, this.k);
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        Function1 e = SnapshotKt.i().e();
        if (e != null) {
            e.b(this);
        }
        Snapshot i = SnapshotKt.i();
        return j((ResultRecord) SnapshotKt.h(this.m, i), i, true, this.k).f;
    }

    /* JADX WARN: Type inference failed for: r6v2, types: [androidx.compose.runtime.b] */
    public final ResultRecord j(ResultRecord resultRecord, Snapshot snapshot, boolean z, Function0 function0) {
        MutableVector c;
        SnapshotMutationPolicy snapshotMutationPolicy;
        int i;
        ResultRecord resultRecord2 = resultRecord;
        if (resultRecord2.c(this, snapshot)) {
            if (z) {
                c = SnapshotStateKt.c();
                Object[] objArr = c.j;
                int i2 = c.l;
                for (int i3 = 0; i3 < i2; i3++) {
                    ((DerivedStateObserver) objArr[i3]).start();
                }
                try {
                    ObjectIntMap objectIntMap = resultRecord2.e;
                    SnapshotThreadLocal snapshotThreadLocal = SnapshotStateKt__DerivedStateKt.a;
                    IntRef intRef = (IntRef) snapshotThreadLocal.a();
                    if (intRef == null) {
                        intRef = new IntRef();
                        snapshotThreadLocal.b(intRef);
                    }
                    int i4 = intRef.a;
                    Object[] objArr2 = objectIntMap.b;
                    int[] iArr = objectIntMap.c;
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
                                        int i9 = (i5 << 3) + i8;
                                        StateObject stateObject = (StateObject) objArr2[i9];
                                        i = i6;
                                        intRef.a = i4 + iArr[i9];
                                        Function1 e = snapshot.e();
                                        if (e != null) {
                                            e.b(stateObject);
                                        }
                                    } else {
                                        i = i6;
                                    }
                                    j >>= i;
                                    i8++;
                                    i6 = i;
                                }
                                if (i7 != i6) {
                                    break;
                                }
                            }
                            if (i5 == length) {
                                break;
                            }
                            i5++;
                        }
                    }
                    intRef.a = i4;
                    Object[] objArr3 = c.j;
                    int i10 = c.l;
                    for (int i11 = 0; i11 < i10; i11++) {
                        ((DerivedStateObserver) objArr3[i11]).a();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            return resultRecord2;
        }
        final MutableObjectIntMap mutableObjectIntMap = new MutableObjectIntMap();
        SnapshotThreadLocal snapshotThreadLocal2 = SnapshotStateKt__DerivedStateKt.a;
        final IntRef intRef2 = (IntRef) snapshotThreadLocal2.a();
        if (intRef2 == null) {
            intRef2 = new IntRef();
            snapshotThreadLocal2.b(intRef2);
        }
        final int i12 = intRef2.a;
        c = SnapshotStateKt.c();
        Object[] objArr4 = c.j;
        int i13 = c.l;
        for (int i14 = 0; i14 < i13; i14++) {
            ((DerivedStateObserver) objArr4[i14]).start();
        }
        try {
            intRef2.a = i12 + 1;
            Object c2 = Snapshot.Companion.c(new Function1() { // from class: androidx.compose.runtime.b
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    int i15;
                    if (obj != DerivedSnapshotState.this) {
                        if (obj instanceof StateObject) {
                            int i16 = intRef2.a - i12;
                            MutableObjectIntMap mutableObjectIntMap2 = mutableObjectIntMap;
                            int a = mutableObjectIntMap2.a(obj);
                            if (a >= 0) {
                                i15 = mutableObjectIntMap2.c[a];
                            } else {
                                i15 = Integer.MAX_VALUE;
                            }
                            mutableObjectIntMap2.g(Math.min(i16, i15), obj);
                        }
                        return Unit.a;
                    }
                    u2.l("A derived state calculation cannot read itself");
                    return null;
                }
            }, function0);
            intRef2.a = i12;
            Object[] objArr5 = c.j;
            int i15 = c.l;
            for (int i16 = 0; i16 < i15; i16++) {
                ((DerivedStateObserver) objArr5[i16]).a();
            }
            Object obj = SnapshotKt.c;
            synchronized (obj) {
                try {
                    Snapshot i17 = SnapshotKt.i();
                    Object obj2 = resultRecord2.f;
                    if (obj2 != ResultRecord.h && (snapshotMutationPolicy = this.l) != null && snapshotMutationPolicy.a(c2, obj2)) {
                        resultRecord2.e = mutableObjectIntMap;
                        resultRecord2.g = resultRecord2.d(this, i17);
                    } else {
                        ResultRecord resultRecord3 = this.m;
                        synchronized (obj) {
                            StateRecord l = SnapshotKt.l(resultRecord3, this);
                            l.a(resultRecord3);
                            l.a = i17.g();
                            resultRecord2 = (ResultRecord) l;
                            resultRecord2.e = mutableObjectIntMap;
                            resultRecord2.g = resultRecord2.d(this, i17);
                            resultRecord2.f = c2;
                        }
                        return resultRecord2;
                    }
                } catch (Throwable th2) {
                    throw th2;
                }
            }
            IntRef intRef3 = (IntRef) SnapshotStateKt__DerivedStateKt.a.a();
            if (intRef3 != null && intRef3.a == 0) {
                SnapshotKt.i().m();
                synchronized (obj) {
                    Snapshot i18 = SnapshotKt.i();
                    resultRecord2.c = i18.g();
                    resultRecord2.d = i18.h();
                    return resultRecord2;
                }
            }
            return resultRecord2;
        } finally {
            Object[] objArr6 = c.j;
            int i19 = c.l;
            for (int i20 = 0; i20 < i19; i20++) {
                ((DerivedStateObserver) objArr6[i20]).a();
            }
        }
    }

    public final String toString() {
        String str;
        ResultRecord resultRecord = (ResultRecord) SnapshotKt.g(this.m);
        if (resultRecord.c(this, SnapshotKt.i())) {
            str = String.valueOf(resultRecord.f);
        } else {
            str = "<Not calculated>";
        }
        return "DerivedState(value=" + str + ")@" + hashCode();
    }
}
