package androidx.compose.runtime.snapshots;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface StateObject {
    void b(StateRecord stateRecord);

    StateRecord c();

    default StateRecord e(StateRecord stateRecord, StateRecord stateRecord2, StateRecord stateRecord3) {
        return null;
    }
}
