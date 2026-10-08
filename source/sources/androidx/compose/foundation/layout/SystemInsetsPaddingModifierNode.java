package androidx.compose.foundation.layout;

import android.view.View;
import androidx.compose.foundation.layout.WindowInsetsHolder;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.LayoutModifierNode;
import androidx.core.view.ViewCompat;
import java.util.WeakHashMap;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class SystemInsetsPaddingModifierNode extends InsetsPaddingModifierNode implements LayoutModifierNode {
    public Function1 A;
    public WindowInsetsHolder B;

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode, androidx.compose.ui.Modifier.Node
    public final void Q0() {
        View a = DelegatableNode_androidKt.a(this);
        WeakHashMap weakHashMap = WindowInsetsHolder.v;
        WindowInsetsHolder c = WindowInsetsHolder.Companion.c(a);
        c.a(a);
        WindowInsets windowInsets = (WindowInsets) this.A.b(c);
        if (!Intrinsics.a(windowInsets, this.z)) {
            this.z = windowInsets;
            Z0();
        }
        this.B = c;
        super.Q0();
    }

    @Override // androidx.compose.foundation.layout.InsetsConsumingModifierNode, androidx.compose.ui.Modifier.Node
    public final void R0() {
        View a = DelegatableNode_androidKt.a(this);
        WindowInsetsHolder windowInsetsHolder = this.B;
        if (windowInsetsHolder != null) {
            int i = windowInsetsHolder.t - 1;
            windowInsetsHolder.t = i;
            if (i == 0) {
                ViewCompat.q(a, null);
                ViewCompat.r(a, null);
                a.removeOnAttachStateChangeListener(windowInsetsHolder.u);
            }
        }
        super.R0();
    }
}
