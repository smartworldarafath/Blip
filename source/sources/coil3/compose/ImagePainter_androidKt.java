package coil3.compose;

import android.content.Context;
import android.graphics.drawable.Drawable;
import androidx.compose.ui.graphics.AndroidImageBitmap;
import androidx.compose.ui.graphics.painter.BitmapPainter;
import androidx.compose.ui.graphics.painter.Painter;
import coil3.BitmapImage;
import coil3.DrawableImage;
import coil3.Image;
import coil3.Image_androidKt;
import com.google.accompanist.drawablepainter.DrawablePainter;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ImagePainter_androidKt {
    public static final Painter a(Image image, Context context, int i) {
        boolean z;
        if (image instanceof BitmapImage) {
            BitmapPainter bitmapPainter = new BitmapPainter(new AndroidImageBitmap(((BitmapImage) image).a), (r6.getWidth() << 32) | (r6.getHeight() & 4294967295L));
            bitmapPainter.q = i;
            return bitmapPainter;
        }
        if (image instanceof DrawableImage) {
            Drawable mutate = Image_androidKt.a(image, context.getResources()).mutate();
            if (i == 0) {
                z = true;
            } else {
                z = false;
            }
            mutate.setFilterBitmap(true ^ z);
            return new DrawablePainter(mutate);
        }
        return new ImagePainter(image);
    }
}
