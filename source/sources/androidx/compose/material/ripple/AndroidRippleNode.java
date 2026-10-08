package androidx.compose.material.ripple;

import androidx.compose.ui.node.DrawModifierNodeKt;
import java.util.LinkedHashMap;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AndroidRippleNode extends RippleNode implements RippleHostKey {
    public RippleContainer G;
    public RippleHostView H;

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        RippleContainer rippleContainer = this.G;
        if (rippleContainer != null) {
            this.H = null;
            DrawModifierNodeKt.a(this);
            RippleHostMap rippleHostMap = rippleContainer.m;
            RippleHostView rippleHostView = (RippleHostView) rippleHostMap.a.get(this);
            if (rippleHostView != null) {
                rippleHostView.c();
                LinkedHashMap linkedHashMap = rippleHostMap.a;
                RippleHostView rippleHostView2 = (RippleHostView) linkedHashMap.get(this);
                if (rippleHostView2 != null) {
                }
                linkedHashMap.remove(this);
                rippleContainer.l.add(rippleHostView);
            }
        }
    }
}
