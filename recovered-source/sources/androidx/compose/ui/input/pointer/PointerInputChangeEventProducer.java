package androidx.compose.ui.input.pointer;

import androidx.collection.LongSparseArray;
import androidx.compose.ui.platform.AndroidComposeView;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class PointerInputChangeEventProducer {
    public final LongSparseArray a = new LongSparseArray((Object) null);

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PointerInputData {
        public final long a;
        public final long b;
        public final boolean c;

        public PointerInputData(long j, long j2, boolean z) {
            this.a = j;
            this.b = j2;
            this.c = z;
        }
    }

    public final InternalPointerEvent a(PointerInputEvent pointerInputEvent, AndroidComposeView androidComposeView) {
        int i;
        long G;
        long j;
        boolean z;
        List list = pointerInputEvent.a;
        LongSparseArray longSparseArray = new LongSparseArray(list.size());
        int size = list.size();
        int i2 = 0;
        while (i2 < size) {
            PointerInputEventData pointerInputEventData = (PointerInputEventData) list.get(i2);
            long j2 = pointerInputEventData.a;
            LongSparseArray longSparseArray2 = this.a;
            PointerInputData pointerInputData = (PointerInputData) longSparseArray2.b(j2);
            if (pointerInputData == null) {
                i = i2;
                j = pointerInputEventData.b;
                G = pointerInputEventData.d;
                z = false;
            } else {
                long j3 = pointerInputData.a;
                boolean z2 = pointerInputData.c;
                i = i2;
                G = androidComposeView.G(pointerInputData.b);
                j = j3;
                z = z2;
            }
            long j4 = pointerInputEventData.a;
            List list2 = list;
            int i3 = size;
            longSparseArray.d(j4, new PointerInputChange(j4, pointerInputEventData.b, pointerInputEventData.d, pointerInputEventData.e, pointerInputEventData.f, j, G, z, pointerInputEventData.g, pointerInputEventData.i, pointerInputEventData.j, pointerInputEventData.k, pointerInputEventData.l, pointerInputEventData.m));
            boolean z3 = pointerInputEventData.e;
            if (z3) {
                longSparseArray2.d(j2, new PointerInputData(pointerInputEventData.b, pointerInputEventData.c, z3));
            } else {
                longSparseArray2.e(j2);
            }
            i2 = i + 1;
            list = list2;
            size = i3;
        }
        return new InternalPointerEvent(longSparseArray, pointerInputEvent);
    }
}
