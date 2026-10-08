package androidx.compose.foundation;

import androidx.compose.foundation.interaction.FocusInteraction$Focus;
import androidx.compose.foundation.interaction.FocusInteraction$Unfocus;
import androidx.compose.foundation.interaction.MutableInteractionSource;
import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.node.NodeCoordinator;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import androidx.compose.ui.node.SemanticsModifierNodeKt;
import defpackage.p0;
import kotlin.Unit;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;
import kotlinx.coroutines.CoroutineStart;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class FocusableNode$focusTargetNode$1 extends FunctionReferenceImpl implements Function2<FocusState, FocusState, Unit> {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    /* JADX WARN: Type inference failed for: r5v6, types: [androidx.compose.foundation.interaction.FocusInteraction$Focus, androidx.compose.foundation.interaction.Interaction, java.lang.Object] */
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean b;
        PinnableContainer.PinnedHandle pinnedHandle;
        FocusState focusState = (FocusState) obj;
        FocusState focusState2 = (FocusState) obj2;
        FocusableNode focusableNode = (FocusableNode) this.k;
        if (focusableNode.w && (b = ((FocusStateImpl) focusState2).b()) != ((FocusStateImpl) focusState).b()) {
            Function1 function1 = focusableNode.A;
            if (function1 != null) {
                function1.b(Boolean.valueOf(b));
            }
            if (b) {
                BuildersKt.c(focusableNode.M0(), null, CoroutineStart.m, new FocusableNode$onFocusStateChange$1(focusableNode, null), 1);
                ?? obj3 = new Object();
                ObserverModifierNodeKt.a(focusableNode, new p0(16, (Object) obj3, focusableNode));
                PinnableContainer pinnableContainer = (PinnableContainer) obj3.j;
                if (pinnableContainer != null) {
                    pinnedHandle = pinnableContainer.b();
                } else {
                    pinnedHandle = null;
                }
                focusableNode.C = pinnedHandle;
                NodeCoordinator nodeCoordinator = focusableNode.D;
                if (nodeCoordinator != null && nodeCoordinator.d1().w) {
                    focusableNode.c1();
                }
            } else {
                PinnableContainer.PinnedHandle pinnedHandle2 = focusableNode.C;
                if (pinnedHandle2 != null) {
                    pinnedHandle2.a();
                }
                focusableNode.C = null;
                focusableNode.c1();
            }
            SemanticsModifierNodeKt.b(focusableNode);
            MutableInteractionSource mutableInteractionSource = focusableNode.z;
            if (mutableInteractionSource != null) {
                FocusInteraction$Focus focusInteraction$Focus = focusableNode.B;
                if (b) {
                    if (focusInteraction$Focus != null) {
                        focusableNode.b1(mutableInteractionSource, new FocusInteraction$Unfocus(focusInteraction$Focus));
                        focusableNode.B = null;
                    }
                    ?? obj4 = new Object();
                    focusableNode.b1(mutableInteractionSource, obj4);
                    focusableNode.B = obj4;
                } else if (focusInteraction$Focus != null) {
                    focusableNode.b1(mutableInteractionSource, new FocusInteraction$Unfocus(focusInteraction$Focus));
                    focusableNode.B = null;
                }
            }
        }
        return Unit.a;
    }
}
