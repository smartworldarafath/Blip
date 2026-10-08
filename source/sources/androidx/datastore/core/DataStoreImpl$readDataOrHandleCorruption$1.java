package androidx.datastore.core;

import java.io.Serializable;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.datastore.core.DataStoreImpl", f = "DataStoreImpl.kt", l = {365, 366, 368, 369, 380, 384}, m = "readDataOrHandleCorruption")
/* loaded from: classes.dex */
public final class DataStoreImpl$readDataOrHandleCorruption$1 extends ContinuationImpl {
    public Object m;
    public Object n;
    public Serializable o;
    public Ref$ObjectRef p;
    public boolean q;
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ DataStoreImpl t;
    public int u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DataStoreImpl$readDataOrHandleCorruption$1(DataStoreImpl dataStoreImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.t = dataStoreImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.s = obj;
        this.u |= Integer.MIN_VALUE;
        return DataStoreImpl.e(this.t, false, this);
    }
}
