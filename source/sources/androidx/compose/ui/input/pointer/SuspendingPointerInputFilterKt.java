package androidx.compose.ui.input.pointer;

import androidx.compose.ui.Modifier;
import kotlin.collections.EmptyList;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class SuspendingPointerInputFilterKt {
    public static final PointerEvent a = new PointerEvent(EmptyList.j, null);

    public static final Modifier a(Modifier modifier, Object obj, PointerInputEventHandler pointerInputEventHandler) {
        return modifier.l(new SuspendPointerInputElement(obj, null, null, pointerInputEventHandler, 6));
    }
}
