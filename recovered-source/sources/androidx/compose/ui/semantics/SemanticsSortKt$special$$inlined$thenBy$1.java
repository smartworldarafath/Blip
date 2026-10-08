package androidx.compose.ui.semantics;

import androidx.compose.ui.node.LayoutNode;
import java.util.Comparator;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsSortKt$special$$inlined$thenBy$1<T> implements Comparator {
    public final /* synthetic */ Comparator j;

    public SemanticsSortKt$special$$inlined$thenBy$1(Comparator comparator) {
        this.j = comparator;
    }

    @Override // java.util.Comparator
    public final int compare(Object obj, Object obj2) {
        int compare = this.j.compare(obj, obj2);
        if (compare != 0) {
            return compare;
        }
        LayoutNode layoutNode = ((SemanticsNode) obj).c;
        LayoutNode layoutNode2 = ((SemanticsNode) obj2).c;
        if (layoutNode.B() == layoutNode2.B()) {
            return Intrinsics.b(layoutNode.x(), layoutNode2.x());
        }
        return Float.compare(layoutNode.B(), layoutNode2.B());
    }
}
