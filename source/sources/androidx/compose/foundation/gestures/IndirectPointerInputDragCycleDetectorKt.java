package androidx.compose.foundation.gestures;

import androidx.compose.ui.geometry.Offset;
import androidx.compose.ui.input.indirect.IndirectPointerEventPrimaryDirectionalMotionAxis;
import androidx.compose.ui.input.indirect.IndirectPointerInputChange;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class IndirectPointerInputDragCycleDetectorKt {
    public static final boolean a(IndirectPointerInputChange indirectPointerInputChange) {
        if (indirectPointerInputChange.h && !indirectPointerInputChange.d) {
            return true;
        }
        return false;
    }

    public static final boolean b(IndirectPointerInputChange indirectPointerInputChange) {
        if (!indirectPointerInputChange.h && indirectPointerInputChange.d) {
            return true;
        }
        return false;
    }

    public static final long c(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis, boolean z) {
        float intBitsToFloat;
        long floatToRawIntBits;
        long j;
        long j2 = indirectPointerInputChange.g;
        if (orientation != null) {
            int i = indirectPointerEventPrimaryDirectionalMotionAxis.a;
            if (i == 1) {
                intBitsToFloat = Float.intBitsToFloat((int) (j2 >> 32));
            } else if (i == 2) {
                intBitsToFloat = Float.intBitsToFloat((int) (j2 & 4294967295L));
            }
            if (orientation == Orientation.k) {
                long floatToRawIntBits2 = Float.floatToRawIntBits(intBitsToFloat);
                floatToRawIntBits = Float.floatToRawIntBits(0.0f);
                j = floatToRawIntBits2 << 32;
            } else {
                long floatToRawIntBits3 = Float.floatToRawIntBits(0.0f);
                floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
                j = floatToRawIntBits3 << 32;
            }
            j2 = j | (floatToRawIntBits & 4294967295L);
        }
        long e = Offset.e(d(indirectPointerInputChange, orientation, indirectPointerEventPrimaryDirectionalMotionAxis), j2);
        if (!z && indirectPointerInputChange.i) {
            return 0L;
        }
        return e;
    }

    public static final long d(IndirectPointerInputChange indirectPointerInputChange, Orientation orientation, IndirectPointerEventPrimaryDirectionalMotionAxis indirectPointerEventPrimaryDirectionalMotionAxis) {
        float intBitsToFloat;
        long floatToRawIntBits;
        long j;
        if (orientation == null) {
            return indirectPointerInputChange.c;
        }
        int i = indirectPointerEventPrimaryDirectionalMotionAxis.a;
        if (i == 1) {
            intBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.c >> 32));
        } else if (i == 2) {
            intBitsToFloat = Float.intBitsToFloat((int) (indirectPointerInputChange.c & 4294967295L));
        } else {
            return indirectPointerInputChange.c;
        }
        if (orientation == Orientation.k) {
            long floatToRawIntBits2 = Float.floatToRawIntBits(intBitsToFloat);
            floatToRawIntBits = Float.floatToRawIntBits(0.0f);
            j = floatToRawIntBits2 << 32;
        } else {
            long floatToRawIntBits3 = Float.floatToRawIntBits(0.0f);
            floatToRawIntBits = Float.floatToRawIntBits(intBitsToFloat);
            j = floatToRawIntBits3 << 32;
        }
        return j | (4294967295L & floatToRawIntBits);
    }
}
