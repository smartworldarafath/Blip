package androidx.compose.ui.viewinterop;

import android.view.View;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.DelegatableNodeKt;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class FocusGroupNode_androidKt {
    public static final View a(Modifier.Node node) {
        View view;
        ViewFactoryHolder viewFactoryHolder = DelegatableNodeKt.g(node.j).x;
        if (viewFactoryHolder != null) {
            view = viewFactoryHolder.getInteropView();
        } else {
            view = null;
        }
        if (view != null) {
            return view;
        }
        u2.l("Could not fetch interop view");
        return null;
    }
}
