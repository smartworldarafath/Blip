package androidx.compose.ui.text.platform;

import androidx.compose.runtime.State;
import androidx.emoji2.text.EmojiCompat;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class EmojiCompatStatus implements EmojiCompatStatusDelegate {
    public static final EmojiCompatStatus a = new Object();
    public static final EmojiCompatStatusDelegate b;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, androidx.compose.ui.text.platform.EmojiCompatStatus] */
    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.compose.ui.text.platform.DefaultImpl, androidx.compose.ui.text.platform.EmojiCompatStatusDelegate, java.lang.Object] */
    static {
        State state;
        ?? obj = new Object();
        if (EmojiCompat.g()) {
            state = obj.a();
        } else {
            state = null;
        }
        obj.a = state;
        b = obj;
    }

    public final State a() {
        DefaultImpl defaultImpl = (DefaultImpl) b;
        State state = defaultImpl.a;
        if (state != null) {
            return state;
        }
        if (EmojiCompat.g()) {
            State a2 = defaultImpl.a();
            defaultImpl.a = a2;
            return a2;
        }
        return EmojiCompatStatus_androidKt.a;
    }
}
