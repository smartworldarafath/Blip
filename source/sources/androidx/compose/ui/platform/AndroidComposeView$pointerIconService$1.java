package androidx.compose.ui.platform;

import androidx.compose.ui.input.pointer.PointerIcon;
import androidx.compose.ui.input.pointer.PointerIconService;
import androidx.compose.ui.input.pointer.PointerIcon_androidKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidComposeView$pointerIconService$1 implements PointerIconService {
    public PointerIcon a;
    public final /* synthetic */ AndroidComposeView b;

    public AndroidComposeView$pointerIconService$1(AndroidComposeView androidComposeView) {
        this.b = androidComposeView;
        PointerIcon.a.getClass();
    }

    public final void a(PointerIcon pointerIcon) {
        if (pointerIcon == null) {
            PointerIcon.a.getClass();
            pointerIcon = PointerIcon_androidKt.a;
        }
        AndroidComposeViewVerificationHelperMethodsN.a.a(this.b, pointerIcon);
    }
}
