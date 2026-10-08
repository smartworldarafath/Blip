package coil3.util;

import coil3.Image;
import coil3.request.ErrorResult;
import coil3.request.ImageRequest;
import coil3.request.NullRequestDataException;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class UtilsKt {
    public static final ErrorResult a(ImageRequest imageRequest, Throwable th) {
        Image image;
        if (th instanceof NullRequestDataException) {
            Function1 function1 = imageRequest.n;
            ImageRequest.Defaults defaults = imageRequest.t;
            image = (Image) function1.b(imageRequest);
            if (image == null) {
                image = (Image) defaults.j.b(imageRequest);
            }
            if (image == null && (image = (Image) imageRequest.m.b(imageRequest)) == null) {
                image = (Image) defaults.i.b(imageRequest);
            }
        } else {
            image = (Image) imageRequest.m.b(imageRequest);
            if (image == null) {
                image = (Image) imageRequest.t.i.b(imageRequest);
            }
        }
        return new ErrorResult(image, imageRequest, th);
    }

    public static final Function1 b() {
        return UtilsKt$EMPTY_IMAGE_FACTORY$1.j;
    }
}
