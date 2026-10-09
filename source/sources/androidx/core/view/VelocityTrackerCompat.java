package androidx.core.view;

import android.view.VelocityTracker;
import java.util.Collections;
import java.util.Map;
import java.util.WeakHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class VelocityTrackerCompat {
    public static final Map a = Collections.synchronizedMap(new WeakHashMap());

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static float a(VelocityTracker velocityTracker, int i) {
            return velocityTracker.getAxisVelocity(i);
        }
    }
}
