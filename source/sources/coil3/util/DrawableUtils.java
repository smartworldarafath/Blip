package coil3.util;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import coil3.decode.DecodeUtils;
import coil3.size.Scale;
import coil3.size.Size;
import kotlin.math.MathKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class DrawableUtils {
    /* JADX WARN: Code restructure failed: missing block: B:11:0x0057, code lost:
    
        if (r3 == 1.0d) goto L16;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Bitmap a(Drawable drawable, Bitmap.Config config, Size size, Scale scale, Size size2, boolean z) {
        Bitmap.Config config2;
        Bitmap.Config config3 = config;
        Scale scale2 = scale;
        Size size3 = size2;
        if (drawable instanceof BitmapDrawable) {
            Bitmap bitmap = ((BitmapDrawable) drawable).getBitmap();
            Bitmap.Config config4 = bitmap.getConfig();
            if (config3 != null && config3 != Bitmap.Config.HARDWARE) {
                config2 = config3;
            } else {
                config2 = Bitmap.Config.ARGB_8888;
            }
            if (config4 == config2) {
                if (!z) {
                    long a = DecodeUtils.a(bitmap.getWidth(), bitmap.getHeight(), size, scale2, size3);
                    double b = DecodeUtils.b(bitmap.getWidth(), bitmap.getHeight(), (int) (a >> 32), (int) (a & 4294967295L), scale, size3);
                    scale2 = scale;
                    size3 = size3;
                }
                return bitmap;
            }
        }
        Drawable mutate = drawable.mutate();
        int b2 = Utils_androidKt.b(mutate);
        int i = 512;
        if (b2 <= 0) {
            b2 = 512;
        }
        int a2 = Utils_androidKt.a(mutate);
        if (a2 > 0) {
            i = a2;
        }
        long a3 = DecodeUtils.a(b2, i, size, scale2, size3);
        int i2 = i;
        int i3 = b2;
        double b3 = DecodeUtils.b(i3, i2, (int) (a3 >> 32), (int) (a3 & 4294967295L), scale2, size3);
        int a4 = MathKt.a(i3 * b3);
        int a5 = MathKt.a(b3 * i2);
        if (config3 == null || config3 == Bitmap.Config.HARDWARE) {
            config3 = Bitmap.Config.ARGB_8888;
        }
        Bitmap createBitmap = Bitmap.createBitmap(a4, a5, config3);
        Rect bounds = mutate.getBounds();
        int i4 = bounds.left;
        int i5 = bounds.top;
        int i6 = bounds.right;
        int i7 = bounds.bottom;
        mutate.setBounds(0, 0, a4, a5);
        mutate.draw(new Canvas(createBitmap));
        mutate.setBounds(i4, i5, i6, i7);
        return createBitmap;
    }
}
