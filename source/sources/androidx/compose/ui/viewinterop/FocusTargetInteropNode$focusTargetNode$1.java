package androidx.compose.ui.viewinterop;

import androidx.compose.ui.focus.FocusState;
import androidx.compose.ui.focus.FocusStateImpl;
import androidx.compose.ui.layout.PinnableContainer;
import androidx.compose.ui.node.ObserverModifierNodeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReferenceImpl;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final /* synthetic */ class FocusTargetInteropNode$focusTargetNode$1 extends FunctionReferenceImpl implements Function2<FocusState, FocusState, Unit> {
    /* JADX WARN: Type inference failed for: r3v5, types: [java.lang.Object, kotlin.jvm.internal.Ref$ObjectRef] */
    @Override // kotlin.jvm.functions.Function2
    public final Object n(Object obj, Object obj2) {
        boolean b;
        FocusState focusState = (FocusState) obj;
        FocusState focusState2 = (FocusState) obj2;
        FocusTargetInteropNode focusTargetInteropNode = (FocusTargetInteropNode) this.k;
        if (focusTargetInteropNode.w && (b = ((FocusStateImpl) focusState2).b()) != ((FocusStateImpl) focusState).b()) {
            PinnableContainer.PinnedHandle pinnedHandle = null;
            if (b) {
                ?? obj3 = new Object();
                ObserverModifierNodeKt.a(focusTargetInteropNode, new b(obj3, focusTargetInteropNode));
                PinnableContainer pinnableContainer = (PinnableContainer) obj3.j;
                if (pinnableContainer != null) {
                    pinnedHandle = pinnableContainer.b();
                }
                focusTargetInteropNode.A = pinnedHandle;
            } else {
                PinnableContainer.PinnedHandle pinnedHandle2 = focusTargetInteropNode.A;
                if (pinnedHandle2 != null) {
                    pinnedHandle2.a();
                }
                focusTargetInteropNode.A = null;
            }
        }
        return Unit.a;
    }
}
