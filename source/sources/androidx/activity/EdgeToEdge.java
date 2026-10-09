package androidx.activity;

import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Color;
import android.os.Build;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import androidx.core.view.ViewGroupKt$children$1;
import androidx.core.view.ViewGroupKt$iterator$1;
import defpackage.le;
import java.util.Iterator;
import net.blip.android.MainActivity;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class EdgeToEdge {
    public static final int a = Color.argb(230, 255, 255, 255);
    public static final int b = Color.argb(128, 27, 27, 27);
    public static EdgeToEdgeApi28 c;

    /* JADX WARN: Multi-variable type inference failed */
    public static void a(MainActivity mainActivity) {
        EdgeToEdgeApi28 edgeToEdgeApi28;
        int i = 28;
        SystemBarStyle systemBarStyle = new SystemBarStyle(0, 0, new le(i));
        SystemBarStyle systemBarStyle2 = new SystemBarStyle(a, b, new le(i));
        View decorView = mainActivity.getWindow().getDecorView();
        decorView.getClass();
        EdgeToEdgeApi28 edgeToEdgeApi282 = c;
        EdgeToEdgeApi28 edgeToEdgeApi283 = edgeToEdgeApi282;
        if (edgeToEdgeApi282 == null) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 35) {
                edgeToEdgeApi28 = new Object();
            } else if (i2 >= 30) {
                edgeToEdgeApi28 = new Object();
            } else if (i2 >= 29) {
                edgeToEdgeApi28 = new Object();
            } else {
                edgeToEdgeApi28 = new Object();
            }
            c = edgeToEdgeApi28;
            edgeToEdgeApi283 = edgeToEdgeApi28;
        }
        EdgeToEdgeApi28 edgeToEdgeApi284 = edgeToEdgeApi283;
        final c cVar = new c(edgeToEdgeApi284, systemBarStyle, systemBarStyle2, mainActivity, decorView);
        ViewGroup viewGroup = (ViewGroup) decorView;
        Iterator it = new ViewGroupKt$children$1(viewGroup).iterator();
        while (true) {
            ViewGroupKt$iterator$1 viewGroupKt$iterator$1 = (ViewGroupKt$iterator$1) it;
            if (viewGroupKt$iterator$1.hasNext()) {
                if (((View) viewGroupKt$iterator$1.next()).getTag() instanceof EdgeToEdgeImpl) {
                    break;
                }
            } else {
                final Context context = viewGroup.getContext();
                View view = new View(context) { // from class: androidx.activity.EdgeToEdge$enableEdgeToEdge$1$2
                    @Override // android.view.View
                    public final void onConfigurationChanged(Configuration configuration) {
                        configuration.getClass();
                        c.this.run();
                    }
                };
                view.setTag(edgeToEdgeApi284);
                view.setVisibility(8);
                view.setWillNotDraw(true);
                viewGroup.addView(view);
                break;
            }
        }
        cVar.run();
        Window window = mainActivity.getWindow();
        window.getClass();
        edgeToEdgeApi284.b(window);
    }
}
