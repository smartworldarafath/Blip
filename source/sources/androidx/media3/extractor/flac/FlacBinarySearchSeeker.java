package androidx.media3.extractor.flac;

import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacStreamMetadata;
import java.nio.ByteOrder;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FlacBinarySearchSeeker extends BinarySearchSeeker {

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FlacTimestampSeeker implements BinarySearchSeeker.TimestampSeeker {
        public final FlacStreamMetadata a;
        public final int b;
        public final FlacFrameReader.SampleNumberHolder c = new Object();

        /* JADX WARN: Type inference failed for: r1v1, types: [androidx.media3.extractor.FlacFrameReader$SampleNumberHolder, java.lang.Object] */
        public FlacTimestampSeeker(FlacStreamMetadata flacStreamMetadata, int i) {
            this.a = flacStreamMetadata;
            this.b = i;
        }

        @Override // androidx.media3.extractor.BinarySearchSeeker.TimestampSeeker
        public final BinarySearchSeeker.TimestampSearchResult a(ExtractorInput extractorInput, long j) {
            long position = extractorInput.getPosition();
            long c = c(extractorInput);
            long e = extractorInput.e();
            extractorInput.f(Math.max(6, this.a.c));
            long c2 = c(extractorInput);
            long e2 = extractorInput.e();
            if (c <= j && c2 > j) {
                return new BinarySearchSeeker.TimestampSearchResult(0, -9223372036854775807L, e);
            }
            if (c2 <= j) {
                return new BinarySearchSeeker.TimestampSearchResult(-2, c2, e2);
            }
            return new BinarySearchSeeker.TimestampSearchResult(-1, c, position);
        }

        public final long c(ExtractorInput extractorInput) {
            FlacFrameReader.SampleNumberHolder sampleNumberHolder;
            FlacStreamMetadata flacStreamMetadata;
            int h;
            while (true) {
                long e = extractorInput.e();
                long g = extractorInput.g() - 6;
                sampleNumberHolder = this.c;
                flacStreamMetadata = this.a;
                if (e >= g) {
                    break;
                }
                long e2 = extractorInput.e();
                ParsableByteArray parsableByteArray = new ParsableByteArray(17);
                int i = 0;
                boolean b = false;
                extractorInput.n(parsableByteArray.a, 0, 2);
                char g2 = parsableByteArray.g(0, ByteOrder.BIG_ENDIAN);
                int i2 = this.b;
                if (g2 != i2) {
                    extractorInput.j();
                    extractorInput.f((int) (e2 - extractorInput.getPosition()));
                } else {
                    byte[] bArr = parsableByteArray.a;
                    while (i < 15 && (h = extractorInput.h(bArr, 2 + i, 15 - i)) != -1) {
                        i += h;
                    }
                    parsableByteArray.L(i + 2);
                    extractorInput.j();
                    extractorInput.f((int) (e2 - extractorInput.getPosition()));
                    b = FlacFrameReader.b(parsableByteArray, flacStreamMetadata, i2, sampleNumberHolder);
                }
                if (b) {
                    break;
                }
                extractorInput.f(1);
            }
            if (extractorInput.e() >= extractorInput.g() - 6) {
                extractorInput.f((int) (extractorInput.g() - extractorInput.e()));
                return flacStreamMetadata.j;
            }
            return sampleNumberHolder.a;
        }
    }
}
