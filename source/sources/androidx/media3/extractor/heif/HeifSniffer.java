package androidx.media3.extractor.heif;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class HeifSniffer {
    /* JADX WARN: Code restructure failed: missing block: B:23:0x006e, code lost:
    
        return true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean a(ExtractorInput extractorInput, boolean z) {
        int i;
        ParsableByteArray parsableByteArray = new ParsableByteArray(16);
        boolean z2 = true;
        while (true) {
            parsableByteArray.J(8);
            if (!extractorInput.d(parsableByteArray.a, 0, 8, true)) {
                break;
            }
            long B = parsableByteArray.B();
            int m = parsableByteArray.m();
            if (B == 1) {
                if (!extractorInput.d(parsableByteArray.a, 8, 8, true)) {
                    break;
                }
                parsableByteArray.L(16);
                B = parsableByteArray.F();
                i = 16;
            } else {
                i = 8;
            }
            long j = i;
            if (B < j) {
                break;
            }
            int i2 = (int) (B - j);
            if (z2) {
                if (m != 1718909296 || i2 < 8) {
                    break;
                }
                parsableByteArray.J(4);
                extractorInput.n(parsableByteArray.a, 0, 4);
                if (parsableByteArray.m() != 1751476579) {
                    break;
                }
                if (!z) {
                    break;
                }
                extractorInput.f(i2 - 4);
                z2 = false;
            } else {
                if (m == 1836086884) {
                    break;
                }
                if (i2 != 0) {
                    extractorInput.f(i2);
                }
            }
        }
        return false;
    }
}
