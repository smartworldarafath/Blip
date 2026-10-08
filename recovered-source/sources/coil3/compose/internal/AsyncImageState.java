package coil3.compose.internal;

import coil3.ImageLoader;
import coil3.compose.AsyncImageModelEqualityDelegate;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AsyncImageState {
    public final Object a;
    public final AsyncImageModelEqualityDelegate b;
    public final ImageLoader c;

    public AsyncImageState(Object obj, AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate, ImageLoader imageLoader) {
        this.a = obj;
        this.b = asyncImageModelEqualityDelegate;
        this.c = imageLoader;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof AsyncImageState) {
                AsyncImageState asyncImageState = (AsyncImageState) obj;
                AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = asyncImageState.b;
                AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate2 = this.b;
                if (Intrinsics.a(asyncImageModelEqualityDelegate2, asyncImageModelEqualityDelegate) && asyncImageModelEqualityDelegate2.a(this.a, asyncImageState.a) && this.c.equals(asyncImageState.c)) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        AsyncImageModelEqualityDelegate asyncImageModelEqualityDelegate = this.b;
        return this.c.hashCode() + ((asyncImageModelEqualityDelegate.b(this.a) + (asyncImageModelEqualityDelegate.hashCode() * 31)) * 31);
    }
}
