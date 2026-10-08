package coil3.size;

import android.view.View;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealViewSizeResolver<T extends View> implements ViewSizeResolver<T> {
    public final View b;

    public RealViewSizeResolver(View view) {
        this.b = view;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof RealViewSizeResolver) && Intrinsics.a(this.b, ((RealViewSizeResolver) obj).b)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + (this.b.hashCode() * 31);
    }

    public final String toString() {
        return "RealViewSizeResolver(view=" + this.b + ", subtractPadding=true)";
    }
}
