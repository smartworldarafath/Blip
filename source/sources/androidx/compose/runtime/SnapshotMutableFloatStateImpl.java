package androidx.compose.runtime;

import androidx.compose.runtime.snapshots.Snapshot;
import androidx.compose.runtime.snapshots.SnapshotKt;
import androidx.compose.runtime.snapshots.SnapshotMutableState;
import androidx.compose.runtime.snapshots.StateObjectImpl;
import androidx.compose.runtime.snapshots.StateRecord;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SnapshotMutableFloatStateImpl extends StateObjectImpl implements MutableFloatState, SnapshotMutableState<Float> {
    public FloatStateStateRecord k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FloatStateStateRecord extends StateRecord {
        public float c;

        public FloatStateStateRecord(long j, float f) {
            super(j);
            this.c = f;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final void a(StateRecord stateRecord) {
            stateRecord.getClass();
            this.c = ((FloatStateStateRecord) stateRecord).c;
        }

        @Override // androidx.compose.runtime.snapshots.StateRecord
        public final StateRecord b(long j) {
            return new FloatStateStateRecord(j, this.c);
        }
    }

    @Override // androidx.compose.runtime.snapshots.SnapshotMutableState
    public final SnapshotMutationPolicy a() {
        return StructuralEqualityPolicy.a;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final void b(StateRecord stateRecord) {
        stateRecord.getClass();
        this.k = (FloatStateStateRecord) stateRecord;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord c() {
        return this.k;
    }

    @Override // androidx.compose.runtime.snapshots.StateObject
    public final StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        if (((FloatStateStateRecord) stateRecord2).c == ((FloatStateStateRecord) stateRecord3).c) {
            return stateRecord2;
        }
        return null;
    }

    public final float j() {
        return ((FloatStateStateRecord) SnapshotKt.s(this.k, this)).c;
    }

    public final void k(float f) {
        Snapshot i;
        FloatStateStateRecord floatStateStateRecord = (FloatStateStateRecord) SnapshotKt.g(this.k);
        if (floatStateStateRecord.c == f) {
            return;
        }
        FloatStateStateRecord floatStateStateRecord2 = this.k;
        synchronized (SnapshotKt.c) {
            i = SnapshotKt.i();
            ((FloatStateStateRecord) SnapshotKt.n(floatStateStateRecord2, this, i, floatStateStateRecord)).c = f;
        }
        SnapshotKt.m(i, this);
    }

    public final String toString() {
        return "MutableFloatState(value=" + ((FloatStateStateRecord) SnapshotKt.g(this.k)).c + ")@" + hashCode();
    }
}
