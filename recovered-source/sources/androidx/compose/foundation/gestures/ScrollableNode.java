package androidx.compose.foundation.gestures;

import android.view.KeyEvent;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.MutatePriority;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.gestures.DragEvent;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.input.key.Key;
import androidx.compose.ui.input.key.KeyEvent_androidKt;
import androidx.compose.ui.input.key.KeyInputModifierNode;
import androidx.compose.ui.input.key.Key_androidKt;
import androidx.compose.ui.input.nestedscroll.NestedScrollNode;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.we;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.Intrinsics;
import kotlinx.coroutines.BuildersKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ScrollableNode extends AbstractScrollableNode implements KeyInputModifierNode {
    public final DefaultFlingBehavior Z;
    public final ScrollingLogic a0;
    public final ScrollableNestedScrollConnection b0;
    public final FocusTargetModifierNode c0;
    public final ContentInViewNode d0;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v5, types: [androidx.compose.foundation.relocation.BringIntoViewResponderNode, androidx.compose.ui.Modifier$Node, androidx.compose.ui.node.DelegatableNode] */
    public ScrollableNode(OverscrollEffect overscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z, boolean z2) {
        super(z, mutableInteractionSource, orientation);
        FlingBehavior flingBehavior2;
        DefaultFlingBehavior defaultFlingBehavior = new DefaultFlingBehavior(DecayAnimationSpecKt.b(new SplineBasedFloatDecayAnimationSpec(ScrollableKt.c)));
        this.Z = defaultFlingBehavior;
        if (flingBehavior == null) {
            flingBehavior2 = defaultFlingBehavior;
        } else {
            flingBehavior2 = flingBehavior;
        }
        ScrollingLogic scrollingLogic = new ScrollingLogic(scrollableState, overscrollEffect, flingBehavior2, orientation, z2, this.S, this, new we(this, 0));
        this.a0 = scrollingLogic;
        ScrollableNestedScrollConnection scrollableNestedScrollConnection = new ScrollableNestedScrollConnection(scrollingLogic, z);
        this.b0 = scrollableNestedScrollConnection;
        FocusTargetNode focusTargetNode = new FocusTargetNode(2, null, 10);
        Y0(focusTargetNode);
        this.c0 = focusTargetNode;
        ContentInViewNode contentInViewNode = new ContentInViewNode(orientation, scrollingLogic, z2, bringIntoViewSpec, new we(this, 1));
        Y0(contentInViewNode);
        this.d0 = contentInViewNode;
        Y0(new NestedScrollNode(scrollableNestedScrollConnection, this.S));
        ?? node = new Modifier.Node();
        node.x = contentInViewNode;
        Y0(node);
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean I(KeyEvent keyEvent) {
        float f;
        long floatToRawIntBits;
        float f2;
        boolean z = false;
        if (!this.B || ((!Key.a(KeyEvent_androidKt.a(keyEvent), Key.D) && !Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.C)) || KeyEvent_androidKt.b(keyEvent) != 2 || keyEvent.isCtrlPressed())) {
            return false;
        }
        if (this.a0.d == Orientation.j) {
            z = true;
        }
        ContentInViewNode contentInViewNode = this.d0;
        if (z) {
            int Z0 = (int) (contentInViewNode.Z0() & 4294967295L);
            if (Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.C)) {
                f2 = Z0;
            } else {
                f2 = -Z0;
            }
            floatToRawIntBits = (Float.floatToRawIntBits(0.0f) << 32) | (4294967295L & Float.floatToRawIntBits(f2));
        } else {
            int Z02 = (int) (contentInViewNode.Z0() >> 32);
            if (Key.a(Key_androidKt.a(keyEvent.getKeyCode()), Key.C)) {
                f = Z02;
            } else {
                f = -Z02;
            }
            floatToRawIntBits = (Float.floatToRawIntBits(0.0f) & 4294967295L) | (Float.floatToRawIntBits(f) << 32);
        }
        BuildersKt.c(M0(), null, null, new ScrollableNode$onKeyEvent$1(this, floatToRawIntBits, null), 3);
        return true;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final Object f1(Function2 function2, Continuation continuation) {
        MutatePriority mutatePriority = MutatePriority.k;
        ScrollingLogic scrollingLogic = this.a0;
        Object g = scrollingLogic.g(mutatePriority, new ScrollableNode$drag$2$1(scrollingLogic, null, function2), (ContinuationImpl) continuation);
        if (g == CoroutineSingletons.j) {
            return g;
        }
        return Unit.a;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void l1(DragEvent.DragStopped dragStopped) {
        if (!this.w) {
            return;
        }
        BuildersKt.c(this.S.c(), null, null, new ScrollableNode$onDragStopped$1(dragStopped, this, null), 3);
    }

    @Override // androidx.compose.ui.input.key.KeyInputModifierNode
    public final boolean o(KeyEvent keyEvent) {
        return false;
    }

    public final void t1(OverscrollEffect overscrollEffect, BringIntoViewSpec bringIntoViewSpec, FlingBehavior flingBehavior, Orientation orientation, ScrollableState scrollableState, MutableInteractionSource mutableInteractionSource, boolean z, boolean z2) {
        boolean z3;
        boolean z4;
        if (this.B != z) {
            this.b0.k = z;
            this.T = null;
            this.U = null;
            SemanticsModifierNodeKt.b(this);
        }
        if (flingBehavior == null) {
            flingBehavior = this.Z;
        }
        ScrollingLogic scrollingLogic = this.a0;
        if (!Intrinsics.a(scrollingLogic.a, scrollableState)) {
            scrollingLogic.a = scrollableState;
            z3 = true;
        } else {
            z3 = false;
        }
        scrollingLogic.b = overscrollEffect;
        if (scrollingLogic.d != orientation) {
            scrollingLogic.d = orientation;
            z3 = true;
        }
        if (scrollingLogic.e != z2) {
            scrollingLogic.e = z2;
            z4 = true;
        } else {
            z4 = z3;
        }
        scrollingLogic.c = flingBehavior;
        scrollingLogic.f = this.S;
        ContentInViewNode contentInViewNode = this.d0;
        contentInViewNode.x = orientation;
        contentInViewNode.z = z2;
        contentInViewNode.A = bringIntoViewSpec;
        Orientation orientation2 = scrollingLogic.d;
        Orientation orientation3 = Orientation.j;
        if (orientation2 != orientation3) {
            orientation3 = Orientation.k;
        }
        s1(AbstractScrollableNodeKt.a, z, mutableInteractionSource, orientation3, z4);
    }
}
