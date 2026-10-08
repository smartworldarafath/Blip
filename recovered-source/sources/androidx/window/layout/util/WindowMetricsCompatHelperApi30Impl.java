package androidx.window.layout.util;

import android.content.Context;
import android.graphics.Rect;
import android.view.WindowManager;
import androidx.window.layout.WindowMetrics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowMetricsCompatHelperApi30Impl implements WindowMetricsCompatHelper {
    public static final WindowMetricsCompatHelperApi30Impl a = new Object();

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public final WindowMetrics a(Context context, DensityCompatHelper densityCompatHelper) {
        densityCompatHelper.getClass();
        WindowManager windowManager = (WindowManager) context.getSystemService(WindowManager.class);
        float f = context.getResources().getDisplayMetrics().density;
        Rect bounds = windowManager.getCurrentWindowMetrics().getBounds();
        bounds.getClass();
        return new WindowMetrics(bounds, f);
    }
}
