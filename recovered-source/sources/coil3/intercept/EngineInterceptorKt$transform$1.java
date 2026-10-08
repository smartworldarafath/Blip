package coil3.intercept;

import coil3.EventListener;
import coil3.intercept.EngineInterceptor;
import coil3.request.ImageRequest;
import coil3.request.Options;
import java.util.List;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.intercept.EngineInterceptorKt", f = "EngineInterceptor.kt", l = {259}, m = "transform", v = 1)
/* loaded from: classes.dex */
public final class EngineInterceptorKt$transform$1 extends ContinuationImpl {
    public EngineInterceptor.ExecuteResult m;
    public ImageRequest n;
    public Options o;
    public EventListener p;
    public List q;
    public int r;
    public int s;
    public /* synthetic */ Object t;
    public int u;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.t = obj;
        this.u |= Integer.MIN_VALUE;
        return EngineInterceptorKt.a(null, null, null, null, this);
    }
}
