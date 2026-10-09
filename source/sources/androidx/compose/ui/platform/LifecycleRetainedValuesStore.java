package androidx.compose.ui.platform;

import androidx.compose.runtime.retain.ManagedRetainedValuesStore;
import androidx.compose.runtime.retain.RetainedValuesStore;
import androidx.compose.runtime.retain.impl.PreconditionsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class LifecycleRetainedValuesStore implements RetainedValuesStore {
    public final ManagedRetainedValuesStore a;

    public LifecycleRetainedValuesStore() {
        ManagedRetainedValuesStore managedRetainedValuesStore = new ManagedRetainedValuesStore();
        this.a = managedRetainedValuesStore;
        if (managedRetainedValuesStore.b) {
            return;
        }
        if (managedRetainedValuesStore.c) {
            PreconditionsKt.a("ManagedValuesStore tried to enter composition twice. Did you attempt to install the same store multiple times or into two compositions?");
        }
        managedRetainedValuesStore.a();
        managedRetainedValuesStore.c = true;
    }
}
