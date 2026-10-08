package coil3.compose;

import androidx.compose.ui.graphics.painter.Painter;
import coil3.Image;
import coil3.ImageLoader;
import coil3.RealImageLoader;
import coil3.compose.AsyncImagePainter;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.ImageResult;
import coil3.request.SuccessResult;
import defpackage.k8;
import defpackage.u2;
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
@DebugMetadata(c = "coil3.compose.AsyncImagePainter$launchJob$1", f = "AsyncImagePainter.kt", l = {233, 237}, m = "invokeSuspend", v = 1)
/* loaded from: classes.dex */
public final class AsyncImagePainter$launchJob$1 extends SuspendLambda implements Function2<CoroutineScope, Continuation<? super Unit>, Object> {
    public AsyncImagePainter n;
    public int o;
    public final /* synthetic */ AsyncImagePainter p;
    public final /* synthetic */ AsyncImagePainter.Input q;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public AsyncImagePainter$launchJob$1(AsyncImagePainter asyncImagePainter, AsyncImagePainter.Input input, Continuation continuation) {
        super(2, continuation);
        this.p = asyncImagePainter;
        this.q = input;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        return ((AsyncImagePainter$launchJob$1) s((CoroutineScope) obj, (Continuation) obj2)).v(Unit.a);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation s(Object obj, Continuation continuation) {
        return new AsyncImagePainter$launchJob$1(this.p, this.q, continuation);
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:0x0038, code lost:
    
        if (r7 == r0) goto L18;
     */
    /* JADX WARN: Removed duplicated region for block: B:13:0x0073  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x005e  */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object v(Object obj) {
        AsyncImagePainter asyncImagePainter;
        AsyncImagePainter.State state;
        ImageResult imageResult;
        AsyncImagePainter.State error;
        CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
        int i = this.o;
        AsyncImagePainter asyncImagePainter2 = this.p;
        Painter painter = null;
        if (i != 0) {
            if (i != 1) {
                if (i == 2) {
                    asyncImagePainter = this.n;
                    ResultKt.b(obj);
                    imageResult = (ImageResult) obj;
                    asyncImagePainter.getClass();
                    if (!(imageResult instanceof SuccessResult)) {
                        SuccessResult successResult = (SuccessResult) imageResult;
                        error = new AsyncImagePainter.State.Success(ImagePainter_androidKt.a(successResult.a, successResult.b.a, asyncImagePainter.y), successResult);
                    } else if (imageResult instanceof ErrorResult) {
                        ErrorResult errorResult = (ErrorResult) imageResult;
                        Image image = errorResult.a;
                        if (image != null) {
                            painter = ImagePainter_androidKt.a(image, errorResult.b.a, asyncImagePainter.y);
                        }
                        error = new AsyncImagePainter.State.Error(painter, errorResult);
                    } else {
                        k8.e();
                        return null;
                    }
                    state = error;
                } else {
                    u2.l("call to 'resume' before 'invoke' with coroutine");
                    return null;
                }
            } else {
                ResultKt.b(obj);
                state = (AsyncImagePainter.State) obj;
            }
        } else {
            ResultKt.b(obj);
            AsyncImagePreviewHandler asyncImagePreviewHandler = asyncImagePainter2.z;
            AsyncImagePainter.Input input = this.q;
            if (asyncImagePreviewHandler != null) {
                ImageRequest k = AsyncImagePainter.k(asyncImagePainter2, input.b, true);
                ImageLoader imageLoader = input.a;
                this.o = 1;
                obj = ((AsyncImagePreviewHandler$Companion$Default$1) asyncImagePreviewHandler).a(imageLoader, k, this);
            } else {
                ImageRequest k2 = AsyncImagePainter.k(asyncImagePainter2, input.b, false);
                ImageLoader imageLoader2 = input.a;
                this.n = asyncImagePainter2;
                this.o = 2;
                obj = ((RealImageLoader) imageLoader2).c(k2, this);
                if (obj != coroutineSingletons) {
                    asyncImagePainter = asyncImagePainter2;
                    imageResult = (ImageResult) obj;
                    asyncImagePainter.getClass();
                    if (!(imageResult instanceof SuccessResult)) {
                    }
                    state = error;
                }
            }
            return coroutineSingletons;
        }
        AsyncImagePainter.l(asyncImagePainter2, state);
        return Unit.a;
    }
}
