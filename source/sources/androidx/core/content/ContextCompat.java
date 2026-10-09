package androidx.core.content;

import android.annotation.SuppressLint;
import android.content.Context;
import android.os.Build;
import android.os.Process;
import android.text.TextUtils;
import androidx.core.app.NotificationManagerCompat;
import io.sentry.d;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@SuppressLint({"PrivateConstructorForUtilityClass"})
/* loaded from: classes.dex */
public abstract class ContextCompat {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api30Impl {
        public static String a(Context context) {
            return context.getAttributionTag();
        }
    }

    public static int a(Context context, String str) {
        if (str != null) {
            if (Build.VERSION.SDK_INT < 33 && TextUtils.equals("android.permission.POST_NOTIFICATIONS", str)) {
                if (new NotificationManagerCompat(context).b.areNotificationsEnabled()) {
                    return 0;
                }
                return -1;
            }
            return context.checkPermission(str, Process.myPid(), Process.myUid());
        }
        d.f("permission must be non-null");
        return 0;
    }

    public static String b(Context context) {
        if (Build.VERSION.SDK_INT >= 30) {
            return Api30Impl.a(context);
        }
        return null;
    }
}
