package androidx.compose.ui.input.pointer;

import androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
@DebugMetadata(c = "androidx.compose.ui.input.pointer.SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine", f = "SuspendingPointerInputFilter.kt", l = {860}, m = "withTimeoutOrNull", v = 1)
/* loaded from: classes.dex */
public final class SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1<T> extends ContinuationImpl {
    public /* synthetic */ Object m;
    public final /* synthetic */ SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine n;
    public int o;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public SuspendingPointerInputModifierNodeImpl$PointerEventHandlerCoroutine$withTimeoutOrNull$1(SuspendingPointerInputModifierNodeImpl.PointerEventHandlerCoroutine pointerEventHandlerCoroutine, ContinuationImpl continuationImpl) {
        super(continuationImpl);
        this.n = pointerEventHandlerCoroutine;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object v(Object obj) {
        this.m = obj;
        this.o |= Integer.MIN_VALUE;
        return this.n.z0(0L, null, this);
    }
}
