package coil3;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class BitmapImage implements Image {
    public final Bitmap a;

    public BitmapImage(Bitmap bitmap) {
        this.a = bitmap;
    }

    @Override // coil3.Image
    public final int a() {
        return this.a.getHeight();
    }

    @Override // coil3.Image
    public final int b() {
        return this.a.getWidth();
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof BitmapImage) && Intrinsics.a(this.a, ((BitmapImage) obj).a)) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Boolean.hashCode(true) + (this.a.hashCode() * 31);
    }

    @Override // coil3.Image
    public final long i() {
        int i;
        int i2;
        Bitmap bitmap = this.a;
        if (!bitmap.isRecycled()) {
            try {
                i2 = bitmap.getAllocationByteCount();
            } catch (Exception unused) {
                int height = bitmap.getHeight() * bitmap.getWidth();
                Bitmap.Config config = bitmap.getConfig();
                if (config == Bitmap.Config.ALPHA_8) {
                    i = 1;
                } else if (config == Bitmap.Config.RGB_565 || config == Bitmap.Config.ARGB_4444) {
                    i = 2;
                } else if (config == Bitmap.Config.RGBA_F16) {
                    i = 8;
                } else {
                    i = 4;
                }
                i2 = i * height;
            }
            return i2;
        }
        throw new IllegalStateException(("Cannot obtain size for recycled bitmap: " + bitmap + " [" + bitmap.getWidth() + " x " + bitmap.getHeight() + "] + " + bitmap.getConfig()).toString());
    }

    @Override // coil3.Image
    public final boolean j() {
        return true;
    }

    @Override // coil3.Image
    public final void k(Canvas canvas) {
        canvas.drawBitmap(this.a, 0.0f, 0.0f, (Paint) null);
    }

    public final String toString() {
        return "BitmapImage(bitmap=" + this.a + ", shareable=true)";
    }
}
