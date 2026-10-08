package coil3.size;

import kotlin.coroutines.Continuation;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealSizeResolver implements SizeResolver {
    public final Size b;

    public RealSizeResolver(Size size) {
        this.b = size;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (!(obj instanceof RealSizeResolver) || !this.b.equals(((RealSizeResolver) obj).b)) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // coil3.size.SizeResolver
    public final Object g(Continuation continuation) {
        return this.b;
    }

    public final int hashCode() {
        return this.b.hashCode();
    }

    public final String toString() {
        return "RealSizeResolver(size=" + this.b + ")";
    }
}
