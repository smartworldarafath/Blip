package androidx.core.os;

import android.os.Build;
import android.os.ext.SdkExtensions;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BuildCompat {
    public static final /* synthetic */ int a = 0;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Api30Impl {
        public static void a(int i) {
            SdkExtensions.getExtensionVersion(i);
        }
    }

    static {
        int i = Build.VERSION.SDK_INT;
        if (i >= 30) {
            Api30Impl.a(30);
        }
        if (i >= 30) {
            Api30Impl.a(31);
        }
        if (i >= 30) {
            Api30Impl.a(33);
        }
        if (i >= 30) {
            Api30Impl.a(1000000);
        }
    }
}
