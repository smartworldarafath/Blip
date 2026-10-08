package androidx.compose.ui.text.input;

import kotlin.Deprecated;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public final class TextInputSession {
    public final TextInputService a;
    public final PlatformTextInputService b;

    public TextInputSession(TextInputService textInputService, PlatformTextInputService platformTextInputService) {
        this.a = textInputService;
        this.b = platformTextInputService;
    }
}
