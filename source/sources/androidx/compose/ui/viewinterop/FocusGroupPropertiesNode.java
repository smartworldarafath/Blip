package androidx.compose.ui.viewinterop;

import android.view.View;
import android.view.ViewParent;
import android.view.ViewTreeObserver;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusOwner;
import androidx.compose.ui.focus.FocusOwnerImpl;
import androidx.compose.ui.focus.FocusProperties;
import androidx.compose.ui.focus.FocusPropertiesModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.focus.FocusTransactionsKt;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.Owner;
import defpackage.u2;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FocusGroupPropertiesNode extends Modifier.Node implements FocusPropertiesModifierNode, ViewTreeObserver.OnGlobalFocusChangeListener {
    public View x;
    public ViewTreeObserver y;
    public final a z = new a(this, 0);
    public final a A = new a(this, 1);

    @Override // androidx.compose.ui.focus.FocusPropertiesModifierNode
    public final void F(FocusProperties focusProperties) {
        focusProperties.c(false);
        focusProperties.d(this.z);
        focusProperties.b(this.A);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        ViewTreeObserver viewTreeObserver = DelegatableNode_androidKt.a(this).getViewTreeObserver();
        this.y = viewTreeObserver;
        viewTreeObserver.addOnGlobalFocusChangeListener(this);
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        ViewTreeObserver viewTreeObserver = this.y;
        if (viewTreeObserver != null && viewTreeObserver.isAlive()) {
            viewTreeObserver.removeOnGlobalFocusChangeListener(this);
        }
        this.y = null;
        DelegatableNode_androidKt.a(this).getViewTreeObserver().removeOnGlobalFocusChangeListener(this);
        this.x = null;
    }

    public final FocusTargetNode Y0() {
        boolean z;
        if (!this.j.w) {
            InlineClassHelperKt.b("visitLocalDescendants called on an unattached node");
        }
        Modifier.Node node = this.j;
        if ((node.m & 1024) != 0) {
            boolean z2 = false;
            for (Modifier.Node node2 = node.o; node2 != null; node2 = node2.o) {
                if ((node2.l & 1024) != 0) {
                    Modifier.Node node3 = node2;
                    MutableVector mutableVector = null;
                    while (node3 != null) {
                        if (node3 instanceof FocusTargetNode) {
                            FocusTargetNode focusTargetNode = (FocusTargetNode) node3;
                            if (z2) {
                                return focusTargetNode;
                            }
                            z = false;
                            z2 = true;
                        } else {
                            z = true;
                        }
                        if (z && (node3.l & 1024) != 0 && (node3 instanceof DelegatingNode)) {
                            int i = 0;
                            for (Modifier.Node node4 = ((DelegatingNode) node3).y; node4 != null; node4 = node4.o) {
                                if ((node4.l & 1024) != 0) {
                                    i++;
                                    if (i == 1) {
                                        node3 = node4;
                                    } else {
                                        if (mutableVector == null) {
                                            mutableVector = new MutableVector(new Modifier.Node[16]);
                                        }
                                        if (node3 != null) {
                                            mutableVector.b(node3);
                                            node3 = null;
                                        }
                                        mutableVector.b(node4);
                                    }
                                }
                            }
                            if (i == 1) {
                            }
                        }
                        node3 = DelegatableNodeKt.b(mutableVector);
                    }
                }
            }
        }
        u2.l("Could not find focus target of embedded view wrapper");
        return null;
    }

    @Override // android.view.ViewTreeObserver.OnGlobalFocusChangeListener
    public final void onGlobalFocusChanged(View view, View view2) {
        boolean z;
        if (DelegatableNodeKt.g(this).w != null) {
            View a = FocusGroupNode_androidKt.a(this);
            FocusOwner focusOwner = DelegatableNodeKt.h(this).getFocusOwner();
            Owner h = DelegatableNodeKt.h(this);
            boolean z2 = true;
            if (view != null && !view.equals(h)) {
                for (ViewParent parent = view.getParent(); parent != null; parent = parent.getParent()) {
                    if (parent == a.getParent()) {
                        z = true;
                        break;
                    }
                }
            }
            z = false;
            if (view2 != null && !view2.equals(h)) {
                for (ViewParent parent2 = view2.getParent(); parent2 != null; parent2 = parent2.getParent()) {
                    if (parent2 == a.getParent()) {
                        break;
                    }
                }
            }
            z2 = false;
            if (z && z2) {
                this.x = view2;
                return;
            }
            if (z2) {
                this.x = view2;
                FocusTargetNode Y0 = Y0();
                if (!Y0.d1().a()) {
                    FocusTransactionsKt.e(Y0);
                    return;
                }
                return;
            }
            if (z) {
                this.x = null;
                if (Y0().d1().b()) {
                    ((FocusOwnerImpl) focusOwner).c(8, false, false);
                    return;
                }
                return;
            }
            this.x = null;
        }
    }
}
