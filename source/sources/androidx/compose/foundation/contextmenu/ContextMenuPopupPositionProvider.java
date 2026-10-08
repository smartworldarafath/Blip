package androidx.compose.foundation.contextmenu;

import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ContextMenuPopupPositionProvider implements PopupPositionProvider {
    public final Function0 a;

    public ContextMenuPopupPositionProvider(Function0 function0) {
        this.a = function0;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        boolean z;
        long j3 = ((IntOffset) this.a.a()).a;
        int i = intRect.a + ((int) (j3 >> 32));
        int i2 = (int) (j2 >> 32);
        int i3 = (int) (j >> 32);
        if (layoutDirection == LayoutDirection.j) {
            z = true;
        } else {
            z = false;
        }
        int a = ContextMenuPopupPositionProviderKt.a(i, i2, i3, z);
        return (ContextMenuPopupPositionProviderKt.a(intRect.b + ((int) (j3 & 4294967295L)), (int) (j2 & 4294967295L), (int) (j & 4294967295L), true) & 4294967295L) | (a << 32);
    }
}
