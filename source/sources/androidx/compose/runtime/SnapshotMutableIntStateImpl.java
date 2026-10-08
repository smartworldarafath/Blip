package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotMutableIntStateImpl extends StateObjectImpl implements MutableIntState, SnapshotMutableState<Integer> {
    public IntStateStateRecord k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class IntStateStateRecord extends StateRecord {
        public int c;

        public IntStateStateRecord(int i, long j) {
            super(j);
            this.c = i;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.c = ((IntStateStateRecord) stateRecord).c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b(long j) {
            return new IntStateStateRecord(this.c, j);
        }
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public final SnapshotMutationPolicy a() {
        return StructuralEqualityPolicy.a;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void b(StateRecord stateRecord) {
        stateRecord.getClass();
        this.k = (IntStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord c() {
        return this.k;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (((IntStateStateRecord) stateRecord2).c == ((IntStateStateRecord) stateRecord3).c) {
            return stateRecord2;
        }
        return null;
    }

    public final int j() {
        return ((IntStateStateRecord) SnapshotKt.s(this.k, this)).c;
    }

    public final void k(int i) {
        Snapshot i2;
        IntStateStateRecord intStateStateRecord = (IntStateStateRecord) SnapshotKt.g(this.k);
        if (intStateStateRecord.c != i) {
            IntStateStateRecord intStateStateRecord2 = this.k;
            synchronized (SnapshotKt.c) {
                i2 = SnapshotKt.i();
                ((IntStateStateRecord) SnapshotKt.n(intStateStateRecord2, this, i2, intStateStateRecord)).c = i;
            }
            SnapshotKt.m(i2, this);
        }
    }

    public final String toString() {
        return q.f(((IntStateStateRecord) SnapshotKt.g(this.k)).c, hashCode(), "MutableIntState(value=", ")@");
    }
}
