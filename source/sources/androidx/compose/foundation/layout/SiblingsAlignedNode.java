package androidx.compose.foundation.layout;

import androidx.compose.foundation.layout.AlignmentLineProvider;
import androidx.compose.foundation.layout.CrossAxisAlignment;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.layout.AlignmentLine;
import androidx.compose.ui.node.ParentDataModifierNode;
import androidx.compose.ui.unit.Density;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SiblingsAlignedNode extends Modifier.Node implements ParentDataModifierNode {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class WithAlignmentLineNode extends SiblingsAlignedNode {
        public AlignmentLine x;

        @Override // androidx.compose.ui.node.ParentDataModifierNode
        public final Object Z(Density density, Object obj) {
            RowColumnParentData rowColumnParentData;
            if (obj instanceof RowColumnParentData) {
                rowColumnParentData = (RowColumnParentData) obj;
            } else {
                rowColumnParentData = null;
            }
            if (rowColumnParentData == null) {
                rowColumnParentData = new RowColumnParentData();
            }
            rowColumnParentData.c = new CrossAxisAlignment.AlignmentLineCrossAxisAlignment(new AlignmentLineProvider.Value(this.x));
            return rowColumnParentData;
        }
    }
}
