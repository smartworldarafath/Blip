package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableBitArray;
import com.google.common.base.Preconditions;
import com.google.common.math.IntMath;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class MpeghUtil {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class MhasPacketHeader {
        public int a;
        public long b;
        public int c;
    }

    public static int a(ParsableBitArray parsableBitArray, int i, int i2, int i3) {
        boolean z;
        if (Math.max(Math.max(i, i2), i3) <= 31) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        int i4 = (1 << i) - 1;
        int i5 = (1 << i2) - 1;
        IntMath.a(IntMath.a(i4, i5), 1 << i3);
        if (parsableBitArray.b() >= i) {
            int g = parsableBitArray.g(i);
            if (g == i4) {
                if (parsableBitArray.b() >= i2) {
                    int g2 = parsableBitArray.g(i2);
                    g += g2;
                    if (g2 == i5) {
                        if (parsableBitArray.b() < i3) {
                            return -1;
                        }
                        return parsableBitArray.g(i3) + g;
                    }
                } else {
                    return -1;
                }
            }
            return g;
        }
        return -1;
    }

    public static void b(ParsableBitArray parsableBitArray) {
        parsableBitArray.o(3);
        parsableBitArray.o(8);
        boolean f = parsableBitArray.f();
        boolean f2 = parsableBitArray.f();
        if (f) {
            parsableBitArray.o(5);
        }
        if (f2) {
            parsableBitArray.o(6);
        }
    }

    public static void c(ParsableBitArray parsableBitArray) {
        int i;
        int g;
        int g2 = parsableBitArray.g(2);
        int i2 = 6;
        if (g2 == 0) {
            parsableBitArray.o(6);
            return;
        }
        int i3 = 5;
        int a = a(parsableBitArray, 5, 8, 16) + 1;
        if (g2 == 1) {
            parsableBitArray.o(a * 7);
            return;
        }
        if (g2 == 2) {
            boolean f = parsableBitArray.f();
            if (f) {
                i = 1;
            } else {
                i = 5;
            }
            if (f) {
                i3 = 7;
            }
            if (f) {
                i2 = 8;
            }
            int i4 = 0;
            while (i4 < a) {
                if (parsableBitArray.f()) {
                    parsableBitArray.o(7);
                    g = 0;
                } else {
                    if (parsableBitArray.g(2) == 3 && parsableBitArray.g(i3) * i != 0) {
                        parsableBitArray.n();
                    }
                    g = parsableBitArray.g(i2) * i;
                    if (g != 0 && g != 180) {
                        parsableBitArray.n();
                    }
                    parsableBitArray.n();
                }
                if (g != 0 && g != 180 && parsableBitArray.f()) {
                    i4++;
                }
                i4++;
            }
        }
    }
}
