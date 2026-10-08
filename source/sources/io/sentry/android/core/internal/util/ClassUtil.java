package io.sentry.android.core.internal.util;

import android.view.KeyEvent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ClassUtil {
    public static String a(KeyEvent.Callback callback) {
        if (callback == null) {
            return null;
        }
        String canonicalName = callback.getClass().getCanonicalName();
        if (canonicalName != null) {
            return canonicalName;
        }
        return callback.getClass().getSimpleName();
    }
}
