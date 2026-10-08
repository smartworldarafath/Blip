package coil3.compose;

import coil3.request.ImageRequest;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsyncImageModelEqualityDelegate$Companion$Default$1 implements AsyncImageModelEqualityDelegate {
    @Override // coil3.compose.AsyncImageModelEqualityDelegate
    public final boolean a(Object obj, Object obj2) {
        if (this != obj2) {
            if ((obj instanceof ImageRequest) && (obj2 instanceof ImageRequest)) {
                ImageRequest imageRequest = (ImageRequest) obj;
                ImageRequest imageRequest2 = (ImageRequest) obj2;
                if (Intrinsics.a(imageRequest.a, imageRequest2.a) && imageRequest.b.equals(imageRequest2.b) && imageRequest.d.equals(imageRequest2.d) && Intrinsics.a(imageRequest.o, imageRequest2.o) && imageRequest.p == imageRequest2.p && imageRequest.q == imageRequest2.q) {
                    return true;
                }
                return false;
            }
            return Intrinsics.a(obj, obj2);
        }
        return true;
    }

    @Override // coil3.compose.AsyncImageModelEqualityDelegate
    public final int b(Object obj) {
        if (!(obj instanceof ImageRequest)) {
            if (obj != null) {
                return obj.hashCode();
            }
            return 0;
        }
        ImageRequest imageRequest = (ImageRequest) obj;
        return imageRequest.q.hashCode() + ((imageRequest.p.hashCode() + ((imageRequest.o.hashCode() + ((imageRequest.d.hashCode() + ((imageRequest.b.hashCode() + (imageRequest.a.hashCode() * 31)) * 961)) * 961)) * 31)) * 31);
    }

    public final String toString() {
        return "AsyncImageModelEqualityDelegate.Default";
    }
}
