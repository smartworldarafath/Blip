package androidx.compose.ui.platform.coreshims;

import android.os.Build;
import android.view.View;
import android.view.contentcapture.ContentCaptureSession;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ViewCompatShims {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api29Impl {
        public static ContentCaptureSession a(View view) {
            return view.getContentCaptureSession();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static void a(View view) {
            view.setImportantForContentCapture(1);
        }
    }

    public static ContentCaptureSessionCompat a(View view) {
        ContentCaptureSession a;
        if (Build.VERSION.SDK_INT >= 29 && (a = Api29Impl.a(view)) != null) {
            return new ContentCaptureSessionCompat(a, view);
        }
        return null;
    }

    public static void b(View view) {
        if (Build.VERSION.SDK_INT >= 30) {
            Api30Impl.a(view);
        }
    }
}
