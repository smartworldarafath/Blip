package androidx.media3.extractor.wav;

import android.util.Pair;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.wav.WavHeaderReader;
import com.google.common.base.Preconditions;
import io.sentry.d;
import java.math.RoundingMode;
import java.nio.ByteOrder;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class WavExtractor implements Extractor {
    public ExtractorOutput a;
    public TrackOutput b;
    public int c;
    public long d;
    public OutputWriter e;
    public int f;
    public long g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ImaAdPcmOutputWriter implements OutputWriter {
        public static final int[] m = {-1, -1, -1, -1, 2, 4, 6, 8, -1, -1, -1, -1, 2, 4, 6, 8};
        public static final int[] n = {7, 8, 9, 10, 11, 12, 13, 14, 16, 17, 19, 21, 23, 25, 28, 31, 34, 37, 41, 45, 50, 55, 60, 66, 73, 80, 88, 97, 107, 118, 130, 143, 157, 173, 190, 209, 230, 253, 279, 307, 337, 371, 408, 449, 494, 544, 598, 658, 724, 796, 876, 963, 1060, 1166, 1282, 1411, 1552, 1707, 1878, 2066, 2272, 2499, 2749, 3024, 3327, 3660, 4026, 4428, 4871, 5358, 5894, 6484, 7132, 7845, 8630, 9493, 10442, 11487, 12635, 13899, 15289, 16818, 18500, 20350, 22385, 24623, 27086, 29794, 32767};
        public final ExtractorOutput a;
        public final TrackOutput b;
        public final WavFormat c;
        public final int d;
        public final byte[] e;
        public final ParsableByteArray f;
        public final int g;
        public final Format h;
        public int i;
        public long j;
        public int k;
        public long l;

        public ImaAdPcmOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat) {
            int i;
            this.a = extractorOutput;
            this.b = trackOutput;
            this.c = wavFormat;
            int i2 = wavFormat.b;
            int max = Math.max(1, i2 / 10);
            this.g = max;
            ParsableByteArray parsableByteArray = new ParsableByteArray(wavFormat.e);
            parsableByteArray.s();
            int s = parsableByteArray.s();
            this.d = s;
            int i3 = wavFormat.a;
            int i4 = wavFormat.c;
            int i5 = (((i4 - (i3 * 4)) * 8) / (wavFormat.d * i3)) + 1;
            if (s == i5) {
                int e = Util.e(max, s);
                this.e = new byte[e * i4];
                this.f = new ParsableByteArray(s * 2 * i3 * e);
                int i6 = ((i4 * i2) * 8) / s;
                Format.Builder builder = new Format.Builder();
                builder.o = MimeTypes.l("audio/raw");
                builder.i = i6;
                builder.j = i6;
                builder.p = max * 2 * i3;
                builder.I = i3;
                int i7 = wavFormat.f;
                if (i7 == 0) {
                    i = -1;
                } else {
                    i = i7 << 2;
                }
                builder.J = i;
                builder.K = i2;
                builder.L = 2;
                this.h = new Format(builder);
                return;
            }
            throw ParserException.a(null, "Expected frames per block: " + i5 + "; got: " + s);
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void a(long j) {
            this.i = 0;
            this.j = j;
            this.k = 0;
            this.l = 0L;
        }

        /*  JADX ERROR: JadxOverflowException in pass: RegionMakerVisitor
            jadx.core.utils.exceptions.JadxOverflowException: Regions count limit reached
            	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
            	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
            	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
            */
        /* JADX WARN: Removed duplicated region for block: B:49:0x0045 A[ADDED_TO_REGION, EDGE_INSN: B:49:0x0045->B:14:0x0045 BREAK  A[LOOP:0: B:5:0x0023->B:11:0x003f], SYNTHETIC] */
        /* JADX WARN: Removed duplicated region for block: B:7:0x0027  */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:9:0x003c -> B:3:0x0020). Please report as a decompilation issue!!! */
        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final boolean b(androidx.media3.extractor.ExtractorInput r25, long r26) {
            /*
                Method dump skipped, instructions count: 327
                To view this dump add '--comments-level debug' option
            */
            throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.wav.WavExtractor.ImaAdPcmOutputWriter.b(androidx.media3.extractor.ExtractorInput, long):boolean");
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void c(int i, long j) {
            WavSeekMap wavSeekMap = new WavSeekMap(this.c, this.d, i, j);
            this.a.f(wavSeekMap);
            Format format = this.h;
            TrackOutput trackOutput = this.b;
            trackOutput.e(format);
            trackOutput.d(wavSeekMap.e);
        }

        public final void d(int i) {
            long j = this.j;
            long j2 = this.l;
            WavFormat wavFormat = this.c;
            long j3 = wavFormat.b;
            String str = Util.a;
            long J = j + Util.J(j2, 1000000L, j3, RoundingMode.DOWN);
            int i2 = i * 2 * wavFormat.a;
            this.b.g(J, 1, i2, this.k - i2, null);
            this.l += i;
            this.k -= i2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface OutputWriter {
        void a(long j);

        boolean b(ExtractorInput extractorInput, long j);

        void c(int i, long j);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class PassthroughOutputWriter implements OutputWriter {
        public final ExtractorOutput a;
        public final TrackOutput b;
        public final WavFormat c;
        public final Format d;
        public final int e;
        public long f;
        public int g;
        public long h;

        public PassthroughOutputWriter(ExtractorOutput extractorOutput, TrackOutput trackOutput, WavFormat wavFormat, String str, int i) {
            int i2;
            this.a = extractorOutput;
            this.b = trackOutput;
            this.c = wavFormat;
            int i3 = wavFormat.a;
            int i4 = wavFormat.b;
            int i5 = (wavFormat.d * i3) / 8;
            int i6 = wavFormat.c;
            if (i6 == i5) {
                int i7 = i4 * i5;
                int i8 = i7 * 8;
                int max = Math.max(i5, i7 / 10);
                this.e = max;
                Format.Builder builder = new Format.Builder();
                builder.n = MimeTypes.l("audio/wav");
                builder.o = MimeTypes.l(str);
                builder.i = i8;
                builder.j = i8;
                builder.p = max;
                builder.I = i3;
                int i9 = wavFormat.f;
                if (i9 == 0) {
                    i2 = -1;
                } else {
                    i2 = i9 << 2;
                }
                builder.J = i2;
                builder.K = i4;
                builder.L = i;
                this.d = new Format(builder);
                return;
            }
            throw ParserException.a(null, "Expected block size: " + i5 + "; got: " + i6);
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void a(long j) {
            this.f = j;
            this.g = 0;
            this.h = 0L;
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final boolean b(ExtractorInput extractorInput, long j) {
            int i;
            int i2;
            long j2 = j;
            while (j2 > 0 && (i = this.g) < (i2 = this.e)) {
                int c = this.b.c(extractorInput, (int) Math.min(i2 - i, j2), true);
                if (c == -1) {
                    j2 = 0;
                } else {
                    this.g += c;
                    j2 -= c;
                }
            }
            WavFormat wavFormat = this.c;
            int i3 = wavFormat.c;
            int i4 = this.g / i3;
            if (i4 > 0) {
                long j3 = this.f;
                long j4 = this.h;
                long j5 = wavFormat.b;
                String str = Util.a;
                long J = j3 + Util.J(j4, 1000000L, j5, RoundingMode.DOWN);
                int i5 = i4 * i3;
                int i6 = this.g - i5;
                this.b.g(J, 1, i5, i6, null);
                this.h += i4;
                this.g = i6;
            }
            if (j2 <= 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.media3.extractor.wav.WavExtractor.OutputWriter
        public final void c(int i, long j) {
            WavSeekMap wavSeekMap = new WavSeekMap(this.c, 1, i, j);
            this.a.f(wavSeekMap);
            Format format = this.d;
            TrackOutput trackOutput = this.b;
            trackOutput.e(format);
            trackOutput.d(wavSeekMap.e);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        return WavHeaderReader.a(extractorInput);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        int i;
        if (j == 0) {
            i = 0;
        } else {
            i = 4;
        }
        this.c = i;
        OutputWriter outputWriter = this.e;
        if (outputWriter != null) {
            outputWriter.a(j2);
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.a = extractorOutput;
        this.b = extractorOutput.s(0, 1);
        extractorOutput.n();
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x01c3  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x01d0  */
    /* JADX WARN: Removed duplicated region for block: B:73:0x0221  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x0237  */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        boolean z;
        boolean z2;
        byte[] bArr;
        int i;
        int i2;
        byte[] bArr2;
        int t;
        int i3;
        this.b.getClass();
        String str = Util.a;
        int i4 = this.c;
        boolean z3 = true;
        if (i4 != 0) {
            long j = -1;
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            if (this.g == -1) {
                                z3 = false;
                            }
                            Preconditions.n(z3);
                            long position = this.g - extractorInput.getPosition();
                            OutputWriter outputWriter = this.e;
                            outputWriter.getClass();
                            if (outputWriter.b(extractorInput, position)) {
                                return -1;
                            }
                            return 0;
                        }
                        d.d();
                        return 0;
                    }
                    extractorInput.j();
                    WavHeaderReader.ChunkHeader b = WavHeaderReader.b(1684108385, extractorInput, new ParsableByteArray(8));
                    extractorInput.k(8);
                    Pair create = Pair.create(Long.valueOf(extractorInput.getPosition()), Long.valueOf(b.b));
                    this.f = ((Long) create.first).intValue();
                    long longValue = ((Long) create.second).longValue();
                    long j2 = this.d;
                    if (j2 != -1 && longValue == 4294967295L) {
                        longValue = j2;
                    }
                    this.g = this.f + longValue;
                    long g = extractorInput.g();
                    if (g != -1 && this.g > g) {
                        Log.f("WavExtractor", "Data exceeds input length: " + this.g + ", " + g);
                        this.g = g;
                    }
                    OutputWriter outputWriter2 = this.e;
                    outputWriter2.getClass();
                    outputWriter2.c(this.f, this.g);
                    this.c = 4;
                    return 0;
                }
                ParsableByteArray parsableByteArray = new ParsableByteArray(16);
                long j3 = WavHeaderReader.b(1718449184, extractorInput, parsableByteArray).b;
                if (j3 >= 16) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                Preconditions.n(z2);
                extractorInput.n(parsableByteArray.a, 0, 16);
                parsableByteArray.M(0);
                int s = parsableByteArray.s();
                int s2 = parsableByteArray.s();
                int r = parsableByteArray.r();
                parsableByteArray.r();
                int s3 = parsableByteArray.s();
                int s4 = parsableByteArray.s();
                int i5 = ((int) j3) - 16;
                if (i5 > 0) {
                    bArr = new byte[i5];
                    extractorInput.n(bArr, 0, i5);
                    if (s == 65534 && i5 == 24) {
                        ParsableByteArray parsableByteArray2 = new ParsableByteArray(bArr);
                        parsableByteArray2.s();
                        int s5 = parsableByteArray2.s();
                        if (s5 != 0 && s5 != s4) {
                            throw ParserException.b("validBits ( " + s5 + ")  != bitsPerSample( " + s4 + ") are not supported");
                        }
                        int r2 = parsableByteArray2.r();
                        if ((r2 >> 18) == 0 && (r2 == 0 || Integer.bitCount(r2) == s2)) {
                            int s6 = parsableByteArray2.s();
                            byte[] bArr3 = new byte[14];
                            parsableByteArray2.k(bArr3, 0, 14);
                            if (!Arrays.equals(bArr3, WavHeaderReader.a) && !Arrays.equals(bArr3, WavHeaderReader.b)) {
                                throw ParserException.b("invalid wav format extension guid");
                            }
                            i2 = r2;
                            bArr2 = bArr;
                            i = s6;
                            extractorInput.k((int) (extractorInput.e() - extractorInput.getPosition()));
                            WavFormat wavFormat = new WavFormat(i, s2, r, s3, s4, i2, bArr2);
                            if (i != 17) {
                                this.e = new ImaAdPcmOutputWriter(this.a, this.b, wavFormat);
                            } else if (i == 6) {
                                this.e = new PassthroughOutputWriter(this.a, this.b, wavFormat, "audio/g711-alaw", -1);
                            } else if (i == 7) {
                                this.e = new PassthroughOutputWriter(this.a, this.b, wavFormat, "audio/g711-mlaw", -1);
                            } else {
                                if (i != 1) {
                                    if (i != 3) {
                                        if (i != 65534) {
                                            i3 = 0;
                                            if (i3 != 0) {
                                                this.e = new PassthroughOutputWriter(this.a, this.b, wavFormat, "audio/raw", i3);
                                            } else {
                                                throw ParserException.b("Unsupported WAV format type: " + i);
                                            }
                                        }
                                    } else {
                                        t = Util.r(s4, ByteOrder.LITTLE_ENDIAN);
                                        i3 = t;
                                        if (i3 != 0) {
                                        }
                                    }
                                }
                                t = Util.t(s4, ByteOrder.LITTLE_ENDIAN);
                                i3 = t;
                                if (i3 != 0) {
                                }
                            }
                            this.c = 3;
                            return 0;
                        }
                        throw ParserException.b("Channel mask " + r2 + " is invalid or does not match channel count " + s2);
                    }
                } else {
                    bArr = Util.b;
                }
                i = s;
                i2 = 0;
                bArr2 = bArr;
                extractorInput.k((int) (extractorInput.e() - extractorInput.getPosition()));
                WavFormat wavFormat2 = new WavFormat(i, s2, r, s3, s4, i2, bArr2);
                if (i != 17) {
                }
                this.c = 3;
                return 0;
            }
            ParsableByteArray parsableByteArray3 = new ParsableByteArray(8);
            WavHeaderReader.ChunkHeader a = WavHeaderReader.ChunkHeader.a(extractorInput, parsableByteArray3);
            if (a.a != 1685272116) {
                extractorInput.j();
            } else {
                extractorInput.f(8);
                parsableByteArray3.M(0);
                extractorInput.n(parsableByteArray3.a, 0, 8);
                j = parsableByteArray3.p();
                extractorInput.k(((int) a.b) + 8);
            }
            this.d = j;
            this.c = 2;
            return 0;
        }
        if (extractorInput.getPosition() == 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.n(z);
        int i6 = this.f;
        if (i6 != -1) {
            extractorInput.k(i6);
            this.c = 4;
            return 0;
        }
        if (WavHeaderReader.a(extractorInput)) {
            extractorInput.k((int) (extractorInput.e() - extractorInput.getPosition()));
            this.c = 1;
            return 0;
        }
        throw ParserException.a(null, "Unsupported or unrecognized wav file type.");
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
