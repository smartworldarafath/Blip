package androidx.compose.ui.node;

import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerEventPass;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public interface PointerInputModifierNode extends DelegatableNode {
    default boolean C0() {
        return false;
    }

    default void G0() {
        L();
    }

    void K(PointerEvent pointerEvent, PointerEventPass pointerEventPass, long j);

    void L();

    default void g() {
        L();
    }

    default long t() {
        int i = TouchBoundsExpansion.b;
        return TouchBoundsExpansion.a;
    }

    default void S() {
    }
}
