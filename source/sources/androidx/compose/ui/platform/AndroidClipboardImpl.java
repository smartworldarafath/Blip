package androidx.compose.ui.platform;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidClipboardImpl implements AndroidClipboard {
    public final AndroidClipboardManager a;

    public AndroidClipboardImpl(AndroidClipboardManager androidClipboardManager) {
        this.a = androidClipboardManager;
    }

    public final void a(ClipEntry clipEntry) {
        AndroidClipboardManager androidClipboardManager = this.a;
        if (clipEntry == null) {
            androidClipboardManager.a().clearPrimaryClip();
        } else {
            androidClipboardManager.a().setPrimaryClip(clipEntry.a);
        }
    }
}
