package androidx.activity;

import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import androidx.core.view.WindowCompat;
import androidx.core.view.WindowInsetsControllerCompat;
import androidx.core.view.insets.ColorProtection;
import java.util.Iterator;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class EdgeToEdgeApi35 extends EdgeToEdgeApi30 {
    @Override // androidx.activity.EdgeToEdgeApi29, androidx.activity.EdgeToEdgeApi26, androidx.activity.EdgeToEdgeImpl
    public void a(SystemBarStyle systemBarStyle, SystemBarStyle systemBarStyle2, Window window, View view, boolean z, boolean z2) {
        systemBarStyle.getClass();
        systemBarStyle2.getClass();
        window.getClass();
        view.getClass();
        WindowCompat.a(window, false);
        window.setStatusBarColor(0);
        window.setNavigationBarColor(0);
        ViewGroup viewGroup = null;
        if (view instanceof ViewGroup) {
            viewGroup = (ViewGroup) view;
        }
        if (viewGroup != null) {
            Iterator it = new ViewGroupKt$children$1(viewGroup).iterator();
            while (true) {
                ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
                if (!viewGroupKt$iterator$1.hasNext()) {
                    break;
                }
                Object tag = ((View) viewGroupKt$iterator$1.next()).getTag();
                if (tag instanceof List) {
                    List list = (List) tag;
                    if (list.size() == 4 && (list.get(0) instanceof ColorProtection)) {
                        Iterator it2 = ((Iterable) tag).iterator();
                        while (it2.hasNext()) {
                            it2.next();
                        }
                    }
                }
            }
        }
        window.setNavigationBarContrastEnforced(true);
        WindowInsetsControllerCompat windowInsetsControllerCompat = new WindowInsetsControllerCompat(window, view);
        windowInsetsControllerCompat.c(!z);
        windowInsetsControllerCompat.b(!z2);
    }
}
