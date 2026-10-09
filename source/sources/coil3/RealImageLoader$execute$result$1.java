package coil3;

import coil3.intercept.RealInterceptorChain;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.size.Size;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineScope;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.RealImageLoader$execute$result$1", f = "RealImageLoader.kt", l = {143}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class RealImageLoader$execute$result$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImageResult>, Object> {
    public int n;
    public final /* synthetic */ ImageRequest o;
    public final /* synthetic */ RealImageLoader p;
    public final /* synthetic */ Size q;
    public final /* synthetic */ EventListener r;
    public final /* synthetic */ Image s;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$result$1(ImageRequest imageRequest, RealImageLoader realImageLoader, Size size, EventListener eventListener, Image image, Continuation continuation) {
        super(2, continuation);
        this.o = imageRequest;
        this.p = realImageLoader;
        this.q = size;
        this.r = eventListener;
        this.s = image;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((RealImageLoader$execute$result$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new RealImageLoader$execute$result$1(this.o, this.p, this.q, this.r, this.s, continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        boolean z;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.n;
        if (i != 0) {
            if (i == 1) {
                ResultKt.b(obj);
                return obj;
            }
            u2.l("call to 'resume' before 'invoke' with coroutine");
            return null;
        }
        ResultKt.b(obj);
        List list = this.p.d.a;
        if (this.s != null) {
            z = true;
        } else {
            z = false;
        }
        ImageRequest imageRequest = this.o;
        RealInterceptorChain realInterceptorChain = new RealInterceptorChain(imageRequest, list, 0, imageRequest, this.q, this.r, z);
        this.n = 1;
        Object a = realInterceptorChain.a(this);
        if (a == coroutineSingletons) {
            return coroutineSingletons;
        }
        return a;
    }
}
