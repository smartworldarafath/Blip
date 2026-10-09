package androidx.compose.foundation;

import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.HoverableNode", f = "Hoverable.kt", l = {114}, m = "emitExit", v = 1)
/* loaded from: classes.dex */
public final class HoverableNode$emitExit$1 extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ HoverableNode n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public HoverableNode$emitExit$1(HoverableNode hoverableNode, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.n = hoverableNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return HoverableNode.Z0(this.n, this);
    }
}
