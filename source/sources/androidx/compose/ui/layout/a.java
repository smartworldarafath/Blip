package androidx.compose.ui.layout;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.CompositionImpl;
import androidx.compose.runtime.ReusableComposition;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.node.LayoutNode;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function0 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Object k;

    public /* synthetic */ a(int i, Object obj) {
        this.j = i;
        this.k = obj;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        ReusableComposition reusableComposition;
        int i = this.j;
        Unit unit = Unit.a;
        Object obj = this.k;
        switch (i) {
            case 0:
                LayoutNodeSubcompositionsState.NodeState nodeState = (LayoutNodeSubcompositionsState.NodeState) obj;
                if (!((Boolean) ((SnapshotMutableStateImpl) nodeState.g).getValue()).booleanValue() && (reusableComposition = nodeState.c) != null) {
                    ((CompositionImpl) reusableComposition).p();
                }
                return unit;
            default:
                LayoutNodeSubcompositionsState a = ((SubcomposeLayoutState) obj).a();
                LayoutNode layoutNode = a.j;
                if (a.w != layoutNode.o().size()) {
                    MutableScatterMap mutableScatterMap = a.o;
                    Object[] objArr = mutableScatterMap.c;
                    long[] jArr = mutableScatterMap.a;
                    int length = jArr.length - 2;
                    if (length >= 0) {
                        int i2 = 0;
                        while (true) {
                            long j = jArr[i2];
                            if ((((~j) << 7) & j & (-9187201950435737472L)) != -9187201950435737472L) {
                                int i3 = 8 - ((~(i2 - length)) >>> 31);
                                for (int i4 = 0; i4 < i3; i4++) {
                                    if ((255 & j) < 128) {
                                        ((LayoutNodeSubcompositionsState.NodeState) objArr[(i2 << 3) + i4]).d = true;
                                    }
                                    j >>= 8;
                                }
                                if (i3 != 8) {
                                }
                            }
                            if (i2 != length) {
                                i2++;
                            }
                        }
                    }
                    if (layoutNode.q != null) {
                        if (!layoutNode.P.e) {
                            LayoutNode.X(layoutNode, false, 7);
                        }
                    } else if (!layoutNode.r()) {
                        LayoutNode.Z(layoutNode, false, 7);
                    }
                }
                return unit;
        }
    }
}
