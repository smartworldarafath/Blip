package androidx.compose.ui.node;

import android.view.View;
import androidx.collection.MutableIntSet;
import androidx.compose.runtime.AbstractApplier;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.autofill.AndroidAutofillManager;
import androidx.compose.ui.autofill.PlatformAutofillManagerImpl;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.LayoutNodeSubcompositionsState;
import androidx.compose.ui.platform.AndroidComposeView;
import androidx.compose.ui.semantics.SemanticsConfiguration;
import androidx.compose.ui.semantics.SemanticsModifierKt;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.spatial.RectManager;
import androidx.compose.ui.viewinterop.ViewFactoryHolder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class UiApplier extends AbstractApplier<LayoutNode> {
    @Override // androidx.compose.runtime.Applier
    public final void b(int i, Object obj) {
        ((LayoutNode) this.c).F(i, (LayoutNode) obj);
    }

    @Override // androidx.compose.runtime.Applier
    public final void d() {
        RectManager rectManager;
        AndroidAutofillManager autofillManager;
        RectManager rectManager2;
        LayoutNode layoutNode = (LayoutNode) this.c;
        NodeChain nodeChain = layoutNode.O;
        if (!layoutNode.L()) {
            InlineClassHelperKt.a("onReuse is only expected on attached node");
        }
        ViewFactoryHolder viewFactoryHolder = layoutNode.x;
        if (viewFactoryHolder != null) {
            View view = viewFactoryHolder.k;
            if (view.getParent() != viewFactoryHolder) {
                viewFactoryHolder.addView(view);
            } else {
                viewFactoryHolder.o.a();
            }
        }
        LayoutNodeSubcompositionsState layoutNodeSubcompositionsState = layoutNode.Q;
        if (layoutNodeSubcompositionsState != null) {
            layoutNodeSubcompositionsState.i(false);
        }
        layoutNode.C = false;
        if (layoutNode.Z) {
            layoutNode.Z = false;
        } else {
            Modifier.Node node = layoutNode.O.e;
            for (Modifier.Node node2 = node; node2 != null; node2 = node2.n) {
                if (node2.w) {
                    node2.T0();
                }
            }
            for (Modifier.Node node3 = node; node3 != null; node3 = node3.n) {
                if (node3.w) {
                    node3.V0();
                }
            }
            while (node != null) {
                if (node.w) {
                    node.P0();
                }
                node = node.n;
            }
        }
        int i = layoutNode.k;
        Owner owner = layoutNode.w;
        if (owner != null && (rectManager2 = owner.getRectManager()) != null) {
            rectManager2.i(layoutNode);
        }
        layoutNode.k = SemanticsModifierKt.a.addAndGet(1);
        Owner owner2 = layoutNode.w;
        if (owner2 != null) {
            AndroidComposeView androidComposeView = (AndroidComposeView) owner2;
            androidComposeView.getLayoutNodes().g(i);
            androidComposeView.getLayoutNodes().i(layoutNode.k, layoutNode);
        }
        for (Modifier.Node node4 = nodeChain.f; node4 != null; node4 = node4.o) {
            node4.O0();
        }
        nodeChain.e();
        if (nodeChain.d(8)) {
            layoutNode.J();
        }
        LayoutNode.a0(layoutNode);
        Owner owner3 = layoutNode.w;
        if (owner3 != null && (autofillManager = ((AndroidComposeView) owner3).getAutofillManager()) != null) {
            AndroidComposeView androidComposeView2 = autofillManager.l;
            PlatformAutofillManagerImpl platformAutofillManagerImpl = autofillManager.j;
            MutableIntSet mutableIntSet = autofillManager.q;
            if (mutableIntSet.f(i)) {
                platformAutofillManagerImpl.b(androidComposeView2, i, false);
            }
            SemanticsConfiguration y = layoutNode.y();
            if (y != null && y.j.b(SemanticsProperties.r)) {
                mutableIntSet.b(layoutNode.k);
                platformAutofillManagerImpl.b(androidComposeView2, layoutNode.k, true);
            }
        }
        Owner owner4 = layoutNode.w;
        if (owner4 != null && (rectManager = owner4.getRectManager()) != null) {
            rectManager.h(layoutNode);
        }
    }

    @Override // androidx.compose.runtime.Applier
    public final void e(int i, int i2, int i3) {
        ((LayoutNode) this.c).P(i, i2, i3);
    }

    @Override // androidx.compose.runtime.Applier
    public final void f(int i, int i2) {
        ((LayoutNode) this.c).U(i, i2);
    }

    @Override // androidx.compose.runtime.Applier
    public final /* bridge */ /* synthetic */ void i(int i, Object obj) {
    }

    @Override // androidx.compose.runtime.Applier
    public final void j() {
        Owner owner = ((LayoutNode) this.a).w;
        if (owner != null) {
            ((AndroidComposeView) owner).u();
        }
    }
}
