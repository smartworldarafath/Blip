package androidx.core.view;

import android.os.Build;
import android.view.View;
import android.view.Window;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class WindowCompat {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static void a(Window window, boolean z) {
            int i;
            View decorView = window.getDecorView();
            int systemUiVisibility = decorView.getSystemUiVisibility();
            if (z) {
                i = systemUiVisibility & (-257);
            } else {
                i = systemUiVisibility | 256;
            }
            decorView.setSystemUiVisibility(i);
            window.setDecorFitsSystemWindows(z);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api35Impl {
        public static void a(Window window, boolean z) {
            window.setDecorFitsSystemWindows(z);
        }
    }

    public static void a(Window window, boolean z) {
        int i;
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 35) {
            Api35Impl.a(window, z);
            return;
        }
        if (i2 >= 30) {
            Api30Impl.a(window, z);
            return;
        }
        View decorView = window.getDecorView();
        int systemUiVisibility = decorView.getSystemUiVisibility();
        if (z) {
            i = systemUiVisibility & (-1793);
        } else {
            i = systemUiVisibility | 1792;
        }
        decorView.setSystemUiVisibility(i);
    }
}
