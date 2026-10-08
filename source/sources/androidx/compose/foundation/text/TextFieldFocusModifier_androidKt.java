package androidx.compose.foundation.text;

import android.view.KeyEvent;
import androidx.compose.ui.input.key.KeyEvent_androidKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TextFieldFocusModifier_androidKt {
    public static final boolean a(int i, KeyEvent keyEvent) {
        if (((int) (KeyEvent_androidKt.a(keyEvent) >> 32)) == i) {
            return true;
        }
        return false;
    }
}
