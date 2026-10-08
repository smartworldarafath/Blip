package androidx.compose.foundation;

import androidx.compose.foundation.interaction.HoverInteraction$Enter;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.HoverableNode", f = "Hoverable.kt", l = {106}, m = "emitEnter", v = 1)
/* loaded from: classes.dex */
public final class HoverableNode$emitEnter$1 extends ContinuationImpl {
    public HoverInteraction$Enter m;
    public /* synthetic */ Object n;
    public final /* synthetic */ HoverableNode o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HoverableNode$emitEnter$1(HoverableNode hoverableNode, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = hoverableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return HoverableNode.Y0(this.o, this);
    }
}
