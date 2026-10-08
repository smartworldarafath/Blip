package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.collection.ScatterSetKt;
import androidx.compose.runtime.PreconditionsKt;
import androidx.compose.runtime.collection.ScatterSetWrapper;
import androidx.compose.runtime.snapshots.SnapshotApplyResult;
import defpackage.le;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Pair;
import kotlin.collections.CollectionsKt;
import kotlin.collections.EmptyList;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MutableSnapshot extends Snapshot {
    public static final int[] n = new int[0];
    public final Function1 e;
    public final Function1 f;
    public int g;
    public MutableScatterSet h;
    public ArrayList i;
    public SnapshotIdSet j;
    public int[] k;
    public int l;
    public boolean m;

    public MutableSnapshot(long j, SnapshotIdSet snapshotIdSet, Function1 function1, Function1 function12) {
        super(j, snapshotIdSet);
        this.e = function1;
        this.f = function12;
        this.j = SnapshotIdSet.n;
        this.k = n;
        this.l = 1;
    }

    public final void A(long j) {
        synchronized (SnapshotKt.c) {
            this.j = this.j.f(j);
        }
    }

    public void B(MutableScatterSet mutableScatterSet) {
        this.h = mutableScatterSet;
    }

    public MutableSnapshot C(Function1 function1, Function1 function12) {
        NestedMutableSnapshot nestedMutableSnapshot;
        if (this.c) {
            PreconditionsKt.a("Cannot use a disposed snapshot");
        }
        if (this.m && this.d < 0) {
            PreconditionsKt.b("Unsupported operation on a disposed or applied snapshot");
        }
        A(g());
        Object obj = SnapshotKt.c;
        synchronized (obj) {
            long j = SnapshotKt.e;
            SnapshotKt.e = j + 1;
            SnapshotKt.d = SnapshotKt.d.f(j);
            SnapshotIdSet d = d();
            r(d.f(j));
            nestedMutableSnapshot = new NestedMutableSnapshot(j, SnapshotKt.c(d, g() + 1, j), SnapshotKt.j(function1, e(), true), SnapshotKt.k(function12, i()), this);
        }
        if (!this.m && !this.c) {
            long g = g();
            synchronized (obj) {
                long j2 = SnapshotKt.e;
                SnapshotKt.e = j2 + 1;
                s(j2);
                SnapshotKt.d = SnapshotKt.d.f(g());
            }
            r(SnapshotKt.c(d(), g + 1, g()));
            return nestedMutableSnapshot;
        }
        return nestedMutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void b() {
        SnapshotKt.d = SnapshotKt.d.c(g()).b(this.j);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void c() {
        if (!this.c) {
            this.c = true;
            synchronized (SnapshotKt.c) {
                o();
            }
            l();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public boolean f() {
        return false;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public int h() {
        return this.g;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public Function1 i() {
        return this.f;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void k() {
        this.l++;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void l() {
        if (this.l <= 0) {
            PreconditionsKt.a("no pending nested snapshots");
        }
        int i = this.l - 1;
        this.l = i;
        if (i == 0 && !this.m) {
            MutableScatterSet x = x();
            if (x != null) {
                if (this.m) {
                    PreconditionsKt.b("Unsupported operation on a snapshot that has been applied");
                }
                B(null);
                long g = g();
                Object[] objArr = x.b;
                long[] jArr = x.a;
                int length = jArr.length - 2;
                if (length >= 0) {
                    int i2 = 0;
                    while (true) {
                        long j = jArr[i2];
                        if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                            int i3 = 8 - ((~(i2 - length)) >>> 31);
                            for (int i4 = 0; i4 < i3; i4++) {
                                if ((255 & j) < 128) {
                                    for (StateRecord c = ((StateObject) objArr[(i2 << 3) + i4]).c(); c != null; c = c.b) {
                                        long j2 = c.a;
                                        if (j2 == g || CollectionsKt.n(this.j, Long.valueOf(j2))) {
                                            le leVar = SnapshotKt.a;
                                            c.a = 0L;
                                        }
                                    }
                                }
                                j >>= 8;
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
                }
            }
            a();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void m() {
        if (!this.m && !this.c) {
            v();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void n(StateObject stateObject) {
        MutableScatterSet x = x();
        if (x == null) {
            MutableScatterSet mutableScatterSet = ScatterSetKt.a;
            x = new MutableScatterSet();
            B(x);
        }
        x.d(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void p() {
        int length = this.k.length;
        for (int i = 0; i < length; i++) {
            SnapshotKt.t(this.k[i]);
        }
        o();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public void t(int i) {
        this.g = i;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public Snapshot u(Function1 function1) {
        NestedReadonlySnapshot nestedReadonlySnapshot;
        if (this.c) {
            PreconditionsKt.a("Cannot use a disposed snapshot");
        }
        if (this.m && this.d < 0) {
            PreconditionsKt.b("Unsupported operation on a disposed or applied snapshot");
        }
        long g = g();
        A(g());
        Object obj = SnapshotKt.c;
        synchronized (obj) {
            long j = SnapshotKt.e;
            SnapshotKt.e = j + 1;
            SnapshotKt.d = SnapshotKt.d.f(j);
            nestedReadonlySnapshot = new NestedReadonlySnapshot(j, SnapshotKt.c(d(), g + 1, j), SnapshotKt.j(function1, e(), true), this);
        }
        if (!this.m && !this.c) {
            long g2 = g();
            synchronized (obj) {
                long j2 = SnapshotKt.e;
                SnapshotKt.e = j2 + 1;
                s(j2);
                SnapshotKt.d = SnapshotKt.d.f(g());
            }
            r(SnapshotKt.c(d(), g2 + 1, g()));
            return nestedReadonlySnapshot;
        }
        return nestedReadonlySnapshot;
    }

    public final void v() {
        A(g());
        if (!this.m && !this.c) {
            long g = g();
            synchronized (SnapshotKt.c) {
                long j = SnapshotKt.e;
                SnapshotKt.e = j + 1;
                s(j);
                SnapshotKt.d = SnapshotKt.d.f(g());
            }
            r(SnapshotKt.c(d(), g + 1, g()));
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:21:0x0079  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00ab A[LOOP:1: B:31:0x00a9->B:32:0x00ab, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00ba A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x0111 A[Catch: all -> 0x00fe, TryCatch #1 {all -> 0x00fe, blocks: (B:37:0x00ba, B:39:0x00ca, B:42:0x00d6, B:44:0x00e2, B:46:0x00ec, B:48:0x00f2, B:50:0x0100, B:56:0x0111, B:59:0x011b, B:61:0x0125, B:63:0x012f, B:65:0x0135, B:67:0x013f, B:73:0x0147, B:75:0x014a, B:77:0x014e, B:79:0x0155, B:81:0x0161, B:87:0x0108), top: B:36:0x00ba }] */
    /* JADX WARN: Removed duplicated region for block: B:77:0x014e A[Catch: all -> 0x00fe, TryCatch #1 {all -> 0x00fe, blocks: (B:37:0x00ba, B:39:0x00ca, B:42:0x00d6, B:44:0x00e2, B:46:0x00ec, B:48:0x00f2, B:50:0x0100, B:56:0x0111, B:59:0x011b, B:61:0x0125, B:63:0x012f, B:65:0x0135, B:67:0x013f, B:73:0x0147, B:75:0x014a, B:77:0x014e, B:79:0x0155, B:81:0x0161, B:87:0x0108), top: B:36:0x00ba }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public SnapshotApplyResult w() {
        HashMap hashMap;
        List list;
        MutableScatterSet mutableScatterSet;
        long j;
        long j2;
        ArrayList arrayList;
        int size;
        int i;
        MutableScatterSet x = x();
        if (x != null) {
            long j3 = SnapshotKt.j.b;
            hashMap = SnapshotKt.a(j3, this, SnapshotKt.d.c(j3));
        } else {
            hashMap = null;
        }
        EmptyList emptyList = EmptyList.j;
        synchronized (SnapshotKt.c) {
            try {
                SnapshotKt.b(this);
                if (x != null && x.d != 0) {
                    GlobalSnapshot globalSnapshot = SnapshotKt.j;
                    SnapshotApplyResult z = z(SnapshotKt.e, x, hashMap, SnapshotKt.d.c(globalSnapshot.b));
                    if (!z.equals(SnapshotApplyResult.Success.a)) {
                        return z;
                    }
                    b();
                    mutableScatterSet = globalSnapshot.h;
                    SnapshotKt.u(globalSnapshot, SnapshotKt.a);
                    B(null);
                    globalSnapshot.h = null;
                    list = SnapshotKt.h;
                    this.m = true;
                    if (mutableScatterSet != null) {
                        ScatterSetWrapper scatterSetWrapper = new ScatterSetWrapper(mutableScatterSet);
                        if (!mutableScatterSet.b()) {
                            int size2 = list.size();
                            for (int i2 = 0; i2 < size2; i2++) {
                                ((Function2) list.get(i2)).n(scatterSetWrapper, this);
                            }
                        }
                    }
                    if (x != null && x.c()) {
                        ScatterSetWrapper scatterSetWrapper2 = new ScatterSetWrapper(x);
                        size = list.size();
                        for (i = 0; i < size; i++) {
                            ((Function2) list.get(i)).n(scatterSetWrapper2, this);
                        }
                    }
                    synchronized (SnapshotKt.c) {
                        try {
                            p();
                            SnapshotKt.e();
                            if (mutableScatterSet != null) {
                                Object[] objArr = mutableScatterSet.b;
                                long[] jArr = mutableScatterSet.a;
                                int length = jArr.length - 2;
                                if (length >= 0) {
                                    int i3 = 0;
                                    j = 128;
                                    while (true) {
                                        long j4 = jArr[i3];
                                        j2 = 255;
                                        if ((((~j4) << 7) & j4 & (-9187201950435737472L)) != -9187201950435737472L) {
                                            int i4 = 8 - ((~(i3 - length)) >>> 31);
                                            for (int i5 = 0; i5 < i4; i5++) {
                                                if ((j4 & 255) < 128) {
                                                    SnapshotKt.p((StateObject) objArr[(i3 << 3) + i5]);
                                                }
                                                j4 >>= 8;
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
                                    if (x != null) {
                                        Object[] objArr2 = x.b;
                                        long[] jArr2 = x.a;
                                        int length2 = jArr2.length - 2;
                                        if (length2 >= 0) {
                                            int i6 = 0;
                                            while (true) {
                                                long j5 = jArr2[i6];
                                                if ((((~j5) << 7) & j5 & (-9187201950435737472L)) != -9187201950435737472L) {
                                                    int i7 = 8 - ((~(i6 - length2)) >>> 31);
                                                    for (int i8 = 0; i8 < i7; i8++) {
                                                        if ((j5 & j2) < j) {
                                                            SnapshotKt.p((StateObject) objArr2[(i6 << 3) + i8]);
                                                        }
                                                        j5 >>= 8;
                                                    }
                                                    if (i7 != 8) {
                                                        break;
                                                    }
                                                }
                                                if (i6 == length2) {
                                                    break;
                                                }
                                                i6++;
                                            }
                                        }
                                    }
                                    arrayList = this.i;
                                    if (arrayList != null) {
                                        int size3 = arrayList.size();
                                        for (int i9 = 0; i9 < size3; i9++) {
                                            SnapshotKt.p((StateObject) arrayList.get(i9));
                                        }
                                    }
                                    this.i = null;
                                }
                            }
                            j = 128;
                            j2 = 255;
                            if (x != null) {
                            }
                            arrayList = this.i;
                            if (arrayList != null) {
                            }
                            this.i = null;
                        } catch (Throwable th) {
                            throw th;
                        }
                    }
                    return SnapshotApplyResult.Success.a;
                }
                b();
                GlobalSnapshot globalSnapshot2 = SnapshotKt.j;
                MutableScatterSet mutableScatterSet2 = globalSnapshot2.h;
                SnapshotKt.u(globalSnapshot2, SnapshotKt.a);
                if (mutableScatterSet2 != null && mutableScatterSet2.c()) {
                    list = SnapshotKt.h;
                    mutableScatterSet = mutableScatterSet2;
                } else {
                    list = emptyList;
                    mutableScatterSet = null;
                }
                this.m = true;
                if (mutableScatterSet != null) {
                }
                if (x != null) {
                    ScatterSetWrapper scatterSetWrapper22 = new ScatterSetWrapper(x);
                    size = list.size();
                    while (i < size) {
                    }
                }
                synchronized (SnapshotKt.c) {
                }
            } catch (Throwable th2) {
                throw th2;
            }
        }
    }

    public MutableScatterSet x() {
        return this.h;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    /* renamed from: y, reason: merged with bridge method [inline-methods] */
    public Function1 e() {
        return this.e;
    }

    public final SnapshotApplyResult z(long j, MutableScatterSet mutableScatterSet, HashMap hashMap, SnapshotIdSet snapshotIdSet) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        SnapshotIdSet snapshotIdSet2;
        Object[] objArr;
        long[] jArr;
        SnapshotIdSet snapshotIdSet3;
        Object[] objArr2;
        long[] jArr2;
        int i;
        long j2;
        ArrayList arrayList4;
        StateRecord e;
        Pair pair;
        ArrayList arrayList5;
        SnapshotIdSet e2 = d().f(g()).e(this.j);
        Object[] objArr3 = mutableScatterSet.b;
        long[] jArr3 = mutableScatterSet.a;
        int length = jArr3.length - 2;
        if (length >= 0) {
            int i2 = 0;
            arrayList3 = null;
            arrayList2 = null;
            while (true) {
                long j3 = jArr3[i2];
                if ((((~j3) << 7) & j3 & (-9187201950435737472L)) != -9187201950435737472L) {
                    int i3 = 8 - ((~(i2 - length)) >>> 31);
                    int i4 = 0;
                    while (i4 < i3) {
                        if ((j3 & 255) < 128) {
                            objArr2 = objArr3;
                            StateObject stateObject = (StateObject) objArr3[(i2 << 3) + i4];
                            jArr2 = jArr3;
                            StateRecord c = stateObject.c();
                            i = i4;
                            ArrayList arrayList6 = arrayList3;
                            StateRecord r = SnapshotKt.r(c, j, snapshotIdSet);
                            if (r == null) {
                                arrayList4 = arrayList2;
                                j2 = j3;
                            } else {
                                arrayList4 = arrayList2;
                                j2 = j3;
                                StateRecord r2 = SnapshotKt.r(c, g(), e2);
                                if (r2 != null && r2.a != 1 && !r.equals(r2)) {
                                    snapshotIdSet3 = e2;
                                    StateRecord r3 = SnapshotKt.r(c, g(), d());
                                    if (r3 != null) {
                                        if (hashMap == null || (e = (StateRecord) hashMap.get(r)) == null) {
                                            e = stateObject.e(r2, r, r3);
                                        }
                                        if (e == null) {
                                            return new SnapshotApplyResult.Failure(this);
                                        }
                                        if (!e.equals(r3)) {
                                            if (e.equals(r)) {
                                                if (arrayList6 == null) {
                                                    arrayList5 = new ArrayList();
                                                } else {
                                                    arrayList5 = arrayList6;
                                                }
                                                arrayList5.add(new Pair(stateObject, r.b(g())));
                                                if (arrayList4 == null) {
                                                    arrayList2 = new ArrayList();
                                                } else {
                                                    arrayList2 = arrayList4;
                                                }
                                                arrayList2.add(stateObject);
                                                arrayList3 = arrayList5;
                                            } else {
                                                if (arrayList6 == null) {
                                                    arrayList3 = new ArrayList();
                                                } else {
                                                    arrayList3 = arrayList6;
                                                }
                                                if (!e.equals(r2)) {
                                                    pair = new Pair(stateObject, e);
                                                } else {
                                                    pair = new Pair(stateObject, r2.b(g()));
                                                }
                                                arrayList3.add(pair);
                                                arrayList2 = arrayList4;
                                            }
                                        }
                                        arrayList3 = arrayList6;
                                        arrayList2 = arrayList4;
                                    } else {
                                        SnapshotKt.q();
                                        throw null;
                                    }
                                }
                            }
                            snapshotIdSet3 = e2;
                            arrayList3 = arrayList6;
                            arrayList2 = arrayList4;
                        } else {
                            snapshotIdSet3 = e2;
                            objArr2 = objArr3;
                            jArr2 = jArr3;
                            i = i4;
                            j2 = j3;
                        }
                        j3 = j2 >> 8;
                        i4 = i + 1;
                        jArr3 = jArr2;
                        objArr3 = objArr2;
                        e2 = snapshotIdSet3;
                    }
                    snapshotIdSet2 = e2;
                    objArr = objArr3;
                    jArr = jArr3;
                    if (i3 != 8) {
                        break;
                    }
                } else {
                    snapshotIdSet2 = e2;
                    objArr = objArr3;
                    jArr = jArr3;
                }
                if (i2 != length) {
                    i2++;
                    jArr3 = jArr;
                    objArr3 = objArr;
                    e2 = snapshotIdSet2;
                } else {
                    arrayList = arrayList3;
                    break;
                }
            }
        } else {
            arrayList = null;
            arrayList2 = null;
        }
        arrayList3 = arrayList;
        if (arrayList3 != null) {
            v();
            int size = arrayList3.size();
            for (int i5 = 0; i5 < size; i5++) {
                Pair pair2 = (Pair) arrayList3.get(i5);
                StateObject stateObject2 = (StateObject) pair2.j;
                StateRecord stateRecord = (StateRecord) pair2.k;
                stateRecord.a = j;
                synchronized (SnapshotKt.c) {
                    stateRecord.b = stateObject2.c();
                    stateObject2.b(stateRecord);
                }
            }
        }
        if (arrayList2 != null) {
            int size2 = arrayList2.size();
            for (int i6 = 0; i6 < size2; i6++) {
                mutableScatterSet.m((StateObject) arrayList2.get(i6));
            }
            ArrayList arrayList7 = this.i;
            if (arrayList7 != null) {
                arrayList2 = CollectionsKt.F(arrayList7, arrayList2);
            }
            this.i = arrayList2;
        }
        return SnapshotApplyResult.Success.a;
    }
}
