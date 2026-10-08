package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import java.util.Comparator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class LtrBoundsComparator implements Comparator<SemanticsNode> {
    public static final LtrBoundsComparator j = new Object();

    @Override // java.util.Comparator
    public final int compare(SemanticsNode semanticsNode, SemanticsNode semanticsNode2) {
        Rect h = semanticsNode.h();
        Rect h2 = semanticsNode2.h();
        int compare = Float.compare(h.a, h2.a);
        if (compare != 0) {
            return compare;
        }
        int compare2 = Float.compare(h.b, h2.b);
        if (compare2 != 0) {
            return compare2;
        }
        int compare3 = Float.compare(h.d, h2.d);
        if (compare3 != 0) {
            return compare3;
        }
        return Float.compare(h.c, h2.c);
    }
}
