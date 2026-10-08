package androidx.compose.foundation.text;

import androidx.compose.ui.input.pointer.PointerInputScope;
import kotlin.Unit;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.intrinsics.CoroutineSingletons;
import kotlinx.coroutines.CoroutineScopeKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class LongPressTextDragObserverKt {
    public static final Object a(PointerInputScope pointerInputScope, TextDragObserver textDragObserver, Continuation continuation) {
        Object c = CoroutineScopeKt.c(new LongPressTextDragObserverKt$detectDownAndDragGesturesWithObserver$2(pointerInputScope, textDragObserver, null), continuation);
        if (c == CoroutineSingletons.j) {
            return c;
        }
        return Unit.a;
    }
}
