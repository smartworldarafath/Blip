package defpackage;

import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.OneDimensionalFocusSearchKt;
import androidx.compose.ui.focus.TwoDimensionalFocusSearchKt;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.BeyondBoundsLayout;
import androidx.compose.ui.node.DelegatableNodeKt;
import kotlin.jvm.functions.Function1;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class rc implements Function1 {
    public final /* synthetic */ int j;
    public final /* synthetic */ FocusTargetNode k;
    public final /* synthetic */ FocusTargetNode l;
    public final /* synthetic */ int m;
    public final /* synthetic */ p2 n;
    public final /* synthetic */ Object o;

    public /* synthetic */ rc(FocusTargetNode focusTargetNode, FocusTargetNode focusTargetNode2, Object obj, int i, p2 p2Var, int i2) {
        this.j = i2;
        this.k = focusTargetNode;
        this.l = focusTargetNode2;
        this.o = obj;
        this.m = i;
        this.n = p2Var;
    }

    @Override // kotlin.jvm.functions.Function1
    public final Object b(Object obj) {
        int i = this.j;
        p2 p2Var = this.n;
        int i2 = this.m;
        Object obj2 = this.o;
        FocusTargetNode focusTargetNode = this.l;
        FocusTargetNode focusTargetNode2 = this.k;
        switch (i) {
            case 0:
                FocusTargetNode focusTargetNode3 = (FocusTargetNode) obj2;
                BeyondBoundsLayout.BeyondBoundsScope beyondBoundsScope = (BeyondBoundsLayout.BeyondBoundsScope) obj;
                if (focusTargetNode2 != ((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).g()) {
                    return Boolean.TRUE;
                }
                boolean f = OneDimensionalFocusSearchKt.f(focusTargetNode, focusTargetNode3, i2, p2Var);
                Boolean valueOf = Boolean.valueOf(f);
                if (!f && beyondBoundsScope.a()) {
                    return null;
                }
                return valueOf;
            default:
                Rect rect = (Rect) obj2;
                BeyondBoundsLayout.BeyondBoundsScope beyondBoundsScope2 = (BeyondBoundsLayout.BeyondBoundsScope) obj;
                if (focusTargetNode2 != ((FocusOwnerImpl) DelegatableNodeKt.h(focusTargetNode).getFocusOwner()).g()) {
                    return Boolean.TRUE;
                }
                boolean j = TwoDimensionalFocusSearchKt.j(i2, p2Var, focusTargetNode, rect);
                Boolean valueOf2 = Boolean.valueOf(j);
                if (!j && beyondBoundsScope2.a()) {
                    return null;
                }
                return valueOf2;
        }
    }
}
