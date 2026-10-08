package androidx.compose.runtime.snapshots;

import androidx.collection.MutableScatterSet;
import androidx.compose.runtime.internal.Thread_jvmKt;
import defpackage.le;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransparentObserverMutableSnapshot extends MutableSnapshot {
    public final MutableSnapshot o;
    public final boolean p;
    public final boolean q;
    public Function1 r;
    public Function1 s;
    public final long t;

    /* JADX WARN: Illegal instructions before constructor call */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public TransparentObserverMutableSnapshot(MutableSnapshot mutableSnapshot, Function1 function1, Function1 function12, boolean z, boolean z2) {
        super(0L, SnapshotIdSet.n, SnapshotKt.j(function1, (mutableSnapshot == null || (r0 = mutableSnapshot.e()) == null) ? SnapshotKt.j.e : r0, z), SnapshotKt.k(function12, (mutableSnapshot == null || (r9 = mutableSnapshot.i()) == null) ? SnapshotKt.j.f : r9));
        Function1 i;
        Function1 e;
        le leVar = SnapshotKt.a;
        this.o = mutableSnapshot;
        this.p = z;
        this.q = z2;
        this.r = this.e;
        this.s = this.f;
        this.t = Thread_jvmKt.a();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final void B(MutableScatterSet mutableScatterSet) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableSnapshot C(Function1 function1, Function1 function12) {
        Function1 j = SnapshotKt.j(function1, this.r, true);
        Function1 k = SnapshotKt.k(function12, this.s);
        if (!this.p) {
            return new TransparentObserverMutableSnapshot(D().C(null, k), j, k, false, true);
        }
        return D().C(j, k);
    }

    public final MutableSnapshot D() {
        MutableSnapshot mutableSnapshot = this.o;
        if (mutableSnapshot == null) {
            return SnapshotKt.j;
        }
        return mutableSnapshot;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        MutableSnapshot mutableSnapshot;
        this.c = true;
        if (this.q && (mutableSnapshot = this.o) != null) {
            mutableSnapshot.c();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final SnapshotIdSet d() {
        return D().d();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Function1 e() {
        return this.r;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final boolean f() {
        return D().f();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final long g() {
        return D().g();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final int h() {
        return D().h();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Function1 i() {
        return this.s;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void k() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void l() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void m() {
        D().m();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void n(StateObject stateObject) {
        D().n(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void r(SnapshotIdSet snapshotIdSet) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void s(long j) {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void t(int i) {
        D().t(i);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(Function1 function1) {
        Function1 j = SnapshotKt.j(function1, this.r, true);
        if (!this.p) {
            return SnapshotKt.f(D().u(null), j, true);
        }
        return D().u(j);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotApplyResult w() {
        return D().w();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableScatterSet x() {
        return D().x();
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    /* renamed from: y */
    public final Function1 e() {
        return this.r;
    }
}
