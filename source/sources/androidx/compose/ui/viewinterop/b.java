package androidx.compose.ui.viewinterop;

import androidx.compose.ui.layout.PinnableContainerKt;
import androidx.compose.ui.node.CompositionLocalConsumerModifierNodeKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Ref$ObjectRef;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final /* synthetic */ class b implements Function0 {
    public final /* synthetic */ Ref$ObjectRef j;
    public final /* synthetic */ FocusTargetInteropNode k;

    public /* synthetic */ b(Ref$ObjectRef ref$ObjectRef, FocusTargetInteropNode focusTargetInteropNode) {
        this.j = ref$ObjectRef;
        this.k = focusTargetInteropNode;
    }

    @Override // kotlin.jvm.functions.Function0
    public final Object a() {
        this.j.j = CompositionLocalConsumerModifierNodeKt.a(this.k, PinnableContainerKt.a);
        return Unit.a;
    }
}
