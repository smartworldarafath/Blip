package androidx.compose.runtime.snapshots;

import defpackage.le;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class NestedReadonlySnapshot extends Snapshot {
    public final Function1 e;
    public final Snapshot f;

    public NestedReadonlySnapshot(long j, SnapshotIdSet snapshotIdSet, Function1 function1, Snapshot snapshot) {
        super(j, snapshotIdSet);
        this.e = function1;
        this.f = snapshot;
        snapshot.k();
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        Snapshot snapshot = this.f;
        if (!this.c) {
            if (this.b != snapshot.g()) {
                a();
            }
            snapshot.l();
            this.c = true;
            synchronized (SnapshotKt.c) {
                o();
            }
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Function1 e() {
        return this.e;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final boolean f() {
        return true;
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
    public final void n(StateObject stateObject) {
        le leVar = SnapshotKt.a;
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(Function1 function1) {
        return new NestedReadonlySnapshot(this.b, this.a, SnapshotKt.j(function1, this.e, true), this.f);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void m() {
    }
}
