package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.CancelIndicatingFocusBoundaryScope;
import androidx.compose.ui.focus.FocusEnterExitScope;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTraversalKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class a implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ Modifier.Node k;

    public /* synthetic */ a(Modifier.Node node, int i) {
        this.j = i;
        this.k = node;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        Rect rect;
        int i = this.j;
        android.graphics.Rect rect2 = null;
        Unit unit = Unit.a;
        Modifier.Node node = this.k;
        switch (i) {
            case 0:
                FocusGroupPropertiesNode focusGroupPropertiesNode = (FocusGroupPropertiesNode) node;
                FocusEnterExitScope focusEnterExitScope = (FocusEnterExitScope) obj;
                View a = FocusGroupNode_androidKt.a(focusGroupPropertiesNode);
                if (!a.isFocused() && !a.hasFocus()) {
                    FocusOwner focusOwner = DelegatableNodeKt.h(focusGroupPropertiesNode).getFocusOwner();
                    View a2 = DelegatableNode_androidKt.a(focusGroupPropertiesNode);
                    Integer c = FocusInteropUtils_androidKt.c(((CancelIndicatingFocusBoundaryScope) focusEnterExitScope).a);
                    int[] iArr = new int[2];
                    a2.getLocationOnScreen(iArr);
                    int[] iArr2 = new int[2];
                    a.getLocationOnScreen(iArr2);
                    FocusTargetNode a3 = FocusTraversalKt.a(((FocusOwnerImpl) focusOwner).c);
                    if (a3 != null) {
                        rect = FocusTraversalKt.b(a3);
                    } else {
                        rect = null;
                    }
                    if (rect != null) {
                        int i2 = (int) rect.a;
                        int i3 = iArr[0];
                        int i4 = iArr2[0];
                        int i5 = (int) rect.b;
                        int i6 = iArr[1];
                        int i7 = iArr2[1];
                        rect2 = new android.graphics.Rect((i2 + i3) - i4, (i5 + i6) - i7, (((int) rect.c) + i3) - i4, (((int) rect.d) + i6) - i7);
                    }
                    if (!FocusInteropUtils_androidKt.b(a, c, rect2)) {
                        ((CancelIndicatingFocusBoundaryScope) focusEnterExitScope).b = true;
                    }
                }
                return unit;
            case 1:
                FocusGroupNode_androidKt.a((FocusGroupPropertiesNode) node);
                return unit;
            default:
                BringIntoViewNode bringIntoViewNode = (BringIntoViewNode) node;
                Rect rect3 = (Rect) obj;
                if (bringIntoViewNode.w) {
                    BuildersKt.c(bringIntoViewNode.M0(), null, null, new BringIntoViewNode$requester$1$1(bringIntoViewNode, rect3, null), 3);
                }
                return unit;
        }
    }
}
