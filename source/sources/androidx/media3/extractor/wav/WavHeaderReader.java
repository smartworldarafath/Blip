package androidx.media3.extractor.wav;

import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.ExtractorInput;
import defpackage.q;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
abstract class WavHeaderReader {
    public static final byte[] a = {0, 0, 0, 0, 16, 0, Byte.MIN_VALUE, 0, 0, -86, 0, 56, -101, 113};
    public static final byte[] b = {0, 0, 33, 7, -45, 17, -122, 68, -56, -63, -54, 0, 0, 0};

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ChunkHeader {
        public final int a;
        public final long b;

        public ChunkHeader(int i, long j) {
            this.a = i;
            this.b = j;
        }

        public static ChunkHeader a(ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
            extractorInput.n(parsableByteArray.a, 0, 8);
            parsableByteArray.M(0);
            return new ChunkHeader(parsableByteArray.m(), parsableByteArray.q());
        }
    }

    public static boolean a(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = new ParsableByteArray(8);
        int i = ChunkHeader.a(extractorInput, parsableByteArray).a;
        if (i != 1380533830 && i != 1380333108) {
            return false;
        }
        extractorInput.n(parsableByteArray.a, 0, 4);
        parsableByteArray.M(0);
        int m = parsableByteArray.m();
        if (m != 1463899717) {
            Log.c("WavHeaderReader", "Unsupported form type: " + m);
            return false;
        }
        return true;
    }

    public static ChunkHeader b(int i, ExtractorInput extractorInput, ParsableByteArray parsableByteArray) {
        ChunkHeader a2 = ChunkHeader.a(extractorInput, parsableByteArray);
        while (true) {
            int i2 = a2.a;
            if (i2 != i) {
                q.x("Ignoring unknown WAV chunk: ", i2, "WavHeaderReader");
                long j = a2.b;
                long j2 = 8 + j;
                if (j % 2 != 0) {
                    j2 = 9 + j;
                }
                if (j2 <= 2147483647L) {
                    extractorInput.k((int) j2);
                    a2 = ChunkHeader.a(extractorInput, parsableByteArray);
                } else {
                    throw ParserException.b("Chunk is too large (~2GB+) to skip; id: " + i2);
                }
            } else {
                return a2;
            }
        }
    }
}
