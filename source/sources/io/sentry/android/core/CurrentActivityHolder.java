package io.sentry.android.core;

import android.app.Activity;
import java.lang.ref.WeakReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class CurrentActivityHolder {
    public static final CurrentActivityHolder b = new Object();
    public WeakReference a;

    public final void a(Activity activity) {
        WeakReference weakReference = this.a;
        if (weakReference != null && weakReference.get() == activity) {
            return;
        }
        this.a = new WeakReference(activity);
    }
}
