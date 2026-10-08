package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import java.util.List;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InternalPointerEvent {
    public final LongSparseArray a;
    public final PointerInputEvent b;
    public boolean c;

    public InternalPointerEvent(LongSparseArray longSparseArray, PointerInputEvent pointerInputEvent) {
        this.a = longSparseArray;
        this.b = pointerInputEvent;
    }

    public final boolean a(long j) {
        Object obj;
        List list = this.b.a;
        int size = list.size();
        int i = 0;
        while (true) {
            if (i < size) {
                obj = list.get(i);
                if (PointerId.a(((PointerInputEventData) obj).a, j)) {
                    break;
                }
                i++;
            } else {
                obj = null;
                break;
            }
        }
        PointerInputEventData pointerInputEventData = (PointerInputEventData) obj;
        if (pointerInputEventData == null) {
            return false;
        }
        return pointerInputEventData.h;
    }
}
