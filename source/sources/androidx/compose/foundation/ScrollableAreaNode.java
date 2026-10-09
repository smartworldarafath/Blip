package androidx.compose.foundation;

import androidx.compose.foundation.gestures.BringIntoViewSpec;
import androidx.compose.foundation.gestures.FlingBehavior;
import androidx.compose.foundation.gestures.Orientation;
import androidx.compose.foundation.gestures.ScrollableNode;
import androidx.compose.foundation.gestures.ScrollableState;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.unit.LayoutDirection;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class ScrollableAreaNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, ObserverModifierNode {
    public Orientation A;
    public boolean B;
    public FlingBehavior C;
    public MutableInteractionSource D;
    public BringIntoViewSpec E;
    public boolean F;
    public OverscrollEffect G;
    public ScrollableNode H;
    public DelegatableNode I;
    public OverscrollFactory J;
    public AndroidEdgeEffectOverscrollEffect K;
    public boolean L;
    public ScrollableState z;

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        OverscrollEffect overscrollEffect;
        this.L = c1();
        b1();
        if (this.H == null) {
            ScrollableState scrollableState = this.z;
            if (this.F) {
                overscrollEffect = this.K;
            } else {
                overscrollEffect = this.G;
            }
            OverscrollEffect overscrollEffect2 = overscrollEffect;
            FlingBehavior flingBehavior = this.C;
            Orientation orientation = this.A;
            boolean z = this.B;
            boolean z2 = this.L;
            ScrollableNode scrollableNode = new ScrollableNode(overscrollEffect2, this.E, flingBehavior, orientation, scrollableState, this.D, z, z2);
            Y0(scrollableNode);
            this.H = scrollableNode;
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void R0() {
        DelegatableNode delegatableNode = this.I;
        if (delegatableNode != null) {
            Z0(delegatableNode);
        }
    }

    @Override // androidx.compose.ui.node.DelegatableNode
    public final void W() {
        OverscrollEffect overscrollEffect;
        boolean c1 = c1();
        if (this.L != c1) {
            this.L = c1;
            ScrollableState scrollableState = this.z;
            Orientation orientation = this.A;
            boolean z = this.F;
            if (z) {
                overscrollEffect = this.K;
            } else {
                overscrollEffect = this.G;
            }
            OverscrollEffect overscrollEffect2 = overscrollEffect;
            boolean z2 = this.B;
            d1(overscrollEffect2, this.E, this.C, orientation, scrollableState, this.D, z, z2);
        }
    }

    public final void b1() {
        Object obj;
        DelegatableNode delegatableNode = this.I;
        if (delegatableNode == null) {
            if (this.F) {
                ObserverModifierNodeKt.a(this, new c(this, 1));
            }
            if (this.F) {
                obj = this.K;
            } else {
                obj = this.G;
            }
            if (obj != null) {
                DelegatingNode delegatingNode = ((AndroidEdgeEffectOverscrollEffect) obj).i;
                if (!delegatingNode.j.w) {
                    Y0(delegatingNode);
                    this.I = delegatingNode;
                    return;
                }
                return;
            }
            return;
        }
        if (!((Modifier.Node) delegatableNode).j.w) {
            Y0(delegatableNode);
        }
    }

    public final boolean c1() {
        LayoutDirection layoutDirection = LayoutDirection.j;
        if (this.w) {
            layoutDirection = DelegatableNodeKt.g(this).I;
        }
        Orientation orientation = this.A;
        if (layoutDirection == LayoutDirection.k && orientation != Orientation.j) {
            return false;
        }
        return true;
    }

    public final void d1(OverscrollEffect overscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z, boolean z2) {
        boolean z3;
        OverscrollEffect overscrollEffect2;
        this.z = scrollableState;
        this.A = orientation;
        boolean z4 = true;
        if (this.F != z) {
            this.F = z;
            z3 = true;
        } else {
            z3 = false;
        }
        if (!Intrinsics.a(this.G, overscrollEffect)) {
            this.G = overscrollEffect;
        } else {
            z4 = false;
        }
        if (z3 || (z4 && !z)) {
            DelegatableNode delegatableNode = this.I;
            if (delegatableNode != null) {
                Z0(delegatableNode);
            }
            this.I = null;
            b1();
        }
        this.B = z2;
        this.C = flingBehavior;
        this.D = mutableInteractionSource;
        this.E = bringIntoViewSpec;
        boolean c1 = c1();
        this.L = c1;
        ScrollableNode scrollableNode = this.H;
        if (scrollableNode != null) {
            if (this.F) {
                overscrollEffect2 = this.K;
            } else {
                overscrollEffect2 = this.G;
            }
            scrollableNode.t1(overscrollEffect2, bringIntoViewSpec, flingBehavior, orientation, scrollableState, mutableInteractionSource, z2, c1);
        }
    }

    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        OverscrollEffect overscrollEffect;
        OverscrollFactory overscrollFactory = (OverscrollFactory) CompositionLocalConsumerModifierNodeKt.a(this, OverscrollKt.a);
        if (!Intrinsics.a(overscrollFactory, this.J)) {
            this.J = overscrollFactory;
            this.K = null;
            DelegatableNode delegatableNode = this.I;
            if (delegatableNode != null) {
                Z0(delegatableNode);
            }
            this.I = null;
            b1();
            ScrollableNode scrollableNode = this.H;
            if (scrollableNode != null) {
                ScrollableState scrollableState = this.z;
                Orientation orientation = this.A;
                if (this.F) {
                    overscrollEffect = this.K;
                } else {
                    overscrollEffect = this.G;
                }
                OverscrollEffect overscrollEffect2 = overscrollEffect;
                boolean z = this.B;
                boolean z2 = this.L;
                scrollableNode.t1(overscrollEffect2, this.E, this.C, orientation, scrollableState, this.D, z, z2);
            }
        }
    }
}
