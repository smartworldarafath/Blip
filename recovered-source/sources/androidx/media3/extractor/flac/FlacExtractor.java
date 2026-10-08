package androidx.media3.extractor.flac;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.BinarySearchSeeker;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.FlacFrameReader;
import androidx.media3.extractor.FlacMetadataReader;
import androidx.media3.extractor.FlacSeekTableSeekMap;
import androidx.media3.extractor.FlacStreamMetadata;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.VorbisUtil;
import androidx.media3.extractor.flac.FlacBinarySearchSeeker;
import androidx.media3.extractor.metadata.flac.PictureFrame;
import com.google.common.collect.ImmutableList;
import defpackage.fe;
import defpackage.p;
import io.sentry.d;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlacExtractor implements Extractor {
    public ExtractorOutput f;
    public TrackOutput g;
    public Metadata i;
    public FlacStreamMetadata j;
    public int k;
    public int l;
    public FlacBinarySearchSeeker m;
    public int n;
    public long o;
    public final byte[] a = new byte[42];
    public final ParsableByteArray b = new ParsableByteArray(0, new byte[32768]);
    public final boolean c = false;
    public final boolean d = false;
    public final FlacFrameReader.SampleNumberHolder e = new Object();
    public int h = 0;

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        FlacMetadataReader.a(extractorInput, false, false);
        ParsableByteArray parsableByteArray = new ParsableByteArray(4);
        ((DefaultExtractorInput) extractorInput).d(parsableByteArray.a, 0, 4, false);
        if (parsableByteArray.B() != 1716281667) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        long j3 = 0;
        if (j == 0) {
            this.h = 0;
        } else {
            FlacBinarySearchSeeker flacBinarySearchSeeker = this.m;
            if (flacBinarySearchSeeker != null) {
                flacBinarySearchSeeker.c(j2);
            }
        }
        if (j2 != 0) {
            j3 = -1;
        }
        this.o = j3;
        this.n = 0;
        this.b.J(0);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.f = extractorOutput;
        this.g = extractorOutput.s(0, 1);
        extractorOutput.n();
    }

    /* JADX WARN: Type inference failed for: r15v3, types: [androidx.media3.extractor.flac.FlacBinarySearchSeeker, androidx.media3.extractor.BinarySearchSeeker] */
    /* JADX WARN: Type inference failed for: r1v27, types: [androidx.media3.extractor.FlacFrameReader$SampleNumberHolder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v6, types: [androidx.media3.extractor.FlacMetadataReader$FlacStreamMetadataHolder, java.lang.Object] */
    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        boolean z;
        int i;
        SeekMap unseekable;
        long j;
        long j2;
        long j3;
        long j4;
        boolean z2;
        int i2 = this.h;
        boolean z3 = this.d;
        boolean z4 = true;
        if (i2 != 0) {
            byte[] bArr = this.a;
            if (i2 != 1) {
                int i3 = 4;
                int i4 = 3;
                if (i2 != 2) {
                    int i5 = 7;
                    if (i2 != 3) {
                        if (i2 != 4) {
                            if (i2 == 5) {
                                this.g.getClass();
                                this.j.getClass();
                                FlacBinarySearchSeeker flacBinarySearchSeeker = this.m;
                                if (flacBinarySearchSeeker != null && flacBinarySearchSeeker.c != null) {
                                    return flacBinarySearchSeeker.a(extractorInput, positionHolder);
                                }
                                if (this.o == -1) {
                                    FlacStreamMetadata flacStreamMetadata = this.j;
                                    extractorInput.j();
                                    extractorInput.f(1);
                                    byte[] bArr2 = new byte[1];
                                    extractorInput.n(bArr2, 0, 1);
                                    if ((bArr2[0] & 1) != 1) {
                                        z4 = false;
                                    }
                                    extractorInput.f(2);
                                    if (!z4) {
                                        i5 = 6;
                                    }
                                    ParsableByteArray parsableByteArray = new ParsableByteArray(i5);
                                    byte[] bArr3 = parsableByteArray.a;
                                    int i6 = 0;
                                    while (i6 < i5) {
                                        int h = extractorInput.h(bArr3, i6, i5 - i6);
                                        if (h == -1) {
                                            break;
                                        }
                                        i6 += h;
                                    }
                                    parsableByteArray.L(i6);
                                    extractorInput.j();
                                    ?? obj = new Object();
                                    if (FlacFrameReader.a(parsableByteArray, flacStreamMetadata, z4, obj)) {
                                        this.o = obj.a;
                                        return 0;
                                    }
                                    throw ParserException.a(null, null);
                                }
                                ParsableByteArray parsableByteArray2 = this.b;
                                int i7 = parsableByteArray2.c;
                                if (i7 < 32768) {
                                    int read = extractorInput.read(parsableByteArray2.a, i7, 32768 - i7);
                                    if (read != -1) {
                                        z4 = false;
                                    }
                                    if (!z4) {
                                        parsableByteArray2.L(i7 + read);
                                    } else if (parsableByteArray2.a() == 0) {
                                        long j5 = this.o * 1000000;
                                        FlacStreamMetadata flacStreamMetadata2 = this.j;
                                        String str = Util.a;
                                        this.g.g(j5 / flacStreamMetadata2.e, 1, this.n, 0, null);
                                        return -1;
                                    }
                                } else {
                                    z4 = false;
                                }
                                int i8 = parsableByteArray2.b;
                                int i9 = this.n;
                                int i10 = this.k;
                                if (i9 < i10) {
                                    parsableByteArray2.N(Math.min(i10 - i9, parsableByteArray2.a()));
                                }
                                this.j.getClass();
                                int i11 = parsableByteArray2.b;
                                while (true) {
                                    int i12 = parsableByteArray2.c - 16;
                                    FlacFrameReader.SampleNumberHolder sampleNumberHolder = this.e;
                                    if (i11 <= i12) {
                                        parsableByteArray2.M(i11);
                                        if (FlacFrameReader.b(parsableByteArray2, this.j, this.l, sampleNumberHolder)) {
                                            parsableByteArray2.M(i11);
                                            j4 = sampleNumberHolder.a;
                                            break;
                                        }
                                        i11++;
                                    } else {
                                        if (z4) {
                                            while (true) {
                                                int i13 = parsableByteArray2.c;
                                                if (i11 <= i13 - this.k) {
                                                    parsableByteArray2.M(i11);
                                                    try {
                                                        z2 = FlacFrameReader.b(parsableByteArray2, this.j, this.l, sampleNumberHolder);
                                                    } catch (IndexOutOfBoundsException unused) {
                                                        z2 = false;
                                                    }
                                                    if (parsableByteArray2.b > parsableByteArray2.c) {
                                                        z2 = false;
                                                    }
                                                    if (z2) {
                                                        parsableByteArray2.M(i11);
                                                        j4 = sampleNumberHolder.a;
                                                        break;
                                                    }
                                                    i11++;
                                                } else {
                                                    parsableByteArray2.M(i13);
                                                    break;
                                                }
                                            }
                                        } else {
                                            parsableByteArray2.M(i11);
                                        }
                                        j4 = -1;
                                    }
                                }
                                int i14 = parsableByteArray2.b - i8;
                                parsableByteArray2.M(i8);
                                this.g.f(i14, parsableByteArray2);
                                int i15 = this.n + i14;
                                this.n = i15;
                                if (j4 != -1) {
                                    long j6 = this.o * 1000000;
                                    FlacStreamMetadata flacStreamMetadata3 = this.j;
                                    String str2 = Util.a;
                                    this.g.g(j6 / flacStreamMetadata3.e, 1, i15, 0, null);
                                    this.n = 0;
                                    this.o = j4;
                                }
                                int length = parsableByteArray2.a.length - parsableByteArray2.c;
                                if (parsableByteArray2.a() < 16 && length < 16) {
                                    int a = parsableByteArray2.a();
                                    byte[] bArr4 = parsableByteArray2.a;
                                    System.arraycopy(bArr4, parsableByteArray2.b, bArr4, 0, a);
                                    parsableByteArray2.M(0);
                                    parsableByteArray2.L(a);
                                }
                                return 0;
                            }
                            d.d();
                            return 0;
                        }
                        extractorInput.j();
                        ParsableByteArray parsableByteArray3 = new ParsableByteArray(2);
                        extractorInput.n(parsableByteArray3.a, 0, 2);
                        int G = parsableByteArray3.G();
                        if ((G >> 2) == 16382) {
                            extractorInput.j();
                            this.l = G;
                            ExtractorOutput extractorOutput = this.f;
                            String str3 = Util.a;
                            long position = extractorInput.getPosition();
                            long g = extractorInput.g();
                            this.j.getClass();
                            FlacStreamMetadata flacStreamMetadata4 = this.j;
                            FlacStreamMetadata.SeekTable seekTable = flacStreamMetadata4.k;
                            if (seekTable != null && seekTable.a.length > 0) {
                                unseekable = new FlacSeekTableSeekMap(flacStreamMetadata4, position);
                                i = 0;
                            } else if (g != -1 && flacStreamMetadata4.j > 0) {
                                int i16 = this.l;
                                int i17 = flacStreamMetadata4.c;
                                p pVar = new p(10, flacStreamMetadata4);
                                FlacBinarySearchSeeker.FlacTimestampSeeker flacTimestampSeeker = new FlacBinarySearchSeeker.FlacTimestampSeeker(flacStreamMetadata4, i16);
                                long b = flacStreamMetadata4.b();
                                long j7 = flacStreamMetadata4.j;
                                int i18 = flacStreamMetadata4.d;
                                if (i18 > 0) {
                                    i = 0;
                                    j = position;
                                    j3 = ((i18 + i17) / 2) + 1;
                                } else {
                                    i = 0;
                                    j = position;
                                    int i19 = flacStreamMetadata4.a;
                                    if (i19 == flacStreamMetadata4.b && i19 > 0) {
                                        j2 = i19;
                                    } else {
                                        j2 = 4096;
                                    }
                                    j3 = 64 + (((j2 * flacStreamMetadata4.g) * flacStreamMetadata4.h) / 8);
                                }
                                ?? binarySearchSeeker = new BinarySearchSeeker(pVar, flacTimestampSeeker, b, j7, j, g, j3, Math.max(6, i17));
                                this.m = binarySearchSeeker;
                                unseekable = binarySearchSeeker.a;
                            } else {
                                i = 0;
                                unseekable = new SeekMap.Unseekable(flacStreamMetadata4.b());
                            }
                            extractorOutput.f(unseekable);
                            this.h = 5;
                            return i;
                        }
                        extractorInput.j();
                        throw ParserException.a(null, "First frame does not start with sync code.");
                    }
                    int i20 = 0;
                    FlacStreamMetadata flacStreamMetadata5 = this.j;
                    ?? obj2 = new Object();
                    obj2.a = flacStreamMetadata5;
                    boolean z5 = false;
                    while (!z5) {
                        extractorInput.j();
                        byte[] bArr5 = new byte[i3];
                        ParsableBitArray parsableBitArray = new ParsableBitArray(i3, bArr5);
                        int i21 = i20;
                        extractorInput.n(bArr5, i21, i3);
                        boolean f = parsableBitArray.f();
                        int g2 = parsableBitArray.g(i5);
                        int g3 = parsableBitArray.g(24) + i3;
                        if (g2 == 0) {
                            byte[] bArr6 = new byte[38];
                            extractorInput.readFully(bArr6, i21, 38);
                            obj2.a = new FlacStreamMetadata(i3, bArr6);
                        } else {
                            FlacStreamMetadata flacStreamMetadata6 = obj2.a;
                            if (flacStreamMetadata6 != null) {
                                Metadata metadata = flacStreamMetadata6.l;
                                if (g2 == i4) {
                                    ParsableByteArray parsableByteArray4 = new ParsableByteArray(g3);
                                    extractorInput.readFully(parsableByteArray4.a, 0, g3);
                                    obj2.a = new FlacStreamMetadata(flacStreamMetadata6.a, flacStreamMetadata6.b, flacStreamMetadata6.c, flacStreamMetadata6.d, flacStreamMetadata6.e, flacStreamMetadata6.g, flacStreamMetadata6.h, flacStreamMetadata6.j, FlacMetadataReader.b(parsableByteArray4), flacStreamMetadata6.l);
                                } else {
                                    if (g2 == i3) {
                                        ParsableByteArray parsableByteArray5 = new ParsableByteArray(g3);
                                        extractorInput.readFully(parsableByteArray5.a, 0, g3);
                                        parsableByteArray5.N(i3);
                                        Metadata a2 = VorbisUtil.a(Arrays.asList(androidx.media3.container.VorbisUtil.b(parsableByteArray5, false, false).a));
                                        if (metadata != null) {
                                            a2 = metadata.b(a2);
                                        }
                                        z = f;
                                        obj2.a = new FlacStreamMetadata(flacStreamMetadata6.a, flacStreamMetadata6.b, flacStreamMetadata6.c, flacStreamMetadata6.d, flacStreamMetadata6.e, flacStreamMetadata6.g, flacStreamMetadata6.h, flacStreamMetadata6.j, flacStreamMetadata6.k, a2);
                                    } else {
                                        z = f;
                                        if (g2 == 6) {
                                            if (z3) {
                                                extractorInput.k(g3);
                                            } else {
                                                ParsableByteArray parsableByteArray6 = new ParsableByteArray(g3);
                                                extractorInput.readFully(parsableByteArray6.a, 0, g3);
                                                parsableByteArray6.N(4);
                                                Metadata metadata2 = new Metadata(ImmutableList.t(PictureFrame.d(parsableByteArray6)));
                                                if (metadata != null) {
                                                    metadata2 = metadata.b(metadata2);
                                                }
                                                obj2.a = new FlacStreamMetadata(flacStreamMetadata6.a, flacStreamMetadata6.b, flacStreamMetadata6.c, flacStreamMetadata6.d, flacStreamMetadata6.e, flacStreamMetadata6.g, flacStreamMetadata6.h, flacStreamMetadata6.j, flacStreamMetadata6.k, metadata2);
                                            }
                                        } else {
                                            extractorInput.k(g3);
                                        }
                                    }
                                    FlacStreamMetadata flacStreamMetadata7 = obj2.a;
                                    String str4 = Util.a;
                                    this.j = flacStreamMetadata7;
                                    z5 = z;
                                    i3 = 4;
                                    i4 = 3;
                                    i5 = 7;
                                    i20 = 0;
                                }
                            } else {
                                fe.h();
                                return 0;
                            }
                        }
                        z = f;
                        FlacStreamMetadata flacStreamMetadata72 = obj2.a;
                        String str42 = Util.a;
                        this.j = flacStreamMetadata72;
                        z5 = z;
                        i3 = 4;
                        i4 = 3;
                        i5 = 7;
                        i20 = 0;
                    }
                    this.j.getClass();
                    this.k = Math.max(this.j.c, 6);
                    Format c = this.j.c(bArr, this.i);
                    TrackOutput trackOutput = this.g;
                    Format.Builder a3 = c.a();
                    a3.n = MimeTypes.l("audio/flac");
                    trackOutput.e(new Format(a3));
                    this.g.d(this.j.b());
                    this.h = 4;
                    return 0;
                }
                ParsableByteArray parsableByteArray7 = new ParsableByteArray(4);
                extractorInput.readFully(parsableByteArray7.a, 0, 4);
                if (parsableByteArray7.B() == 1716281667) {
                    this.h = 3;
                    return 0;
                }
                throw ParserException.a(null, "Failed to read FLAC stream marker.");
            }
            extractorInput.n(bArr, 0, bArr.length);
            extractorInput.j();
            this.h = 2;
            return 0;
        }
        boolean z6 = !this.c;
        extractorInput.j();
        long e = extractorInput.e();
        Metadata a4 = FlacMetadataReader.a(extractorInput, z6, z3);
        extractorInput.k((int) (extractorInput.e() - e));
        this.i = a4;
        this.h = 1;
        return 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
