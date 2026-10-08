package androidx.compose.foundation.gestures;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class MouseWheelScrollingLogicKt {
    public static final boolean a(float f) {
        if (!Float.isNaN(f) && Math.abs(f) >= 0.5f) {
            return false;
        }
        return true;
    }
}
