package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusInteropUtils_androidKt;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FocusTargetPropertiesNode extends Modifier.Node implements FocusPropertiesModifierNode {
    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void F(FocusProperties focusProperties) {
        boolean z;
        View a = FocusGroupNode_androidKt.a(this);
        if (this.j.w && FocusGroupNode_androidKt.a(this).hasFocusable()) {
            z = true;
        } else {
            z = false;
        }
        focusProperties.c(z);
        View findFocus = a.findFocus();
        if (findFocus != null) {
            focusProperties.e(FocusInteropUtils_androidKt.a(findFocus, a));
        }
    }
}
