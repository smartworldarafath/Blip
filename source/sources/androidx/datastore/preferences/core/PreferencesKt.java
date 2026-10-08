package androidx.datastore.preferences.core;

import androidx.datastore.core.DataStore;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PreferencesKt {
    public static final Object a(DataStore dataStore, Function2 function2, SuspendLambda suspendLambda) {
        return dataStore.h(new PreferencesKt$edit$2(function2, null), suspendLambda);
    }
}
