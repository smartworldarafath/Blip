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
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsyncImagePreviewHandler$Companion$Default$1 implements AsyncImagePreviewHandler {
    public static final AsyncImagePreviewHandler$Companion$Default$1 a = new Object();

    /* JADX WARN: Removed duplicated region for block: B:12:0x0046  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0056  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0030  */
    /* JADX WARN: Removed duplicated region for block: B:8:0x0022  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Object a(ImageLoader imageLoader, ImageRequest imageRequest, ContinuationImpl continuationImpl) {
        AsyncImagePreviewHandler$Companion$Default$1$handle$1 asyncImagePreviewHandler$Companion$Default$1$handle$1;
        int i;
        ImageResult imageResult;
        if (continuationImpl instanceof AsyncImagePreviewHandler$Companion$Default$1$handle$1) {
            asyncImagePreviewHandler$Companion$Default$1$handle$1 = (AsyncImagePreviewHandler$Companion$Default$1$handle$1) continuationImpl;
            int i2 = asyncImagePreviewHandler$Companion$Default$1$handle$1.p;
            if ((i2 & Integer.MIN_VALUE) != 0) {
                asyncImagePreviewHandler$Companion$Default$1$handle$1.p = i2 - Integer.MIN_VALUE;
                Object obj = asyncImagePreviewHandler$Companion$Default$1$handle$1.n;
                CoroutineSingletons coroutineSingletons = CoroutineSingletons.j;
                i = asyncImagePreviewHandler$Companion$Default$1$handle$1.p;
                Painter painter = null;
                if (i == 0) {
                    if (i == 1) {
                        imageRequest = asyncImagePreviewHandler$Companion$Default$1$handle$1.m;
                        ResultKt.b(obj);
                    } else {
                        u2.l("call to 'resume' before 'invoke' with coroutine");
                        return null;
                    }
                } else {
                    ResultKt.b(obj);
                    asyncImagePreviewHandler$Companion$Default$1$handle$1.m = imageRequest;
                    asyncImagePreviewHandler$Companion$Default$1$handle$1.p = 1;
                    obj = ((RealImageLoader) imageLoader).c(imageRequest, asyncImagePreviewHandler$Companion$Default$1$handle$1);
                    if (obj == coroutineSingletons) {
                        return coroutineSingletons;
                    }
                }
                imageResult = (ImageResult) obj;
                if (!(imageResult instanceof SuccessResult)) {
                    SuccessResult successResult = (SuccessResult) imageResult;
                    return new AsyncImagePainter.State.Success(ImagePainter_androidKt.a(successResult.a, imageRequest.a, 1), successResult);
                }
                if (imageResult instanceof ErrorResult) {
                    ErrorResult errorResult = (ErrorResult) imageResult;
                    Image image = errorResult.a;
                    if (image != null) {
                        painter = ImagePainter_androidKt.a(image, imageRequest.a, 1);
                    }
                    return new AsyncImagePainter.State.Error(painter, errorResult);
                }
                k8.e();
                return null;
            }
        }
        asyncImagePreviewHandler$Companion$Default$1$handle$1 = new AsyncImagePreviewHandler$Companion$Default$1$handle$1(this, continuationImpl);
        Object obj2 = asyncImagePreviewHandler$Companion$Default$1$handle$1.n;
        CoroutineSingletons coroutineSingletons2 = CoroutineSingletons.j;
        i = asyncImagePreviewHandler$Companion$Default$1$handle$1.p;
        Painter painter2 = null;
        if (i == 0) {
        }
        imageResult = (ImageResult) obj2;
        if (!(imageResult instanceof SuccessResult)) {
        }
    }
}
