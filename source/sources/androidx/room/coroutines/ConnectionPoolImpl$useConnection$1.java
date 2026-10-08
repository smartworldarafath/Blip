package androidx.room.coroutines;

import java.io.Serializable;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.coroutines.ConnectionPoolImpl", f = "ConnectionPoolImpl.kt", l = {114, 118, 541, 147}, m = "useConnection")
/* loaded from: classes.dex */
public final class ConnectionPoolImpl$useConnection$1<R> extends ContinuationImpl {
    public Object m;
    public Serializable n;
    public Object o;
    public Ref$ObjectRef p;
    public CoroutineContext q;
    public Ref$ObjectRef r;
    public boolean s;
    public /* synthetic */ Object t;
    public final /* synthetic */ ConnectionPoolImpl u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ConnectionPoolImpl$useConnection$1(ConnectionPoolImpl connectionPoolImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.u = connectionPoolImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return this.u.j0(false, null, this);
    }
}
