package coil3;

import android.content.res.Resources;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class Image_androidKt {
    public static final Drawable a(Image image, Resources resources) {
        if (image instanceof DrawableImage) {
            return ((DrawableImage) image).a;
        }
        if (image instanceof BitmapImage) {
            return new BitmapDrawable(resources, ((BitmapImage) image).a);
        }
        return new ImageDrawable(image);
    }

    public static final Image b(Drawable drawable) {
        if (drawable instanceof BitmapDrawable) {
            return new BitmapImage(((BitmapDrawable) drawable).getBitmap());
        }
        return new DrawableImage(drawable);
    }
}
