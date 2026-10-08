package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotMutableLongStateImpl extends StateObjectImpl implements MutableLongState, SnapshotMutableState<Long> {
    public LongStateStateRecord k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class LongStateStateRecord extends StateRecord {
        public long c;

        public LongStateStateRecord(long j, long j2) {
            super(j);
            this.c = j2;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.c = ((LongStateStateRecord) stateRecord).c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b(long j) {
            return new LongStateStateRecord(j, this.c);
        }
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public final SnapshotMutationPolicy a() {
        return StructuralEqualityPolicy.a;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void b(StateRecord stateRecord) {
        stateRecord.getClass();
        this.k = (LongStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord c() {
        return this.k;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (((LongStateStateRecord) stateRecord2).c == ((LongStateStateRecord) stateRecord3).c) {
            return stateRecord2;
        }
        return null;
    }

    public final long j() {
        return ((LongStateStateRecord) SnapshotKt.s(this.k, this)).c;
    }

    public final void k(long j) {
        Snapshot i;
        LongStateStateRecord longStateStateRecord = (LongStateStateRecord) SnapshotKt.g(this.k);
        if (longStateStateRecord.c != j) {
            LongStateStateRecord longStateStateRecord2 = this.k;
            synchronized (SnapshotKt.c) {
                i = SnapshotKt.i();
                ((LongStateStateRecord) SnapshotKt.n(longStateStateRecord2, this, i, longStateStateRecord)).c = j;
            }
            SnapshotKt.m(i, this);
        }
    }

    public final String toString() {
        return "MutableLongState(value=" + ((LongStateStateRecord) SnapshotKt.g(this.k)).c + ")@" + hashCode();
    }
}
