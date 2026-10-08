package androidx.compose.ui.input.key;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class KeyEvent_androidKt {
    public static final long a(android.view.KeyEvent keyEvent) {
        return Key_androidKt.a(keyEvent.getKeyCode());
    }

    public static final int b(android.view.KeyEvent keyEvent) {
        int action = keyEvent.getAction();
        if (action != 0) {
            if (action == 1) {
                return 1;
            }
            return 0;
        }
        return 2;
    }
}
