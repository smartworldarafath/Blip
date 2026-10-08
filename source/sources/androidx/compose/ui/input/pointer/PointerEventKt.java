package androidx.compose.ui.input.pointer;

import androidx.compose.ui.geometry.Offset;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class PointerEventKt {
    public static final boolean a(PointerInputChange pointerInputChange) {
        if (!pointerInputChange.c() && !pointerInputChange.h && pointerInputChange.d) {
            return true;
        }
        return false;
    }

    public static final boolean b(PointerInputChange pointerInputChange) {
        if (!pointerInputChange.h && pointerInputChange.d) {
            return true;
        }
        return false;
    }

    public static final boolean c(PointerInputChange pointerInputChange) {
        if (!pointerInputChange.c() && pointerInputChange.h && !pointerInputChange.d) {
            return true;
        }
        return false;
    }

    public static final boolean d(PointerInputChange pointerInputChange) {
        if (pointerInputChange.h && !pointerInputChange.d) {
            return true;
        }
        return false;
    }

    public static final boolean e(PointerInputChange pointerInputChange, long j, long j2) {
        int i;
        boolean z;
        boolean z2;
        boolean z3;
        boolean z4 = false;
        if (pointerInputChange.i == 1) {
            i = 1;
        } else {
            i = 0;
        }
        long j3 = pointerInputChange.c;
        float intBitsToFloat = Float.intBitsToFloat((int) (j3 >> 32));
        float intBitsToFloat2 = Float.intBitsToFloat((int) (j3 & 4294967295L));
        float f = i;
        float intBitsToFloat3 = Float.intBitsToFloat((int) (j2 >> 32)) * f;
        float f2 = ((int) (j >> 32)) + intBitsToFloat3;
        float intBitsToFloat4 = Float.intBitsToFloat((int) (j2 & 4294967295L)) * f;
        float f3 = ((int) (j & 4294967295L)) + intBitsToFloat4;
        if (intBitsToFloat < (-intBitsToFloat3)) {
            z = true;
        } else {
            z = false;
        }
        if (intBitsToFloat > f2) {
            z2 = true;
        } else {
            z2 = false;
        }
        boolean z5 = z2 | z;
        if (intBitsToFloat2 < (-intBitsToFloat4)) {
            z3 = true;
        } else {
            z3 = false;
        }
        boolean z6 = z5 | z3;
        if (intBitsToFloat2 > f3) {
            z4 = true;
        }
        return z6 | z4;
    }

    public static final long f(PointerInputChange pointerInputChange, boolean z) {
        long e = Offset.e(pointerInputChange.c, pointerInputChange.g);
        if (!z && pointerInputChange.c()) {
            return 0L;
        }
        return e;
    }
}
