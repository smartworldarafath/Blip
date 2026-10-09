package androidx.compose.runtime;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface MutableIntState extends State, MutableState<Integer> {
    @Override // androidx.compose.runtime.State
    default Object getValue() {
        return Integer.valueOf(((SnapshotMutableIntStateImpl) this).j());
    }

    @Override // androidx.compose.runtime.MutableState
    default void setValue(Object obj) {
        ((SnapshotMutableIntStateImpl) this).k(((Number) obj).intValue());
    }
}
