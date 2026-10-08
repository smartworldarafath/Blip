package androidx.datastore.core;

import androidx.datastore.core.handlers.ReplaceFileCorruptionHandler;
import java.util.List;
import kotlin.collections.CollectionsKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DataStoreFactory {
    public static DataStoreImpl a(FileStorage fileStorage, ReplaceFileCorruptionHandler replaceFileCorruptionHandler, List list, CoroutineScope coroutineScope) {
        list.getClass();
        return new DataStoreImpl(fileStorage, CollectionsKt.B(new DataMigrationInitializer$Companion$getInitializer$1(list, null)), replaceFileCorruptionHandler, coroutineScope);
    }
}
