package androidx.compose.ui.platform;

import androidx.collection.IntObjectMap;
import androidx.collection.MutableIntSet;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class SemanticsNodeCopy {
    public final SemanticsConfiguration a;
    public final MutableIntSet b;

    public SemanticsNodeCopy(SemanticsNode semanticsNode, IntObjectMap intObjectMap) {
        this.a = semanticsNode.d;
        List j = SemanticsNode.j(4, semanticsNode);
        this.b = new MutableIntSet(j.size());
        int size = j.size();
        for (int i = 0; i < size; i++) {
            SemanticsNode semanticsNode2 = (SemanticsNode) j.get(i);
            if (intObjectMap.a(semanticsNode2.f)) {
                this.b.b(semanticsNode2.f);
            }
        }
    }
}
