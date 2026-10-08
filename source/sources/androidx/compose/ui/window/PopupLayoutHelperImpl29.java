package androidx.compose.ui.window;

import android.graphics.Rect;
import kotlin.collections.CollectionsKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class PopupLayoutHelperImpl29 extends PopupLayoutHelperImpl {
    @Override // androidx.compose.ui.window.PopupLayoutHelperImpl, androidx.compose.ui.window.PopupLayoutHelper
    public final void a(PopupLayout popupLayout, int i, int i2) {
        popupLayout.setSystemGestureExclusionRects(CollectionsKt.E(new Rect(0, 0, i, i2)));
    }
}
