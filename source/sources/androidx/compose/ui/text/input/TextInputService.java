package androidx.compose.ui.text.input;

import java.util.concurrent.atomic.AtomicReference;
import kotlin.Deprecated;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@Deprecated
/* loaded from: classes.dex */
public class TextInputService {
    public final PlatformTextInputService a;
    public final AtomicReference b = new AtomicReference(null);

    public TextInputService(PlatformTextInputService platformTextInputService) {
        this.a = platformTextInputService;
    }
}
