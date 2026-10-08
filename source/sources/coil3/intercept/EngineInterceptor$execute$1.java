package coil3.intercept;

import coil3.EventListener;
import coil3.request.ImageRequest;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {126, 130, 148}, m = "execute", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptor$execute$1 extends ContinuationImpl {
    public ImageRequest m;
    public Object n;
    public EventListener o;
    public Ref$ObjectRef p;
    public Ref$ObjectRef q;
    public Ref$ObjectRef r;
    public Ref$ObjectRef s;
    public /* synthetic */ Object t;
    public final /* synthetic */ EngineInterceptor u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$execute$1(EngineInterceptor engineInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.u = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return EngineInterceptor.b(this.u, null, null, null, null, this);
    }
}
