package androidx.compose.ui.platform;

import android.content.Context;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidClipboardManager implements ClipboardManager {
    public final Context a;
    public android.content.ClipboardManager b;

    public AndroidClipboardManager(Context context) {
        this.a = context;
    }

    public final android.content.ClipboardManager a() {
        android.content.ClipboardManager clipboardManager = this.b;
        if (clipboardManager == null) {
            Object systemService = this.a.getSystemService("clipboard");
            systemService.getClass();
            android.content.ClipboardManager clipboardManager2 = (android.content.ClipboardManager) systemService;
            this.b = clipboardManager2;
            return clipboardManager2;
        }
        return clipboardManager;
    }
}
