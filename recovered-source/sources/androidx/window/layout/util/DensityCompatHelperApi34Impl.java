package androidx.window.layout.util;

import android.content.Context;
import android.view.WindowManager;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class DensityCompatHelperApi34Impl implements DensityCompatHelper {
    public static final DensityCompatHelperApi34Impl a = new Object();

    @Override // androidx.window.layout.util.DensityCompatHelper
    public final float a(Context context) {
        return ((WindowManager) context.getSystemService(WindowManager.class)).getCurrentWindowMetrics().getDensity();
    }
}
