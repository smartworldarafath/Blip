package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.Flow;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PreferenceDataStore implements DataStore<Preferences> {
    public final DataStore a;

    public PreferenceDataStore(DataStore dataStore) {
        this.a = dataStore;
    }

    @Override // androidx.datastore.core.DataStore
    public final Flow g() {
        return this.a.g();
    }

    @Override // androidx.datastore.core.DataStore
    public final Object h(Function2 function2, SuspendLambda suspendLambda) {
        return this.a.h(new PreferenceDataStore$updateData$2(function2, null), suspendLambda);
    }
}
