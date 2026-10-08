package androidx.datastore.core;

import kotlin.Lazy;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DataStoreImpl$writeActor$1 extends Lambda implements Function1<Throwable, Unit> {
    public final /* synthetic */ DataStoreImpl k;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$writeActor$1(DataStoreImpl dataStoreImpl) {
        super(1);
        this.k = dataStoreImpl;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Throwable th = (Throwable) obj;
        DataStoreImpl dataStoreImpl = this.k;
        Lazy lazy = dataStoreImpl.j;
        if (th != null) {
            dataStoreImpl.h.b(new Final(th));
        }
        if (lazy.c()) {
            ((FileStorageConnection) ((StorageConnection) lazy.getValue())).close();
        }
        return Unit.a;
    }
}
