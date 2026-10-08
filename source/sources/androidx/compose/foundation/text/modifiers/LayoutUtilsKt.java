package androidx.compose.foundation.text.modifiers;

import androidx.compose.foundation.text.TextDelegateKt;
import androidx.compose.ui.unit.Constraints;
import kotlin.ranges.RangesKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LayoutUtilsKt {
    public static final long a(long j, boolean z, int i, float f) {
        int h;
        if ((z || i == 2 || i == 4 || i == 5) && Constraints.d(j)) {
            h = Constraints.h(j);
        } else {
            h = Integer.MAX_VALUE;
        }
        if (Constraints.j(j) != h) {
            h = RangesKt.d(TextDelegateKt.a(f), Constraints.j(j), h);
        }
        return Constraints.Companion.b(0, h, 0, Constraints.g(j));
    }
}
