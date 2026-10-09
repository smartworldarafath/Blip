package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacMetadataReader;
import androidx.media3.extractor.FlacSeekTableSeekMap;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.ogg.StreamReader;
import com.google.common.base.Preconditions;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
final class FlacReader extends StreamReader {
    public FlacStreamMetadata n;
    public FlacOggSeeker o;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class FlacOggSeeker implements OggSeeker {
        public FlacStreamMetadata a;
        public FlacStreamMetadata.SeekTable b;
        public long c;
        public long d;

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final long a(ExtractorInput extractorInput) {
            long j = this.d;
            if (j < 0) {
                return -1L;
            }
            long j2 = -(j + 2);
            this.d = -1L;
            return j2;
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final SeekMap b() {
            boolean z;
            if (this.c != -1) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.n(z);
            return new FlacSeekTableSeekMap(this.a, this.c);
        }

        @Override // androidx.media3.extractor.ogg.OggSeeker
        public final void c(long j) {
            long[] jArr = this.b.a;
            this.d = jArr[Util.d(jArr, j, true)];
        }
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final long b(ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.a;
        if (bArr[0] == -1) {
            int i = (bArr[2] & 255) >> 4;
            if (i == 6 || i == 7) {
                parsableByteArray.N(4);
                parsableByteArray.H();
            }
            int c = FlacFrameReader.c(i, parsableByteArray);
            parsableByteArray.M(0);
            return c;
        }
        return -1L;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [androidx.media3.extractor.ogg.FlacReader$FlacOggSeeker, java.lang.Object] */
    @Override // androidx.media3.extractor.ogg.StreamReader
    public final boolean c(ParsableByteArray parsableByteArray, long j, StreamReader.SetupData setupData) {
        byte[] bArr = parsableByteArray.a;
        FlacStreamMetadata flacStreamMetadata = this.n;
        if (flacStreamMetadata == null) {
            FlacStreamMetadata flacStreamMetadata2 = new FlacStreamMetadata(17, bArr);
            this.n = flacStreamMetadata2;
            Format.Builder a = flacStreamMetadata2.c(Arrays.copyOfRange(bArr, 9, parsableByteArray.c), null).a();
            a.n = MimeTypes.l("audio/ogg");
            setupData.a = new Format(a);
            return true;
        }
        byte b = bArr[0];
        if ((b & Byte.MAX_VALUE) == 3) {
            FlacStreamMetadata.SeekTable b2 = FlacMetadataReader.b(parsableByteArray);
            FlacStreamMetadata flacStreamMetadata3 = new FlacStreamMetadata(flacStreamMetadata.a, flacStreamMetadata.b, flacStreamMetadata.c, flacStreamMetadata.d, flacStreamMetadata.e, flacStreamMetadata.g, flacStreamMetadata.h, flacStreamMetadata.j, b2, flacStreamMetadata.l);
            this.n = flacStreamMetadata3;
            ?? obj = new Object();
            obj.a = flacStreamMetadata3;
            obj.b = b2;
            obj.c = -1L;
            obj.d = -1L;
            this.o = obj;
            return true;
        }
        if (b != -1) {
            return true;
        }
        FlacOggSeeker flacOggSeeker = this.o;
        if (flacOggSeeker != null) {
            flacOggSeeker.c = j;
            setupData.b = flacOggSeeker;
        }
        setupData.a.getClass();
        return false;
    }

    @Override // androidx.media3.extractor.ogg.StreamReader
    public final void d(boolean z) {
        super.d(z);
        if (z) {
            this.n = null;
            this.o = null;
        }
    }
}
