package androidx.activity;

import android.view.View;
import android.view.Window;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class EdgeToEdgeApi26 extends EdgeToEdgeBase {
    @Override // androidx.activity.EdgeToEdgeImpl
    public void a(SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, Window window, View view, boolean z, boolean z2) {
        int i;
        int i2;
        systemBarStyle.getClass();
        systemBarStyle2.getClass();
        window.getClass();
        view.getClass();
        WindowCompat.a(window, false);
        if (z) {
            i = systemBarStyle.b;
        } else {
            i = systemBarStyle.a;
        }
        window.setStatusBarColor(i);
        if (z2) {
            i2 = systemBarStyle2.b;
        } else {
            i2 = systemBarStyle2.a;
        }
        window.setNavigationBarColor(i2);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, view);
        windowInsetsControllerCompat.c(!z);
        windowInsetsControllerCompat.b(!z2);
    }
}
