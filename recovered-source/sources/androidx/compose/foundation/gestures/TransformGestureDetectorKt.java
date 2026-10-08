package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.pointer.PointerEvent;
import androidx.compose.ui.input.pointer.PointerInputChange;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TransformGestureDetectorKt {
    public static final long a(PointerEvent pointerEvent, boolean z) {
        long j;
        List list = pointerEvent.a;
        int size = list.size();
        long j2 = 0;
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
            if (pointerInputChange.d && pointerInputChange.h) {
                if (z) {
                    j = pointerInputChange.c;
                } else {
                    j = pointerInputChange.g;
                }
                j2 = Offset.f(j2, j);
                i++;
            }
        }
        if (i == 0) {
            return 9205357640488583168L;
        }
        return Offset.b(j2, i);
    }

    public static final float b(PointerEvent pointerEvent, boolean z) {
        long j;
        long a = a(pointerEvent, z);
        float f = 0.0f;
        if (Offset.c(a, 9205357640488583168L)) {
            return 0.0f;
        }
        List list = pointerEvent.a;
        int size = list.size();
        int i = 0;
        for (int i2 = 0; i2 < size; i2++) {
            PointerInputChange pointerInputChange = (PointerInputChange) list.get(i2);
            if (pointerInputChange.d && pointerInputChange.h) {
                if (z) {
                    j = pointerInputChange.c;
                } else {
                    j = pointerInputChange.g;
                }
                i++;
                f = Offset.d(Offset.e(j, a)) + f;
            }
        }
        return f / i;
    }
}
