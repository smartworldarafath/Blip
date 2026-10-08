package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.runtime.State;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatingNode;
import defpackage.kb;
import defpackage.w6;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextContextMenuToolbarHandlerNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, TextContextMenuDataProvider {
    public Function1 A;
    public Function1 B;
    public w6 C;
    public Job D;
    public final State E = SnapshotStateKt.e(new kb(19, this));
    public Rect F = Rect.e;
    public ToolbarRequester z;

    public TextContextMenuToolbarHandlerNode(ToolbarRequester toolbarRequester, Function1 function1, Function1 function12, w6 w6Var) {
        this.z = toolbarRequester;
        this.A = function1;
        this.B = function12;
        this.C = w6Var;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    public final Rect A0(LayoutCoordinates layoutCoordinates) {
        if (!this.w) {
            return this.F;
        }
        Rect rect = (Rect) this.C.b(layoutCoordinates);
        if (rect == null) {
            return this.F;
        }
        this.F = rect;
        return rect;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    public final long F0(LayoutCoordinates layoutCoordinates) {
        return A0(layoutCoordinates).d();
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        ToolbarRequester toolbarRequester = this.z;
        toolbarRequester.b = ToolbarHandlerState.l;
        toolbarRequester.a = this;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        ToolbarRequester toolbarRequester = this.z;
        toolbarRequester.b = ToolbarHandlerState.k;
        toolbarRequester.a = null;
    }

    @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
    public final TextContextMenuData V() {
        return (TextContextMenuData) this.E.getValue();
    }
}
