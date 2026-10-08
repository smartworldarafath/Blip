package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1135}, m = "awaitDragOrCancellation-rnUCldI", v = 1)
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitDragOrCancellation$1 extends ContinuationImpl {
    public AwaitPointerEventScope m;
    public Ref$LongRef n;
    public /* synthetic */ Object o;
    public int p;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.o = obj;
        this.p |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.a(null, 0L, this);
    }
}
