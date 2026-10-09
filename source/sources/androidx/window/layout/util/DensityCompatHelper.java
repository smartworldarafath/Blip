package androidx.window.layout.util;

import android.content.Context;
import android.os.Build;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface DensityCompatHelper {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Companion {
        public static DensityCompatHelper a() {
            if (Build.VERSION.SDK_INT >= 34) {
                return DensityCompatHelperApi34Impl.a;
            }
            return DensityCompatHelperBaseImpl.a;
        }
    }

    float a(Context context);
}
