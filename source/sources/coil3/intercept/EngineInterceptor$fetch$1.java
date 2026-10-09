package coil3.intercept;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.request.ImageRequest;
import coil3.request.Options;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {169}, m = "fetch", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptor$fetch$1 extends ContinuationImpl {
    public ComponentRegistry m;
    public ImageRequest n;
    public Object o;
    public Options p;
    public EventListener q;
    public int r;
    public /* synthetic */ Object s;
    public final /* synthetic */ EngineInterceptor t;
    public int u;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$fetch$1(EngineInterceptor engineInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.t = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.s = obj;
        this.u |= Integer.MIN_VALUE;
        return this.t.c(null, null, null, null, null, this);
    }
}
