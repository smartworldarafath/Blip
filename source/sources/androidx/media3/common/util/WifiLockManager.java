package androidx.media3.common.util;

import android.content.Context;
import android.os.Looper;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WifiLockManager {
    public boolean a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WifiLockManagerInternal {
    }

    public WifiLockManager(Context context, Looper looper, SystemClock systemClock) {
        context.getApplicationContext();
        systemClock.a(looper, null);
        systemClock.a(Looper.getMainLooper(), null);
    }

    public final void a(boolean z) {
        if (this.a == z) {
            return;
        }
        this.a = z;
    }
}
