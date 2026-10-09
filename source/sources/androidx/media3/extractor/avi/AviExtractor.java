package androidx.media3.extractor.avi;

import androidx.datastore.preferences.PreferencesProto$Value;
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
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.text.DefaultSubtitleParserFactory;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.collect.UnmodifiableListIterator;
import java.math.RoundingMode;
import java.util.ArrayList;
import java.util.Arrays;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class AviExtractor implements Extractor {
    public final DefaultSubtitleParserFactory d;
    public int e;
    public AviMainHeaderChunk g;
    public long j;
    public ChunkReader k;
    public int o;
    public boolean p;
    public final boolean c = true;
    public final ParsableByteArray a = new ParsableByteArray(12);
    public final ChunkHeaderHolder b = new Object();
    public ExtractorOutput f = new Object();
    public ChunkReader[] i = new ChunkReader[0];
    public long m = -1;
    public long n = -1;
    public int l = -1;
    public long h = -9223372036854775807L;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public class AviSeekMap implements SeekMap {
        public final long a;

        public AviSeekMap(long j) {
            this.a = j;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean b() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints e(long j) {
            AviExtractor aviExtractor = AviExtractor.this;
            SeekMap.SeekPoints b = aviExtractor.i[0].b(j);
            int i = 1;
            while (true) {
                ChunkReader[] chunkReaderArr = aviExtractor.i;
                if (i < chunkReaderArr.length) {
                    SeekMap.SeekPoints b2 = chunkReaderArr[i].b(j);
                    if (b2.a.b < b.a.b) {
                        b = b2;
                    }
                    i++;
                } else {
                    return b;
                }
            }
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long g() {
            return this.a;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class ChunkHeaderHolder {
        public int a;
        public int b;
        public int c;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [androidx.media3.extractor.avi.AviExtractor$ChunkHeaderHolder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r3v4, types: [java.lang.Object, androidx.media3.extractor.ExtractorOutput] */
    public AviExtractor(DefaultSubtitleParserFactory defaultSubtitleParserFactory) {
        this.d = defaultSubtitleParserFactory;
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        ParsableByteArray parsableByteArray = this.a;
        extractorInput.n(parsableByteArray.a, 0, 12);
        parsableByteArray.M(0);
        if (parsableByteArray.o() != 1179011410) {
            return false;
        }
        parsableByteArray.N(4);
        if (parsableByteArray.o() != 541677121) {
            return false;
        }
        return true;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.j = -1L;
        this.k = null;
        for (ChunkReader chunkReader : this.i) {
            if (chunkReader.l == 0) {
                chunkReader.j = 0;
            } else {
                chunkReader.j = chunkReader.o[Util.d(chunkReader.n, j, true)];
            }
        }
        if (j == 0) {
            if (this.i.length == 0) {
                this.e = 0;
                return;
            } else {
                this.e = 3;
                return;
            }
        }
        this.e = 6;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        this.e = 0;
        if (this.c) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.d);
        }
        this.f = extractorOutput;
        this.j = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:12:0x0032 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0033  */
    /* JADX WARN: Removed duplicated region for block: B:180:0x03c7  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x010d  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x0116  */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        boolean z;
        ChunkReader chunkReader;
        int i;
        long j;
        int i2;
        int i3;
        ChunkReader chunkReader2;
        int i4;
        boolean z2;
        int i5;
        int i6 = 0;
        if (this.j != -1) {
            long position = extractorInput.getPosition();
            long j2 = this.j;
            if (j2 >= position && j2 <= 262144 + position) {
                extractorInput.k((int) (j2 - position));
            } else {
                positionHolder.a = j2;
                z = true;
                this.j = -1L;
                if (!z) {
                    return 1;
                }
                int i7 = this.e;
                int i8 = 4;
                int i9 = 8;
                ChunkReader chunkReader3 = null;
                ChunkHeaderHolder chunkHeaderHolder = this.b;
                int i10 = 2;
                ParsableByteArray parsableByteArray = this.a;
                switch (i7) {
                    case 0:
                        if (b(extractorInput)) {
                            extractorInput.k(12);
                            this.e = 1;
                            return 0;
                        }
                        throw ParserException.a(null, "AVI Header List not found");
                    case 1:
                        extractorInput.readFully(parsableByteArray.a, 0, 12);
                        parsableByteArray.M(0);
                        chunkHeaderHolder.getClass();
                        chunkHeaderHolder.a = parsableByteArray.o();
                        chunkHeaderHolder.b = parsableByteArray.o();
                        chunkHeaderHolder.c = 0;
                        if (chunkHeaderHolder.a == 1414744396) {
                            int o = parsableByteArray.o();
                            chunkHeaderHolder.c = o;
                            if (o == 1819436136) {
                                this.l = chunkHeaderHolder.b;
                                this.e = 2;
                                return 0;
                            }
                            throw ParserException.a(null, "hdrl expected, found: " + chunkHeaderHolder.c);
                        }
                        throw ParserException.a(null, "LIST expected, found: " + chunkHeaderHolder.a);
                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                        int i11 = this.l - 4;
                        ParsableByteArray parsableByteArray2 = new ParsableByteArray(i11);
                        extractorInput.readFully(parsableByteArray2.a, 0, i11);
                        ListChunk c = ListChunk.c(1819436136, parsableByteArray2);
                        int i12 = c.b;
                        if (i12 == 1819436136) {
                            AviMainHeaderChunk aviMainHeaderChunk = (AviMainHeaderChunk) c.b(AviMainHeaderChunk.class);
                            if (aviMainHeaderChunk != null) {
                                this.g = aviMainHeaderChunk;
                                this.h = aviMainHeaderChunk.c * aviMainHeaderChunk.a;
                                ArrayList arrayList = new ArrayList();
                                UnmodifiableListIterator listIterator = c.a.listIterator(0);
                                int i13 = 0;
                                while (listIterator.hasNext()) {
                                    AviChunk aviChunk = (AviChunk) listIterator.next();
                                    if (aviChunk.a() == 1819440243) {
                                        ListChunk listChunk = (ListChunk) aviChunk;
                                        int i14 = i13 + 1;
                                        AviStreamHeaderChunk aviStreamHeaderChunk = (AviStreamHeaderChunk) listChunk.b(AviStreamHeaderChunk.class);
                                        StreamFormatChunk streamFormatChunk = (StreamFormatChunk) listChunk.b(StreamFormatChunk.class);
                                        if (aviStreamHeaderChunk == null) {
                                            Log.f("AviExtractor", "Missing Stream Header");
                                        } else if (streamFormatChunk == null) {
                                            Log.f("AviExtractor", "Missing Stream Format");
                                        } else {
                                            long j3 = aviStreamHeaderChunk.c;
                                            String str = Util.a;
                                            long J = Util.J(aviStreamHeaderChunk.d, aviStreamHeaderChunk.b * 1000000, j3, RoundingMode.DOWN);
                                            Format format = streamFormatChunk.a;
                                            Format.Builder a = format.a();
                                            a.a = Integer.toString(i13);
                                            int i15 = aviStreamHeaderChunk.e;
                                            if (i15 != 0) {
                                                a.p = i15;
                                            }
                                            StreamNameChunk streamNameChunk = (StreamNameChunk) listChunk.b(StreamNameChunk.class);
                                            if (streamNameChunk != null) {
                                                a.b = streamNameChunk.a;
                                            }
                                            int g = MimeTypes.g(format.p);
                                            if (g == 1 || g == i10) {
                                                TrackOutput s = this.f.s(i13, g);
                                                Format format2 = new Format(a);
                                                s.e(format2);
                                                s.d(J);
                                                this.h = Math.max(this.h, J);
                                                chunkReader = new ChunkReader(i13, aviStreamHeaderChunk, s, MimeTypes.a(format2.p, format2.l));
                                                if (chunkReader != null) {
                                                    arrayList.add(chunkReader);
                                                }
                                                i13 = i14;
                                            }
                                        }
                                        chunkReader = null;
                                        if (chunkReader != null) {
                                        }
                                        i13 = i14;
                                    }
                                    i10 = 2;
                                }
                                this.i = (ChunkReader[]) arrayList.toArray(new ChunkReader[0]);
                                this.f.n();
                                this.e = 3;
                                return 0;
                            }
                            throw ParserException.a(null, "AviHeader not found");
                        }
                        throw ParserException.a(null, "Unexpected header list type " + i12);
                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                        if (this.m != -1) {
                            long position2 = extractorInput.getPosition();
                            i = 16;
                            long j4 = this.m;
                            if (position2 != j4) {
                                this.j = j4;
                                return 0;
                            }
                        } else {
                            i = 16;
                        }
                        extractorInput.n(parsableByteArray.a, 0, 12);
                        extractorInput.j();
                        parsableByteArray.M(0);
                        chunkHeaderHolder.getClass();
                        chunkHeaderHolder.a = parsableByteArray.o();
                        chunkHeaderHolder.b = parsableByteArray.o();
                        chunkHeaderHolder.c = 0;
                        int o2 = parsableByteArray.o();
                        int i16 = chunkHeaderHolder.a;
                        if (i16 == 1179011410) {
                            extractorInput.k(12);
                            return 0;
                        }
                        if (i16 == 1414744396 && o2 == 1769369453) {
                            long position3 = extractorInput.getPosition();
                            this.m = position3;
                            this.n = position3 + chunkHeaderHolder.b + 8;
                            if (!this.p) {
                                AviMainHeaderChunk aviMainHeaderChunk2 = this.g;
                                aviMainHeaderChunk2.getClass();
                                if ((aviMainHeaderChunk2.b & i) == i) {
                                    this.e = 4;
                                    this.j = this.n;
                                    return 0;
                                }
                                this.f.f(new SeekMap.Unseekable(this.h));
                                this.p = true;
                            }
                            this.j = extractorInput.getPosition() + 12;
                            this.e = 6;
                            return 0;
                        }
                        this.j = extractorInput.getPosition() + chunkHeaderHolder.b + 8;
                        return 0;
                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                        extractorInput.readFully(parsableByteArray.a, 0, 8);
                        parsableByteArray.M(0);
                        int o3 = parsableByteArray.o();
                        int o4 = parsableByteArray.o();
                        if (o3 == 829973609) {
                            this.e = 5;
                            this.o = o4;
                            return 0;
                        }
                        this.j = extractorInput.getPosition() + o4;
                        return 0;
                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                        ParsableByteArray parsableByteArray3 = new ParsableByteArray(this.o);
                        extractorInput.readFully(parsableByteArray3.a, 0, this.o);
                        if (parsableByteArray3.a() < 16) {
                            j = 0;
                        } else {
                            int i17 = parsableByteArray3.b;
                            parsableByteArray3.N(8);
                            long o5 = parsableByteArray3.o();
                            long j5 = this.m;
                            if (o5 > j5) {
                                j = 0;
                            } else {
                                j = j5 + 8;
                            }
                            parsableByteArray3.M(i17);
                        }
                        while (parsableByteArray3.a() >= 16) {
                            int o6 = parsableByteArray3.o();
                            int o7 = parsableByteArray3.o();
                            long o8 = parsableByteArray3.o() + j;
                            parsableByteArray3.N(i8);
                            ChunkReader[] chunkReaderArr = this.i;
                            int length = chunkReaderArr.length;
                            int i18 = i6;
                            while (true) {
                                if (i18 < length) {
                                    chunkReader2 = chunkReaderArr[i18];
                                    i3 = i6;
                                    if (chunkReader2.c != o6 && chunkReader2.d != o6) {
                                        i18++;
                                        i6 = i3;
                                    }
                                } else {
                                    i3 = i6;
                                    chunkReader2 = null;
                                }
                            }
                            if (chunkReader2 != null) {
                                if ((o7 & 16) == 16) {
                                    i4 = 1;
                                } else {
                                    i4 = i3;
                                }
                                if (chunkReader2.m == -1) {
                                    chunkReader2.m = o8;
                                }
                                if (i4 != 0 || chunkReader2.f) {
                                    if (chunkReader2.l == chunkReader2.o.length) {
                                        long[] jArr = chunkReader2.n;
                                        chunkReader2.n = Arrays.copyOf(jArr, (jArr.length * 3) / 2);
                                        int[] iArr = chunkReader2.o;
                                        chunkReader2.o = Arrays.copyOf(iArr, (iArr.length * 3) / 2);
                                    }
                                    long[] jArr2 = chunkReader2.n;
                                    int i19 = chunkReader2.l;
                                    jArr2[i19] = o8;
                                    chunkReader2.o[i19] = chunkReader2.k;
                                    chunkReader2.l = i19 + 1;
                                }
                                chunkReader2.k++;
                            }
                            i6 = i3;
                            i8 = 4;
                        }
                        int i20 = i6;
                        ChunkReader[] chunkReaderArr2 = this.i;
                        int length2 = chunkReaderArr2.length;
                        for (int i21 = i20; i21 < length2; i21++) {
                            ChunkReader chunkReader4 = chunkReaderArr2[i21];
                            chunkReader4.n = Arrays.copyOf(chunkReader4.n, chunkReader4.l);
                            chunkReader4.o = Arrays.copyOf(chunkReader4.o, chunkReader4.l);
                            if (chunkReader4.f && chunkReader4.a.f != 0 && (i2 = chunkReader4.l) > 0) {
                                chunkReader4.g = i2;
                            }
                        }
                        this.p = true;
                        int length3 = this.i.length;
                        ExtractorOutput extractorOutput = this.f;
                        long j6 = this.h;
                        if (length3 == 0) {
                            extractorOutput.f(new SeekMap.Unseekable(j6));
                        } else {
                            extractorOutput.f(new AviSeekMap(j6));
                        }
                        this.e = 6;
                        this.j = this.m;
                        return i20;
                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                        if (extractorInput.getPosition() >= this.n) {
                            return -1;
                        }
                        ChunkReader chunkReader5 = this.k;
                        if (chunkReader5 != null) {
                            int i22 = chunkReader5.i;
                            int c2 = i22 - chunkReader5.b.c(extractorInput, i22, false);
                            chunkReader5.i = c2;
                            if (c2 == 0) {
                                z2 = true;
                            } else {
                                z2 = false;
                            }
                            if (z2) {
                                if (chunkReader5.h > 0) {
                                    TrackOutput trackOutput = chunkReader5.b;
                                    int i23 = chunkReader5.j;
                                    long j7 = (chunkReader5.e * i23) / chunkReader5.g;
                                    if (!chunkReader5.f && Arrays.binarySearch(chunkReader5.o, i23) < 0) {
                                        i5 = 0;
                                    } else {
                                        i5 = 1;
                                    }
                                    trackOutput.g(j7, i5, chunkReader5.h, 0, null);
                                }
                                chunkReader5.j++;
                            }
                            if (z2) {
                                this.k = null;
                            }
                            return 0;
                        }
                        if ((extractorInput.getPosition() & 1) == 1) {
                            extractorInput.k(1);
                        }
                        extractorInput.n(parsableByteArray.a, 0, 12);
                        parsableByteArray.M(0);
                        int o9 = parsableByteArray.o();
                        if (o9 == 1414744396) {
                            parsableByteArray.M(8);
                            if (parsableByteArray.o() == 1769369453) {
                                i9 = 12;
                            }
                            extractorInput.k(i9);
                            extractorInput.j();
                            return 0;
                        }
                        int o10 = parsableByteArray.o();
                        if (o9 == 1263424842) {
                            this.j = extractorInput.getPosition() + o10 + 8;
                            return 0;
                        }
                        extractorInput.k(8);
                        extractorInput.j();
                        for (ChunkReader chunkReader6 : this.i) {
                            if (chunkReader6.c == o9 || chunkReader6.d == o9) {
                                chunkReader3 = chunkReader6;
                                if (chunkReader3 != null) {
                                    this.j = extractorInput.getPosition() + o10;
                                    return 0;
                                }
                                chunkReader3.h = o10;
                                chunkReader3.i = o10;
                                this.k = chunkReader3;
                                return 0;
                            }
                        }
                        if (chunkReader3 != null) {
                        }
                        break;
                    default:
                        throw new AssertionError();
                }
            }
        }
        z = false;
        this.j = -1L;
        if (!z) {
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
