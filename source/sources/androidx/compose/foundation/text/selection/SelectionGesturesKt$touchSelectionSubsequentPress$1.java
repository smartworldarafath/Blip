package androidx.compose.foundation.text.selection;

import androidx.compose.foundation.text.TextDragObserver;
import androidx.compose.ui.input.pointer.AwaitPointerEventScope;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.internal.Ref$LongRef;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.foundation.text.selection.SelectionGesturesKt", f = "SelectionGestures.kt", l = {198, 237}, m = "touchSelectionSubsequentPress", v = 1)
/* loaded from: classes.dex */
public final class SelectionGesturesKt$touchSelectionSubsequentPress$1 extends ContinuationImpl {
    public AwaitPointerEventScope m;
    public TextDragObserver n;
    public Ref$LongRef o;
    public long p;
    public /* synthetic */ Object q;
    public int r;

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.q = obj;
        this.r |= Integer.MIN_VALUE;
        return SelectionGesturesKt.b(null, null, null, 0, this);
    }
}
