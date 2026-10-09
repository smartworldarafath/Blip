package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LongPressResult {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Canceled extends LongPressResult {
        public static final Canceled a = new Object();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Released extends LongPressResult {
        public final PointerInputChange a;

        public Released(PointerInputChange pointerInputChange) {
            this.a = pointerInputChange;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Success extends LongPressResult {
        public static final Success a = new Object();
    }
}
