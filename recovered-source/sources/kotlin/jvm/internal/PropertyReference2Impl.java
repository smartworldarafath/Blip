package kotlin.jvm.internal;

import com.google.firebase.datastorage.JavaDataStorage;
import kotlin.jvm.internal.CallableReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PropertyReference2Impl extends PropertyReference2 {
    public PropertyReference2Impl() {
        super(CallableReference.NoReceiver.j, JavaDataStorage.class, "dataStore", "getDataStore(Landroid/content/Context;)Landroidx/datastore/core/DataStore;", 0);
    }
}
