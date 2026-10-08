package androidx.compose.runtime.snapshots;

import defpackage.le;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ReadonlySnapshot extends Snapshot {
    public final Function1 e;
    public int f;

    public ReadonlySnapshot(long j, SnapshotIdSet snapshotIdSet, Function1 function1) {
        super(j, snapshotIdSet);
        this.e = function1;
        this.f = 1;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        if (!this.c) {
            l();
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
        this.f++;
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void l() {
        int i = this.f - 1;
        this.f = i;
        if (i == 0) {
            a();
        }
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void n(StateObject stateObject) {
        le leVar = SnapshotKt.a;
        throw new IllegalStateException("Cannot modify a state object in a read-only snapshot");
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(Function1 function1) {
        SnapshotKt.b(this);
        return new NestedReadonlySnapshot(this.b, this.a, SnapshotKt.j(function1, this.e, true), this);
    }

    @Override // androidx.compose.runtime.snapshots.Snapshot
    public final void m() {
    }
}
