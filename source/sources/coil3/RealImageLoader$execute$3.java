package coil3;

import coil3.request.ImageRequest;
import coil3.request.RequestDelegate;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.RealImageLoader", f = "RealImageLoader.kt", l = {118, 130, 134}, m = "execute", v = 1)
/* loaded from: classes.dex */
public final class RealImageLoader$execute$3 extends ContinuationImpl {
    public RequestDelegate m;
    public ImageRequest n;
    public EventListener o;
    public Image p;
    public int q;
    public /* synthetic */ Object r;
    public final /* synthetic */ RealImageLoader s;
    public int t;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$3(RealImageLoader realImageLoader, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.s = realImageLoader;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.r = obj;
        this.t |= Integer.MIN_VALUE;
        int i = RealImageLoader.f;
        return this.s.b(null, 0, this);
    }
}
