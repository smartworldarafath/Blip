package androidx.media3.extractor.flv;

import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.DiscardingTrackOutput;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.IndexSeekMap;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.flv.TagPayloadReader;
import defpackage.q;
import io.sentry.d;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class FlvExtractor implements Extractor {
    public final ParsableByteArray a = new ParsableByteArray(4);
    public final ParsableByteArray b = new ParsableByteArray(9);
    public final ParsableByteArray c = new ParsableByteArray(11);
    public final ParsableByteArray d = new ParsableByteArray();
    public final ScriptTagPayloadReader e;
    public ExtractorOutput f;
    public int g;
    public boolean h;
    public long i;
    public int j;
    public int k;
    public int l;
    public long m;
    public boolean n;
    public AudioTagPayloadReader o;
    public VideoTagPayloadReader p;

    /* JADX WARN: Type inference failed for: r0v4, types: [androidx.media3.extractor.flv.TagPayloadReader, androidx.media3.extractor.flv.ScriptTagPayloadReader] */
    public FlvExtractor() {
        ?? tagPayloadReader = new TagPayloadReader(new DiscardingTrackOutput());
        tagPayloadReader.b = -9223372036854775807L;
        tagPayloadReader.c = new long[0];
        tagPayloadReader.d = new long[0];
        this.e = tagPayloadReader;
        this.g = 1;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = this.a;
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        defaultExtractorInput.d(parsableByteArray.a, 0, 3, false);
        parsableByteArray.M(0);
        if (parsableByteArray.C() == 4607062) {
            defaultExtractorInput.d(parsableByteArray.a, 0, 2, false);
            parsableByteArray.M(0);
            if ((parsableByteArray.G() & 250) == 0) {
                defaultExtractorInput.d(parsableByteArray.a, 0, 4, false);
                parsableByteArray.M(0);
                int m = parsableByteArray.m();
                defaultExtractorInput.f = 0;
                defaultExtractorInput.p(m, false);
                defaultExtractorInput.d(parsableByteArray.a, 0, 4, false);
                parsableByteArray.M(0);
                if (parsableByteArray.m() == 0) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        if (j == 0) {
            this.g = 1;
            this.h = false;
        } else {
            this.g = 3;
        }
        this.j = 0;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.f = extractorOutput;
    }

    /* JADX WARN: Removed duplicated region for block: B:121:0x02a5  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x03b8  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x03bc  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x03c8 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:79:0x0009 A[SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r4v45, types: [androidx.media3.extractor.flv.TagPayloadReader, androidx.media3.extractor.flv.AudioTagPayloadReader] */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        long j;
        long j2;
        int i;
        boolean z;
        boolean z2;
        int i2;
        boolean z3;
        long j3;
        String str;
        boolean z4;
        int i3;
        this.f.getClass();
        while (true) {
            int i4 = this.g;
            boolean z5 = true;
            boolean z6 = false;
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 3) {
                        if (i4 == 4) {
                            boolean z7 = this.h;
                            ScriptTagPayloadReader scriptTagPayloadReader = this.e;
                            if (z7) {
                                j = this.i + this.m;
                            } else if (scriptTagPayloadReader.b == -9223372036854775807L) {
                                j2 = 0;
                                i = this.k;
                                if (i != 8 && this.o != null) {
                                    if (!this.n) {
                                        this.f.f(new SeekMap.Unseekable(-9223372036854775807L));
                                        this.n = true;
                                    }
                                    AudioTagPayloadReader audioTagPayloadReader = this.o;
                                    ParsableByteArray g = g(extractorInput);
                                    TrackOutput trackOutput = audioTagPayloadReader.a;
                                    if (!audioTagPayloadReader.b) {
                                        int z8 = g.z();
                                        int i5 = (z8 >> 4) & 15;
                                        audioTagPayloadReader.d = i5;
                                        if (i5 == 2) {
                                            int i6 = AudioTagPayloadReader.e[(z8 >> 2) & 3];
                                            Format.Builder builder = new Format.Builder();
                                            builder.n = MimeTypes.l("video/x-flv");
                                            builder.o = MimeTypes.l("audio/mpeg");
                                            builder.I = 1;
                                            builder.K = i6;
                                            trackOutput.e(new Format(builder));
                                            audioTagPayloadReader.c = true;
                                        } else if (i5 != 7 && i5 != 8) {
                                            if (i5 != 10) {
                                                throw new TagPayloadReader.UnsupportedFormatException("Audio format not supported: " + audioTagPayloadReader.d);
                                            }
                                        } else {
                                            if (i5 == 7) {
                                                str = "audio/g711-alaw";
                                            } else {
                                                str = "audio/g711-mlaw";
                                            }
                                            Format.Builder builder2 = new Format.Builder();
                                            builder2.n = MimeTypes.l("video/x-flv");
                                            builder2.o = MimeTypes.l(str);
                                            builder2.I = 1;
                                            builder2.K = 8000;
                                            trackOutput.e(new Format(builder2));
                                            audioTagPayloadReader.c = true;
                                        }
                                        audioTagPayloadReader.b = true;
                                    } else {
                                        g.N(1);
                                    }
                                    TrackOutput trackOutput2 = audioTagPayloadReader.a;
                                    if (audioTagPayloadReader.d == 2) {
                                        int a = g.a();
                                        trackOutput2.f(a, g);
                                        audioTagPayloadReader.a.g(j2, 1, a, 0, null);
                                    } else {
                                        int z9 = g.z();
                                        if (z9 == 0 && !audioTagPayloadReader.c) {
                                            int a2 = g.a();
                                            byte[] bArr = new byte[a2];
                                            g.k(bArr, 0, a2);
                                            AacUtil.Config b = AacUtil.b(new ParsableBitArray(a2, bArr), false);
                                            Format.Builder builder3 = new Format.Builder();
                                            builder3.n = MimeTypes.l("video/x-flv");
                                            builder3.o = MimeTypes.l("audio/mp4a-latm");
                                            builder3.k = b.c;
                                            builder3.I = b.b;
                                            builder3.K = b.a;
                                            builder3.r = Collections.singletonList(bArr);
                                            trackOutput2.e(new Format(builder3));
                                            audioTagPayloadReader.c = true;
                                        } else if (audioTagPayloadReader.d != 10 || z9 == 1) {
                                            int a3 = g.a();
                                            trackOutput2.f(a3, g);
                                            audioTagPayloadReader.a.g(j2, 1, a3, 0, null);
                                        }
                                        z = false;
                                    }
                                    z = true;
                                } else {
                                    int i7 = 4;
                                    if (i != 9 && this.p != null) {
                                        if (!this.n) {
                                            this.f.f(new SeekMap.Unseekable(-9223372036854775807L));
                                            this.n = true;
                                        }
                                        VideoTagPayloadReader videoTagPayloadReader = this.p;
                                        ParsableByteArray g2 = g(extractorInput);
                                        videoTagPayloadReader.getClass();
                                        int z10 = g2.z();
                                        int i8 = (z10 >> 4) & 15;
                                        int i9 = z10 & 15;
                                        if (i9 == 7) {
                                            videoTagPayloadReader.g = i8;
                                            if (i8 != 5) {
                                                z2 = true;
                                            } else {
                                                z2 = false;
                                            }
                                            if (z2) {
                                                ParsableByteArray parsableByteArray = videoTagPayloadReader.b;
                                                TrackOutput trackOutput3 = videoTagPayloadReader.a;
                                                ParsableByteArray parsableByteArray2 = videoTagPayloadReader.c;
                                                int z11 = g2.z();
                                                g2.f(3);
                                                byte[] bArr2 = g2.a;
                                                int i10 = g2.b;
                                                int i11 = i10 + 1;
                                                g2.b = i11;
                                                int i12 = ((bArr2[i10] & 255) << 24) >> 8;
                                                g2.b = i10 + 2;
                                                int i13 = ((bArr2[i11] & 255) << 8) | i12;
                                                g2.b = i10 + 3;
                                                long j4 = ((i13 | (bArr2[r8] & 255)) * 1000) + j2;
                                                if (z11 == 0 && !videoTagPayloadReader.e) {
                                                    byte[] bArr3 = new byte[g2.a()];
                                                    ParsableByteArray parsableByteArray3 = new ParsableByteArray(bArr3);
                                                    g2.k(bArr3, 0, g2.a());
                                                    AvcConfig a4 = AvcConfig.a(parsableByteArray3);
                                                    videoTagPayloadReader.d = a4.b;
                                                    Format.Builder builder4 = new Format.Builder();
                                                    builder4.n = MimeTypes.l("video/x-flv");
                                                    builder4.o = MimeTypes.l("video/avc");
                                                    builder4.k = a4.l;
                                                    builder4.v = a4.c;
                                                    builder4.w = a4.d;
                                                    builder4.D = a4.k;
                                                    builder4.r = a4.a;
                                                    trackOutput3.e(new Format(builder4));
                                                    videoTagPayloadReader.e = true;
                                                } else if (z11 == 1 && videoTagPayloadReader.e) {
                                                    if (videoTagPayloadReader.g == 1) {
                                                        i2 = 1;
                                                    } else {
                                                        i2 = 0;
                                                    }
                                                    if (videoTagPayloadReader.f || i2 != 0) {
                                                        byte[] bArr4 = parsableByteArray2.a;
                                                        bArr4[0] = 0;
                                                        bArr4[1] = 0;
                                                        bArr4[2] = 0;
                                                        int i14 = 4 - videoTagPayloadReader.d;
                                                        int i15 = 0;
                                                        while (g2.a() > 0) {
                                                            g2.k(parsableByteArray2.a, i14, videoTagPayloadReader.d);
                                                            parsableByteArray2.M(0);
                                                            int D = parsableByteArray2.D();
                                                            parsableByteArray.M(0);
                                                            trackOutput3.f(i7, parsableByteArray);
                                                            trackOutput3.f(D, g2);
                                                            i15 = i15 + 4 + D;
                                                            i7 = 4;
                                                        }
                                                        videoTagPayloadReader.a.g(j4, i2, i15, 0, null);
                                                        videoTagPayloadReader.f = true;
                                                        z3 = true;
                                                        if (z3) {
                                                            z = true;
                                                            z5 = true;
                                                        }
                                                    }
                                                }
                                                z3 = false;
                                                if (z3) {
                                                }
                                            }
                                        } else {
                                            throw new TagPayloadReader.UnsupportedFormatException(q.g(i9, "Video format not supported: "));
                                        }
                                    } else if (i != 18 && !this.n) {
                                        ParsableByteArray g3 = g(extractorInput);
                                        scriptTagPayloadReader.getClass();
                                        if (g3.z() == 2 && "onMetaData".equals(ScriptTagPayloadReader.c(g3)) && g3.a() != 0 && g3.z() == 8) {
                                            HashMap b2 = ScriptTagPayloadReader.b(g3);
                                            Object obj = b2.get("duration");
                                            if (obj instanceof Double) {
                                                double doubleValue = ((Double) obj).doubleValue();
                                                if (doubleValue > 0.0d) {
                                                    scriptTagPayloadReader.b = (long) (doubleValue * 1000000.0d);
                                                }
                                            }
                                            Object obj2 = b2.get("keyframes");
                                            if (obj2 instanceof Map) {
                                                Map map = (Map) obj2;
                                                Object obj3 = map.get("filepositions");
                                                Object obj4 = map.get("times");
                                                if ((obj3 instanceof List) && (obj4 instanceof List)) {
                                                    List list = (List) obj3;
                                                    List list2 = (List) obj4;
                                                    int size = list2.size();
                                                    scriptTagPayloadReader.c = new long[size];
                                                    scriptTagPayloadReader.d = new long[size];
                                                    for (int i16 = 0; i16 < size; i16++) {
                                                        Object obj5 = list.get(i16);
                                                        Object obj6 = list2.get(i16);
                                                        if ((obj6 instanceof Double) && (obj5 instanceof Double)) {
                                                            scriptTagPayloadReader.c[i16] = (long) (((Double) obj6).doubleValue() * 1000000.0d);
                                                            scriptTagPayloadReader.d[i16] = ((Double) obj5).longValue();
                                                        } else {
                                                            scriptTagPayloadReader.c = new long[0];
                                                            scriptTagPayloadReader.d = new long[0];
                                                            break;
                                                        }
                                                    }
                                                }
                                            }
                                        }
                                        long j5 = scriptTagPayloadReader.b;
                                        if (j5 != -9223372036854775807L) {
                                            this.f.f(new IndexSeekMap(j5, scriptTagPayloadReader.d, scriptTagPayloadReader.c));
                                            this.n = true;
                                        }
                                    } else {
                                        extractorInput.k(this.l);
                                        z = false;
                                        z5 = false;
                                    }
                                    z = false;
                                    z5 = true;
                                }
                                if (!this.h && z) {
                                    this.h = true;
                                    if (scriptTagPayloadReader.b != -9223372036854775807L) {
                                        j3 = -this.m;
                                    } else {
                                        j3 = 0;
                                    }
                                    this.i = j3;
                                }
                                this.j = 4;
                                this.g = 2;
                                if (!z5) {
                                    return 0;
                                }
                            } else {
                                j = this.m;
                            }
                            j2 = j;
                            i = this.k;
                            if (i != 8) {
                            }
                            int i72 = 4;
                            if (i != 9) {
                            }
                            if (i != 18) {
                            }
                            extractorInput.k(this.l);
                            z = false;
                            z5 = false;
                            if (!this.h) {
                                this.h = true;
                                if (scriptTagPayloadReader.b != -9223372036854775807L) {
                                }
                                this.i = j3;
                            }
                            this.j = 4;
                            this.g = 2;
                            if (!z5) {
                            }
                        } else {
                            d.d();
                            return 0;
                        }
                    } else {
                        ParsableByteArray parsableByteArray4 = this.c;
                        if (extractorInput.a(parsableByteArray4.a, 0, 11, true)) {
                            parsableByteArray4.M(0);
                            this.k = parsableByteArray4.z();
                            this.l = parsableByteArray4.C();
                            this.m = parsableByteArray4.C();
                            this.m = ((parsableByteArray4.z() << 24) | this.m) * 1000;
                            parsableByteArray4.N(3);
                            this.g = 4;
                        } else {
                            return -1;
                        }
                    }
                } else {
                    extractorInput.k(this.j);
                    this.j = 0;
                    this.g = 3;
                }
            } else {
                ParsableByteArray parsableByteArray5 = this.b;
                if (!extractorInput.a(parsableByteArray5.a, 0, 9, true)) {
                    return -1;
                }
                parsableByteArray5.M(0);
                parsableByteArray5.N(4);
                int z12 = parsableByteArray5.z();
                if ((z12 & 4) != 0) {
                    z4 = true;
                } else {
                    z4 = false;
                }
                if ((z12 & 1) != 0) {
                    z6 = true;
                }
                if (z4 && this.o == null) {
                    this.o = new TagPayloadReader(this.f.s(8, 1));
                }
                if (z6 && this.p == null) {
                    i3 = 2;
                    this.p = new VideoTagPayloadReader(this.f.s(9, 2));
                } else {
                    i3 = 2;
                }
                this.f.n();
                this.j = parsableByteArray5.m() - 5;
                this.g = i3;
            }
        }
    }

    public final ParsableByteArray g(ExtractorInput extractorInput) {
        int i = this.l;
        ParsableByteArray parsableByteArray = this.d;
        byte[] bArr = parsableByteArray.a;
        if (i > bArr.length) {
            parsableByteArray.K(0, new byte[Math.max(bArr.length * 2, i)]);
        } else {
            parsableByteArray.M(0);
        }
        parsableByteArray.L(this.l);
        extractorInput.readFully(parsableByteArray.a, 0, this.l);
        return parsableByteArray;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
