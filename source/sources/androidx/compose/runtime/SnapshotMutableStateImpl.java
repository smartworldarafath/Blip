package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.GlobalSnapshot;
import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotMutableStateImpl<T> extends StateObjectImpl implements SnapshotMutableState<T> {
    public final SnapshotMutationPolicy k;
    public StateStateRecord l;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StateStateRecord<T> extends StateRecord {
        public Object c;

        public StateStateRecord(long j, Object obj) {
            super(j);
            this.c = obj;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.c = ((StateStateRecord) stateRecord).c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b(long j) {
            return new StateStateRecord(j, this.c);
        }
    }

    public SnapshotMutableStateImpl(Object obj, SnapshotMutationPolicy snapshotMutationPolicy) {
        this.k = snapshotMutationPolicy;
        Snapshot i = SnapshotKt.i();
        StateStateRecord stateStateRecord = new StateStateRecord(i.g(), obj);
        if (!(i instanceof GlobalSnapshot)) {
            stateStateRecord.b = new StateStateRecord(1L, obj);
        }
        this.l = stateStateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public final SnapshotMutationPolicy a() {
        return this.k;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void b(StateRecord stateRecord) {
        stateRecord.getClass();
        this.l = (StateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord c() {
        return this.l;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (this.k.a(((StateStateRecord) stateRecord2).c, ((StateStateRecord) stateRecord3).c)) {
            return stateRecord2;
        }
        return null;
    }

    @Override // androidx.compose.runtime.State
    public final Object getValue() {
        return ((StateStateRecord) SnapshotKt.s(this.l, this)).c;
    }

    @Override // androidx.compose.runtime.MutableState
    public final void setValue(Object obj) {
        Snapshot i;
        StateStateRecord stateStateRecord = (StateStateRecord) SnapshotKt.g(this.l);
        if (!this.k.a(stateStateRecord.c, obj)) {
            StateStateRecord stateStateRecord2 = this.l;
            synchronized (SnapshotKt.c) {
                i = SnapshotKt.i();
                ((StateStateRecord) SnapshotKt.n(stateStateRecord2, this, i, stateStateRecord)).c = obj;
            }
            SnapshotKt.m(i, this);
        }
    }

    public final String toString() {
        return "MutableState(value=" + ((StateStateRecord) SnapshotKt.g(this.l)).c + ")@" + hashCode();
    }
}
