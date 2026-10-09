package androidx.compose.foundation.text.selection;

import androidx.compose.ui.Alignment;
import androidx.compose.ui.unit.IntOffset;
import androidx.compose.ui.unit.IntOffsetKt;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.LayoutDirection;
import androidx.compose.ui.window.PopupPositionProvider;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class HandlePositionProvider implements PopupPositionProvider {
    public final Alignment a;
    public final OffsetProvider b;
    public long c = 0;

    public HandlePositionProvider(Alignment alignment, OffsetProvider offsetProvider) {
        this.a = alignment;
        this.b = offsetProvider;
    }

    @Override // androidx.compose.ui.window.PopupPositionProvider
    public final long a(IntRect intRect, long j, LayoutDirection layoutDirection, long j2) {
        long a = this.b.a();
        if ((9223372034707292159L & a) == 9205357640488583168L) {
            a = this.c;
        }
        this.c = a;
        return IntOffset.c(IntOffset.c(intRect.b(), IntOffsetKt.b(a)), this.a.a(j2, 0L, layoutDirection));
    }
}
