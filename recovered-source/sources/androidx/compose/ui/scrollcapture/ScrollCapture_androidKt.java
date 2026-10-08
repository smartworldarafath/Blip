package androidx.compose.ui.scrollcapture;

import androidx.collection.MutableScatterMap;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.layout.LayoutCoordinatesKt;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.semantics.ScrollAxisRange;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsNode;
import androidx.compose.ui.semantics.SemanticsOwnerKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.unit.IntRect;
import androidx.compose.ui.unit.IntRectKt;
import defpackage.q;
import java.util.List;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class ScrollCapture_androidKt {
    public static final void a(SemanticsNode semanticsNode, int i, Function1 function1) {
        SemanticsNode semanticsNode2;
        MutableVector mutableVector = new MutableVector(new SemanticsNode[16]);
        List i2 = semanticsNode.i(false, false);
        while (true) {
            mutableVector.d(mutableVector.l, i2);
            while (true) {
                int i3 = mutableVector.l;
                if (i3 != 0) {
                    semanticsNode2 = (SemanticsNode) mutableVector.k(i3 - 1);
                    boolean e = SemanticsOwnerKt.e(semanticsNode2);
                    SemanticsConfiguration semanticsConfiguration = semanticsNode2.d;
                    MutableScatterMap mutableScatterMap = semanticsConfiguration.j;
                    if (!e && !mutableScatterMap.c(SemanticsProperties.j)) {
                        NodeCoordinator d = semanticsNode2.d();
                        if (d != null) {
                            IntRect a = IntRectKt.a(LayoutCoordinatesKt.b(d, true));
                            if (a.a < a.c && a.b < a.d) {
                                Object e2 = semanticsConfiguration.j.e(SemanticsActions.e);
                                Object obj = null;
                                if (e2 == null) {
                                    e2 = null;
                                }
                                Function2 function2 = (Function2) e2;
                                Object e3 = mutableScatterMap.e(SemanticsProperties.w);
                                if (e3 != null) {
                                    obj = e3;
                                }
                                ScrollAxisRange scrollAxisRange = (ScrollAxisRange) obj;
                                if (function2 != null && scrollAxisRange != null && ((Number) scrollAxisRange.b.a()).floatValue() > 0.0f) {
                                    int i4 = 1 + i;
                                    ((ScrollCapture$onScrollCaptureSearch$1) function1).b(new ScrollCaptureCandidate(semanticsNode2, i4, a, d));
                                    a(semanticsNode2, i4, function1);
                                }
                            }
                        } else {
                            throw q.p("Expected semantics node to have a coordinator.");
                        }
                    }
                } else {
                    return;
                }
            }
            i2 = semanticsNode2.i(false, false);
        }
    }
}
