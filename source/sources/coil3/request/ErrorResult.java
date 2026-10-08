package coil3.request;

import coil3.Image;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ErrorResult implements ImageResult {
    public final Image a;
    public final ImageRequest b;
    public final Throwable c;

    public ErrorResult(Image image, ImageRequest imageRequest, Throwable th) {
        this.a = image;
        this.b = imageRequest;
        this.c = th;
    }

    @Override // coil3.request.ImageResult
    public final ImageRequest d() {
        return this.b;
    }

    @Override // coil3.request.ImageResult
    public final Image e() {
        return this.a;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof ErrorResult) {
                ErrorResult errorResult = (ErrorResult) obj;
                if (!Intrinsics.a(this.a, errorResult.a) || !Intrinsics.a(this.b, errorResult.b) || !this.c.equals(errorResult.c)) {
                    return false;
                }
                return true;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        Image image = this.a;
        if (image == null) {
            hashCode = 0;
        } else {
            hashCode = image.hashCode();
        }
        int hashCode2 = this.b.hashCode();
        return this.c.hashCode() + ((hashCode2 + (hashCode * 31)) * 31);
    }

    public final String toString() {
        return "ErrorResult(image=" + this.a + ", request=" + this.b + ", throwable=" + this.c + ")";
    }
}
