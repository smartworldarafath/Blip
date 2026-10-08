package androidx.compose.ui.graphics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CanvasKt {
    public static final AndroidCanvas a(AndroidImageBitmap androidImageBitmap) {
        android.graphics.Canvas canvas = AndroidCanvas_androidKt.a;
        AndroidCanvas androidCanvas = new AndroidCanvas();
        androidCanvas.a = new android.graphics.Canvas(AndroidImageBitmap_androidKt.a(androidImageBitmap));
        return androidCanvas;
    }
}
