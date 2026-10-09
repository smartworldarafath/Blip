package androidx.room.coroutines;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.room.coroutines.PooledConnectionImpl", f = "ConnectionPoolImpl.kt", l = {543}, m = "endTransaction")
/* loaded from: classes.dex */
public final class PooledConnectionImpl$endTransaction$1 extends ContinuationImpl {
    public Object m;
    public Object n;
    public boolean o;
    public /* synthetic */ Object p;
    public final /* synthetic */ PooledConnectionImpl q;
    public int r;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public PooledConnectionImpl$endTransaction$1(PooledConnectionImpl pooledConnectionImpl, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.q = pooledConnectionImpl;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.p = obj;
        this.r |= Integer.MIN_VALUE;
        return this.q.f(false, this);
    }
}
