package androidx.compose.foundation.text;

import android.view.KeyEvent;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class KeyModifiersKt {
    public static final int a(KeyEvent keyEvent) {
        int i;
        int i2;
        boolean isAltPressed = keyEvent.isAltPressed();
        boolean isCtrlPressed = keyEvent.isCtrlPressed();
        boolean isMetaPressed = keyEvent.isMetaPressed();
        boolean isShiftPressed = keyEvent.isShiftPressed();
        int i3 = 0;
        if (isCtrlPressed) {
            i = 2;
        } else {
            i = 0;
        }
        int i4 = (isAltPressed ? 1 : 0) | i;
        if (isMetaPressed) {
            i2 = 4;
        } else {
            i2 = 0;
        }
        int i5 = i4 | i2;
        if (isShiftPressed) {
            i3 = 8;
        }
        return i5 | i3;
    }
}
