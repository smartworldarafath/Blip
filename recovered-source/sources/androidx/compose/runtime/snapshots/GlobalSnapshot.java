package androidx.compose.runtime.snapshots;

import defpackage.c8;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GlobalSnapshot extends MutableSnapshot {
    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final MutableSnapshot C(final Function1 function1, final Function1 function12) {
        return (MutableSnapshot) ((Snapshot) SnapshotKt.d(new c8(new Function1<SnapshotIdSet, MutableSnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedMutableSnapshot$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                long j;
                SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
                synchronized (SnapshotKt.c) {
                    j = SnapshotKt.e;
                    SnapshotKt.e = 1 + j;
                }
                return new MutableSnapshot(j, snapshotIdSet, Function1.this, function12);
            }
        }, 6)));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final void c() {
        synchronized (SnapshotKt.c) {
            o();
        }
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
        SnapshotKt.d(SnapshotKt.a);
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot, androidx.compose.runtime.snapshots.Snapshot
    public final Snapshot u(final Function1 function1) {
        return (ReadonlySnapshot) ((Snapshot) SnapshotKt.d(new c8(new Function1<SnapshotIdSet, ReadonlySnapshot>() { // from class: androidx.compose.runtime.snapshots.GlobalSnapshot$takeNestedSnapshot$1$1
            @Override // kotlin.jvm.functions.Function1
            public final Object b(Object obj) {
                long j;
                SnapshotIdSet snapshotIdSet = (SnapshotIdSet) obj;
                synchronized (SnapshotKt.c) {
                    j = SnapshotKt.e;
                    SnapshotKt.e = 1 + j;
                }
                return new ReadonlySnapshot(j, snapshotIdSet, Function1.this);
            }
        }, 6)));
    }

    @Override // androidx.compose.runtime.snapshots.MutableSnapshot
    public final SnapshotApplyResult w() {
        throw new IllegalStateException("Cannot apply the global snapshot directly. Call Snapshot.advanceGlobalSnapshot");
    }
}
