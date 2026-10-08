package androidx.compose.ui.platform;

import android.view.MotionEvent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MotionEventVerifierApi29 {
    public static final MotionEventVerifierApi29 a = new Object();

    public final boolean a(MotionEvent motionEvent, int i) {
        float rawX;
        float rawY;
        rawX = motionEvent.getRawX(i);
        if ((Float.floatToRawIntBits(rawX) & Integer.MAX_VALUE) < 2139095040) {
            rawY = motionEvent.getRawY(i);
            if ((Float.floatToRawIntBits(rawY) & Integer.MAX_VALUE) < 2139095040) {
                return true;
            }
            return false;
        }
        return false;
    }
}
