package coil3;

import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import defpackage.u2;
import kotlin.ResultKt;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.SuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;
import kotlinx.coroutines.Deferred;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "coil3.RealImageLoader$execute$2", f = "RealImageLoader.kt", l = {88}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class RealImageLoader$execute$2 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super ImageResult>, Object> {
    public int n;
    public /* synthetic */ Object o;
    public final /* synthetic */ RealImageLoader p;
    public final /* synthetic */ ImageRequest q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public RealImageLoader$execute$2(RealImageLoader realImageLoader, ImageRequest imageRequest, Continuation continuation) {
        super(2, continuation);
        this.p = realImageLoader;
        this.q = imageRequest;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((RealImageLoader$execute$2) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        RealImageLoader$execute$2 realImageLoader$execute$2 = new RealImageLoader$execute$2(this.p, this.q, continuation);
        realImageLoader$execute$2.o = obj;
        return realImageLoader$execute$2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        CoroutineScope coroutineScope = (CoroutineScope) this.o;
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
        RealImageLoader realImageLoader = this.p;
        CoroutineContext coroutineContext = (CoroutineContext) realImageLoader.a.c.getValue();
        ImageRequest imageRequest = this.q;
        Deferred a = RealImageLoader_androidKt.a(imageRequest, BuildersKt.a(coroutineScope, coroutineContext, new RealImageLoader$execute$2$job$1(realImageLoader, imageRequest, null))).a();
        this.o = null;
        this.n = 1;
        Object Z = a.Z(this);
        if (Z == coroutineSingletons) {
            return coroutineSingletons;
        }
        return Z;
    }
}
