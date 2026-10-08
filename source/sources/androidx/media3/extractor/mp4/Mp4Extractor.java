package androidx.media3.extractor.mp4;

import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Ac4Util;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.SniffFailure;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.Chapter;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import androidx.media3.extractor.metadata.mp4.SlowMotionData;
import androidx.media3.extractor.mp4.SefReader;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import defpackage.jb;
import defpackage.k8;
import io.sentry.d;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Mp4Extractor implements Extractor {
    public static final /* synthetic */ int I = 0;
    public boolean A;
    public int B;
    public int C;
    public long D;
    public long[][] G;
    public int H;
    public final SubtitleParser.Factory a;
    public final int b;
    public int o;
    public long p;
    public int q;
    public ParsableByteArray r;
    public int t;
    public int u;
    public int v;
    public boolean w;
    public boolean x;
    public boolean y;
    public boolean z;
    public final boolean c = false;
    public ImmutableList m = ImmutableList.r();
    public int n = 0;
    public final SefReader i = new SefReader();
    public final ArrayList j = new ArrayList();
    public final ParsableByteArray g = new ParsableByteArray(16);
    public final ArrayDeque h = new ArrayDeque();
    public final ParsableByteArray d = new ParsableByteArray(NalUnitUtil.a);
    public final ParsableByteArray e = new ParsableByteArray(6);
    public final ParsableByteArray f = new ParsableByteArray();
    public int s = -1;
    public ExtractorOutput E = ExtractorOutput.f;
    public Mp4Track[] F = new Mp4Track[0];
    public final ArrayList k = new ArrayList();
    public final ArrayList l = new ArrayList();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mp4SeekMap implements SeekMap {
        public final long a;
        public final Mp4Track[] b;
        public final int c;

        public Mp4SeekMap(long j, Mp4Track[] mp4TrackArr, int i) {
            this.a = j;
            this.b = mp4TrackArr;
            this.c = i;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean b() {
            return true;
        }

        /* JADX WARN: Removed duplicated region for block: B:26:0x0061  */
        /* JADX WARN: Removed duplicated region for block: B:48:0x00b1  */
        /* JADX WARN: Removed duplicated region for block: B:50:0x00b7  */
        @Override // androidx.media3.extractor.SeekMap
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public final SeekMap.SeekPoints e(long j) {
            long j2;
            long j3;
            long j4;
            long j5;
            int i;
            int b;
            Mp4Track[] mp4TrackArr = this.b;
            int length = mp4TrackArr.length;
            SeekPoint seekPoint = SeekPoint.c;
            if (length == 0) {
                return new SeekMap.SeekPoints(seekPoint, seekPoint);
            }
            int i2 = this.c;
            if (i2 != -1) {
                TrackSampleTable trackSampleTable = mp4TrackArr[i2].b;
                int i3 = Mp4Extractor.I;
                int a = trackSampleTable.a(j);
                if (a == -1) {
                    a = trackSampleTable.b(j);
                }
                long[] jArr = trackSampleTable.c;
                long[] jArr2 = trackSampleTable.f;
                if (a == -1) {
                    return new SeekMap.SeekPoints(seekPoint, seekPoint);
                }
                j3 = jArr2[a];
                j2 = jArr[a];
                if (j3 < j && a < trackSampleTable.b - 1 && (b = trackSampleTable.b(j)) != -1 && b != a) {
                    j5 = jArr2[b];
                    j4 = jArr[b];
                    long j6 = j2;
                    for (i = 0; i < mp4TrackArr.length; i++) {
                        if (i != i2) {
                            TrackSampleTable trackSampleTable2 = mp4TrackArr[i].b;
                            long[] jArr3 = trackSampleTable2.c;
                            int i4 = Mp4Extractor.I;
                            int a2 = trackSampleTable2.a(j3);
                            if (a2 == -1) {
                                a2 = trackSampleTable2.b(j3);
                            }
                            if (a2 != -1) {
                                j6 = Math.min(jArr3[a2], j6);
                            }
                            if (j5 != -9223372036854775807L) {
                                int a3 = trackSampleTable2.a(j5);
                                if (a3 == -1) {
                                    a3 = trackSampleTable2.b(j5);
                                }
                                if (a3 != -1) {
                                    j4 = Math.min(jArr3[a3], j4);
                                }
                            }
                        }
                    }
                    SeekPoint seekPoint2 = new SeekPoint(j3, j6);
                    if (j5 != -9223372036854775807L) {
                        return new SeekMap.SeekPoints(seekPoint2, seekPoint2);
                    }
                    return new SeekMap.SeekPoints(seekPoint2, new SeekPoint(j5, j4));
                }
            } else {
                j2 = Long.MAX_VALUE;
                j3 = j;
            }
            j4 = -1;
            j5 = -9223372036854775807L;
            long j62 = j2;
            while (i < mp4TrackArr.length) {
            }
            SeekPoint seekPoint22 = new SeekPoint(j3, j62);
            if (j5 != -9223372036854775807L) {
            }
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long g() {
            return this.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Mp4Track {
        public final Track a;
        public final TrackSampleTable b;
        public final TrackOutput c;
        public final TrueHdSampleRechunker d;
        public final boolean e;
        public final boolean f;
        public int g;
        public Format h;

        public Mp4Track(Track track, TrackSampleTable trackSampleTable, TrackOutput trackOutput) {
            boolean z;
            TrueHdSampleRechunker trueHdSampleRechunker;
            this.a = track;
            this.b = trackSampleTable;
            this.c = trackOutput;
            int i = track.b;
            Format format = track.g;
            if (i == 2) {
                z = true;
            } else {
                z = false;
            }
            this.e = z;
            this.f = Objects.equals(format.p, "application/x-itut-t35");
            if ("audio/true-hd".equals(format.p)) {
                trueHdSampleRechunker = new TrueHdSampleRechunker();
            } else {
                trueHdSampleRechunker = null;
            }
            this.d = trueHdSampleRechunker;
        }
    }

    public Mp4Extractor(SubtitleParser.Factory factory, int i) {
        this.a = factory;
        this.b = i;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        ImmutableList r;
        SniffFailure a = Sniffer.a(extractorInput, false);
        if (a != null) {
            r = ImmutableList.t(a);
        } else {
            r = ImmutableList.r();
        }
        this.m = r;
        if (a != null) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.h.clear();
        this.q = 0;
        this.s = -1;
        this.t = 0;
        this.u = 0;
        this.v = 0;
        this.w = false;
        this.A = false;
        this.B = 0;
        this.C = 0;
        this.k.clear();
        this.l.clear();
        if (j == 0) {
            if (this.n != 3) {
                this.n = 0;
                this.q = 0;
                return;
            } else {
                SefReader sefReader = this.i;
                sefReader.a.clear();
                sefReader.b = 0;
                this.j.clear();
                return;
            }
        }
        for (Mp4Track mp4Track : this.F) {
            TrackSampleTable trackSampleTable = mp4Track.b;
            int a = trackSampleTable.a(j2);
            if (a == -1) {
                a = trackSampleTable.b(j2);
            }
            mp4Track.g = a;
            TrueHdSampleRechunker trueHdSampleRechunker = mp4Track.d;
            if (trueHdSampleRechunker != null) {
                trueHdSampleRechunker.b = false;
                trueHdSampleRechunker.c = 0;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        if ((this.b & 16) == 0) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.a);
        }
        this.E = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final List e() {
        return this.m;
    }

    /* JADX WARN: Code restructure failed: missing block: B:202:0x00f5, code lost:
    
        if ((r1 instanceof androidx.media3.extractor.metadata.Chapter) == false) goto L42;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x07a6, code lost:
    
        throw androidx.media3.common.ParserException.b("Atom size less than header length (unsupported).");
     */
    /* JADX WARN: Code restructure failed: missing block: B:400:0x04dd, code lost:
    
        if ((r14 & 32) != 0) goto L231;
     */
    /* JADX WARN: Code restructure failed: missing block: B:401:0x04df, code lost:
    
        r2 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x04e1, code lost:
    
        r2 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x04ed, code lost:
    
        if ((r14 & 128) != 0) goto L231;
     */
    /* JADX WARN: Removed duplicated region for block: B:150:0x0706  */
    /* JADX WARN: Removed duplicated region for block: B:156:0x071d A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:158:0x0012 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:17:0x08ba  */
    /* JADX WARN: Removed duplicated region for block: B:20:0x000e A[EDGE_INSN: B:20:0x000e->B:5:0x000e BREAK  A[LOOP:0: B:8:0x0012->B:19:0x0012], SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r5v5, types: [androidx.media3.extractor.MpegAudioUtil$Header, java.lang.Object] */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        long j;
        boolean equals;
        char c;
        int i;
        int i2;
        long j2;
        int i3;
        ParsableByteArray parsableByteArray;
        char c2;
        char c3;
        Mp4Track[] mp4TrackArr;
        int i4;
        boolean z;
        Metadata.Entry entry;
        long N;
        boolean z2;
        boolean z3;
        int i5;
        Mp4Box.ContainerBox containerBox;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        if (!this.c || !this.A) {
            while (true) {
                int i6 = this.n;
                ArrayDeque arrayDeque = this.h;
                ParsableByteArray parsableByteArray2 = this.f;
                int i7 = 0;
                boolean z8 = true;
                if (i6 != 0) {
                    int i8 = 4;
                    if (i6 != 1) {
                        if (i6 != 2) {
                            if (i6 != 3) {
                                if (i6 == 4) {
                                    int i9 = this.B;
                                    ArrayList arrayList = this.k;
                                    TrackSampleTable trackSampleTable = (TrackSampleTable) arrayList.get(i9);
                                    int i10 = this.C;
                                    int i11 = trackSampleTable.b;
                                    long[] jArr = trackSampleTable.f;
                                    ArrayList arrayList2 = this.l;
                                    if (i10 < i11) {
                                        long j3 = trackSampleTable.c[i10];
                                        if (extractorInput.getPosition() != j3) {
                                            positionHolder.a = j3;
                                            return 1;
                                        }
                                        int i12 = trackSampleTable.d[this.C];
                                        parsableByteArray2.J(i12);
                                        extractorInput.readFully(parsableByteArray2.a, 0, i12);
                                        String x = parsableByteArray2.x(Math.min(parsableByteArray2.G(), parsableByteArray2.a()), StandardCharsets.UTF_8);
                                        long N2 = Util.N(jArr[this.C]);
                                        int i13 = this.C + 1;
                                        if (i13 < trackSampleTable.b) {
                                            N = Util.N(jArr[i13]);
                                        } else {
                                            N = Util.N(trackSampleTable.i);
                                        }
                                        Chapter.Builder builder = new Chapter.Builder();
                                        builder.a = N2;
                                        builder.b = N;
                                        builder.d = new Label(null, x);
                                        arrayList2.add(builder.a());
                                        this.C++;
                                        return 0;
                                    }
                                    Mp4Track[] mp4TrackArr2 = this.F;
                                    int length = mp4TrackArr2.length;
                                    int i14 = 0;
                                    while (i14 < length) {
                                        Mp4Track mp4Track = mp4TrackArr2[i14];
                                        if (mp4Track.a.l == trackSampleTable.a.a) {
                                            Format format = mp4Track.h;
                                            format.getClass();
                                            Metadata metadata = format.m;
                                            ArrayList arrayList3 = new ArrayList();
                                            if (metadata != null) {
                                                z = z8;
                                                ImmutableList.Builder k = ImmutableList.k();
                                                Metadata.Entry[] entryArr = metadata.a;
                                                int length2 = entryArr.length;
                                                while (i7 < length2) {
                                                    Metadata.Entry entry2 = entryArr[i7];
                                                    Mp4Track[] mp4TrackArr3 = mp4TrackArr2;
                                                    int i15 = length;
                                                    if (Metadata.Entry.class.isAssignableFrom(entry2.getClass())) {
                                                        entry = (Metadata.Entry) Metadata.Entry.class.cast(entry2);
                                                    }
                                                    entry = null;
                                                    if (entry != null) {
                                                        k.d(entry);
                                                    }
                                                    i7++;
                                                    mp4TrackArr2 = mp4TrackArr3;
                                                    length = i15;
                                                }
                                                mp4TrackArr = mp4TrackArr2;
                                                i4 = length;
                                                arrayList3.addAll(k.i());
                                            } else {
                                                mp4TrackArr = mp4TrackArr2;
                                                i4 = length;
                                                z = z8;
                                            }
                                            arrayList3.addAll(arrayList2);
                                            Format.Builder a = format.a();
                                            a.l = new Metadata(arrayList3);
                                            Format format2 = new Format(a);
                                            String str = format2.p;
                                            if (!Objects.equals(str, "audio/mpeg") && !DtsUtil.e(str)) {
                                                mp4Track.c.e(format2);
                                                mp4Track.h = null;
                                            } else {
                                                mp4Track.h = format2;
                                            }
                                        } else {
                                            mp4TrackArr = mp4TrackArr2;
                                            i4 = length;
                                            z = z8;
                                        }
                                        i14++;
                                        mp4TrackArr2 = mp4TrackArr;
                                        length = i4;
                                        z8 = z;
                                        i7 = 0;
                                    }
                                    this.B++;
                                    this.C = 0;
                                    arrayList2.clear();
                                    if (this.B == arrayList.size()) {
                                        this.n = 2;
                                    }
                                    return 0;
                                }
                                d.d();
                                return 0;
                            }
                            SefReader sefReader = this.i;
                            ArrayList arrayList4 = sefReader.a;
                            int i16 = sefReader.b;
                            if (i16 != 0) {
                                if (i16 != 1) {
                                    short s = 2817;
                                    int i17 = 8;
                                    if (i16 != 2) {
                                        if (i16 == 3) {
                                            long position = extractorInput.getPosition();
                                            int g = (int) ((extractorInput.g() - extractorInput.getPosition()) - sefReader.c);
                                            ParsableByteArray parsableByteArray3 = new ParsableByteArray(g);
                                            extractorInput.readFully(parsableByteArray3.a, 0, g);
                                            int i18 = 0;
                                            while (i18 < arrayList4.size()) {
                                                SefReader.DataReference dataReference = (SefReader.DataReference) arrayList4.get(i18);
                                                parsableByteArray3.M((int) (dataReference.a - position));
                                                parsableByteArray3.N(i8);
                                                int o = parsableByteArray3.o();
                                                Charset charset = StandardCharsets.UTF_8;
                                                String x2 = parsableByteArray3.x(o, charset);
                                                switch (x2.hashCode()) {
                                                    case -1711564334:
                                                        if (x2.equals("SlowMotion_Data")) {
                                                            c2 = 0;
                                                            break;
                                                        }
                                                        break;
                                                    case -1332107749:
                                                        if (x2.equals("Super_SlowMotion_Edit_Data")) {
                                                            c2 = 1;
                                                            break;
                                                        }
                                                        break;
                                                    case -1251387154:
                                                        if (x2.equals("Super_SlowMotion_Data")) {
                                                            c2 = 2;
                                                            break;
                                                        }
                                                        break;
                                                    case -830665521:
                                                        if (x2.equals("Super_SlowMotion_Deflickering_On")) {
                                                            c2 = 3;
                                                            break;
                                                        }
                                                        break;
                                                    case 1760745220:
                                                        if (x2.equals("Super_SlowMotion_BGM")) {
                                                            c2 = 4;
                                                            break;
                                                        }
                                                        break;
                                                }
                                                c2 = 65535;
                                                switch (c2) {
                                                    case 0:
                                                        c3 = 2192;
                                                        break;
                                                    case 1:
                                                        c3 = 2819;
                                                        break;
                                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                                        c3 = 2816;
                                                        break;
                                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                                        c3 = 2820;
                                                        break;
                                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                                        c3 = 2817;
                                                        break;
                                                    default:
                                                        throw ParserException.a(null, "Invalid SEF name");
                                                }
                                                int i19 = dataReference.b - (o + 8);
                                                if (c3 != 2192) {
                                                    if (c3 != 2816 && c3 != 2817 && c3 != 2819 && c3 != 2820) {
                                                        d.d();
                                                        return 0;
                                                    }
                                                } else {
                                                    ArrayList arrayList5 = new ArrayList();
                                                    List c4 = SefReader.e.c(parsableByteArray3.x(i19, charset));
                                                    for (int i20 = 0; i20 < c4.size(); i20++) {
                                                        List c5 = SefReader.d.c((CharSequence) c4.get(i20));
                                                        if (c5.size() == 3) {
                                                            try {
                                                                arrayList5.add(new SlowMotionData.Segment(1 << (Integer.parseInt((String) c5.get(2)) - 1), Long.parseLong((String) c5.get(0)), Long.parseLong((String) c5.get(1))));
                                                            } catch (NumberFormatException e) {
                                                                throw ParserException.a(e, null);
                                                            }
                                                        } else {
                                                            throw ParserException.a(null, null);
                                                        }
                                                    }
                                                    this.j.add(new SlowMotionData(arrayList5));
                                                }
                                                i18++;
                                                i8 = 4;
                                            }
                                            positionHolder.a = 0L;
                                        } else {
                                            d.d();
                                            return 0;
                                        }
                                    } else {
                                        long g2 = extractorInput.g();
                                        int i21 = sefReader.c - 20;
                                        ParsableByteArray parsableByteArray4 = new ParsableByteArray(i21);
                                        extractorInput.readFully(parsableByteArray4.a, 0, i21);
                                        int i22 = 0;
                                        while (i22 < i21 / 12) {
                                            parsableByteArray4.N(2);
                                            parsableByteArray4.f(2);
                                            byte[] bArr = parsableByteArray4.a;
                                            int i23 = parsableByteArray4.b;
                                            int i24 = i23 + 1;
                                            parsableByteArray4.b = i24;
                                            int i25 = bArr[i23] & 255;
                                            parsableByteArray4.b = i23 + 2;
                                            short s2 = (short) (((bArr[i24] & 255) << 8) | i25);
                                            if (s2 != 2192 && s2 != 2816 && s2 != s) {
                                                if (s2 != 2819 && s2 != 2820) {
                                                    parsableByteArray4.N(i17);
                                                    parsableByteArray = parsableByteArray4;
                                                    i22++;
                                                    parsableByteArray4 = parsableByteArray;
                                                    s = 2817;
                                                    i17 = 8;
                                                }
                                            }
                                            parsableByteArray = parsableByteArray4;
                                            arrayList4.add(new SefReader.DataReference(parsableByteArray.o(), (g2 - sefReader.c) - parsableByteArray.o()));
                                            i22++;
                                            parsableByteArray4 = parsableByteArray;
                                            s = 2817;
                                            i17 = 8;
                                        }
                                        if (arrayList4.isEmpty()) {
                                            positionHolder.a = 0L;
                                        } else {
                                            sefReader.b = 3;
                                            positionHolder.a = ((SefReader.DataReference) arrayList4.get(0)).a;
                                        }
                                    }
                                } else {
                                    ParsableByteArray parsableByteArray5 = new ParsableByteArray(8);
                                    extractorInput.readFully(parsableByteArray5.a, 0, 8);
                                    sefReader.c = parsableByteArray5.o() + 8;
                                    if (parsableByteArray5.m() != 1397048916) {
                                        positionHolder.a = 0L;
                                    } else {
                                        positionHolder.a = extractorInput.getPosition() - (sefReader.c - 12);
                                        sefReader.b = 2;
                                    }
                                }
                                i3 = 1;
                            } else {
                                long g3 = extractorInput.g();
                                if (g3 != -1 && g3 >= 8) {
                                    j2 = g3 - 8;
                                } else {
                                    j2 = 0;
                                }
                                positionHolder.a = j2;
                                i3 = 1;
                                sefReader.b = 1;
                            }
                            if (positionHolder.a == 0) {
                                this.n = 0;
                                this.q = 0;
                                return i3;
                            }
                            return i3;
                        }
                        long position2 = extractorInput.getPosition();
                        if (this.s == -1) {
                            long j4 = Long.MAX_VALUE;
                            boolean z9 = true;
                            boolean z10 = true;
                            int i26 = 0;
                            int i27 = -1;
                            int i28 = -1;
                            int i29 = -1;
                            long j5 = Long.MAX_VALUE;
                            long j6 = Long.MAX_VALUE;
                            long j7 = Long.MAX_VALUE;
                            long j8 = Long.MAX_VALUE;
                            while (true) {
                                Mp4Track[] mp4TrackArr4 = this.F;
                                j = position2;
                                if (i26 >= mp4TrackArr4.length) {
                                    break;
                                }
                                Mp4Track mp4Track2 = mp4TrackArr4[i26];
                                int i30 = mp4Track2.g;
                                TrackSampleTable trackSampleTable2 = mp4Track2.b;
                                boolean z11 = z9;
                                if (i30 == trackSampleTable2.b) {
                                    z9 = z11;
                                } else {
                                    int i31 = i28;
                                    int i32 = i29;
                                    long j9 = trackSampleTable2.f[i30];
                                    if (mp4Track2.e) {
                                        j4 = Math.min(j4, j9);
                                    } else if (mp4Track2.f && j9 < j5) {
                                        i27 = i26;
                                        j5 = j9;
                                    }
                                    long j10 = trackSampleTable2.c[i30];
                                    long[][] jArr2 = this.G;
                                    jArr2.getClass();
                                    long j11 = jArr2[i26][i30];
                                    long j12 = j10 - j;
                                    if (j12 >= 0 && j12 < 262144) {
                                        z9 = false;
                                    } else {
                                        z9 = true;
                                    }
                                    if ((!z9 && z10) || (z9 == z10 && j12 < j8)) {
                                        j6 = j11;
                                        z10 = z9;
                                        j8 = j12;
                                        i29 = i26;
                                    } else {
                                        i29 = i32;
                                    }
                                    if (j11 < j7) {
                                        j7 = j11;
                                        i28 = i26;
                                    } else {
                                        z9 = z11;
                                        i28 = i31;
                                    }
                                }
                                i26++;
                                position2 = j;
                            }
                            boolean z12 = z9;
                            int i33 = i28;
                            int i34 = i29;
                            if (j4 == Long.MAX_VALUE || i27 == -1 || j5 > j4) {
                                if (j7 != Long.MAX_VALUE && z12 && j6 >= j7 + 10485760) {
                                    i27 = i33;
                                } else {
                                    i27 = i34;
                                }
                            }
                            this.s = i27;
                            if (i27 == -1) {
                                return -1;
                            }
                        } else {
                            j = position2;
                        }
                        Mp4Track mp4Track3 = this.F[this.s];
                        TrackOutput trackOutput = mp4Track3.c;
                        TrackSampleTable trackSampleTable3 = mp4Track3.b;
                        Track track = mp4Track3.a;
                        int i35 = mp4Track3.g;
                        long[] jArr3 = trackSampleTable3.c;
                        int[] iArr = trackSampleTable3.d;
                        long j13 = jArr3[i35] + this.D;
                        int i36 = iArr[i35];
                        TrueHdSampleRechunker trueHdSampleRechunker = mp4Track3.d;
                        long j14 = (j13 - j) + this.t;
                        if (j14 >= 0 && j14 < 262144) {
                            int i37 = track.h;
                            int i38 = track.k;
                            Format format3 = track.g;
                            if (i37 == 1) {
                                j14 += 8;
                                i36 -= 8;
                            }
                            extractorInput.k((int) j14);
                            String str2 = format3.p;
                            String str3 = format3.p;
                            boolean equals2 = Objects.equals(str2, "video/avc");
                            int i39 = this.b;
                            if (!equals2) {
                                if (!Objects.equals(str2, "video/hevc")) {
                                    equals = Objects.equals(str2, "video/apv");
                                }
                            }
                            if (!equals) {
                                c = 1;
                                this.w = true;
                            } else {
                                c = 1;
                            }
                            if (i38 != 0) {
                                ParsableByteArray parsableByteArray6 = this.e;
                                byte[] bArr2 = parsableByteArray6.a;
                                bArr2[0] = 0;
                                bArr2[c] = 0;
                                bArr2[2] = 0;
                                int i40 = 4 - i38;
                                i36 += i40;
                                while (this.u < i36) {
                                    int i41 = this.v;
                                    if (i41 == 0) {
                                        if (!this.w && NalUnitUtil.e(format3) + i38 <= iArr[i35] - this.t) {
                                            i2 = NalUnitUtil.e(format3);
                                            i = i38 + i2;
                                        } else {
                                            i = i38;
                                            i2 = 0;
                                        }
                                        extractorInput.readFully(bArr2, i40, i);
                                        this.t += i;
                                        parsableByteArray6.M(0);
                                        int m = parsableByteArray6.m();
                                        if (m >= 0) {
                                            this.v = m - i2;
                                            ParsableByteArray parsableByteArray7 = this.d;
                                            parsableByteArray7.M(0);
                                            trackOutput.f(4, parsableByteArray7);
                                            this.u += 4;
                                            if (i2 > 0) {
                                                trackOutput.f(i2, parsableByteArray6);
                                                this.u += i2;
                                                if (NalUnitUtil.d(bArr2, i2, format3)) {
                                                    this.w = true;
                                                }
                                            }
                                        } else {
                                            throw ParserException.a(null, "Invalid NAL length");
                                        }
                                    } else {
                                        int c6 = trackOutput.c(extractorInput, i41, false);
                                        this.t += c6;
                                        this.u += c6;
                                        this.v -= c6;
                                    }
                                }
                            } else {
                                Format format4 = mp4Track3.h;
                                if ("audio/ac4".equals(str3)) {
                                    if (this.u == 0) {
                                        Ac4Util.a(i36, parsableByteArray2);
                                        trackOutput.f(7, parsableByteArray2);
                                        this.u += 7;
                                    }
                                    i36 += 7;
                                } else if (format4 != null && Objects.equals(str3, "audio/mpeg")) {
                                    parsableByteArray2.J(4);
                                    extractorInput.n(parsableByteArray2.a, 0, 4);
                                    extractorInput.j();
                                    ?? obj = new Object();
                                    if (obj.a(parsableByteArray2.m()) && !Objects.equals(format4.p, obj.b)) {
                                        Format.Builder a2 = format4.a();
                                        String str4 = obj.b;
                                        str4.getClass();
                                        a2.o = MimeTypes.l(str4);
                                        format4 = new Format(a2);
                                    }
                                    trackOutput.e(format4);
                                    mp4Track3.h = null;
                                } else if (format4 != null && DtsUtil.e(str3)) {
                                    trackOutput.e(DtsUtil.h(extractorInput, i36, format4));
                                    mp4Track3.h = null;
                                } else if (trueHdSampleRechunker != null) {
                                    trueHdSampleRechunker.c(extractorInput);
                                }
                                while (true) {
                                    int i42 = this.u;
                                    if (i42 >= i36) {
                                        break;
                                    }
                                    int c7 = trackOutput.c(extractorInput, i36 - i42, false);
                                    this.t += c7;
                                    this.u += c7;
                                    this.v -= c7;
                                }
                            }
                            int i43 = i36;
                            long j15 = trackSampleTable3.f[i35];
                            int i44 = trackSampleTable3.g[i35];
                            if (!this.w) {
                                i44 |= 67108864;
                            }
                            int i45 = i44;
                            if (trueHdSampleRechunker != null) {
                                trueHdSampleRechunker.b(trackOutput, j15, i45, i43, 0, null);
                                if (i35 + 1 == trackSampleTable3.b) {
                                    trueHdSampleRechunker.a(trackOutput, null);
                                }
                            } else {
                                trackOutput.g(j15, i45, i43, 0, null);
                            }
                            mp4Track3.g++;
                            this.s = -1;
                            this.t = 0;
                            this.u = 0;
                            this.v = 0;
                            this.w = false;
                            return 0;
                        }
                        positionHolder.a = j13;
                        return 1;
                    }
                    long j16 = this.p - this.q;
                    long position3 = extractorInput.getPosition() + j16;
                    ParsableByteArray parsableByteArray8 = this.r;
                    if (parsableByteArray8 != null) {
                        extractorInput.readFully(parsableByteArray8.a, this.q, (int) j16);
                        if (this.o == 1718909296) {
                            this.x = true;
                            parsableByteArray8.M(8);
                            if (parsableByteArray8.m() != 1903435808) {
                                i5 = 0;
                            } else {
                                i5 = 1;
                            }
                            if (i5 == 0) {
                                parsableByteArray8.N(4);
                                while (true) {
                                    if (parsableByteArray8.a() > 0) {
                                        if (parsableByteArray8.m() != 1903435808) {
                                            i5 = 0;
                                        } else {
                                            i5 = 1;
                                        }
                                        if (i5 != 0) {
                                            break;
                                        }
                                    } else {
                                        i5 = 0;
                                        break;
                                    }
                                }
                            }
                            this.H = i5;
                        } else if (!arrayDeque.isEmpty()) {
                            ((Mp4Box.ContainerBox) arrayDeque.peek()).c.add(new Mp4Box.LeafBox(this.o, parsableByteArray8));
                        }
                    } else {
                        if (!this.x && this.o == 1835295092) {
                            this.H = 1;
                        }
                        if (j16 < 262144) {
                            extractorInput.k((int) j16);
                        } else {
                            positionHolder.a = extractorInput.getPosition() + j16;
                            z2 = true;
                            g(position3);
                            if (this.y) {
                                this.z = true;
                                positionHolder.a = 0L;
                                this.y = false;
                                z2 = true;
                            }
                            if (!z2 && this.n != 2) {
                                z3 = true;
                            } else {
                                z3 = false;
                            }
                            if (!z3) {
                                return 1;
                            }
                        }
                    }
                    z2 = false;
                    g(position3);
                    if (this.y) {
                    }
                    if (!z2) {
                    }
                    z3 = false;
                    if (!z3) {
                    }
                } else {
                    int i46 = this.q;
                    ParsableByteArray parsableByteArray9 = this.g;
                    if (i46 == 0) {
                        if (!extractorInput.a(parsableByteArray9.a, 0, 8, true)) {
                            z5 = false;
                            if (z5) {
                                break;
                            }
                        } else {
                            this.q = 8;
                            parsableByteArray9.M(0);
                            this.p = parsableByteArray9.B();
                            this.o = parsableByteArray9.m();
                        }
                    }
                    long j17 = this.p;
                    if (j17 == 1) {
                        extractorInput.readFully(parsableByteArray9.a, 8, 8);
                        this.q += 8;
                        this.p = parsableByteArray9.F();
                    } else if (j17 == 0) {
                        long g4 = extractorInput.g();
                        if (g4 == -1 && (containerBox = (Mp4Box.ContainerBox) arrayDeque.peek()) != null) {
                            g4 = containerBox.b;
                        }
                        if (g4 != -1) {
                            this.p = (g4 - extractorInput.getPosition()) + this.q;
                        }
                    }
                    long j18 = this.p;
                    int i47 = this.q;
                    long j19 = i47;
                    if (j18 < j19) {
                        if (this.o != 1718773093 || i47 != 8) {
                            break;
                        }
                        this.p = j19;
                    }
                    int i48 = this.o;
                    if (i48 == 1836019574 || i48 == 1953653099 || i48 == 1835297121 || i48 == 1835626086 || i48 == 1937007212 || i48 == 1701082227 || i48 == 1835365473 || i48 == 1635284069 || i48 == 1953654118) {
                        z4 = true;
                        long position4 = extractorInput.getPosition();
                        long j20 = this.p;
                        long j21 = this.q;
                        long j22 = (position4 + j20) - j21;
                        if (j20 != j21 && this.o == 1835365473) {
                            parsableByteArray2.J(8);
                            extractorInput.n(parsableByteArray2.a, 0, 8);
                            BoxParser.a(parsableByteArray2);
                            extractorInput.k(parsableByteArray2.b);
                            extractorInput.j();
                        }
                        arrayDeque.push(new Mp4Box.ContainerBox(this.o, j22));
                        if (this.p == this.q) {
                            g(j22);
                        } else {
                            this.n = 0;
                            this.q = 0;
                        }
                    } else if (i48 != 1835296868 && i48 != 1836476516 && i48 != 1751411826 && i48 != 1937011556 && i48 != 1937011827 && i48 != 1937011571 && i48 != 1668576371 && i48 != 1701606260 && i48 != 1937011555 && i48 != 1937011578 && i48 != 1937013298 && i48 != 1937007471 && i48 != 1668232756 && i48 != 1953196132 && i48 != 1718909296 && i48 != 1969517665 && i48 != 1801812339 && i48 != 1768715124 && i48 != 1667785072) {
                        this.r = null;
                        z4 = true;
                        this.n = 1;
                    } else {
                        if (i47 == 8) {
                            z6 = true;
                        } else {
                            z6 = false;
                        }
                        Preconditions.n(z6);
                        if (this.p <= 2147483647L) {
                            z7 = true;
                        } else {
                            z7 = false;
                        }
                        Preconditions.n(z7);
                        ParsableByteArray parsableByteArray10 = new ParsableByteArray((int) this.p);
                        System.arraycopy(parsableByteArray9.a, 0, parsableByteArray10.a, 0, 8);
                        this.r = parsableByteArray10;
                        z4 = true;
                        this.n = 1;
                    }
                    z5 = z4;
                    if (z5) {
                    }
                }
            }
        }
        return -1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x0069, code lost:
    
        if (((androidx.media3.container.MdtaMetadataEntry) r12).a.equals("auxiliary.tracks.interleaved") != false) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00a6, code lost:
    
        if (((androidx.media3.container.MdtaMetadataEntry) r12).a.equals("auxiliary.tracks.map") != false) goto L39;
     */
    /* JADX WARN: Removed duplicated region for block: B:175:0x0318  */
    /* JADX WARN: Removed duplicated region for block: B:184:0x0344  */
    /* JADX WARN: Removed duplicated region for block: B:197:0x0388  */
    /* JADX WARN: Removed duplicated region for block: B:218:0x034a  */
    /* JADX WARN: Removed duplicated region for block: B:219:0x0328  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void g(long j) {
        Metadata metadata;
        boolean z;
        Metadata metadata2;
        boolean z2;
        long[][] jArr;
        int i;
        ArrayList arrayList;
        String str;
        ArrayList arrayList2;
        int i2;
        int i3;
        ArrayList arrayList3;
        int i4;
        ArrayList arrayList4;
        Metadata metadata3;
        long j2;
        int i5;
        Metadata metadata4;
        ArrayList arrayList5;
        Metadata metadata5;
        Metadata metadata6;
        Metadata metadata7;
        Metadata metadata8;
        Format format;
        boolean z3;
        boolean z4;
        ArrayList arrayList6;
        Iterator it;
        int i6;
        int i7;
        int length;
        boolean z5;
        int i8;
        int i9;
        int i10;
        boolean z6;
        Metadata.Entry entry;
        Metadata.Entry entry2;
        int i11;
        while (true) {
            ArrayDeque arrayDeque = this.h;
            if (arrayDeque.isEmpty() || ((Mp4Box.ContainerBox) arrayDeque.peek()).b != j) {
                break;
            }
            Mp4Box.ContainerBox containerBox = (Mp4Box.ContainerBox) arrayDeque.pop();
            if (containerBox.a == 1836019574) {
                Mp4Box.ContainerBox b = containerBox.b(1835365473);
                ArrayList arrayList7 = new ArrayList();
                if (b != null) {
                    metadata = BoxParser.e(b);
                    if (this.z) {
                        metadata.getClass();
                        Metadata.Entry[] entryArr = metadata.a;
                        int length2 = entryArr.length;
                        int i12 = 0;
                        while (true) {
                            if (i12 < length2) {
                                Metadata.Entry entry3 = entryArr[i12];
                                if (MdtaMetadataEntry.class.isAssignableFrom(entry3.getClass())) {
                                    entry = (Metadata.Entry) MdtaMetadataEntry.class.cast(entry3);
                                }
                                entry = null;
                                if (entry != null) {
                                    break;
                                } else {
                                    i12++;
                                }
                            } else {
                                entry = null;
                                break;
                            }
                        }
                        MdtaMetadataEntry mdtaMetadataEntry = (MdtaMetadataEntry) entry;
                        if (mdtaMetadataEntry != null && mdtaMetadataEntry.b[0] == 0) {
                            this.D = 16 + 0;
                        }
                        int length3 = entryArr.length;
                        int i13 = 0;
                        while (true) {
                            if (i13 < length3) {
                                Metadata.Entry entry4 = entryArr[i13];
                                if (MdtaMetadataEntry.class.isAssignableFrom(entry4.getClass())) {
                                    entry2 = (Metadata.Entry) MdtaMetadataEntry.class.cast(entry4);
                                }
                                entry2 = null;
                                if (entry2 != null) {
                                    break;
                                } else {
                                    i13++;
                                }
                            } else {
                                entry2 = null;
                                break;
                            }
                        }
                        MdtaMetadataEntry mdtaMetadataEntry2 = (MdtaMetadataEntry) entry2;
                        mdtaMetadataEntry2.getClass();
                        ArrayList d = mdtaMetadataEntry2.d();
                        ArrayList arrayList8 = new ArrayList(d.size());
                        for (int i14 = 0; i14 < d.size(); i14++) {
                            int intValue = ((Integer) d.get(i14)).intValue();
                            if (intValue != 0) {
                                if (intValue != 1) {
                                    i11 = 3;
                                    if (intValue != 2) {
                                        if (intValue != 3) {
                                            i11 = 0;
                                        } else {
                                            i11 = 4;
                                        }
                                    }
                                } else {
                                    i11 = 2;
                                }
                            } else {
                                i11 = 1;
                            }
                            arrayList8.add(Integer.valueOf(i11));
                        }
                        arrayList7 = arrayList8;
                    }
                } else {
                    metadata = null;
                }
                ArrayList arrayList9 = new ArrayList();
                if (this.H == 1) {
                    z = true;
                } else {
                    z = false;
                }
                ArrayList arrayList10 = arrayList7;
                GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
                Mp4Box.LeafBox c = containerBox.c(1969517665);
                if (c != null) {
                    metadata2 = BoxParser.j(c, false);
                    gaplessInfoHolder.b(metadata2);
                } else {
                    metadata2 = null;
                }
                Mp4Box.LeafBox c2 = containerBox.c(1836476516);
                c2.getClass();
                long j3 = 0;
                ArrayList arrayList11 = arrayList9;
                ArrayList arrayList12 = arrayList10;
                Metadata metadata9 = metadata2;
                Metadata metadata10 = new Metadata(BoxParser.f(c2.b));
                ArrayList i15 = BoxParser.i(containerBox, gaplessInfoHolder, -9223372036854775807L, null, false, z, new k8(22), this.c);
                if (this.z) {
                    if (arrayList12.size() == i15.size()) {
                        z6 = true;
                    } else {
                        z6 = false;
                    }
                    Locale locale = Locale.US;
                    Preconditions.m(jb.e("The number of auxiliary track types from metadata (", arrayList12.size(), ") is not same as the number of auxiliary tracks (", i15.size(), ")"), z6);
                }
                ArrayList arrayList13 = new ArrayList();
                Iterator it2 = i15.iterator();
                while (it2.hasNext()) {
                    TrackSampleTable trackSampleTable = (TrackSampleTable) it2.next();
                    int i16 = trackSampleTable.a.l;
                    if (i16 != -1 && !arrayList13.contains(Integer.valueOf(i16))) {
                        arrayList13.add(Integer.valueOf(trackSampleTable.a.l));
                    }
                }
                ArrayList arrayList14 = this.k;
                arrayList14.clear();
                Iterator it3 = i15.iterator();
                while (it3.hasNext()) {
                    TrackSampleTable trackSampleTable2 = (TrackSampleTable) it3.next();
                    if (arrayList13.contains(Integer.valueOf(trackSampleTable2.a.a))) {
                        arrayList14.add(trackSampleTable2);
                    }
                }
                String a = MimeTypeResolver.a(i15);
                int i17 = -1;
                int i18 = 0;
                int i19 = 0;
                long j4 = -9223372036854775807L;
                while (true) {
                    int size = i15.size();
                    z2 = this.c;
                    if (i18 >= size) {
                        break;
                    }
                    TrackSampleTable trackSampleTable3 = (TrackSampleTable) i15.get(i18);
                    ArrayDeque arrayDeque2 = arrayDeque;
                    int i20 = trackSampleTable3.b;
                    long[] jArr2 = trackSampleTable3.f;
                    Track track = trackSampleTable3.a;
                    if (i20 == 0) {
                        arrayList = i15;
                        str = a;
                        arrayList2 = arrayList14;
                    } else {
                        arrayList = i15;
                        boolean z7 = track.m;
                        Format format2 = track.g;
                        str = a;
                        int i21 = track.l;
                        arrayList2 = arrayList14;
                        int i22 = track.b;
                        if (z7) {
                            Metadata metadata11 = metadata;
                            i2 = i19 + 1;
                            TrackOutput s = this.E.s(i19, i22);
                            Mp4Track mp4Track = new Mp4Track(track, trackSampleTable3, s);
                            Metadata metadata12 = metadata10;
                            Metadata metadata13 = metadata9;
                            long j5 = track.e;
                            if (j5 == -9223372036854775807L) {
                                j5 = trackSampleTable3.i;
                            }
                            s.d(j5);
                            long max = Math.max(j4, j5);
                            String str2 = format2.p;
                            boolean equals = "audio/true-hd".equals(str2);
                            int i23 = trackSampleTable3.e;
                            if (equals) {
                                i3 = i23 * 16;
                            } else {
                                i3 = i23 + 30;
                            }
                            Format.Builder a2 = format2.a();
                            a2.p = i3;
                            if (i22 == 2) {
                                int i24 = format2.f;
                                if ((this.b & 8) != 0) {
                                    if (i17 == -1) {
                                        i10 = 1;
                                    } else {
                                        i10 = 2;
                                    }
                                    i24 |= i10;
                                }
                                if (this.z) {
                                    arrayList3 = arrayList12;
                                    a2.h = ((Integer) arrayList3.get(i18)).intValue();
                                    i24 |= 32768;
                                } else {
                                    arrayList3 = arrayList12;
                                }
                                a2.f = i24;
                            } else {
                                arrayList3 = arrayList12;
                            }
                            int[] iArr = trackSampleTable3.h;
                            i4 = i18;
                            boolean z8 = trackSampleTable3.j;
                            if (MimeTypes.k(format2.p) && jArr2.length > 0) {
                                if (z8) {
                                    length = trackSampleTable3.b;
                                } else {
                                    length = iArr.length;
                                }
                                int min = Math.min(length, 20);
                                if (j5 != -9223372036854775807L) {
                                    z5 = true;
                                } else {
                                    z5 = false;
                                }
                                Preconditions.n(z5);
                                arrayList4 = arrayList3;
                                metadata3 = metadata13;
                                long min2 = Math.min(j5, 10000000L);
                                int i25 = 0;
                                int i26 = 0;
                                int i27 = -1;
                                while (i25 < min) {
                                    if (z8) {
                                        i8 = i25;
                                    } else {
                                        i8 = iArr[i25];
                                    }
                                    long j6 = jArr2[i8];
                                    if (j6 > min2) {
                                        break;
                                    }
                                    if (j6 >= 0) {
                                        i9 = min;
                                        int i28 = trackSampleTable3.d[i8];
                                        if (i28 > i26) {
                                            i26 = i28;
                                            i27 = i8;
                                        }
                                    } else {
                                        i9 = min;
                                    }
                                    i25++;
                                    min = i9;
                                }
                                if (i27 != -1) {
                                    j2 = jArr2[i27];
                                    if (j2 == -9223372036854775807L) {
                                        ThumbnailMetadata thumbnailMetadata = new ThumbnailMetadata(j2);
                                        i5 = 1;
                                        metadata4 = new Metadata(thumbnailMetadata);
                                    } else {
                                        i5 = 1;
                                        metadata4 = null;
                                    }
                                    if (i22 == i5 && (i6 = gaplessInfoHolder.a) != -1 && (i7 = gaplessInfoHolder.b) != -1) {
                                        a2.M = i6;
                                        a2.N = i7;
                                    }
                                    Metadata metadata14 = format2.m;
                                    arrayList5 = this.j;
                                    if (!arrayList5.isEmpty()) {
                                        metadata5 = null;
                                    } else {
                                        metadata5 = new Metadata(arrayList5);
                                    }
                                    metadata6 = metadata3;
                                    metadata7 = metadata12;
                                    Metadata[] metadataArr = {metadata5, metadata6, metadata7, metadata4};
                                    metadata8 = metadata11;
                                    MetadataUtil.f(i22, metadata8, a2, metadata14, metadataArr);
                                    a2.n = MimeTypes.l(str);
                                    format = new Format(a2);
                                    if (Objects.equals(str2, "audio/mpeg") && !DtsUtil.e(str2)) {
                                        z3 = false;
                                    } else {
                                        z3 = true;
                                    }
                                    if (!z2 && i21 != -1) {
                                        it = arrayList2.iterator();
                                        while (it.hasNext()) {
                                            if (((TrackSampleTable) it.next()).a.a == i21) {
                                                z4 = true;
                                                break;
                                            }
                                        }
                                    }
                                    z4 = false;
                                    if (z3 && !z4) {
                                        mp4Track.c.e(format);
                                    } else {
                                        mp4Track.h = format;
                                    }
                                    if (i22 == 2 && i17 == -1) {
                                        i17 = arrayList11.size();
                                    }
                                    arrayList6 = arrayList11;
                                    arrayList6.add(mp4Track);
                                    j4 = max;
                                    i18 = i4 + 1;
                                    arrayList11 = arrayList6;
                                    metadata10 = metadata7;
                                    metadata = metadata8;
                                    metadata9 = metadata6;
                                    arrayDeque = arrayDeque2;
                                    i15 = arrayList;
                                    a = str;
                                    arrayList14 = arrayList2;
                                    i19 = i2;
                                    arrayList12 = arrayList4;
                                }
                            } else {
                                arrayList4 = arrayList3;
                                metadata3 = metadata13;
                            }
                            j2 = -9223372036854775807L;
                            if (j2 == -9223372036854775807L) {
                            }
                            if (i22 == i5) {
                                a2.M = i6;
                                a2.N = i7;
                            }
                            Metadata metadata142 = format2.m;
                            arrayList5 = this.j;
                            if (!arrayList5.isEmpty()) {
                            }
                            metadata6 = metadata3;
                            metadata7 = metadata12;
                            Metadata[] metadataArr2 = {metadata5, metadata6, metadata7, metadata4};
                            metadata8 = metadata11;
                            MetadataUtil.f(i22, metadata8, a2, metadata142, metadataArr2);
                            a2.n = MimeTypes.l(str);
                            format = new Format(a2);
                            if (Objects.equals(str2, "audio/mpeg")) {
                            }
                            z3 = true;
                            if (!z2) {
                                it = arrayList2.iterator();
                                while (it.hasNext()) {
                                }
                            }
                            z4 = false;
                            if (z3) {
                            }
                            mp4Track.h = format;
                            if (i22 == 2) {
                                i17 = arrayList11.size();
                            }
                            arrayList6 = arrayList11;
                            arrayList6.add(mp4Track);
                            j4 = max;
                            i18 = i4 + 1;
                            arrayList11 = arrayList6;
                            metadata10 = metadata7;
                            metadata = metadata8;
                            metadata9 = metadata6;
                            arrayDeque = arrayDeque2;
                            i15 = arrayList;
                            a = str;
                            arrayList14 = arrayList2;
                            i19 = i2;
                            arrayList12 = arrayList4;
                        }
                    }
                    metadata8 = metadata;
                    i2 = i19;
                    arrayList6 = arrayList11;
                    arrayList4 = arrayList12;
                    metadata6 = metadata9;
                    i4 = i18;
                    metadata7 = metadata10;
                    i18 = i4 + 1;
                    arrayList11 = arrayList6;
                    metadata10 = metadata7;
                    metadata = metadata8;
                    metadata9 = metadata6;
                    arrayDeque = arrayDeque2;
                    i15 = arrayList;
                    a = str;
                    arrayList14 = arrayList2;
                    i19 = i2;
                    arrayList12 = arrayList4;
                }
                ArrayDeque arrayDeque3 = arrayDeque;
                ArrayList arrayList15 = arrayList14;
                int i29 = -1;
                Mp4Track[] mp4TrackArr = (Mp4Track[]) arrayList11.toArray(new Mp4Track[0]);
                this.F = mp4TrackArr;
                if (!z2) {
                    jArr = new long[mp4TrackArr.length];
                    int[] iArr2 = new int[mp4TrackArr.length];
                    long[] jArr3 = new long[mp4TrackArr.length];
                    boolean[] zArr = new boolean[mp4TrackArr.length];
                    for (int i30 = 0; i30 < mp4TrackArr.length; i30++) {
                        jArr[i30] = new long[mp4TrackArr[i30].b.b];
                        jArr3[i30] = mp4TrackArr[i30].b.f[0];
                    }
                    int i31 = 0;
                    while (i31 < mp4TrackArr.length) {
                        int i32 = i29;
                        long j7 = Long.MAX_VALUE;
                        for (int i33 = 0; i33 < mp4TrackArr.length; i33++) {
                            if (!zArr[i33]) {
                                long j8 = jArr3[i33];
                                if (j8 <= j7) {
                                    i32 = i33;
                                    j7 = j8;
                                }
                            }
                        }
                        int i34 = iArr2[i32];
                        long[] jArr4 = jArr[i32];
                        jArr4[i34] = j3;
                        TrackSampleTable trackSampleTable4 = mp4TrackArr[i32].b;
                        Mp4Track[] mp4TrackArr2 = mp4TrackArr;
                        j3 += trackSampleTable4.d[i34];
                        int i35 = i34 + 1;
                        iArr2[i32] = i35;
                        if (i35 < jArr4.length) {
                            jArr3[i32] = trackSampleTable4.f[i35];
                        } else {
                            zArr[i32] = true;
                            i31++;
                        }
                        mp4TrackArr = mp4TrackArr2;
                        i29 = -1;
                    }
                } else {
                    jArr = null;
                }
                this.G = jArr;
                this.E.n();
                this.E.f(new Mp4SeekMap(j4, this.F, i17));
                arrayDeque3.clear();
                this.A = true;
                if (!this.y && !z2) {
                    if (!arrayList15.isEmpty()) {
                        i = 4;
                    } else {
                        i = 2;
                    }
                    this.n = i;
                }
            } else if (!arrayDeque.isEmpty()) {
                ((Mp4Box.ContainerBox) arrayDeque.peek()).d.add(containerBox);
            }
        }
        int i36 = this.n;
        if (i36 != 4 && i36 != 2) {
            this.n = 0;
            this.q = 0;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
