package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.internal.Thread_jvmKt;
import defpackage.le;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TransparentObserverSnapshot extends Snapshot {
    public final Snapshot e;
    public final boolean f;
    public final boolean g;
    public Function1 h;
    public final long i;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public TransparentObserverSnapshot(Snapshot snapshot, Function1 function1, boolean z, boolean z2) {
        super(0L, SnapshotIdSet.n);
        Function1 e;
        le leVar = SnapshotKt.a;
        this.e = snapshot;
        this.f = z;
        this.g = z2;
        this.h = SnapshotKt.j(function1, (snapshot == null || (e = snapshot.e()) == null) ? SnapshotKt.j.e : e, z);
        this.i = Thread_jvmKt.a();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        Snapshot snapshot;
        this.c = true;
        if (this.g && (snapshot = this.e) != null) {
            snapshot.c();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final SnapshotIdSet d() {
        return v().d();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Function1 e() {
        return this.h;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final boolean f() {
        return v().f();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final long g() {
        return v().g();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Function1 i() {
        return null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void k() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void l() {
        SnapshotStateMapKt.a();
        throw null;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void m() {
        v().m();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void n(StateObject stateObject) {
        v().n(stateObject);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(Function1 function1) {
        Function1 j = SnapshotKt.j(function1, this.h, true);
        if (!this.f) {
            return SnapshotKt.f(v().u(null), j, true);
        }
        return v().u(j);
    }

    public final Snapshot v() {
        Snapshot snapshot = this.e;
        if (snapshot == null) {
            return SnapshotKt.j;
        }
        return snapshot;
    }
}
