package androidx.media3.extractor.ogg;

import androidx.media3.common.Format;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.VorbisUtil;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.ogg.FlacReader;
import io.sentry.d;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class OggExtractor implements Extractor {
    public ExtractorOutput a;
    public StreamReader b;
    public boolean c;

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        try {
            return g(extractorInput);
        } catch (ParserException unused) {
            return false;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        StreamReader streamReader = this.b;
        if (streamReader != null) {
            OggPacket oggPacket = streamReader.a;
            OggPageHeader oggPageHeader = oggPacket.a;
            oggPageHeader.a = 0;
            oggPageHeader.b = 0L;
            oggPageHeader.c = 0;
            oggPageHeader.d = 0;
            oggPageHeader.e = 0;
            oggPacket.b.J(0);
            oggPacket.c = -1;
            oggPacket.e = false;
            if (j == 0) {
                streamReader.d(!streamReader.l);
                return;
            }
            if (streamReader.h != 0) {
                long j3 = (streamReader.i * j2) / 1000000;
                streamReader.e = j3;
                OggSeeker oggSeeker = streamReader.d;
                String str = Util.a;
                oggSeeker.c(j3);
                streamReader.h = 2;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.a = extractorOutput;
    }

    /* JADX WARN: Removed duplicated region for block: B:60:0x016c A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:61:0x016d  */
    /* JADX WARN: Type inference failed for: r0v5, types: [androidx.media3.extractor.ogg.OggSeeker, java.lang.Object] */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        boolean z;
        int i;
        ParsableByteArray parsableByteArray;
        byte[] bArr;
        this.a.getClass();
        if (this.b == null) {
            if (g(extractorInput)) {
                extractorInput.j();
            } else {
                throw ParserException.a(null, "Failed to determine bitstream type");
            }
        }
        if (!this.c) {
            TrackOutput s = this.a.s(0, 1);
            this.a.n();
            StreamReader streamReader = this.b;
            streamReader.c = this.a;
            streamReader.b = s;
            streamReader.d(true);
            this.c = true;
        }
        StreamReader streamReader2 = this.b;
        OggPacket oggPacket = streamReader2.a;
        streamReader2.b.getClass();
        String str = Util.a;
        int i2 = streamReader2.h;
        if (i2 != 0) {
            if (i2 != 1) {
                if (i2 != 2) {
                    if (i2 == 3) {
                        return -1;
                    }
                    d.d();
                    return 0;
                }
                long a = streamReader2.d.a(extractorInput);
                if (a >= 0) {
                    positionHolder.a = a;
                    return 1;
                }
                if (a < -1) {
                    streamReader2.a(-(a + 2));
                }
                if (!streamReader2.l) {
                    SeekMap b = streamReader2.d.b();
                    b.getClass();
                    streamReader2.c.f(b);
                    streamReader2.b.d(b.g());
                    streamReader2.l = true;
                }
                if (streamReader2.k <= 0 && !oggPacket.b(extractorInput)) {
                    streamReader2.h = 3;
                    return -1;
                }
                streamReader2.k = 0L;
                ParsableByteArray parsableByteArray2 = oggPacket.b;
                long b2 = streamReader2.b(parsableByteArray2);
                if (b2 >= 0) {
                    long j = streamReader2.g;
                    if (j + b2 >= streamReader2.e) {
                        streamReader2.b.f(parsableByteArray2.c, parsableByteArray2);
                        streamReader2.b.g((j * 1000000) / streamReader2.i, 1, parsableByteArray2.c, 0, null);
                        streamReader2.e = -1L;
                    }
                }
                streamReader2.g += b2;
                return 0;
            }
            extractorInput.k((int) streamReader2.f);
            streamReader2.h = 2;
            return 0;
        }
        while (true) {
            boolean b3 = oggPacket.b(extractorInput);
            ParsableByteArray parsableByteArray3 = oggPacket.b;
            if (!b3) {
                streamReader2.h = 3;
                return -1;
            }
            long position = extractorInput.getPosition();
            long j2 = streamReader2.f;
            streamReader2.k = position - j2;
            if (streamReader2.c(parsableByteArray3, j2, streamReader2.j)) {
                streamReader2.f = extractorInput.getPosition();
            } else {
                Format format = streamReader2.j.a;
                streamReader2.i = format.L;
                if (!streamReader2.m) {
                    streamReader2.b.e(format);
                    streamReader2.m = true;
                }
                FlacReader.FlacOggSeeker flacOggSeeker = streamReader2.j.b;
                if (flacOggSeeker != null) {
                    streamReader2.d = flacOggSeeker;
                } else if (extractorInput.g() == -1) {
                    streamReader2.d = new Object();
                } else {
                    OggPageHeader oggPageHeader = oggPacket.a;
                    if ((oggPageHeader.a & 4) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    i = 2;
                    long j3 = streamReader2.f;
                    long g = extractorInput.g();
                    long j4 = oggPageHeader.d + oggPageHeader.e;
                    long j5 = oggPageHeader.b;
                    parsableByteArray = parsableByteArray3;
                    streamReader2.d = new DefaultOggSeeker(streamReader2, j3, g, j4, j5, z);
                    streamReader2.h = i;
                    bArr = parsableByteArray.a;
                    if (bArr.length != 65025) {
                        return 0;
                    }
                    parsableByteArray.K(parsableByteArray.c, Arrays.copyOf(bArr, Math.max(65025, parsableByteArray.c)));
                    return 0;
                }
                i = 2;
                parsableByteArray = parsableByteArray3;
                streamReader2.h = i;
                bArr = parsableByteArray.a;
                if (bArr.length != 65025) {
                }
            }
        }
    }

    public final boolean g(ExtractorInput extractorInput) {
        boolean z;
        OggPageHeader oggPageHeader = new OggPageHeader();
        if (oggPageHeader.a(extractorInput, true) && (oggPageHeader.a & 2) == 2) {
            int min = Math.min(oggPageHeader.e, 8);
            ParsableByteArray parsableByteArray = new ParsableByteArray(min);
            extractorInput.n(parsableByteArray.a, 0, min);
            parsableByteArray.M(0);
            if (parsableByteArray.a() >= 5 && parsableByteArray.z() == 127 && parsableByteArray.B() == 1179402563) {
                this.b = new StreamReader();
                return true;
            }
            parsableByteArray.M(0);
            try {
                z = VorbisUtil.c(1, parsableByteArray, true);
            } catch (ParserException unused) {
                z = false;
            }
            if (z) {
                this.b = new StreamReader();
            } else {
                parsableByteArray.M(0);
                if (OpusReader.e(parsableByteArray, OpusReader.o)) {
                    this.b = new StreamReader();
                }
            }
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
