package androidx.compose.ui.platform;

import androidx.compose.ui.text.input.TextInputService;
import androidx.compose.ui.text.input.TextInputSession;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DelegatingSoftwareKeyboardController implements SoftwareKeyboardController {
    public final TextInputService a;

    public DelegatingSoftwareKeyboardController(TextInputService textInputService) {
        this.a = textInputService;
    }

    public final void a() {
        this.a.a.e();
    }

    public final void b() {
        TextInputService textInputService = this.a;
        if (((TextInputSession) textInputService.b.get()) != null) {
            textInputService.a.b();
        }
    }
}
