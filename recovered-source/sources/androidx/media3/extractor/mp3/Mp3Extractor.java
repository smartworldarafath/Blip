package androidx.media3.extractor.mp3;

import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.ConstantBitrateSeekMap;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.Id3Peeker;
import androidx.media3.extractor.MpegAudioUtil;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.metadata.id3.MlltFrame;
import androidx.media3.extractor.metadata.id3.TextInformationFrame;
import androidx.media3.extractor.mp3.Mp3InfoReplayGain;
import com.google.common.base.Predicate;
import com.google.common.base.Predicates;
import com.google.common.math.LongMath;
import com.google.common.primitives.Ints;
import java.io.EOFException;
import java.math.RoundingMode;
import java.nio.charset.StandardCharsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Mp3Extractor implements Extractor {
    public final DiscardingTrackOutput e;
    public ExtractorOutput f;
    public TrackOutput g;
    public TrackOutput h;
    public int i;
    public Metadata j;
    public Metadata k;
    public long m;
    public long n;
    public long o;
    public int p;
    public Seeker q;
    public boolean r;
    public boolean s;
    public long t;
    public final ParsableByteArray a = new ParsableByteArray(10);
    public final MpegAudioUtil.Header b = new Object();
    public final GaplessInfoHolder c = new GaplessInfoHolder();
    public long l = -9223372036854775807L;
    public final Id3Peeker d = new Id3Peeker();

    /* JADX WARN: Type inference failed for: r0v1, types: [androidx.media3.extractor.MpegAudioUtil$Header, java.lang.Object] */
    public Mp3Extractor() {
        DiscardingTrackOutput discardingTrackOutput = new DiscardingTrackOutput();
        this.e = discardingTrackOutput;
        this.h = discardingTrackOutput;
        this.o = -1L;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        return i(extractorInput, true);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.i = 0;
        this.l = -9223372036854775807L;
        this.m = 0L;
        this.p = 0;
        this.o = -1L;
        this.t = j2;
        if (!(this.q instanceof IndexSeeker)) {
        } else {
            throw null;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.f = extractorOutput;
        TrackOutput s = extractorOutput.s(0, 1);
        this.g = s;
        this.h = s;
        this.f.n();
    }

    /* JADX WARN: Code restructure failed: missing block: B:106:0x03c2, code lost:
    
        if (((androidx.media3.extractor.metadata.id3.TextInformationFrame) r8).a.equals("TLEN") != false) goto L169;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x007b, code lost:
    
        if (r5 != 1231971951) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0389, code lost:
    
        if (r5.apply(r9) != false) goto L154;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0072  */
    /* JADX WARN: Removed duplicated region for block: B:165:0x01ac  */
    /* JADX WARN: Removed duplicated region for block: B:168:0x01b6  */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0095  */
    /* JADX WARN: Removed duplicated region for block: B:171:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:178:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:181:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:196:0x0280  */
    /* JADX WARN: Removed duplicated region for block: B:199:0x028f  */
    /* JADX WARN: Removed duplicated region for block: B:202:0x02ad  */
    /* JADX WARN: Removed duplicated region for block: B:215:0x0305  */
    /* JADX WARN: Removed duplicated region for block: B:227:0x029c  */
    /* JADX WARN: Removed duplicated region for block: B:233:0x025d  */
    /* JADX WARN: Removed duplicated region for block: B:234:0x01e5  */
    /* JADX WARN: Removed duplicated region for block: B:235:0x01d8  */
    /* JADX WARN: Removed duplicated region for block: B:236:0x01bd  */
    /* JADX WARN: Removed duplicated region for block: B:237:0x01b1  */
    /* JADX WARN: Removed duplicated region for block: B:240:0x0084  */
    /* JADX WARN: Removed duplicated region for block: B:24:0x0423  */
    /* JADX WARN: Removed duplicated region for block: B:27:0x048e  */
    /* JADX WARN: Removed duplicated region for block: B:32:0x04cb  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x05c5  */
    /* JADX WARN: Removed duplicated region for block: B:55:0x05f9  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x042e  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x0367  */
    /* JADX WARN: Type inference failed for: r2v70, types: [androidx.media3.extractor.SeekMap$Unseekable] */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        GaplessInfoHolder gaplessInfoHolder;
        Throwable th;
        int i;
        int i2;
        long j;
        long j2;
        long j3;
        long j4;
        long j5;
        int i3;
        ParsableByteArray parsableByteArray;
        int i4;
        int i5;
        int i6;
        ParsableByteArray parsableByteArray2;
        int m;
        int i7;
        long j6;
        long[] jArr;
        ParsableByteArray parsableByteArray3;
        Mp3InfoReplayGain mp3InfoReplayGain;
        int i8;
        int i9;
        int i10;
        int i11;
        Metadata metadata;
        long j7;
        Seeker constantBitrateSeeker;
        long j8;
        Mp3InfoReplayGain mp3InfoReplayGain2;
        Metadata metadata2;
        Metadata.Entry entry;
        Metadata.Entry entry2;
        char c;
        long D;
        Seeker mlltSeeker;
        Seeker constantBitrateSeeker2;
        Metadata metadata3;
        long j9;
        long j10;
        int z;
        this.g.getClass();
        String str = Util.a;
        int i12 = this.i;
        GaplessInfoHolder gaplessInfoHolder2 = this.c;
        MpegAudioUtil.Header header = this.b;
        if (i12 == 0) {
            try {
                i(extractorInput, false);
            } catch (EOFException unused) {
                gaplessInfoHolder = gaplessInfoHolder2;
                th = null;
                i = -1;
                i2 = -1;
                j = 1000000;
                j2 = 1;
                j3 = 0;
                j4 = -9223372036854775807L;
            }
        }
        Seeker seeker = this.q;
        th = null;
        ParsableByteArray parsableByteArray4 = this.a;
        j = 1000000;
        int i13 = 1;
        if (seeker == null) {
            ParsableByteArray parsableByteArray5 = new ParsableByteArray(header.c);
            j2 = 1;
            extractorInput.n(parsableByteArray5.a, 0, header.c);
            int i14 = header.a & 1;
            int i15 = header.e;
            if (i14 != 0) {
                if (i15 != 1) {
                    i5 = 36;
                    j3 = 0;
                    if (parsableByteArray5.c >= i5 + 4) {
                        parsableByteArray5.M(i5);
                        i6 = parsableByteArray5.m();
                        if (i6 != 1483304551) {
                        }
                        if (i6 != 1231971951) {
                            if (i6 != 1447187017) {
                                if (i6 != 1483304551) {
                                    extractorInput.j();
                                    constantBitrateSeeker = null;
                                    parsableByteArray2 = parsableByteArray4;
                                    gaplessInfoHolder = gaplessInfoHolder2;
                                }
                            } else {
                                long g = extractorInput.g();
                                long position = extractorInput.getPosition();
                                parsableByteArray5.N(6);
                                long j11 = position + header.c;
                                long m2 = j11 + parsableByteArray5.m();
                                int m3 = parsableByteArray5.m();
                                if (m3 <= 0) {
                                    constantBitrateSeeker = null;
                                    parsableByteArray2 = parsableByteArray4;
                                } else {
                                    long H = Util.H(header.d, (m3 * header.g) - 1);
                                    int G = parsableByteArray5.G();
                                    int G2 = parsableByteArray5.G();
                                    int G3 = parsableByteArray5.G();
                                    parsableByteArray5.N(2);
                                    long[] jArr2 = new long[G];
                                    long[] jArr3 = new long[G];
                                    long j12 = position + header.c;
                                    int i16 = 0;
                                    while (true) {
                                        if (i16 < G) {
                                            ParsableByteArray parsableByteArray6 = parsableByteArray5;
                                            parsableByteArray2 = parsableByteArray4;
                                            jArr2[i16] = (i16 * H) / G;
                                            jArr3[i16] = j12;
                                            if (G3 != i13) {
                                                if (G3 != 2) {
                                                    if (G3 != 3) {
                                                        if (G3 != 4) {
                                                            constantBitrateSeeker = null;
                                                            break;
                                                        }
                                                        z = parsableByteArray6.D();
                                                    } else {
                                                        z = parsableByteArray6.C();
                                                    }
                                                } else {
                                                    z = parsableByteArray6.G();
                                                }
                                            } else {
                                                z = parsableByteArray6.z();
                                            }
                                            j12 += z * G2;
                                            i16++;
                                            parsableByteArray4 = parsableByteArray2;
                                            parsableByteArray5 = parsableByteArray6;
                                            G = G;
                                            i13 = 1;
                                        } else {
                                            parsableByteArray2 = parsableByteArray4;
                                            if (g != -1 && g != m2) {
                                                StringBuilder sb = new StringBuilder("VBRI data size mismatch: ");
                                                sb.append(g);
                                                sb.append(", ");
                                                j9 = m2;
                                                sb.append(j9);
                                                Log.f("VbriSeeker", sb.toString());
                                            } else {
                                                j9 = m2;
                                            }
                                            if (j9 != j12) {
                                                Log.f("VbriSeeker", "VBRI bytes and ToC mismatch (using max): " + j9 + ", " + j12 + "\nSeeking will be inaccurate.");
                                                j10 = Math.max(j9, j12);
                                            } else {
                                                j10 = j9;
                                            }
                                            constantBitrateSeeker = new VbriSeeker(jArr2, jArr3, H, j11, j10);
                                        }
                                    }
                                }
                                extractorInput.k(header.c);
                                gaplessInfoHolder = gaplessInfoHolder2;
                            }
                            metadata2 = this.j;
                            long position2 = extractorInput.getPosition();
                            if (metadata2 != null) {
                                Predicate a = Predicates.a();
                                Metadata.Entry[] entryArr = metadata2.a;
                                int length = entryArr.length;
                                int i17 = 0;
                                while (true) {
                                    if (i17 < length) {
                                        Metadata.Entry entry3 = entryArr[i17];
                                        if (MlltFrame.class.isAssignableFrom(entry3.getClass())) {
                                            entry = (Metadata.Entry) MlltFrame.class.cast(entry3);
                                        }
                                        entry = null;
                                        if (entry != null) {
                                            break;
                                        }
                                        i17++;
                                    } else {
                                        entry = null;
                                        break;
                                    }
                                }
                                MlltFrame mlltFrame = (MlltFrame) entry;
                                if (mlltFrame != null) {
                                    int[] iArr = mlltFrame.e;
                                    Metadata.Entry[] entryArr2 = metadata2.a;
                                    int length2 = entryArr2.length;
                                    int i18 = 0;
                                    while (true) {
                                        if (i18 < length2) {
                                            Metadata.Entry entry4 = entryArr2[i18];
                                            if (TextInformationFrame.class.isAssignableFrom(entry4.getClass())) {
                                                entry2 = (Metadata.Entry) TextInformationFrame.class.cast(entry4);
                                            }
                                            entry2 = null;
                                            if (entry2 != null) {
                                                break;
                                            }
                                            i18++;
                                        } else {
                                            entry2 = null;
                                            break;
                                        }
                                    }
                                    TextInformationFrame textInformationFrame = (TextInformationFrame) entry2;
                                    if (textInformationFrame == null) {
                                        D = -9223372036854775807L;
                                        c = 0;
                                    } else {
                                        c = 0;
                                        D = Util.D(Long.parseLong((String) textInformationFrame.c.get(0)));
                                    }
                                    int length3 = iArr.length;
                                    int i19 = length3 + 1;
                                    long[] jArr4 = new long[i19];
                                    long[] jArr5 = new long[i19];
                                    jArr4[c] = position2;
                                    jArr5[c] = 0;
                                    long j13 = position2;
                                    long j14 = 0;
                                    int i20 = 1;
                                    while (i20 <= length3) {
                                        int i21 = i20 - 1;
                                        int i22 = i20;
                                        j13 += mlltFrame.c + iArr[i21];
                                        j14 += mlltFrame.d + mlltFrame.f[i21];
                                        jArr4[i22] = j13;
                                        jArr5[i22] = j14;
                                        i20 = i22 + 1;
                                        length3 = length3;
                                    }
                                    mlltSeeker = new MlltSeeker(D, jArr4, jArr5);
                                    if (!this.r) {
                                        constantBitrateSeeker2 = new SeekMap.Unseekable(-9223372036854775807L);
                                        parsableByteArray = parsableByteArray2;
                                    } else {
                                        if (mlltSeeker != null) {
                                            constantBitrateSeeker2 = mlltSeeker;
                                            parsableByteArray = parsableByteArray2;
                                        } else if (constantBitrateSeeker != null) {
                                            parsableByteArray = parsableByteArray2;
                                            constantBitrateSeeker2 = constantBitrateSeeker;
                                        } else {
                                            parsableByteArray = parsableByteArray2;
                                            extractorInput.n(parsableByteArray.a, 0, 4);
                                            parsableByteArray.M(0);
                                            header.a(parsableByteArray.m());
                                            constantBitrateSeeker2 = new ConstantBitrateSeeker(extractorInput.g(), extractorInput.getPosition(), header.f, header.c, false, true, -9223372036854775807L);
                                        }
                                        if (!(constantBitrateSeeker2 instanceof ConstantBitrateSeeker)) {
                                            constantBitrateSeeker2.b();
                                        }
                                    }
                                    this.q = constantBitrateSeeker2;
                                    this.g.d(constantBitrateSeeker2.g());
                                    this.f.f(this.q);
                                    metadata3 = this.j;
                                    Metadata metadata4 = this.k;
                                    if (metadata3 != null) {
                                        if (metadata4 != null) {
                                            metadata3 = metadata3.b(metadata4);
                                        }
                                        metadata4 = metadata3;
                                    }
                                    Format.Builder builder = new Format.Builder();
                                    builder.n = MimeTypes.l("audio/mpeg");
                                    builder.o = MimeTypes.l(header.b);
                                    builder.p = 4096;
                                    builder.I = header.e;
                                    builder.K = header.d;
                                    builder.M = gaplessInfoHolder.a;
                                    builder.N = gaplessInfoHolder.b;
                                    builder.l = metadata4;
                                    if (this.q.f() != -2147483647) {
                                        builder.i = this.q.f();
                                    }
                                    this.h.e(new Format(builder));
                                    this.n = extractorInput.getPosition();
                                }
                            }
                            mlltSeeker = null;
                            if (!this.r) {
                            }
                            this.q = constantBitrateSeeker2;
                            this.g.d(constantBitrateSeeker2.g());
                            this.f.f(this.q);
                            metadata3 = this.j;
                            Metadata metadata42 = this.k;
                            if (metadata3 != null) {
                            }
                            Format.Builder builder2 = new Format.Builder();
                            builder2.n = MimeTypes.l("audio/mpeg");
                            builder2.o = MimeTypes.l(header.b);
                            builder2.p = 4096;
                            builder2.I = header.e;
                            builder2.K = header.d;
                            builder2.M = gaplessInfoHolder.a;
                            builder2.N = gaplessInfoHolder.b;
                            builder2.l = metadata42;
                            if (this.q.f() != -2147483647) {
                            }
                            this.h.e(new Format(builder2));
                            this.n = extractorInput.getPosition();
                        }
                        parsableByteArray2 = parsableByteArray4;
                        m = parsableByteArray5.m();
                        if ((m & 1) == 0) {
                            i7 = parsableByteArray5.D();
                        } else {
                            i7 = -1;
                        }
                        if ((m & 2) == 0) {
                            j6 = parsableByteArray5.B();
                        } else {
                            j6 = -1;
                        }
                        if ((m & 4) != 4) {
                            long[] jArr6 = new long[100];
                            for (int i23 = 0; i23 < 100; i23++) {
                                jArr6[i23] = parsableByteArray5.z();
                            }
                            jArr = jArr6;
                        } else {
                            jArr = null;
                        }
                        if ((m & 8) == 0) {
                            parsableByteArray3 = parsableByteArray5;
                            parsableByteArray3.N(4);
                        } else {
                            parsableByteArray3 = parsableByteArray5;
                        }
                        if (parsableByteArray3.a() < 24) {
                            String x = parsableByteArray3.x(9, StandardCharsets.UTF_8);
                            parsableByteArray3.N(2);
                            float intBitsToFloat = Float.intBitsToFloat(parsableByteArray3.m());
                            int G4 = parsableByteArray3.G();
                            int G5 = parsableByteArray3.G();
                            Mp3InfoReplayGain.GainField a2 = Mp3InfoReplayGain.GainField.a(G4);
                            Mp3InfoReplayGain.GainField a3 = Mp3InfoReplayGain.GainField.a(G5);
                            if (intBitsToFloat <= 0.0f && a2 == null && a3 == null) {
                                mp3InfoReplayGain2 = null;
                            } else {
                                mp3InfoReplayGain2 = new Mp3InfoReplayGain(intBitsToFloat, a2, a3);
                            }
                            parsableByteArray3.N(2);
                            int C = parsableByteArray3.C();
                            int i24 = (16773120 & C) >> 12;
                            int i25 = C & 4095;
                            if (x.startsWith("LAME") || x.startsWith("Lavf") || x.startsWith("Lavc")) {
                                i24 += 529;
                                i25 = Math.max(0, i25 - 529);
                            }
                            i9 = i25;
                            i8 = i24;
                            mp3InfoReplayGain = mp3InfoReplayGain2;
                        } else {
                            mp3InfoReplayGain = null;
                            i8 = -1;
                            i9 = -1;
                        }
                        long j15 = i7;
                        XingFrame xingFrame = new XingFrame(this.b, j15, j6, jArr, mp3InfoReplayGain, i8, i9);
                        gaplessInfoHolder = gaplessInfoHolder2;
                        long j16 = j6;
                        i10 = i8;
                        i11 = i9;
                        if ((gaplessInfoHolder.a != -1 || gaplessInfoHolder.b == -1) && i10 != -1 && i11 != -1) {
                            gaplessInfoHolder.a = i10;
                            gaplessInfoHolder.b = i11;
                        }
                        if (mp3InfoReplayGain == null) {
                            metadata = new Metadata(mp3InfoReplayGain);
                        } else {
                            metadata = null;
                        }
                        this.k = metadata;
                        long position3 = extractorInput.getPosition();
                        extractorInput.k(header.c);
                        MpegAudioUtil.Header header2 = xingFrame.a;
                        if (i6 != 1483304551) {
                            long g2 = extractorInput.g();
                            long a4 = xingFrame.a();
                            if (a4 != -9223372036854775807L) {
                                if (j16 != -1 && g2 != -1 && position3 + j16 != g2) {
                                    long j17 = g2 - position3;
                                    Log.e("XingSeeker", "Data size mismatch between stream (" + j17 + ") and Xing frame (" + j16 + "), using smaller value.");
                                    j8 = Math.min(j16, j17);
                                } else {
                                    j8 = j16;
                                }
                                constantBitrateSeeker = new XingSeeker(position3, header2.c, a4, j8, jArr);
                                metadata2 = this.j;
                                long position22 = extractorInput.getPosition();
                                if (metadata2 != null) {
                                }
                                mlltSeeker = null;
                                if (!this.r) {
                                }
                                this.q = constantBitrateSeeker2;
                                this.g.d(constantBitrateSeeker2.g());
                                this.f.f(this.q);
                                metadata3 = this.j;
                                Metadata metadata422 = this.k;
                                if (metadata3 != null) {
                                }
                                Format.Builder builder22 = new Format.Builder();
                                builder22.n = MimeTypes.l("audio/mpeg");
                                builder22.o = MimeTypes.l(header.b);
                                builder22.p = 4096;
                                builder22.I = header.e;
                                builder22.K = header.d;
                                builder22.M = gaplessInfoHolder.a;
                                builder22.N = gaplessInfoHolder.b;
                                builder22.l = metadata422;
                                if (this.q.f() != -2147483647) {
                                }
                                this.h.e(new Format(builder22));
                                this.n = extractorInput.getPosition();
                            }
                            constantBitrateSeeker = null;
                            metadata2 = this.j;
                            long position222 = extractorInput.getPosition();
                            if (metadata2 != null) {
                            }
                            mlltSeeker = null;
                            if (!this.r) {
                            }
                            this.q = constantBitrateSeeker2;
                            this.g.d(constantBitrateSeeker2.g());
                            this.f.f(this.q);
                            metadata3 = this.j;
                            Metadata metadata4222 = this.k;
                            if (metadata3 != null) {
                            }
                            Format.Builder builder222 = new Format.Builder();
                            builder222.n = MimeTypes.l("audio/mpeg");
                            builder222.o = MimeTypes.l(header.b);
                            builder222.p = 4096;
                            builder222.I = header.e;
                            builder222.K = header.d;
                            builder222.M = gaplessInfoHolder.a;
                            builder222.N = gaplessInfoHolder.b;
                            builder222.l = metadata4222;
                            if (this.q.f() != -2147483647) {
                            }
                            this.h.e(new Format(builder222));
                            this.n = extractorInput.getPosition();
                        } else {
                            long g3 = extractorInput.g();
                            long a5 = xingFrame.a();
                            if (a5 != -9223372036854775807L) {
                                if (j16 != -1) {
                                    g3 = position3 + j16;
                                    j7 = j16 - header2.c;
                                } else if (g3 != -1) {
                                    j7 = (g3 - position3) - header2.c;
                                }
                                long j18 = g3;
                                long j19 = j7;
                                int a6 = Mp3Util.a(j19, a5);
                                if (a6 != -2147483647) {
                                    constantBitrateSeeker = new ConstantBitrateSeeker(j18, position3 + header2.c, a6, Ints.b(LongMath.b(j19, j15, RoundingMode.HALF_UP)), false, true, a5);
                                    metadata2 = this.j;
                                    long position2222 = extractorInput.getPosition();
                                    if (metadata2 != null) {
                                    }
                                    mlltSeeker = null;
                                    if (!this.r) {
                                    }
                                    this.q = constantBitrateSeeker2;
                                    this.g.d(constantBitrateSeeker2.g());
                                    this.f.f(this.q);
                                    metadata3 = this.j;
                                    Metadata metadata42222 = this.k;
                                    if (metadata3 != null) {
                                    }
                                    Format.Builder builder2222 = new Format.Builder();
                                    builder2222.n = MimeTypes.l("audio/mpeg");
                                    builder2222.o = MimeTypes.l(header.b);
                                    builder2222.p = 4096;
                                    builder2222.I = header.e;
                                    builder2222.K = header.d;
                                    builder2222.M = gaplessInfoHolder.a;
                                    builder2222.N = gaplessInfoHolder.b;
                                    builder2222.l = metadata42222;
                                    if (this.q.f() != -2147483647) {
                                    }
                                    this.h.e(new Format(builder2222));
                                    this.n = extractorInput.getPosition();
                                }
                            }
                            constantBitrateSeeker = null;
                            metadata2 = this.j;
                            long position22222 = extractorInput.getPosition();
                            if (metadata2 != null) {
                            }
                            mlltSeeker = null;
                            if (!this.r) {
                            }
                            this.q = constantBitrateSeeker2;
                            this.g.d(constantBitrateSeeker2.g());
                            this.f.f(this.q);
                            metadata3 = this.j;
                            Metadata metadata422222 = this.k;
                            if (metadata3 != null) {
                            }
                            Format.Builder builder22222 = new Format.Builder();
                            builder22222.n = MimeTypes.l("audio/mpeg");
                            builder22222.o = MimeTypes.l(header.b);
                            builder22222.p = 4096;
                            builder22222.I = header.e;
                            builder22222.K = header.d;
                            builder22222.M = gaplessInfoHolder.a;
                            builder22222.N = gaplessInfoHolder.b;
                            builder22222.l = metadata422222;
                            if (this.q.f() != -2147483647) {
                            }
                            this.h.e(new Format(builder22222));
                            this.n = extractorInput.getPosition();
                        }
                    }
                    if (parsableByteArray5.c >= 40) {
                        parsableByteArray5.M(36);
                        if (parsableByteArray5.m() == 1447187017) {
                            i6 = 1447187017;
                            if (i6 != 1231971951) {
                            }
                            parsableByteArray2 = parsableByteArray4;
                            m = parsableByteArray5.m();
                            if ((m & 1) == 0) {
                            }
                            if ((m & 2) == 0) {
                            }
                            if ((m & 4) != 4) {
                            }
                            if ((m & 8) == 0) {
                            }
                            if (parsableByteArray3.a() < 24) {
                            }
                            long j152 = i7;
                            XingFrame xingFrame2 = new XingFrame(this.b, j152, j6, jArr, mp3InfoReplayGain, i8, i9);
                            gaplessInfoHolder = gaplessInfoHolder2;
                            long j162 = j6;
                            i10 = i8;
                            i11 = i9;
                            if (gaplessInfoHolder.a != -1) {
                            }
                            gaplessInfoHolder.a = i10;
                            gaplessInfoHolder.b = i11;
                            if (mp3InfoReplayGain == null) {
                            }
                            this.k = metadata;
                            long position32 = extractorInput.getPosition();
                            extractorInput.k(header.c);
                            MpegAudioUtil.Header header22 = xingFrame2.a;
                            if (i6 != 1483304551) {
                            }
                        }
                    }
                    i6 = 0;
                    if (i6 != 1231971951) {
                    }
                    parsableByteArray2 = parsableByteArray4;
                    m = parsableByteArray5.m();
                    if ((m & 1) == 0) {
                    }
                    if ((m & 2) == 0) {
                    }
                    if ((m & 4) != 4) {
                    }
                    if ((m & 8) == 0) {
                    }
                    if (parsableByteArray3.a() < 24) {
                    }
                    long j1522 = i7;
                    XingFrame xingFrame22 = new XingFrame(this.b, j1522, j6, jArr, mp3InfoReplayGain, i8, i9);
                    gaplessInfoHolder = gaplessInfoHolder2;
                    long j1622 = j6;
                    i10 = i8;
                    i11 = i9;
                    if (gaplessInfoHolder.a != -1) {
                    }
                    gaplessInfoHolder.a = i10;
                    gaplessInfoHolder.b = i11;
                    if (mp3InfoReplayGain == null) {
                    }
                    this.k = metadata;
                    long position322 = extractorInput.getPosition();
                    extractorInput.k(header.c);
                    MpegAudioUtil.Header header222 = xingFrame22.a;
                    if (i6 != 1483304551) {
                    }
                }
                i5 = 21;
                j3 = 0;
                if (parsableByteArray5.c >= i5 + 4) {
                }
                if (parsableByteArray5.c >= 40) {
                }
                i6 = 0;
                if (i6 != 1231971951) {
                }
                parsableByteArray2 = parsableByteArray4;
                m = parsableByteArray5.m();
                if ((m & 1) == 0) {
                }
                if ((m & 2) == 0) {
                }
                if ((m & 4) != 4) {
                }
                if ((m & 8) == 0) {
                }
                if (parsableByteArray3.a() < 24) {
                }
                long j15222 = i7;
                XingFrame xingFrame222 = new XingFrame(this.b, j15222, j6, jArr, mp3InfoReplayGain, i8, i9);
                gaplessInfoHolder = gaplessInfoHolder2;
                long j16222 = j6;
                i10 = i8;
                i11 = i9;
                if (gaplessInfoHolder.a != -1) {
                }
                gaplessInfoHolder.a = i10;
                gaplessInfoHolder.b = i11;
                if (mp3InfoReplayGain == null) {
                }
                this.k = metadata;
                long position3222 = extractorInput.getPosition();
                extractorInput.k(header.c);
                MpegAudioUtil.Header header2222 = xingFrame222.a;
                if (i6 != 1483304551) {
                }
            } else {
                if (i15 == 1) {
                    i5 = 13;
                    j3 = 0;
                    if (parsableByteArray5.c >= i5 + 4) {
                    }
                    if (parsableByteArray5.c >= 40) {
                    }
                    i6 = 0;
                    if (i6 != 1231971951) {
                    }
                    parsableByteArray2 = parsableByteArray4;
                    m = parsableByteArray5.m();
                    if ((m & 1) == 0) {
                    }
                    if ((m & 2) == 0) {
                    }
                    if ((m & 4) != 4) {
                    }
                    if ((m & 8) == 0) {
                    }
                    if (parsableByteArray3.a() < 24) {
                    }
                    long j152222 = i7;
                    XingFrame xingFrame2222 = new XingFrame(this.b, j152222, j6, jArr, mp3InfoReplayGain, i8, i9);
                    gaplessInfoHolder = gaplessInfoHolder2;
                    long j162222 = j6;
                    i10 = i8;
                    i11 = i9;
                    if (gaplessInfoHolder.a != -1) {
                    }
                    gaplessInfoHolder.a = i10;
                    gaplessInfoHolder.b = i11;
                    if (mp3InfoReplayGain == null) {
                    }
                    this.k = metadata;
                    long position32222 = extractorInput.getPosition();
                    extractorInput.k(header.c);
                    MpegAudioUtil.Header header22222 = xingFrame2222.a;
                    if (i6 != 1483304551) {
                    }
                }
                i5 = 21;
                j3 = 0;
                if (parsableByteArray5.c >= i5 + 4) {
                }
                if (parsableByteArray5.c >= 40) {
                }
                i6 = 0;
                if (i6 != 1231971951) {
                }
                parsableByteArray2 = parsableByteArray4;
                m = parsableByteArray5.m();
                if ((m & 1) == 0) {
                }
                if ((m & 2) == 0) {
                }
                if ((m & 4) != 4) {
                }
                if ((m & 8) == 0) {
                }
                if (parsableByteArray3.a() < 24) {
                }
                long j1522222 = i7;
                XingFrame xingFrame22222 = new XingFrame(this.b, j1522222, j6, jArr, mp3InfoReplayGain, i8, i9);
                gaplessInfoHolder = gaplessInfoHolder2;
                long j1622222 = j6;
                i10 = i8;
                i11 = i9;
                if (gaplessInfoHolder.a != -1) {
                }
                gaplessInfoHolder.a = i10;
                gaplessInfoHolder.b = i11;
                if (mp3InfoReplayGain == null) {
                }
                this.k = metadata;
                long position322222 = extractorInput.getPosition();
                extractorInput.k(header.c);
                MpegAudioUtil.Header header222222 = xingFrame22222.a;
                if (i6 != 1483304551) {
                }
            }
        } else {
            parsableByteArray = parsableByteArray4;
            gaplessInfoHolder = gaplessInfoHolder2;
            j2 = 1;
            j3 = 0;
            if (this.n != 0) {
                long position4 = extractorInput.getPosition();
                long j20 = this.n;
                if (position4 < j20) {
                    extractorInput.k((int) (j20 - position4));
                }
            }
        }
        if (this.p == 0) {
            extractorInput.j();
            if (h(extractorInput)) {
                j4 = -9223372036854775807L;
                i = -1;
                i2 = -1;
                if (i2 == i) {
                    Seeker seeker2 = this.q;
                    if (seeker2 instanceof IndexSeeker) {
                        long j21 = this.m - j2;
                        if (j21 >= j3) {
                            int i26 = gaplessInfoHolder.a;
                            if (i26 != i && (i3 = gaplessInfoHolder.b) != i) {
                                j21 = (j21 - i26) - i3;
                            }
                            if (j21 >= j3) {
                                j5 = ((j21 * j) / header.d) + this.l;
                                if (seeker2.g() != j5) {
                                    ((IndexSeeker) this.q).getClass();
                                    throw th;
                                }
                            }
                        }
                        j5 = j4;
                        if (seeker2.g() != j5) {
                        }
                    }
                }
                return i2;
            }
            parsableByteArray.M(0);
            int m4 = parsableByteArray.m();
            if (((-128000) & m4) == (this.i & (-128000))) {
                if (MpegAudioUtil.a(m4) == -1) {
                    i4 = 1;
                    j4 = -9223372036854775807L;
                } else {
                    header.a(m4);
                    j4 = -9223372036854775807L;
                    if (this.l == -9223372036854775807L) {
                        this.l = this.q.c(extractorInput.getPosition());
                    }
                    this.p = header.c;
                    this.o = extractorInput.getPosition() + header.c;
                    if (this.q instanceof IndexSeeker) {
                        long j22 = ((this.m + header.g) * 1000000) / header.d;
                        throw null;
                    }
                }
            } else {
                j4 = -9223372036854775807L;
                i4 = 1;
            }
            extractorInput.k(i4);
            this.i = 0;
            i = -1;
            i2 = 0;
            if (i2 == i) {
            }
            return i2;
        }
        j4 = -9223372036854775807L;
        int c2 = this.h.c(extractorInput, this.p, true);
        if (c2 != -1) {
            int i27 = this.p - c2;
            this.p = i27;
            if (i27 <= 0) {
                this.h.g(this.l + ((this.m * 1000000) / header.d), 1, header.c, 0, null);
                this.m += header.g;
                this.p = 0;
                i2 = 0;
                i = -1;
                if (i2 == i) {
                }
                return i2;
            }
            i = -1;
            i2 = 0;
            if (i2 == i) {
            }
            return i2;
        }
        i = -1;
        i2 = -1;
        if (i2 == i) {
        }
        return i2;
    }

    public final void g() {
        SeekMap seekMap = this.q;
        if ((seekMap instanceof ConstantBitrateSeeker) && ((ConstantBitrateSeekMap) seekMap).b()) {
            long j = this.o;
            if (j != -1 && j != this.q.a()) {
                ConstantBitrateSeeker constantBitrateSeeker = (ConstantBitrateSeeker) this.q;
                this.q = new ConstantBitrateSeeker(this.o, constantBitrateSeeker.b, constantBitrateSeeker.e, constantBitrateSeeker.c, constantBitrateSeeker.g, false, constantBitrateSeeker.i);
                ExtractorOutput extractorOutput = this.f;
                extractorOutput.getClass();
                extractorOutput.f(this.q);
                TrackOutput trackOutput = this.g;
                trackOutput.getClass();
                trackOutput.d(this.q.g());
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0018, code lost:
    
        if (r9.e() > (r2 - 4)) goto L12;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean h(ExtractorInput extractorInput) {
        Seeker seeker = this.q;
        if (seeker != null) {
            long a = seeker.a();
            if (a != -1) {
            }
        }
        try {
            return !extractorInput.d(this.a.a, 0, 4, true);
        } catch (EOFException unused) {
            return true;
        }
    }

    public final boolean i(ExtractorInput extractorInput, boolean z) {
        int i;
        int i2;
        int a;
        extractorInput.j();
        if (extractorInput.getPosition() == 0) {
            Metadata a2 = this.d.a(extractorInput, null, 131072);
            this.j = a2;
            if (a2 != null) {
                this.c.b(a2);
            }
            i = (int) extractorInput.e();
            if (!z) {
                extractorInput.k(i);
            }
            i2 = 0;
        } else {
            i = 0;
            i2 = 0;
        }
        int i3 = i2;
        int i4 = i3;
        while (true) {
            if (h(extractorInput)) {
                if (i3 <= 0) {
                    g();
                    throw new EOFException();
                }
            } else {
                ParsableByteArray parsableByteArray = this.a;
                parsableByteArray.M(0);
                int m = parsableByteArray.m();
                if ((i2 != 0 && ((-128000) & m) != (i2 & (-128000))) || (a = MpegAudioUtil.a(m)) == -1) {
                    int i5 = i4 + 1;
                    if (i4 == 131072) {
                        if (z) {
                            return false;
                        }
                        g();
                        throw new EOFException();
                    }
                    if (z) {
                        extractorInput.j();
                        extractorInput.f(i + i5);
                    } else {
                        extractorInput.k(1);
                    }
                    i3 = 0;
                    i4 = i5;
                    i2 = 0;
                } else {
                    i3++;
                    if (i3 == 1) {
                        this.b.a(m);
                        i2 = m;
                    } else if (i3 == 4) {
                        break;
                    }
                    extractorInput.f(a - 4);
                }
            }
        }
        if (z) {
            extractorInput.k(i + i4);
        } else {
            extractorInput.j();
        }
        this.i = i2;
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
