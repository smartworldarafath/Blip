package coil3.intercept;

import coil3.EventListener;
import coil3.intercept.Interceptor;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.request.NullRequestData;
import coil3.size.Size;
import defpackage.u2;
import java.util.List;
import kotlin.ResultKt;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealInterceptorChain implements Interceptor.Chain {
    public final ImageRequest a;
    public final List b;
    public final int c;
    public final ImageRequest d;
    public final Size e;
    public final EventListener f;
    public final boolean g;

    public RealInterceptorChain(ImageRequest imageRequest, List list, int i, ImageRequest imageRequest2, Size size, EventListener eventListener, boolean z) {
        this.a = imageRequest;
        this.b = list;
        this.c = i;
        this.d = imageRequest2;
        this.e = size;
        this.f = eventListener;
        this.g = z;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x006c  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0091  */
    /* JADX WARN: Removed duplicated region for block: B:30:0x0032  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0024  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(ContinuationImpl continuationImpl) {
        RealInterceptorChain$proceed$1 realInterceptorChain$proceed$1;
        int i;
        ImageRequest imageRequest;
        Object obj;
        ImageRequest d;
        if (continuationImpl instanceof RealInterceptorChain$proceed$1) {
            realInterceptorChain$proceed$1 = (RealInterceptorChain$proceed$1) continuationImpl;
            int i2 = realInterceptorChain$proceed$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                realInterceptorChain$proceed$1.p = i2 - Integer.MIN_VALUE;
                Object obj2 = realInterceptorChain$proceed$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = realInterceptorChain$proceed$1.p;
                imageRequest = this.a;
                if (i == 0) {
                    if (i == 1) {
                        Object obj3 = realInterceptorChain$proceed$1.m;
                        ResultKt.b(obj2);
                        obj = obj3;
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj2);
                    List list = this.b;
                    int i3 = this.c;
                    Interceptor interceptor = (Interceptor) list.get(i3);
                    EventListener eventListener = this.f;
                    boolean z = this.g;
                    RealInterceptorChain realInterceptorChain = new RealInterceptorChain(imageRequest, this.b, i3 + 1, this.d, this.e, eventListener, z);
                    realInterceptorChain$proceed$1.m = interceptor;
                    realInterceptorChain$proceed$1.p = 1;
                    EngineInterceptor engineInterceptor = (EngineInterceptor) interceptor;
                    obj2 = engineInterceptor.d(realInterceptorChain, realInterceptorChain$proceed$1);
                    obj = engineInterceptor;
                    if (obj2 == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                ImageResult imageResult = (ImageResult) obj2;
                d = imageResult.d();
                if (d.a != imageRequest.a) {
                    if (d.b != NullRequestData.a) {
                        if (d.c == imageRequest.c) {
                            if (d.o == imageRequest.o) {
                                return imageResult;
                            }
                            u2.h("Interceptor '", obj, "' cannot modify the request's size resolver. Use `Interceptor.Chain.withSize` instead.");
                            return null;
                        }
                        u2.h("Interceptor '", obj, "' cannot modify the request's target.");
                        return null;
                    }
                    u2.h("Interceptor '", obj, "' cannot set the request's data to null.");
                    return null;
                }
                u2.h("Interceptor '", obj, "' cannot modify the request's context.");
                return null;
            }
        }
        realInterceptorChain$proceed$1 = new RealInterceptorChain$proceed$1(this, continuationImpl);
        Object obj22 = realInterceptorChain$proceed$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = realInterceptorChain$proceed$1.p;
        imageRequest = this.a;
        if (i == 0) {
        }
        ImageResult imageResult2 = (ImageResult) obj22;
        d = imageResult2.d();
        if (d.a != imageRequest.a) {
        }
    }
}
