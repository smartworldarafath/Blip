package androidx.compose.runtime;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DynamicValueHolder<T> implements ValueHolder<T> {
    public final MutableState a;

    public DynamicValueHolder(MutableState mutableState) {
        this.a = mutableState;
    }

    @Override // androidx.compose.runtime.ValueHolder
    public final Object a(PersistentCompositionLocalMap persistentCompositionLocalMap) {
        return ((SnapshotMutableStateImpl) this.a).getValue();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof DynamicValueHolder) && this.a == ((DynamicValueHolder) obj).a) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return this.a.hashCode();
    }

    public final String toString() {
        return "DynamicValueHolder(state=" + this.a + ")";
    }
}
