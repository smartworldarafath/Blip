package androidx.compose.foundation.text.contextmenu.internal;

import androidx.compose.foundation.contextmenu.ContextMenuPopupPositionProvider;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntSize;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class MaintainWindowPositionPopupPositionProvider implements PopupPositionProvider {
    public final ContextMenuPopupPositionProvider a;
    public IntSize b;
    public LayoutDirection c;
    public IntSize d;
    public IntOffset e;

    public MaintainWindowPositionPopupPositionProvider(ContextMenuPopupPositionProvider contextMenuPopupPositionProvider) {
        this.a = contextMenuPopupPositionProvider;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        boolean a;
        IntOffset intOffset = this.e;
        if (intOffset != null) {
            IntSize intSize = this.b;
            boolean z = false;
            if (intSize == null) {
                a = false;
            } else {
                a = IntSize.a(intSize.a, j);
            }
            if (a && this.c == layoutDirection) {
                IntSize intSize2 = this.d;
                if (intSize2 != null) {
                    z = IntSize.a(intSize2.a, j2);
                }
                if (z) {
                    return intOffset.a;
                }
            }
        }
        long a2 = this.a.a(intRect, j, layoutDirection, j2);
        this.b = new IntSize(j);
        this.c = layoutDirection;
        this.d = new IntSize(j2);
        this.e = new IntOffset(a2);
        return a2;
    }
}
