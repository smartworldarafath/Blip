package androidx.media3.extractor.ts;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.TimestampAdjuster;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class TsDurationReader {
    public boolean c;
    public boolean d;
    public boolean e;
    public final TimestampAdjuster a = new TimestampAdjuster(0);
    public long f = -9223372036854775807L;
    public long g = -9223372036854775807L;
    public long h = -9223372036854775807L;
    public final ParsableByteArray b = new ParsableByteArray();

    public final void a(ExtractorInput extractorInput) {
        byte[] bArr = Util.b;
        ParsableByteArray parsableByteArray = this.b;
        parsableByteArray.getClass();
        parsableByteArray.K(bArr.length, bArr);
        this.c = true;
        extractorInput.j();
    }
}
