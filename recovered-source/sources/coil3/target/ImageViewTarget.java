package coil3.target;

import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class ImageViewTarget extends GenericViewTarget<ImageView> {
    private final ImageView view;

    public ImageViewTarget(ImageView imageView) {
        this.view = imageView;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof ImageViewTarget) && Intrinsics.a(this.view, ((ImageViewTarget) obj).view)) {
            return true;
        }
        return false;
    }

    @Override // coil3.target.GenericViewTarget
    public Drawable getDrawable() {
        return getView().getDrawable();
    }

    public int hashCode() {
        return this.view.hashCode();
    }

    @Override // coil3.target.GenericViewTarget
    public void setDrawable(Drawable drawable) {
        getView().setImageDrawable(drawable);
    }

    public String toString() {
        return "ImageViewTarget(view=" + this.view + ")";
    }

    @Override // coil3.target.ViewTarget
    public ImageView getView() {
        return this.view;
    }
}
