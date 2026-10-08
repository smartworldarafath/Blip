package coil3.intercept;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {75}, m = "intercept", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptor$intercept$1 extends ContinuationImpl {
    public RealInterceptorChain m;
    public /* synthetic */ Object n;
    public final /* synthetic */ EngineInterceptor o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$intercept$1(EngineInterceptor engineInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return this.o.d(null, this);
    }
}
