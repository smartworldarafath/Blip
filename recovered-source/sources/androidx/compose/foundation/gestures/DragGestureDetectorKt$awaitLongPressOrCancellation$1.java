package androidx.compose.foundation.gestures;

import androidx.compose.ui.input.pointer.PointerInputChange;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$BooleanRef;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.gestures.DragGestureDetectorKt", f = "DragGestureDetector.kt", l = {1055}, m = "awaitLongPressOrCancellation-rnUCldI", v = 1)
/* loaded from: classes.dex */
public final class DragGestureDetectorKt$awaitLongPressOrCancellation$1 extends ContinuationImpl {
    public PointerInputChange m;
    public Ref$ObjectRef n;
    public Ref$BooleanRef o;
    public /* synthetic */ Object p;
    public int q;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.p = obj;
        this.q |= Integer.MIN_VALUE;
        return DragGestureDetectorKt.b(null, 0L, this);
    }
}
