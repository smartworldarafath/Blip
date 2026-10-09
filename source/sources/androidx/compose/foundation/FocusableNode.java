package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.Interaction;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.runtime.collection.MutableVector;
import androidx.compose.ui.Modifier;
import androidx.compose.ui.focus.FocusTargetModifierNode;
import androidx.compose.ui.focus.FocusTargetNode;
import androidx.compose.ui.internal.InlineClassHelperKt;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.DelegatableNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.LayoutNode;
import androidx.compose.ui.node.NodeChain;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNode;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNode;
import androidx.compose.ui.node.TraversableNode;
import androidx.compose.ui.semantics.AccessibilityAction;
import androidx.compose.ui.semantics.SemanticsActions;
import androidx.compose.ui.semantics.SemanticsProperties;
import androidx.compose.ui.semantics.SemanticsPropertiesKt;
import androidx.compose.ui.semantics.SemanticsPropertyKey;
import androidx.compose.ui.semantics.SemanticsPropertyReceiver;
import defpackage.p0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.Intrinsics;
import kotlin.reflect.KProperty;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.DisposableHandle;
import kotlinx.coroutines.Job;
import kotlinx.coroutines.internal.ContextScope;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FocusableNode extends DelegatingNode implements SemanticsModifierNode, GlobalPositionAwareModifierNode, CompositionLocalConsumerModifierNode, ObserverModifierNode, TraversableNode {
    public static final TraverseKey F = new Object();
    public final Function1 A;
    public FocusInteraction$Focus B;
    public PinnableContainer.PinnedHandle C;
    public NodeCoordinator D;
    public final FocusTargetModifierNode E;
    public MutableInteractionSource z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TraverseKey {
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function2, kotlin.jvm.internal.FunctionReference] */
    public FocusableNode(MutableInteractionSource mutableInteractionSource, int i, Function1 function1) {
        this.z = mutableInteractionSource;
        this.A = function1;
        FocusTargetNode focusTargetNode = new FocusTargetNode(i, new FunctionReference(2, this, FocusableNode.class, "onFocusStateChange", "onFocusStateChange(Landroidx/compose/ui/focus/FocusState;Landroidx/compose/ui/focus/FocusState;)V", 0), 10);
        Y0(focusTargetNode);
        this.E = focusTargetNode;
    }

    @Override // androidx.compose.ui.node.SemanticsModifierNode
    public final void E0(SemanticsPropertyReceiver semanticsPropertyReceiver) {
        boolean b = ((FocusTargetNode) this.E).d1().b();
        KProperty[] kPropertyArr = SemanticsPropertiesKt.a;
        SemanticsPropertyKey semanticsPropertyKey = SemanticsProperties.l;
        KProperty kProperty = SemanticsPropertiesKt.a[4];
        Boolean valueOf = Boolean.valueOf(b);
        semanticsPropertyKey.getClass();
        semanticsPropertyReceiver.b(semanticsPropertyKey, valueOf);
        semanticsPropertyReceiver.b(SemanticsActions.w, new AccessibilityAction(null, new FunctionReference(0, this, FocusableNode.class, "requestFocus", "requestFocus()Z", 0)));
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void K0(NodeCoordinator nodeCoordinator) {
        this.D = nodeCoordinator;
        if (((FocusTargetNode) this.E).d1().b()) {
            if (nodeCoordinator.d1().w) {
                NodeCoordinator nodeCoordinator2 = this.D;
                if (nodeCoordinator2 != null && nodeCoordinator2.d1().w) {
                    c1();
                    return;
                }
                return;
            }
            c1();
        }
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final boolean N0() {
        return false;
    }

    @Override // androidx.compose.ui.Modifier.Node
    public final void S0() {
        PinnableContainer.PinnedHandle pinnedHandle = this.C;
        if (pinnedHandle != null) {
            pinnedHandle.a();
        }
        this.C = null;
    }

    public final void b1(MutableInteractionSource mutableInteractionSource, Interaction interaction) {
        DisposableHandle disposableHandle;
        if (this.w) {
            Job job = (Job) ((ContextScope) M0()).j.v(Job.Key.j);
            if (job != null) {
                disposableHandle = job.v0(new defpackage.b(12, mutableInteractionSource, interaction));
            } else {
                disposableHandle = null;
            }
            BuildersKt.c(M0(), null, null, new FocusableNode$emitWithFallback$1(mutableInteractionSource, interaction, disposableHandle, null), 3);
            return;
        }
        mutableInteractionSource.b(interaction);
    }

    public final void c1() {
        NodeChain nodeChain;
        if (this.w) {
            if (!this.j.w) {
                InlineClassHelperKt.b("visitAncestors called on an unattached node");
            }
            Modifier.Node node = this.j.n;
            LayoutNode g = DelegatableNodeKt.g(this);
            while (g != null) {
                if ((g.O.f.m & 262144) != 0) {
                    while (node != null) {
                        if ((node.l & 262144) != 0) {
                            Modifier.Node node2 = node;
                            MutableVector mutableVector = null;
                            while (node2 != null) {
                                if (node2 instanceof TraversableNode) {
                                    if (FocusedBoundsObserverNode.x == ((TraversableNode) node2).p()) {
                                        return;
                                    }
                                }
                                if ((node2.l & 262144) != 0 && (node2 instanceof DelegatingNode)) {
                                    int i = 0;
                                    for (Modifier.Node node3 = ((DelegatingNode) node2).y; node3 != null; node3 = node3.o) {
                                        if ((node3.l & 262144) != 0) {
                                            i++;
                                            if (i == 1) {
                                                node2 = node3;
                                            } else {
                                                if (mutableVector == null) {
                                                    mutableVector = new MutableVector(new Modifier.Node[16]);
                                                }
                                                if (node2 != null) {
                                                    mutableVector.b(node2);
                                                    node2 = null;
                                                }
                                                mutableVector.b(node3);
                                            }
                                        }
                                    }
                                    if (i == 1) {
                                    }
                                }
                                node2 = DelegatableNodeKt.b(mutableVector);
                            }
                        }
                        node = node.n;
                    }
                }
                g = g.w();
                if (g != null && (nodeChain = g.O) != null) {
                    node = nodeChain.e;
                } else {
                    node = null;
                }
            }
        }
    }

    public final void d1(MutableInteractionSource mutableInteractionSource) {
        FocusInteraction$Focus focusInteraction$Focus;
        if (!Intrinsics.a(this.z, mutableInteractionSource)) {
            MutableInteractionSource mutableInteractionSource2 = this.z;
            if (mutableInteractionSource2 != null && (focusInteraction$Focus = this.B) != null) {
                mutableInteractionSource2.b(new FocusInteraction$Unfocus(focusInteraction$Focus));
            }
            this.B = null;
            this.z = mutableInteractionSource;
        }
    }

    @Override // androidx.compose.ui.node.TraversableNode
    public final Object p() {
        return F;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // androidx.compose.ui.node.ObserverModifierNode
    public final void s0() {
        PinnableContainer.PinnedHandle pinnedHandle;
        ?? obj = new Object();
        ObserverModifierNodeKt.a(this, new p0(16, (Object) obj, this));
        PinnableContainer pinnableContainer = (PinnableContainer) obj.j;
        if (((FocusTargetNode) this.E).d1().b()) {
            PinnableContainer.PinnedHandle pinnedHandle2 = this.C;
            if (pinnedHandle2 != null) {
                pinnedHandle2.a();
            }
            if (pinnableContainer != null) {
                pinnedHandle = pinnableContainer.b();
            } else {
                pinnedHandle = null;
            }
            this.C = pinnedHandle;
        }
    }
}
