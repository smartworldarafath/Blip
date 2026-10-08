package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class TsUtil {
    public static long a(ParsableByteArray parsableByteArray, int i, int i2) {
        parsableByteArray.M(i);
        if (parsableByteArray.a() < 5) {
            return -9223372036854775807L;
        }
        int m = parsableByteArray.m();
        if ((8388608 & m) != 0 || ((2096896 & m) >> 8) != i2 || (m & 32) == 0 || parsableByteArray.z() < 7 || parsableByteArray.a() < 7 || (parsableByteArray.z() & 16) != 16) {
            return -9223372036854775807L;
        }
        parsableByteArray.k(new byte[6], 0, 6);
        return ((r0[0] & 255) << 25) | ((r0[1] & 255) << 17) | ((r0[2] & 255) << 9) | ((r0[3] & 255) << 1) | ((r0[4] & 255) >> 7);
    }
}
