package androidx.compose.ui.semantics;

import androidx.compose.ui.geometry.Rect;
import java.util.Comparator;
import java.util.List;
import kotlin.Pair;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TopBottomBoundsComparator implements Comparator<Pair<? extends Rect, ? extends List<SemanticsNode>>> {
    public static final TopBottomBoundsComparator j = new Object();

    @Override // java.util.Comparator
    public final int compare(Pair<? extends Rect, ? extends List<SemanticsNode>> pair, Pair<? extends Rect, ? extends List<SemanticsNode>> pair2) {
        Pair<? extends Rect, ? extends List<SemanticsNode>> pair3 = pair;
        Pair<? extends Rect, ? extends List<SemanticsNode>> pair4 = pair2;
        int compare = Float.compare(((Rect) pair3.j).b, ((Rect) pair4.j).b);
        if (compare != 0) {
            return compare;
        }
        return Float.compare(((Rect) pair3.j).d, ((Rect) pair4.j).d);
    }
}
