package androidx.compose.foundation.gestures;

import androidx.compose.foundation.gestures.DragEvent;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureNode", f = "Draggable.kt", l = {625}, m = "processDragStop", v = 1)
/* loaded from: classes.dex */
public final class DragGestureNode$processDragStop$1 extends ContinuationImpl {
    public DragEvent.DragStopped m;
    public /* synthetic */ Object n;
    public final /* synthetic */ DragGestureNode o;
    public int p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DragGestureNode$processDragStop$1(DragGestureNode dragGestureNode, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.o = dragGestureNode;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.n = obj;
        this.p |= Integer.MIN_VALUE;
        return DragGestureNode.d1(this.o, null, this);
    }
}
