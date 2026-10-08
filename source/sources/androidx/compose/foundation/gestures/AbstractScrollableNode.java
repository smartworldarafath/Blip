package androidx.compose.foundation.gestures;

import android.view.ViewConfiguration;
import androidx.compose.animation.SplineBasedFloatDecayAnimationSpec;
import androidx.compose.animation.core.DecayAnimationSpecKt;
import androidx.compose.foundation.AndroidEdgeEffectOverscrollEffect;
import androidx.compose.foundation.GestureNodeKt;
import androidx.compose.foundation.OverscrollEffect;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.input.nestedscroll.NestedScrollDispatcher;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;
import androidx.compose.ui.input.pointer.PointerInputChange;
import androidx.compose.ui.input.pointer.PointerType;
import androidx.compose.ui.node.DelegatableNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatableNode_androidKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import androidx.compose.ui.unit.Density;
import java.util.List;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.AdaptedFunctionReference;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class AbstractScrollableNode extends DragGestureNode implements SemanticsModifierNode {
    public final NestedScrollDispatcher S;
    public a T;
    public Function2 U;
    public boolean V;
    public boolean W;
    public MouseWheelScrollingLogic X;
    public TrackpadScrollingLogic Y;

    public AbstractScrollableNode(boolean z, MutableInteractionSource mutableInteractionSource, Orientation orientation) {
        super(AbstractScrollableNodeKt.a, z, mutableInteractionSource, orientation);
        this.S = new NestedScrollDispatcher();
    }

    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.compose.foundation.gestures.a] */
    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        if (this.B && (this.T == null || this.U == null)) {
            this.T = new Function2() { // from class: androidx.compose.foundation.gestures.a
                @Override // kotlin.jvm.functions.Function2
                public final Object n(Object obj, Object obj2) {
                    float floatValue = ((Float) obj).floatValue();
                    float floatValue2 = ((Float) obj2).floatValue();
                    AbstractScrollableNode abstractScrollableNode = AbstractScrollableNode.this;
                    BuildersKt.c(abstractScrollableNode.M0(), null, null, new AbstractScrollableNode$setScrollSemanticsActions$1$1(abstractScrollableNode, floatValue, floatValue2, null), 3);
                    return Boolean.TRUE;
                }
            };
            this.U = new AbstractScrollableNode$setScrollSemanticsActions$2(this, null);
        }
        a aVar = this.T;
        if (aVar != null) {
            KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
            semanticsPropertyReceiver.b(SemanticsActions.d, new AccessibilityAction(null, aVar));
        }
        Function2 function2 = this.U;
        if (function2 != null) {
            KProperty[] kPropertyArr2 = SemanticsPropertiesKt.a;
            semanticsPropertyReceiver.b(SemanticsActions.e, function2);
        }
    }

    /* JADX WARN: Type inference failed for: r10v2, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.AdaptedFunctionReference] */
    /* JADX WARN: Type inference failed for: r10v9, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.AdaptedFunctionReference] */
    @Override // androidx.compose.foundation.gestures.DragGestureNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j) {
        int i;
        List list = pointerEvent.a;
        int size = list.size();
        int i2 = 0;
        while (true) {
            if (i2 >= size) {
                break;
            }
            if (((Boolean) this.A.b(new PointerType(((PointerInputChange) list.get(i2)).i))).booleanValue()) {
                super.K(pointerEvent, pointerEventPass, j);
                break;
            }
            i2++;
        }
        if (this.B) {
            if (this.J == null) {
                DelegatableNode a = GestureNodeKt.a(this);
                Y0(a);
                this.J = a;
            }
            PointerEventPass pointerEventPass2 = PointerEventPass.j;
            if (pointerEventPass == pointerEventPass2 && pointerEvent.f == 6) {
                if (!this.V) {
                    ScrollableNode scrollableNode = (ScrollableNode) this;
                    this.X = new MouseWheelScrollingLogic(scrollableNode.a0, new AndroidConfig(ViewConfiguration.get(DelegatableNode_androidKt.a(scrollableNode).getContext())), new AdaptedFunctionReference(2, scrollableNode, ScrollableNode.class, "onMouseWheelScrollStopped", "onMouseWheelScrollStopped-TH1AsA0(J)V", 4), DelegatableNodeKt.g(scrollableNode).H);
                    this.V = true;
                }
                MouseWheelScrollingLogic mouseWheelScrollingLogic = this.X;
                if (mouseWheelScrollingLogic != null) {
                    CoroutineScope M0 = M0();
                    if (mouseWheelScrollingLogic.h == null) {
                        mouseWheelScrollingLogic.h = BuildersKt.c(M0, null, null, new MouseWheelScrollingLogic$startReceivingEvents$1(mouseWheelScrollingLogic, null), 3);
                    }
                }
            }
            MouseWheelScrollingLogic mouseWheelScrollingLogic2 = this.X;
            if (mouseWheelScrollingLogic2 != null && pointerEvent.f == 6) {
                List list2 = pointerEvent.a;
                int size2 = list2.size();
                int i3 = 0;
                while (true) {
                    if (i3 < size2) {
                        if (((PointerInputChange) list2.get(i3)).c()) {
                            break;
                        } else {
                            i3++;
                        }
                    } else {
                        if (pointerEventPass == PointerEventPass.j && mouseWheelScrollingLogic2.d) {
                            mouseWheelScrollingLogic2.f(pointerEvent);
                            NonTouchScrollingLogic.a(pointerEvent);
                        }
                        if (pointerEventPass == PointerEventPass.k && !mouseWheelScrollingLogic2.d && mouseWheelScrollingLogic2.f(pointerEvent)) {
                            NonTouchScrollingLogic.a(pointerEvent);
                        }
                    }
                }
            }
            if (pointerEventPass == pointerEventPass2 && ((i = pointerEvent.f) == 10 || i == 11 || i == 12)) {
                if (!this.W) {
                    ScrollableNode scrollableNode2 = (ScrollableNode) this;
                    this.Y = new TrackpadScrollingLogic(scrollableNode2.a0, new AdaptedFunctionReference(2, scrollableNode2, ScrollableNode.class, "onTrackpadScrollStopped", "onTrackpadScrollStopped-TH1AsA0(J)V", 4), DelegatableNodeKt.g(scrollableNode2).H);
                    this.W = true;
                }
                TrackpadScrollingLogic trackpadScrollingLogic = this.Y;
                if (trackpadScrollingLogic != null) {
                    CoroutineScope M02 = M0();
                    if (trackpadScrollingLogic.g == null) {
                        trackpadScrollingLogic.g = BuildersKt.c(M02, null, null, new TrackpadScrollingLogic$startReceivingEvents$1(trackpadScrollingLogic, null), 3);
                    }
                }
            }
            TrackpadScrollingLogic trackpadScrollingLogic2 = this.Y;
            if (trackpadScrollingLogic2 != null) {
                int i4 = pointerEvent.f;
                if (i4 == 10 || i4 == 11 || i4 == 12) {
                    List list3 = pointerEvent.a;
                    int size3 = list3.size();
                    for (int i5 = 0; i5 < size3; i5++) {
                        if (((PointerInputChange) list3.get(i5)).c()) {
                            return;
                        }
                    }
                    if (pointerEventPass == PointerEventPass.j && trackpadScrollingLogic2.d) {
                        trackpadScrollingLogic2.d(pointerEvent);
                        NonTouchScrollingLogic.a(pointerEvent);
                    }
                    if (pointerEventPass == PointerEventPass.k && !trackpadScrollingLogic2.d && trackpadScrollingLogic2.d(pointerEvent)) {
                        NonTouchScrollingLogic.a(pointerEvent);
                    }
                }
            }
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void Q0() {
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.X;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.c = DelegatableNodeKt.g(this).H;
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.Y;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.c = DelegatableNodeKt.g(this).H;
        }
        if (!this.w) {
            return;
        }
        Density density = DelegatableNodeKt.g(this).H;
        DefaultFlingBehavior defaultFlingBehavior = ((ScrollableNode) this).Z;
        defaultFlingBehavior.getClass();
        defaultFlingBehavior.a = DecayAnimationSpecKt.b(new SplineBasedFloatDecayAnimationSpec(density));
    }

    @Override // androidx.compose.ui.node.DelegatableNode, androidx.compose.ui.node.PointerInputModifierNode
    public final void g() {
        L();
        MouseWheelScrollingLogic mouseWheelScrollingLogic = this.X;
        if (mouseWheelScrollingLogic != null) {
            mouseWheelScrollingLogic.c = DelegatableNodeKt.g(this).H;
        }
        TrackpadScrollingLogic trackpadScrollingLogic = this.Y;
        if (trackpadScrollingLogic != null) {
            trackpadScrollingLogic.c = DelegatableNodeKt.g(this).H;
        }
        L();
        if (!this.w) {
            return;
        }
        Density density = DelegatableNodeKt.g(this).H;
        DefaultFlingBehavior defaultFlingBehavior = ((ScrollableNode) this).Z;
        defaultFlingBehavior.getClass();
        defaultFlingBehavior.a = DecayAnimationSpecKt.b(new SplineBasedFloatDecayAnimationSpec(density));
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final boolean q1() {
        boolean z;
        ScrollingLogic scrollingLogic = ((ScrollableNode) this).a0;
        if (!scrollingLogic.a.a()) {
            OverscrollEffect overscrollEffect = scrollingLogic.b;
            if (overscrollEffect != null) {
                z = ((AndroidEdgeEffectOverscrollEffect) overscrollEffect).f();
            } else {
                z = false;
            }
            if (!z) {
                return false;
            }
            return true;
        }
        return true;
    }

    @Override // androidx.compose.foundation.gestures.DragGestureNode
    public final void k1(long j) {
    }
}
