package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import kotlinx.coroutines.AbstractCoroutine;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.Job;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ToolbarRequesterImpl extends ToolbarRequester {
    public final void a() {
        TextContextMenuProvider textContextMenuProvider;
        if (this.b == ToolbarHandlerState.j) {
            InlineClassHelperKt.c("ToolbarRequester is not initialized.");
        }
        TextContextMenuToolbarHandlerNode textContextMenuToolbarHandlerNode = this.a;
        if (textContextMenuToolbarHandlerNode != null && textContextMenuToolbarHandlerNode.w) {
            Job job = textContextMenuToolbarHandlerNode.D;
            if ((job == null || !((AbstractCoroutine) job).h()) && (textContextMenuProvider = (TextContextMenuProvider) CompositionLocalConsumerModifierNodeKt.a(textContextMenuToolbarHandlerNode, TextContextMenuProviderKt.b)) != null) {
                textContextMenuToolbarHandlerNode.D = BuildersKt.c(textContextMenuToolbarHandlerNode.M0(), null, CoroutineStart.m, new TextContextMenuToolbarHandlerNode$show$1(textContextMenuToolbarHandlerNode, textContextMenuProvider, null), 1);
            }
        }
    }
}
