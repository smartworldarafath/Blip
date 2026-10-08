package androidx.compose.foundation.text.contextmenu.modifier;

import androidx.compose.foundation.internal.InlineClassHelperKt;
import androidx.compose.foundation.text.contextmenu.data.TextContextMenuData;
import androidx.compose.foundation.text.contextmenu.gestures.RightClickGesturesKt;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProvider;
import androidx.compose.foundation.text.contextmenu.provider.TextContextMenuProviderKt;
import androidx.compose.runtime.MutableState;
import androidx.compose.runtime.SnapshotMutableStateImpl;
import androidx.compose.runtime.SnapshotStateKt;
import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.geometry.Rect;
import androidx.compose.ui.geometry.RectKt;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputEventHandler;
import androidx.compose.ui.input.pointer.PointerInputScope;
import androidx.compose.ui.input.pointer.SuspendingPointerInputFilterKt;
import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import androidx.compose.ui.layout.LayoutCoordinates;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNode;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import androidx.compose.ui.node.DelegatingNode;
import androidx.compose.ui.node.GlobalPositionAwareModifierNode;
import androidx.compose.ui.node.NodeCoordinator;
import defpackage.f7;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.FunctionReference;
import kotlin.jvm.internal.FunctionReferenceImpl;
import kotlinx.coroutines.BuildersKt;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class TextContextMenuGestureNode extends DelegatingNode implements CompositionLocalConsumerModifierNode, GlobalPositionAwareModifierNode {
    public final MutableState A = SnapshotStateKt.f(null, SnapshotStateKt.h());
    public Function2 z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class ClickTextContextMenuDataProvider implements TextContextMenuDataProvider {
        public final long j;

        public ClickTextContextMenuDataProvider(long j) {
            this.j = j;
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        public final Rect A0(LayoutCoordinates layoutCoordinates) {
            return RectKt.a(F0(layoutCoordinates), 0L);
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        public final long F0(LayoutCoordinates layoutCoordinates) {
            LayoutCoordinates layoutCoordinates2 = (LayoutCoordinates) ((SnapshotMutableStateImpl) TextContextMenuGestureNode.this.A).getValue();
            if (layoutCoordinates2 != null) {
                if (!layoutCoordinates2.o()) {
                    return 0L;
                }
                return layoutCoordinates.R(layoutCoordinates2.u(this.j));
            }
            InlineClassHelperKt.d("Tried to open context menu before the anchor was placed.");
            f7.h();
            return 0L;
        }

        @Override // androidx.compose.foundation.text.contextmenu.provider.TextContextMenuDataProvider
        public final TextContextMenuData V() {
            return TextContextMenuModifierKt.a(TextContextMenuGestureNode.this);
        }
    }

    public TextContextMenuGestureNode(Function2 function2) {
        this.z = function2;
        PointerInputEventHandler pointerInputEventHandler = new PointerInputEventHandler() { // from class: androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode.1

            /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
            /* renamed from: androidx.compose.foundation.text.contextmenu.modifier.TextContextMenuGestureNode$1$1, reason: invalid class name and collision with other inner class name */
            /* loaded from: classes.dex */
            final /* synthetic */ class C00061 extends FunctionReferenceImpl implements Function1<Offset, Unit> {
                @Override // kotlin.jvm.functions.Function1
                public final Object b(Object obj) {
                    long j = ((Offset) obj).a;
                    TextContextMenuGestureNode textContextMenuGestureNode = (TextContextMenuGestureNode) this.k;
                    textContextMenuGestureNode.getClass();
                    TextContextMenuProvider textContextMenuProvider = (TextContextMenuProvider) CompositionLocalConsumerModifierNodeKt.a(textContextMenuGestureNode, TextContextMenuProviderKt.a);
                    if (textContextMenuProvider != null) {
                        BuildersKt.c(textContextMenuGestureNode.M0(), null, null, new TextContextMenuGestureNode$tryShowContextMenu$1(textContextMenuGestureNode, j, textContextMenuProvider, new ClickTextContextMenuDataProvider(j), null), 3);
                    }
                    return Unit.a;
                }
            }

            /* JADX WARN: Type inference failed for: r0v0, types: [kotlin.jvm.functions.Function1, kotlin.jvm.internal.FunctionReference] */
            @Override // androidx.compose.ui.input.pointer.PointerInputEventHandler
            public final Object invoke(PointerInputScope pointerInputScope, Continuation continuation) {
                Object b = RightClickGesturesKt.b(pointerInputScope, new FunctionReference(1, TextContextMenuGestureNode.this, TextContextMenuGestureNode.class, "tryShowContextMenu", "tryShowContextMenu-k-4lQ0M(J)V", 0), continuation);
                if (b == CoroutineSingletons.j) {
                    return b;
                }
                return Unit.a;
            }
        };
        PointerEvent pointerEvent = SuspendingPointerInputFilterKt.a;
        Y0(new SuspendingPointerInputModifierNodeImpl(null, null, null, pointerInputEventHandler));
    }

    @Override // androidx.compose.ui.node.GlobalPositionAwareModifierNode
    public final void K0(NodeCoordinator nodeCoordinator) {
        ((SnapshotMutableStateImpl) this.A).setValue(nodeCoordinator);
    }
}
