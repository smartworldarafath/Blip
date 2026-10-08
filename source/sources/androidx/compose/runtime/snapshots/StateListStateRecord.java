package androidx.compose.runtime.snapshots;

import androidx.compose.runtime.external.kotlinx.collections.immutable.PersistentList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class StateListStateRecord<T> extends StateRecord {
    public PersistentList c;
    public int d;
    public int e;

    public StateListStateRecord(long j, PersistentList persistentList) {
        super(j);
        this.c = persistentList;
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final void a(StateRecord stateRecord) {
        synchronized (SnapshotStateListKt.a) {
            stateRecord.getClass();
            this.c = ((StateListStateRecord) stateRecord).c;
            this.d = ((StateListStateRecord) stateRecord).d;
            this.e = ((StateListStateRecord) stateRecord).e;
        }
    }

    @Override // androidx.compose.runtime.snapshots.StateRecord
    public final StateRecord b(long j) {
        return new StateListStateRecord(j, this.c);
    }
}
