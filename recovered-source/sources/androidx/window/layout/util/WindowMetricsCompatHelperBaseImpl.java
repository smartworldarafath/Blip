package androidx.window.layout.util;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.content.ContextWrapper;
import android.graphics.Point;
import android.graphics.Rect;
import android.inputmethodservice.InputMethodService;
import android.os.Build;
import android.view.Display;
import android.view.WindowManager;
import androidx.window.core.Bounds;
import androidx.window.layout.WindowMetrics;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WindowMetricsCompatHelperBaseImpl implements WindowMetricsCompatHelper {
    public static final WindowMetricsCompatHelperBaseImpl a = new Object();

    @Override // androidx.window.layout.util.WindowMetricsCompatHelper
    public final WindowMetrics a(Context context, DensityCompatHelper densityCompatHelper) {
        BoundsHelper boundsHelper;
        densityCompatHelper.getClass();
        Context context2 = context;
        while (true) {
            if (context2 instanceof ContextWrapper) {
                if ((context2 instanceof Activity) || (context2 instanceof InputMethodService)) {
                    break;
                }
                ContextWrapper contextWrapper = (ContextWrapper) context2;
                if (contextWrapper.getBaseContext() == null) {
                    break;
                }
                context2 = contextWrapper.getBaseContext();
                context2.getClass();
            } else {
                context2 = context;
                break;
            }
        }
        if (context2 instanceof Activity) {
            Activity activity = (Activity) context2;
            int i = Build.VERSION.SDK_INT;
            if (i >= 30) {
                boundsHelper = BoundsHelperApi30Impl.a;
            } else if (i >= 29) {
                boundsHelper = BoundsHelperApi29Impl.a;
            } else {
                boundsHelper = BoundsHelperApi28Impl.a;
            }
            return new WindowMetrics(new Bounds(boundsHelper.a(activity)), densityCompatHelper.a(activity));
        }
        if (!(context2 instanceof InputMethodService) && !(context2 instanceof Application)) {
            u2.g("Must provide a UiContext or Application Context");
            return null;
        }
        Object systemService = context.getSystemService("window");
        systemService.getClass();
        Display defaultDisplay = ((WindowManager) systemService).getDefaultDisplay();
        defaultDisplay.getClass();
        Point point = new Point();
        defaultDisplay.getRealSize(point);
        return new WindowMetrics(new Rect(0, 0, point.x, point.y), densityCompatHelper.a(context));
    }
}
