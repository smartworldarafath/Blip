package androidx.core.app;

import android.app.Notification;
import android.graphics.Bitmap;
import android.graphics.BitmapShader;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.graphics.Paint;
import android.graphics.Shader;
import android.graphics.drawable.Icon;
import android.os.Build;
import androidx.core.graphics.drawable.IconCompat;
import defpackage.fe;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class NotificationCompat$BigPictureStyle extends NotificationCompat$Style {
    public IconCompat b;
    public IconCompat c;
    public boolean d;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api31Impl {
        public static void a(Notification.BigPictureStyle bigPictureStyle, Icon icon) {
            bigPictureStyle.bigPicture(icon);
        }

        public static void b(Notification.BigPictureStyle bigPictureStyle, CharSequence charSequence) {
            bigPictureStyle.setContentDescription(charSequence);
        }

        public static void c(Notification.BigPictureStyle bigPictureStyle, boolean z) {
            bigPictureStyle.showBigPictureWhenCollapsed(z);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final void a(NotificationBuilderWithBuilderAccessor notificationBuilderWithBuilderAccessor) {
        Bitmap bitmap;
        Notification.BigPictureStyle bigContentTitle = new Notification.BigPictureStyle(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).b).setBigContentTitle(null);
        IconCompat iconCompat = this.b;
        if (iconCompat != null) {
            if (Build.VERSION.SDK_INT >= 31) {
                Api31Impl.a(bigContentTitle, iconCompat.e(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).a));
            } else {
                int i = iconCompat.a;
                if (i == -1) {
                    i = ((Icon) iconCompat.b).getType();
                }
                if (i == 1) {
                    IconCompat iconCompat2 = this.b;
                    int i2 = iconCompat2.a;
                    if (i2 == -1) {
                        Object obj = iconCompat2.b;
                        if (obj instanceof Bitmap) {
                            bitmap = (Bitmap) obj;
                        } else {
                            bitmap = null;
                        }
                    } else if (i2 == 1) {
                        bitmap = (Bitmap) iconCompat2.b;
                    } else if (i2 == 5) {
                        Bitmap bitmap2 = (Bitmap) iconCompat2.b;
                        int min = (int) (Math.min(bitmap2.getWidth(), bitmap2.getHeight()) * 0.6666667f);
                        Bitmap createBitmap = Bitmap.createBitmap(min, min, Bitmap.Config.ARGB_8888);
                        Canvas canvas = new Canvas(createBitmap);
                        Paint paint = new Paint(3);
                        float f = min;
                        float f2 = 0.5f * f;
                        float f3 = 0.9166667f * f2;
                        float f4 = 0.010416667f * f;
                        paint.setColor(0);
                        paint.setShadowLayer(f4, 0.0f, f * 0.020833334f, 1023410176);
                        canvas.drawCircle(f2, f2, f3, paint);
                        paint.setShadowLayer(f4, 0.0f, 0.0f, 503316480);
                        canvas.drawCircle(f2, f2, f3, paint);
                        paint.clearShadowLayer();
                        paint.setColor(-16777216);
                        Shader.TileMode tileMode = Shader.TileMode.CLAMP;
                        BitmapShader bitmapShader = new BitmapShader(bitmap2, tileMode, tileMode);
                        Matrix matrix = new Matrix();
                        matrix.setTranslate((-(bitmap2.getWidth() - min)) / 2.0f, (-(bitmap2.getHeight() - min)) / 2.0f);
                        bitmapShader.setLocalMatrix(matrix);
                        paint.setShader(bitmapShader);
                        canvas.drawCircle(f2, f2, f3, paint);
                        canvas.setBitmap(null);
                        bitmap = createBitmap;
                    } else {
                        fe.n(iconCompat2, "called getBitmap() on ");
                        return;
                    }
                    bigContentTitle = bigContentTitle.bigPicture(bitmap);
                }
            }
        }
        if (this.d) {
            IconCompat iconCompat3 = this.c;
            if (iconCompat3 == null) {
                bigContentTitle.bigLargeIcon((Bitmap) null);
            } else {
                bigContentTitle.bigLargeIcon(iconCompat3.e(((NotificationCompatBuilder) notificationBuilderWithBuilderAccessor).a));
            }
        }
        if (Build.VERSION.SDK_INT >= 31) {
            Api31Impl.c(bigContentTitle, false);
            Api31Impl.b(bigContentTitle, null);
        }
    }

    @Override // androidx.core.app.NotificationCompat$Style
    public final String b() {
        return "androidx.core.app.NotificationCompat$BigPictureStyle";
    }
}
