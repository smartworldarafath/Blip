package coil3.intercept;

import coil3.ComponentRegistry;
import coil3.EventListener;
import coil3.fetch.SourceFetchResult;
import coil3.request.ImageRequest;
import coil3.request.Options;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptor", f = "EngineInterceptor.kt", l = {203}, m = "decode", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptor$decode$1 extends ContinuationImpl {
    public SourceFetchResult m;
    public ComponentRegistry n;
    public ImageRequest o;
    public Object p;
    public Options q;
    public EventListener r;
    public int s;
    public /* synthetic */ Object t;
    public final /* synthetic */ EngineInterceptor u;
    public int v;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public EngineInterceptor$decode$1(EngineInterceptor engineInterceptor, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.u = engineInterceptor;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.t = obj;
        this.v |= Integer.MIN_VALUE;
        return EngineInterceptor.a(this.u, null, null, null, null, null, null, this);
    }
}
