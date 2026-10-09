package androidx.media3.extractor.mkv;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.DefaultExtractorInput;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class Sniffer {
    public final ParsableByteArray a = new ParsableByteArray(8);
    public int b;

    public final long a(DefaultExtractorInput defaultExtractorInput) {
        ParsableByteArray parsableByteArray = this.a;
        int i = 0;
        defaultExtractorInput.d(parsableByteArray.a, 0, 1, false);
        int i2 = parsableByteArray.a[0] & 255;
        if (i2 == 0) {
            return Long.MIN_VALUE;
        }
        int i3 = 128;
        int i4 = 0;
        while ((i2 & i3) == 0) {
            i3 >>= 1;
            i4++;
        }
        int i5 = i2 & (~i3);
        defaultExtractorInput.d(parsableByteArray.a, 1, i4, false);
        while (i < i4) {
            i++;
            i5 = (parsableByteArray.a[i] & 255) + (i5 << 8);
        }
        this.b = i4 + 1 + this.b;
        return i5;
    }
}
