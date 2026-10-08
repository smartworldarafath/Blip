package androidx.media3.extractor.mkv;

import android.util.Pair;
import android.util.SparseArray;
import androidx.compose.foundation.text.KeyModifiers;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.C;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.extractor.AacUtil;
import androidx.media3.extractor.Av1Config;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.mkv.MatroskaExtractor;
import com.google.common.collect.ImmutableList;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.Map;
import java.util.UUID;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class DefaultEbmlReader {
    public final byte[] a = new byte[8];
    public final ArrayDeque b = new ArrayDeque();
    public final VarintReader c = new VarintReader();
    public EbmlProcessor d;
    public int e;
    public int f;
    public long g;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MasterElement {
        public final int a;
        public final long b;

        public MasterElement(int i, long j) {
            this.a = i;
            this.b = j;
        }
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x06b3, code lost:
    
        if (r4 == 0) goto L461;
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x06c2, code lost:
    
        r21 = r0;
        r19 = r3;
        r5 = r4;
        r18 = r6;
        r16 = r11;
        r33 = "video/webm";
        r3 = -1;
        r4 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x06ff, code lost:
    
        if (r4 == 0) goto L461;
     */
    /* JADX WARN: Code restructure failed: missing block: B:611:0x0acb, code lost:
    
        if (r3.t() == r6.getLeastSignificantBits()) goto L613;
     */
    /* JADX WARN: Failed to find 'out' block for switch in B:313:0x063d. Please report as an issue. */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:322:0x0b24  */
    /* JADX WARN: Removed duplicated region for block: B:327:0x0b48  */
    /* JADX WARN: Removed duplicated region for block: B:330:0x0b5c  */
    /* JADX WARN: Removed duplicated region for block: B:333:0x0d4f  */
    /* JADX WARN: Removed duplicated region for block: B:338:0x0d63  */
    /* JADX WARN: Removed duplicated region for block: B:340:0x0d66  */
    /* JADX WARN: Removed duplicated region for block: B:341:0x0b6c  */
    /* JADX WARN: Removed duplicated region for block: B:441:0x0b4b  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0b3a  */
    /* JADX WARN: Type inference failed for: r11v21 */
    /* JADX WARN: Type inference failed for: r11v22 */
    /* JADX WARN: Type inference failed for: r1v62 */
    /* JADX WARN: Type inference failed for: r1v63 */
    /* JADX WARN: Type inference failed for: r1v67 */
    /* JADX WARN: Type inference failed for: r5v31 */
    /* JADX WARN: Type inference failed for: r5v32, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r5v33 */
    /* JADX WARN: Type inference failed for: r5v49 */
    /* JADX WARN: Type inference failed for: r5v50, types: [java.lang.RuntimeException] */
    /* JADX WARN: Type inference failed for: r5v51, types: [int] */
    /* JADX WARN: Type inference failed for: r6v121 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean a(ExtractorInput extractorInput) {
        int i;
        boolean z;
        int i2;
        String str;
        double longBitsToDouble;
        int i3;
        int a;
        String str2;
        char c;
        char c2;
        int i4;
        SparseArray sparseArray;
        String str3;
        MatroskaExtractor matroskaExtractor;
        List singletonList;
        String str4;
        int i5;
        ?? r5;
        int i6;
        String str5;
        int i7;
        ?? r52;
        long q;
        Pair pair;
        String str6;
        String str7;
        String str8;
        int i8;
        int i9;
        List list;
        int i10;
        int i11;
        int i12;
        String str9;
        int i13;
        int i14;
        int i15;
        List t;
        int r;
        int t2;
        int i16;
        String str10;
        String str11;
        Format.Builder builder;
        int i17;
        int i18;
        byte[] bArr;
        int i19;
        int i20;
        String str12;
        int i21;
        this.d.getClass();
        while (true) {
            ArrayDeque arrayDeque = this.b;
            MasterElement masterElement = (MasterElement) arrayDeque.peek();
            int i22 = 0;
            if (masterElement != null) {
                i = 8;
                if (extractorInput.getPosition() >= masterElement.b) {
                    EbmlProcessor ebmlProcessor = this.d;
                    int i23 = ((MasterElement) arrayDeque.pop()).a;
                    MatroskaExtractor matroskaExtractor2 = MatroskaExtractor.this;
                    Map map = MatroskaExtractor.v0;
                    SparseArray sparseArray2 = matroskaExtractor2.E;
                    SparseArray sparseArray3 = matroskaExtractor2.c;
                    matroskaExtractor2.p0.getClass();
                    if (i23 == 128) {
                        MatroskaExtractor.ChapterEntry chapterEntry = matroskaExtractor2.z;
                        chapterEntry.getClass();
                        if (chapterEntry.f != null || (str2 = chapterEntry.h) == null) {
                            return true;
                        }
                        chapterEntry.f = str2;
                        String str13 = chapterEntry.i;
                        if (str13 == null) {
                            return true;
                        }
                        chapterEntry.g = str13;
                        return true;
                    }
                    if (i23 == 160) {
                        if (matroskaExtractor2.U != 2) {
                            return true;
                        }
                        MatroskaExtractor.Track track = (MatroskaExtractor.Track) sparseArray3.get(matroskaExtractor2.a0);
                        track.d0.getClass();
                        if (matroskaExtractor2.f0 > 0 && "A_OPUS".equals(track.c)) {
                            ParsableByteArray parsableByteArray = matroskaExtractor2.q;
                            byte[] array = ByteBuffer.allocate(8).order(ByteOrder.LITTLE_ENDIAN).putLong(matroskaExtractor2.f0).array();
                            parsableByteArray.getClass();
                            parsableByteArray.K(array.length, array);
                        }
                        int i24 = 0;
                        for (int i25 = 0; i25 < matroskaExtractor2.Y; i25++) {
                            i24 += matroskaExtractor2.Z[i25];
                        }
                        int i26 = 0;
                        while (i26 < matroskaExtractor2.Y) {
                            long j = matroskaExtractor2.V + ((track.g * i26) / 1000);
                            int i27 = matroskaExtractor2.c0;
                            if (i26 == 0 && !matroskaExtractor2.e0) {
                                i27 |= 1;
                            }
                            int i28 = matroskaExtractor2.Z[i26];
                            int i29 = i24 - i28;
                            matroskaExtractor2.i(track, j, i27, i28, i29);
                            i26++;
                            i24 = i29;
                        }
                        matroskaExtractor2.U = 0;
                        return true;
                    }
                    if (i23 != 174) {
                        if (i23 == 17849) {
                            while (i22 < sparseArray3.size()) {
                                matroskaExtractor2.p((MatroskaExtractor.Track) sparseArray3.valueAt(i22));
                                i22++;
                            }
                        } else {
                            if (i23 == 19899) {
                                int i30 = matroskaExtractor2.C;
                                if (i30 != -1) {
                                    long j2 = matroskaExtractor2.D;
                                    if (j2 != -1) {
                                        if (i30 == 475249515) {
                                            matroskaExtractor2.M = j2;
                                            return true;
                                        }
                                        if (i30 == 374648427) {
                                            matroskaExtractor2.O = j2;
                                            return true;
                                        }
                                    }
                                }
                                throw ParserException.a(null, "Mandatory element SeekID or SeekPosition not found");
                            }
                            if (i23 == 25152) {
                                matroskaExtractor2.h(i23);
                                MatroskaExtractor.Track track2 = matroskaExtractor2.A;
                                if (track2.j) {
                                    TrackOutput.CryptoData cryptoData = track2.l;
                                    if (cryptoData != null) {
                                        track2.n = new DrmInitData(null, true, new DrmInitData.SchemeData(C.a, null, "video/webm", cryptoData.b));
                                        return true;
                                    }
                                    throw ParserException.a(null, "Encrypted Track found but ContentEncKeyID was not found");
                                }
                            } else if (i23 == 28032) {
                                matroskaExtractor2.h(i23);
                                MatroskaExtractor.Track track3 = matroskaExtractor2.A;
                                if (track3.j && track3.k != null) {
                                    throw ParserException.a(null, "Combining encryption and compression is not supported");
                                }
                            } else if (i23 == 357149030) {
                                if (matroskaExtractor2.u == -9223372036854775807L) {
                                    matroskaExtractor2.u = 1000000L;
                                }
                                long j3 = matroskaExtractor2.v;
                                if (j3 != -9223372036854775807L) {
                                    matroskaExtractor2.w = matroskaExtractor2.o(j3);
                                    return true;
                                }
                            } else if (i23 != 374648427) {
                                if (i23 != 475249515) {
                                    if (i23 != 182) {
                                        if (i23 == 183 && !matroskaExtractor2.B) {
                                            matroskaExtractor2.g(i23);
                                            if (matroskaExtractor2.G != -9223372036854775807L && (i21 = matroskaExtractor2.H) != -1 && matroskaExtractor2.I != -1) {
                                                List list2 = (List) sparseArray2.get(i21);
                                                if (list2 == null) {
                                                    list2 = new ArrayList();
                                                    sparseArray2.put(matroskaExtractor2.H, list2);
                                                }
                                                list2.add(new MatroskaExtractor.MatroskaSeekMap.CuePointData(matroskaExtractor2.G, matroskaExtractor2.t + matroskaExtractor2.I, matroskaExtractor2.J));
                                                return true;
                                            }
                                        }
                                    } else {
                                        MatroskaExtractor.ChapterEntry chapterEntry2 = matroskaExtractor2.z;
                                        chapterEntry2.getClass();
                                        long j4 = chapterEntry2.a;
                                        if (j4 != 0) {
                                            matroskaExtractor2.d.put(j4, chapterEntry2);
                                        }
                                        matroskaExtractor2.z = null;
                                        return true;
                                    }
                                } else if (!matroskaExtractor2.B) {
                                    int i31 = 0;
                                    while (true) {
                                        if (i31 < sparseArray2.size()) {
                                            if (((List) sparseArray2.valueAt(i31)).isEmpty()) {
                                                i31++;
                                            } else if (matroskaExtractor2.w != -9223372036854775807L) {
                                                for (int i32 = 0; i32 < sparseArray2.size(); i32++) {
                                                    Collections.sort((List) sparseArray2.valueAt(i32));
                                                }
                                                matroskaExtractor2.p0.f(new MatroskaExtractor.MatroskaSeekMap(sparseArray2, matroskaExtractor2.w, matroskaExtractor2.K, matroskaExtractor2.t, matroskaExtractor2.s));
                                            }
                                        }
                                    }
                                    matroskaExtractor2.p0.f(new SeekMap.Unseekable(matroskaExtractor2.w));
                                    matroskaExtractor2.B = true;
                                    matroskaExtractor2.F = false;
                                    while (i22 < sparseArray3.size()) {
                                        MatroskaExtractor.Track track4 = (MatroskaExtractor.Track) sparseArray3.valueAt(i22);
                                        if (!track4.X) {
                                            matroskaExtractor2.p(track4);
                                            track4.d0.getClass();
                                            TrackOutput trackOutput = track4.d0;
                                            Format format = track4.e0;
                                            format.getClass();
                                            trackOutput.e(format);
                                        }
                                        i22++;
                                    }
                                    matroskaExtractor2.l();
                                    return true;
                                }
                            } else if (sparseArray3.size() != 0) {
                                ?? r1 = !matroskaExtractor2.e || matroskaExtractor2.M == -1 || matroskaExtractor2.B;
                                int i33 = -1;
                                int i34 = -1;
                                int i35 = -1;
                                int i36 = -1;
                                for (int i37 = 0; i37 < sparseArray3.size(); i37++) {
                                    MatroskaExtractor.Track track5 = (MatroskaExtractor.Track) sparseArray3.valueAt(i37);
                                    int i38 = track5.f;
                                    if (i38 == 2) {
                                        if (track5.b0) {
                                            i33 = track5.d;
                                        }
                                        if (i34 == -1) {
                                            i34 = track5.d;
                                        }
                                    } else if (i38 == 1) {
                                        if (track5.b0) {
                                            i35 = track5.d;
                                        }
                                        if (i36 == -1) {
                                            i36 = track5.d;
                                        }
                                    }
                                    if (r1 != false && !track5.X) {
                                        matroskaExtractor2.p(track5);
                                        track5.d0.getClass();
                                        TrackOutput trackOutput2 = track5.d0;
                                        Format format2 = track5.e0;
                                        format2.getClass();
                                        trackOutput2.e(format2);
                                    }
                                }
                                if (i33 != -1) {
                                    matroskaExtractor2.K = i33;
                                } else if (i34 != -1) {
                                    matroskaExtractor2.K = i34;
                                } else if (i35 != -1) {
                                    matroskaExtractor2.K = i35;
                                } else if (i36 != -1) {
                                    matroskaExtractor2.K = i36;
                                } else {
                                    matroskaExtractor2.K = sparseArray3.size() > 0 ? ((MatroskaExtractor.Track) sparseArray3.valueAt(0)).d : -1;
                                }
                                matroskaExtractor2.R = true;
                                if (r1 != false) {
                                    matroskaExtractor2.l();
                                    return true;
                                }
                            } else {
                                throw ParserException.a(null, "No valid tracks were found");
                            }
                        }
                        return true;
                    }
                    MatroskaExtractor.Track track6 = matroskaExtractor2.A;
                    track6.getClass();
                    String str14 = track6.c;
                    if (str14 != null) {
                        switch (str14.hashCode()) {
                            case -2095576542:
                                if (str14.equals("V_MPEG4/ISO/AP")) {
                                    c = 0;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -2095575984:
                                if (str14.equals("V_MPEG4/ISO/SP")) {
                                    c = 1;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1985379776:
                                if (str14.equals("A_MS/ACM")) {
                                    c = 2;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1784763192:
                                if (str14.equals("A_TRUEHD")) {
                                    c = 3;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1730367663:
                                if (str14.equals("A_VORBIS")) {
                                    c = 4;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1482641358:
                                if (str14.equals("A_MPEG/L2")) {
                                    c = 5;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1482641357:
                                if (str14.equals("A_MPEG/L3")) {
                                    c = 6;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -1373388978:
                                if (str14.equals("V_MS/VFW/FOURCC")) {
                                    c = 7;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -933872740:
                                if (str14.equals("S_DVBSUB")) {
                                    c = '\b';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -538363189:
                                if (str14.equals("V_MPEG4/ISO/ASP")) {
                                    c = '\t';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -538363109:
                                if (str14.equals("V_MPEG4/ISO/AVC")) {
                                    c = '\n';
                                    break;
                                }
                                c = 65535;
                                break;
                            case -425012669:
                                if (str14.equals("S_VOBSUB")) {
                                    c = 11;
                                    break;
                                }
                                c = 65535;
                                break;
                            case -356037306:
                                if (str14.equals("A_DTS/LOSSLESS")) {
                                    c = '\f';
                                    break;
                                }
                                c = 65535;
                                break;
                            case 62923557:
                                if (str14.equals("A_AAC")) {
                                    c = '\r';
                                    break;
                                }
                                c = 65535;
                                break;
                            case 62923603:
                                if (str14.equals("A_AC3")) {
                                    c = 14;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 62927045:
                                if (str14.equals("A_DTS")) {
                                    c = 15;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 82318131:
                                if (str14.equals("V_AV1")) {
                                    c = 16;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 82338133:
                                if (str14.equals("V_VP8")) {
                                    c = 17;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 82338134:
                                if (str14.equals("V_VP9")) {
                                    c = 18;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 99146302:
                                if (str14.equals("S_HDMV/PGS")) {
                                    c = 19;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 444813526:
                                if (str14.equals("V_THEORA")) {
                                    c = 20;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 542569478:
                                if (str14.equals("A_DTS/EXPRESS")) {
                                    c = 21;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 635596514:
                                if (str14.equals("A_PCM/FLOAT/IEEE")) {
                                    c = 22;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 725948237:
                                if (str14.equals("A_PCM/INT/BIG")) {
                                    c = 23;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 725957860:
                                if (str14.equals("A_PCM/INT/LIT")) {
                                    c = 24;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 738597099:
                                if (str14.equals("S_TEXT/ASS")) {
                                    c = 25;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 738614379:
                                if (str14.equals("S_TEXT/SSA")) {
                                    c = 26;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 855502857:
                                if (str14.equals("V_MPEGH/ISO/HEVC")) {
                                    c = 27;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1045209816:
                                if (str14.equals("S_TEXT/WEBVTT")) {
                                    c = 28;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1422270023:
                                if (str14.equals("S_TEXT/UTF8")) {
                                    c = 29;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1809237540:
                                if (str14.equals("V_MPEG2")) {
                                    c = 30;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1950640843:
                                if (str14.equals("A_ALAC")) {
                                    c = 31;
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1950749482:
                                if (str14.equals("A_EAC3")) {
                                    c = ' ';
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1950789798:
                                if (str14.equals("A_FLAC")) {
                                    c = '!';
                                    break;
                                }
                                c = 65535;
                                break;
                            case 1951062397:
                                if (str14.equals("A_OPUS")) {
                                    c = '\"';
                                    break;
                                }
                                c = 65535;
                                break;
                            default:
                                c = 65535;
                                break;
                        }
                        switch (c) {
                            case 0:
                            case 1:
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                            case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                            case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                            case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                            case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                            case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                            case KeyModifiers.a /* 9 */:
                            case KeyModifiers.b /* 10 */:
                            case 11:
                            case KeyModifiers.c /* 12 */:
                            case '\r':
                            case 14:
                            case 15:
                            case 16:
                            case 17:
                            case 18:
                            case 19:
                            case 20:
                            case 21:
                            case 22:
                            case 23:
                            case 24:
                            case 25:
                            case 26:
                            case 27:
                            case 28:
                            case 29:
                            case 30:
                            case 31:
                            case ' ':
                            case '!':
                            case '\"':
                                int i39 = track6.d;
                                switch (str14.hashCode()) {
                                    case -2095576542:
                                        if (str14.equals("V_MPEG4/ISO/AP")) {
                                            c2 = 0;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -2095575984:
                                        if (str14.equals("V_MPEG4/ISO/SP")) {
                                            c2 = 1;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -1985379776:
                                        if (str14.equals("A_MS/ACM")) {
                                            c2 = 2;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -1784763192:
                                        if (str14.equals("A_TRUEHD")) {
                                            c2 = 3;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -1730367663:
                                        if (str14.equals("A_VORBIS")) {
                                            c2 = 4;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -1482641358:
                                        if (str14.equals("A_MPEG/L2")) {
                                            c2 = 5;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -1482641357:
                                        if (str14.equals("A_MPEG/L3")) {
                                            c2 = 6;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -1373388978:
                                        if (str14.equals("V_MS/VFW/FOURCC")) {
                                            c2 = 7;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -933872740:
                                        if (str14.equals("S_DVBSUB")) {
                                            c2 = '\b';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -538363189:
                                        if (str14.equals("V_MPEG4/ISO/ASP")) {
                                            c2 = '\t';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -538363109:
                                        if (str14.equals("V_MPEG4/ISO/AVC")) {
                                            c2 = '\n';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -425012669:
                                        if (str14.equals("S_VOBSUB")) {
                                            c2 = 11;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case -356037306:
                                        if (str14.equals("A_DTS/LOSSLESS")) {
                                            c2 = '\f';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 62923557:
                                        if (str14.equals("A_AAC")) {
                                            c2 = '\r';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 62923603:
                                        if (str14.equals("A_AC3")) {
                                            c2 = 14;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 62927045:
                                        if (str14.equals("A_DTS")) {
                                            c2 = 15;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 82318131:
                                        if (str14.equals("V_AV1")) {
                                            c2 = 16;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 82338133:
                                        if (str14.equals("V_VP8")) {
                                            c2 = 17;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 82338134:
                                        if (str14.equals("V_VP9")) {
                                            c2 = 18;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 99146302:
                                        if (str14.equals("S_HDMV/PGS")) {
                                            c2 = 19;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 444813526:
                                        if (str14.equals("V_THEORA")) {
                                            c2 = 20;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 542569478:
                                        if (str14.equals("A_DTS/EXPRESS")) {
                                            c2 = 21;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 635596514:
                                        if (str14.equals("A_PCM/FLOAT/IEEE")) {
                                            c2 = 22;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 725948237:
                                        if (str14.equals("A_PCM/INT/BIG")) {
                                            c2 = 23;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 725957860:
                                        if (str14.equals("A_PCM/INT/LIT")) {
                                            c2 = 24;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 738597099:
                                        if (str14.equals("S_TEXT/ASS")) {
                                            c2 = 25;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 738614379:
                                        if (str14.equals("S_TEXT/SSA")) {
                                            c2 = 26;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 855502857:
                                        if (str14.equals("V_MPEGH/ISO/HEVC")) {
                                            c2 = 27;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 1045209816:
                                        if (str14.equals("S_TEXT/WEBVTT")) {
                                            c2 = 28;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 1422270023:
                                        if (str14.equals("S_TEXT/UTF8")) {
                                            c2 = 29;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 1809237540:
                                        if (str14.equals("V_MPEG2")) {
                                            c2 = 30;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 1950640843:
                                        if (str14.equals("A_ALAC")) {
                                            c2 = 31;
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 1950749482:
                                        if (str14.equals("A_EAC3")) {
                                            c2 = ' ';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 1950789798:
                                        if (str14.equals("A_FLAC")) {
                                            c2 = '!';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    case 1951062397:
                                        if (str14.equals("A_OPUS")) {
                                            c2 = '\"';
                                            break;
                                        }
                                        c2 = 65535;
                                        break;
                                    default:
                                        c2 = 65535;
                                        break;
                                }
                                String str15 = "video/x-unknown";
                                switch (c2) {
                                    case 0:
                                    case 1:
                                    case KeyModifiers.a /* 9 */:
                                        i4 = i39;
                                        sparseArray = sparseArray3;
                                        str3 = "video/webm";
                                        byte[] bArr2 = track6.m;
                                        matroskaExtractor = matroskaExtractor2;
                                        singletonList = bArr2 == null ? null : Collections.singletonList(bArr2);
                                        str4 = "video/mp4v-es";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        if (track6.P == null) {
                                            i16 = i6;
                                            DolbyVisionConfig a2 = DolbyVisionConfig.a(new ParsableByteArray(track6.P));
                                            if (a2 != null) {
                                                str10 = "video/dolby-vision";
                                                str11 = a2.a;
                                                int i40 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                                builder = new Format.Builder();
                                                if (MimeTypes.h(str10)) {
                                                    builder.I = track6.Q;
                                                    builder.J = track6.S;
                                                    builder.K = track6.T;
                                                    builder.L = i5;
                                                } else if (MimeTypes.k(str10)) {
                                                    if (track6.t == 0) {
                                                        int i41 = track6.r;
                                                        i17 = -1;
                                                        if (i41 == -1) {
                                                            i41 = track6.o;
                                                        }
                                                        track6.r = i41;
                                                        int i42 = track6.s;
                                                        if (i42 == -1) {
                                                            i42 = track6.p;
                                                        }
                                                        track6.s = i42;
                                                    } else {
                                                        i17 = -1;
                                                    }
                                                    float f = (track6.r == i17 || (i20 = track6.s) == i17) ? -1.0f : (track6.p * r5) / (track6.o * i20);
                                                    if (i13 == -1 && i9 == -1) {
                                                        if (i15 != -1 && track6.C == -1) {
                                                            i13 = track6.A;
                                                            i9 = track6.B;
                                                        } else {
                                                            i13 = track6.A;
                                                            i9 = track6.B;
                                                            i15 = track6.C;
                                                        }
                                                    }
                                                    if (i7 == -1 && (i7 = track6.q) == -1) {
                                                        i7 = 8;
                                                    }
                                                    if (i14 != -1) {
                                                        i18 = i14;
                                                    } else {
                                                        i18 = track6.q;
                                                        if (i18 == -1) {
                                                            i18 = 8;
                                                        }
                                                    }
                                                    if (track6.F == -1.0f || track6.G == -1.0f || track6.H == -1.0f || track6.I == -1.0f || track6.J == -1.0f || track6.K == -1.0f || track6.L == -1.0f || track6.M == -1.0f || track6.N == -1.0f || track6.O == -1.0f) {
                                                        bArr = null;
                                                    } else {
                                                        bArr = new byte[25];
                                                        ByteBuffer order = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
                                                        order.put((byte) 0);
                                                        order.putShort((short) ((track6.F * 50000.0f) + 0.5f));
                                                        order.putShort((short) ((track6.G * 50000.0f) + 0.5f));
                                                        order.putShort((short) ((track6.H * 50000.0f) + 0.5f));
                                                        order.putShort((short) ((track6.I * 50000.0f) + 0.5f));
                                                        order.putShort((short) ((track6.J * 50000.0f) + 0.5f));
                                                        order.putShort((short) ((track6.K * 50000.0f) + 0.5f));
                                                        order.putShort((short) ((track6.L * 50000.0f) + 0.5f));
                                                        order.putShort((short) ((track6.M * 50000.0f) + 0.5f));
                                                        order.putShort((short) (track6.N + 0.5f));
                                                        order.putShort((short) (track6.O + 0.5f));
                                                        order.putShort((short) track6.D);
                                                        order.putShort((short) track6.E);
                                                    }
                                                    ColorInfo.Builder builder2 = new ColorInfo.Builder();
                                                    builder2.a = i13;
                                                    builder2.b = i15;
                                                    builder2.c = i9;
                                                    builder2.d = bArr;
                                                    builder2.e = i7;
                                                    builder2.f = i18;
                                                    ColorInfo a3 = builder2.a();
                                                    String str16 = track6.b;
                                                    int intValue = (str16 == null || !map.containsKey(str16)) ? -1 : ((Integer) map.get(track6.b)).intValue();
                                                    if (track6.u == 0 && Float.compare(track6.v, 0.0f) == 0 && Float.compare(track6.w, 0.0f) == 0) {
                                                        if (Float.compare(track6.x, 0.0f) == 0) {
                                                            i19 = 0;
                                                        } else if (Float.compare(track6.x, 90.0f) == 0) {
                                                            i19 = 90;
                                                        } else if (Float.compare(track6.x, -180.0f) == 0 || Float.compare(track6.x, 180.0f) == 0) {
                                                            i19 = 180;
                                                        } else if (Float.compare(track6.x, -90.0f) == 0) {
                                                            i19 = 270;
                                                        }
                                                        builder.v = track6.o;
                                                        builder.w = track6.p;
                                                        builder.D = f;
                                                        builder.B = i19;
                                                        builder.E = track6.y;
                                                        builder.F = track6.z;
                                                        builder.G = a3;
                                                    }
                                                    i19 = intValue;
                                                    builder.v = track6.o;
                                                    builder.w = track6.p;
                                                    builder.D = f;
                                                    builder.B = i19;
                                                    builder.E = track6.y;
                                                    builder.F = track6.z;
                                                    builder.G = a3;
                                                } else if (!"application/x-subrip".equals(str10) && !"text/x-ssa".equals(str10) && !"text/vtt".equals(str10) && !"application/vobsub".equals(str10) && !"application/pgs".equals(str10) && !"application/dvbsubs".equals(str10)) {
                                                    throw ParserException.a(null, "Unexpected MIME type.");
                                                }
                                                str12 = track6.b;
                                                if (str12 != null && !map.containsKey(str12)) {
                                                    builder.b = track6.b;
                                                }
                                                builder.a = Integer.toString(i4);
                                                builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                                builder.o = MimeTypes.l(str10);
                                                builder.p = i16;
                                                builder.d = track6.c0;
                                                builder.e = i40;
                                                builder.r = singletonList;
                                                builder.k = str11;
                                                builder.s = track6.n;
                                                track6.e0 = new Format(builder);
                                                matroskaExtractor2 = matroskaExtractor;
                                                track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                                sparseArray.put(track6.d, track6);
                                                break;
                                            }
                                        } else {
                                            i16 = i6;
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                            builder.b = track6.b;
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                        i4 = i39;
                                        sparseArray = sparseArray3;
                                        str3 = "video/webm";
                                        ParsableByteArray parsableByteArray2 = new ParsableByteArray(track6.a(track6.c));
                                        try {
                                            int s = parsableByteArray2.s();
                                            if (s != 1) {
                                                if (s == 65534) {
                                                    parsableByteArray2.M(20);
                                                    int r2 = parsableByteArray2.r();
                                                    if ((r2 >> 18) == 0 && (r2 == 0 || Integer.bitCount(r2) == track6.Q)) {
                                                        track6.S = r2 == 0 ? -1 : r2 << 2;
                                                    }
                                                    long t3 = parsableByteArray2.t();
                                                    UUID uuid = MatroskaExtractor.u0;
                                                    if (t3 == uuid.getMostSignificantBits()) {
                                                        break;
                                                    }
                                                }
                                                Log.f("MatroskaExtractor", "Non-PCM MS/ACM is unsupported. Setting mimeType to audio/x-unknown");
                                                matroskaExtractor = matroskaExtractor2;
                                                str4 = "audio/x-unknown";
                                                i7 = -1;
                                                i6 = -1;
                                                i5 = -1;
                                                i13 = -1;
                                                i14 = -1;
                                                i9 = -1;
                                                i15 = -1;
                                                str7 = null;
                                                singletonList = null;
                                                if (track6.P == null) {
                                                }
                                                str10 = str4;
                                                str11 = str7;
                                                int i4022 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                                builder = new Format.Builder();
                                                if (MimeTypes.h(str10)) {
                                                }
                                                str12 = track6.b;
                                                if (str12 != null) {
                                                }
                                                builder.a = Integer.toString(i4);
                                                builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                                builder.o = MimeTypes.l(str10);
                                                builder.p = i16;
                                                builder.d = track6.c0;
                                                builder.e = i4022;
                                                builder.r = singletonList;
                                                builder.k = str11;
                                                builder.s = track6.n;
                                                track6.e0 = new Format(builder);
                                                matroskaExtractor2 = matroskaExtractor;
                                                track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                                sparseArray.put(track6.d, track6);
                                                break;
                                            }
                                            int i43 = track6.R;
                                            String str17 = Util.a;
                                            int t4 = Util.t(i43, ByteOrder.LITTLE_ENDIAN);
                                            if (t4 == 0) {
                                                Log.f("MatroskaExtractor", "Unsupported PCM bit depth: " + track6.R + ". Setting mimeType to audio/x-unknown");
                                                matroskaExtractor = matroskaExtractor2;
                                                str4 = "audio/x-unknown";
                                                i7 = -1;
                                                i6 = -1;
                                                i5 = -1;
                                                i13 = -1;
                                                i14 = -1;
                                                i9 = -1;
                                                i15 = -1;
                                                str7 = null;
                                                singletonList = null;
                                                if (track6.P == null) {
                                                }
                                                str10 = str4;
                                                str11 = str7;
                                                int i40222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                                builder = new Format.Builder();
                                                if (MimeTypes.h(str10)) {
                                                }
                                                str12 = track6.b;
                                                if (str12 != null) {
                                                }
                                                builder.a = Integer.toString(i4);
                                                builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                                builder.o = MimeTypes.l(str10);
                                                builder.p = i16;
                                                builder.d = track6.c0;
                                                builder.e = i40222;
                                                builder.r = singletonList;
                                                builder.k = str11;
                                                builder.s = track6.n;
                                                track6.e0 = new Format(builder);
                                                matroskaExtractor2 = matroskaExtractor;
                                                track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                                sparseArray.put(track6.d, track6);
                                            } else {
                                                matroskaExtractor = matroskaExtractor2;
                                                i5 = t4;
                                                str4 = "audio/raw";
                                                i7 = -1;
                                                i6 = -1;
                                                i13 = -1;
                                                i14 = -1;
                                                i9 = -1;
                                                i15 = -1;
                                                str7 = null;
                                                singletonList = null;
                                                if (track6.P == null) {
                                                }
                                                str10 = str4;
                                                str11 = str7;
                                                int i402222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                                builder = new Format.Builder();
                                                if (MimeTypes.h(str10)) {
                                                }
                                                str12 = track6.b;
                                                if (str12 != null) {
                                                }
                                                builder.a = Integer.toString(i4);
                                                builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                                builder.o = MimeTypes.l(str10);
                                                builder.p = i16;
                                                builder.d = track6.c0;
                                                builder.e = i402222;
                                                builder.r = singletonList;
                                                builder.k = str11;
                                                builder.s = track6.n;
                                                track6.e0 = new Format(builder);
                                                matroskaExtractor2 = matroskaExtractor;
                                                track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                                sparseArray.put(track6.d, track6);
                                            }
                                        } catch (ArrayIndexOutOfBoundsException unused) {
                                            throw ParserException.a(null, "Error parsing MS/ACM codec private");
                                        }
                                        break;
                                    case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                        i4 = i39;
                                        sparseArray = sparseArray3;
                                        str3 = "video/webm";
                                        track6.W = new TrueHdSampleRechunker();
                                        matroskaExtractor = matroskaExtractor2;
                                        str4 = "audio/true-hd";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case PreferencesProto$Value.LONG_FIELD_NUMBER /* 4 */:
                                        sparseArray = sparseArray3;
                                        byte[] a4 = track6.a(str14);
                                        try {
                                            r5 = a4[0];
                                            try {
                                                if (r5 != 2) {
                                                    throw ParserException.a(null, "Error parsing vorbis codec private");
                                                }
                                                int i44 = 1;
                                                int i45 = 0;
                                                while (true) {
                                                    int i46 = i44;
                                                    int i47 = a4[i44] & 255;
                                                    if (i47 == 255) {
                                                        i45 += 255;
                                                        i44 = i46 + 1;
                                                    } else {
                                                        int i48 = i46 + 1;
                                                        int i49 = i45 + i47;
                                                        i4 = i39;
                                                        int i50 = 0;
                                                        while (true) {
                                                            int i51 = a4[i48] & 255;
                                                            if (i51 == 255) {
                                                                i50 += 255;
                                                                i48++;
                                                            } else {
                                                                int i52 = i48 + 1;
                                                                int i53 = i50 + i51;
                                                                if (a4[i52] == 1) {
                                                                    byte[] bArr3 = new byte[i49];
                                                                    System.arraycopy(a4, i52, bArr3, 0, i49);
                                                                    int i54 = i52 + i49;
                                                                    if (a4[i54] == 3) {
                                                                        int i55 = i54 + i53;
                                                                        if (a4[i55] == 5) {
                                                                            byte[] bArr4 = new byte[a4.length - i55];
                                                                            str3 = "video/webm";
                                                                            System.arraycopy(a4, i55, bArr4, 0, a4.length - i55);
                                                                            ArrayList arrayList = new ArrayList(2);
                                                                            arrayList.add(bArr3);
                                                                            arrayList.add(bArr4);
                                                                            i6 = 8192;
                                                                            matroskaExtractor = matroskaExtractor2;
                                                                            singletonList = arrayList;
                                                                            str4 = "audio/vorbis";
                                                                            i7 = -1;
                                                                            i5 = -1;
                                                                            i13 = -1;
                                                                            i14 = -1;
                                                                            i9 = -1;
                                                                            i15 = -1;
                                                                            str7 = null;
                                                                            if (track6.P == null) {
                                                                            }
                                                                            str10 = str4;
                                                                            str11 = str7;
                                                                            int i40222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                                                            builder = new Format.Builder();
                                                                            if (MimeTypes.h(str10)) {
                                                                            }
                                                                            str12 = track6.b;
                                                                            if (str12 != null) {
                                                                            }
                                                                            builder.a = Integer.toString(i4);
                                                                            builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                                                            builder.o = MimeTypes.l(str10);
                                                                            builder.p = i16;
                                                                            builder.d = track6.c0;
                                                                            builder.e = i40222222;
                                                                            builder.r = singletonList;
                                                                            builder.k = str11;
                                                                            builder.s = track6.n;
                                                                            track6.e0 = new Format(builder);
                                                                            matroskaExtractor2 = matroskaExtractor;
                                                                            track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                                                            sparseArray.put(track6.d, track6);
                                                                            break;
                                                                        } else {
                                                                            throw ParserException.a(null, "Error parsing vorbis codec private");
                                                                        }
                                                                    } else {
                                                                        throw ParserException.a(null, "Error parsing vorbis codec private");
                                                                    }
                                                                } else {
                                                                    throw ParserException.a(null, "Error parsing vorbis codec private");
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            } catch (ArrayIndexOutOfBoundsException unused2) {
                                                throw ParserException.a(r5, "Error parsing vorbis codec private");
                                            }
                                        } catch (ArrayIndexOutOfBoundsException unused3) {
                                            r5 = 0;
                                        }
                                        break;
                                    case PreferencesProto$Value.STRING_FIELD_NUMBER /* 5 */:
                                        sparseArray = sparseArray3;
                                        str5 = "audio/mpeg-L2";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str5;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = 4096;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case PreferencesProto$Value.STRING_SET_FIELD_NUMBER /* 6 */:
                                        sparseArray = sparseArray3;
                                        str5 = "audio/mpeg";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str5;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = 4096;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case PreferencesProto$Value.DOUBLE_FIELD_NUMBER /* 7 */:
                                        sparseArray = sparseArray3;
                                        ParsableByteArray parsableByteArray3 = new ParsableByteArray(track6.a(track6.c));
                                        try {
                                            parsableByteArray3.N(16);
                                            q = parsableByteArray3.q();
                                            r52 = (q > 1482049860L ? 1 : (q == 1482049860L ? 0 : -1));
                                        } catch (ArrayIndexOutOfBoundsException unused4) {
                                            r52 = 0;
                                        }
                                        try {
                                            if (r52 == 0) {
                                                pair = new Pair("video/divx", null);
                                            } else if (q == 859189832) {
                                                pair = new Pair("video/3gpp", null);
                                            } else {
                                                if (q == 826496599) {
                                                    byte[] bArr5 = parsableByteArray3.a;
                                                    for (int i56 = parsableByteArray3.b + 20; i56 < bArr5.length - 4; i56++) {
                                                        if (bArr5[i56] == 0 && bArr5[i56 + 1] == 0 && bArr5[i56 + 2] == 1) {
                                                            if (bArr5[i56 + 3] == 15) {
                                                                pair = new Pair("video/wvc1", Collections.singletonList(Arrays.copyOfRange(bArr5, i56, bArr5.length)));
                                                            }
                                                        }
                                                    }
                                                    throw ParserException.a(null, "Failed to find FourCC VC1 initialization data");
                                                }
                                                Log.f("MatroskaExtractor", "Unknown FourCC. Setting mimeType to video/x-unknown");
                                                str6 = null;
                                                pair = new Pair("video/x-unknown", null);
                                                matroskaExtractor = matroskaExtractor2;
                                                str7 = str6;
                                                i4 = i39;
                                                str4 = (String) pair.first;
                                                str3 = "video/webm";
                                                singletonList = (List) pair.second;
                                                i7 = -1;
                                                i6 = -1;
                                                i5 = -1;
                                                i13 = -1;
                                                i14 = -1;
                                                i9 = -1;
                                                i15 = -1;
                                                if (track6.P == null) {
                                                }
                                                str10 = str4;
                                                str11 = str7;
                                                int i40222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                                builder = new Format.Builder();
                                                if (MimeTypes.h(str10)) {
                                                }
                                                str12 = track6.b;
                                                if (str12 != null) {
                                                }
                                                builder.a = Integer.toString(i4);
                                                builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                                builder.o = MimeTypes.l(str10);
                                                builder.p = i16;
                                                builder.d = track6.c0;
                                                builder.e = i40222222222;
                                                builder.r = singletonList;
                                                builder.k = str11;
                                                builder.s = track6.n;
                                                track6.e0 = new Format(builder);
                                                matroskaExtractor2 = matroskaExtractor;
                                                track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                                sparseArray.put(track6.d, track6);
                                                break;
                                            }
                                            str6 = null;
                                            matroskaExtractor = matroskaExtractor2;
                                            str7 = str6;
                                            i4 = i39;
                                            str4 = (String) pair.first;
                                            str3 = "video/webm";
                                            singletonList = (List) pair.second;
                                            i7 = -1;
                                            i6 = -1;
                                            i5 = -1;
                                            i13 = -1;
                                            i14 = -1;
                                            i9 = -1;
                                            i15 = -1;
                                            if (track6.P == null) {
                                            }
                                            str10 = str4;
                                            str11 = str7;
                                            int i402222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                            builder = new Format.Builder();
                                            if (MimeTypes.h(str10)) {
                                            }
                                            str12 = track6.b;
                                            if (str12 != null) {
                                            }
                                            builder.a = Integer.toString(i4);
                                            builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                            builder.o = MimeTypes.l(str10);
                                            builder.p = i16;
                                            builder.d = track6.c0;
                                            builder.e = i402222222222;
                                            builder.r = singletonList;
                                            builder.k = str11;
                                            builder.s = track6.n;
                                            track6.e0 = new Format(builder);
                                            matroskaExtractor2 = matroskaExtractor;
                                            track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                            sparseArray.put(track6.d, track6);
                                        } catch (ArrayIndexOutOfBoundsException unused5) {
                                            throw ParserException.a(r52, "Error parsing FourCC private data");
                                        }
                                        break;
                                    case PreferencesProto$Value.BYTES_FIELD_NUMBER /* 8 */:
                                        sparseArray = sparseArray3;
                                        byte[] bArr6 = new byte[4];
                                        System.arraycopy(track6.a(str14), 0, bArr6, 0, 4);
                                        matroskaExtractor = matroskaExtractor2;
                                        singletonList = ImmutableList.t(bArr6);
                                        i4 = i39;
                                        str4 = "application/dvbsubs";
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case KeyModifiers.b /* 10 */:
                                        sparseArray = sparseArray3;
                                        AvcConfig a5 = AvcConfig.a(new ParsableByteArray(track6.a(track6.c)));
                                        ArrayList arrayList2 = a5.a;
                                        track6.f0 = a5.b;
                                        str8 = a5.l;
                                        i8 = a5.g;
                                        i9 = a5.i;
                                        list = arrayList2;
                                        i10 = a5.h;
                                        i11 = a5.e;
                                        i12 = a5.f;
                                        str9 = "video/avc";
                                        matroskaExtractor = matroskaExtractor2;
                                        str3 = "video/webm";
                                        singletonList = list;
                                        i15 = i10;
                                        str4 = str9;
                                        str7 = str8;
                                        i4 = i39;
                                        i13 = i8;
                                        i5 = -1;
                                        i14 = i12;
                                        i7 = i11;
                                        i6 = -1;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i40222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i40222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 11:
                                        sparseArray = sparseArray3;
                                        matroskaExtractor = matroskaExtractor2;
                                        singletonList = ImmutableList.t(track6.a(str14));
                                        i4 = i39;
                                        str4 = "application/vobsub";
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case KeyModifiers.c /* 12 */:
                                        sparseArray = sparseArray3;
                                        str15 = "audio/vnd.dts.hd";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case '\r':
                                        sparseArray = sparseArray3;
                                        List singletonList2 = Collections.singletonList(track6.a(str14));
                                        byte[] bArr7 = track6.m;
                                        AacUtil.Config b = AacUtil.b(new ParsableBitArray(bArr7.length, bArr7), false);
                                        track6.T = b.a;
                                        track6.Q = b.b;
                                        matroskaExtractor = matroskaExtractor2;
                                        singletonList = singletonList2;
                                        str7 = b.c;
                                        i4 = i39;
                                        str4 = "audio/mp4a-latm";
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i40222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i40222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 14:
                                        sparseArray = sparseArray3;
                                        str15 = "audio/ac3";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 15:
                                        sparseArray = sparseArray3;
                                        track6.X = true;
                                        str15 = "audio/vnd.dts";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 16:
                                        sparseArray = sparseArray3;
                                        byte[] bArr8 = track6.m;
                                        str15 = "video/av01";
                                        if (bArr8 != null) {
                                            t = ImmutableList.t(bArr8);
                                            Av1Config b2 = Av1Config.b(track6.m);
                                            if (b2 != null) {
                                                int i57 = b2.b;
                                                i9 = b2.d;
                                                int i58 = b2.c;
                                                i7 = b2.a;
                                                singletonList = t;
                                                matroskaExtractor = matroskaExtractor2;
                                                str7 = b2.e;
                                                i4 = i39;
                                                str3 = "video/webm";
                                                i15 = i58;
                                                i6 = -1;
                                                i13 = i57;
                                                str4 = "video/av01";
                                                i5 = -1;
                                                i14 = i7;
                                                if (track6.P == null) {
                                                }
                                                str10 = str4;
                                                str11 = str7;
                                                int i40222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                                builder = new Format.Builder();
                                                if (MimeTypes.h(str10)) {
                                                }
                                                str12 = track6.b;
                                                if (str12 != null) {
                                                }
                                                builder.a = Integer.toString(i4);
                                                builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                                builder.o = MimeTypes.l(str10);
                                                builder.p = i16;
                                                builder.d = track6.c0;
                                                builder.e = i40222222222222222222;
                                                builder.r = singletonList;
                                                builder.k = str11;
                                                builder.s = track6.n;
                                                track6.e0 = new Format(builder);
                                                matroskaExtractor2 = matroskaExtractor;
                                                track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                                sparseArray.put(track6.d, track6);
                                                break;
                                            }
                                            matroskaExtractor = matroskaExtractor2;
                                            singletonList = t;
                                            i4 = i39;
                                            str4 = str15;
                                            str3 = "video/webm";
                                            i7 = -1;
                                            i6 = -1;
                                            i5 = -1;
                                            i13 = -1;
                                            i14 = -1;
                                            i9 = -1;
                                            i15 = -1;
                                            str7 = null;
                                            if (track6.P == null) {
                                            }
                                            str10 = str4;
                                            str11 = str7;
                                            int i402222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                            builder = new Format.Builder();
                                            if (MimeTypes.h(str10)) {
                                            }
                                            str12 = track6.b;
                                            if (str12 != null) {
                                            }
                                            builder.a = Integer.toString(i4);
                                            builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                            builder.o = MimeTypes.l(str10);
                                            builder.p = i16;
                                            builder.d = track6.c0;
                                            builder.e = i402222222222222222222;
                                            builder.r = singletonList;
                                            builder.k = str11;
                                            builder.s = track6.n;
                                            track6.e0 = new Format(builder);
                                            matroskaExtractor2 = matroskaExtractor;
                                            track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                            sparseArray.put(track6.d, track6);
                                        }
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 17:
                                        sparseArray = sparseArray3;
                                        str15 = "video/x-vnd.on2.vp8";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i40222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i40222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 18:
                                        sparseArray = sparseArray3;
                                        byte[] bArr9 = track6.m;
                                        t = bArr9 == null ? null : ImmutableList.t(bArr9);
                                        str15 = "video/x-vnd.on2.vp9";
                                        matroskaExtractor = matroskaExtractor2;
                                        singletonList = t;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 19:
                                        sparseArray = sparseArray3;
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = "application/pgs";
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 20:
                                        sparseArray = sparseArray3;
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i40222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i40222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 21:
                                        sparseArray = sparseArray3;
                                        str15 = "audio/vnd.dts.hd;profile=lbr";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 22:
                                        sparseArray = sparseArray3;
                                        int i59 = track6.R;
                                        String str18 = Util.a;
                                        r = Util.r(i59, ByteOrder.LITTLE_ENDIAN);
                                        if (r == 0) {
                                            Log.f("MatroskaExtractor", "Unsupported floating point PCM bit depth: " + track6.R + ". Setting mimeType to audio/x-unknown");
                                            matroskaExtractor = matroskaExtractor2;
                                            i4 = i39;
                                            str3 = "video/webm";
                                            str4 = "audio/x-unknown";
                                            i7 = -1;
                                            i6 = -1;
                                            i5 = -1;
                                            i13 = -1;
                                            i14 = -1;
                                            i9 = -1;
                                            i15 = -1;
                                            str7 = null;
                                            singletonList = null;
                                            if (track6.P == null) {
                                            }
                                            str10 = str4;
                                            str11 = str7;
                                            int i4022222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                            builder = new Format.Builder();
                                            if (MimeTypes.h(str10)) {
                                            }
                                            str12 = track6.b;
                                            if (str12 != null) {
                                            }
                                            builder.a = Integer.toString(i4);
                                            builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                            builder.o = MimeTypes.l(str10);
                                            builder.p = i16;
                                            builder.d = track6.c0;
                                            builder.e = i4022222222222222222222222222;
                                            builder.r = singletonList;
                                            builder.k = str11;
                                            builder.s = track6.n;
                                            track6.e0 = new Format(builder);
                                            matroskaExtractor2 = matroskaExtractor;
                                            track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                            sparseArray.put(track6.d, track6);
                                            break;
                                        }
                                        matroskaExtractor = matroskaExtractor2;
                                        i5 = r;
                                        i4 = i39;
                                        str3 = "video/webm";
                                        str4 = "audio/raw";
                                        i7 = -1;
                                        i6 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i40222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i40222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 23:
                                        sparseArray = sparseArray3;
                                        r = Util.t(track6.R, ByteOrder.BIG_ENDIAN);
                                        if (r == 0) {
                                            Log.f("MatroskaExtractor", "Unsupported big endian PCM bit depth: " + track6.R + ". Setting mimeType to audio/x-unknown");
                                            matroskaExtractor = matroskaExtractor2;
                                            i4 = i39;
                                            str3 = "video/webm";
                                            str4 = "audio/x-unknown";
                                            i7 = -1;
                                            i6 = -1;
                                            i5 = -1;
                                            i13 = -1;
                                            i14 = -1;
                                            i9 = -1;
                                            i15 = -1;
                                            str7 = null;
                                            singletonList = null;
                                            if (track6.P == null) {
                                            }
                                            str10 = str4;
                                            str11 = str7;
                                            int i402222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                            builder = new Format.Builder();
                                            if (MimeTypes.h(str10)) {
                                            }
                                            str12 = track6.b;
                                            if (str12 != null) {
                                            }
                                            builder.a = Integer.toString(i4);
                                            builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                            builder.o = MimeTypes.l(str10);
                                            builder.p = i16;
                                            builder.d = track6.c0;
                                            builder.e = i402222222222222222222222222222;
                                            builder.r = singletonList;
                                            builder.k = str11;
                                            builder.s = track6.n;
                                            track6.e0 = new Format(builder);
                                            matroskaExtractor2 = matroskaExtractor;
                                            track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                            sparseArray.put(track6.d, track6);
                                            break;
                                        }
                                        matroskaExtractor = matroskaExtractor2;
                                        i5 = r;
                                        i4 = i39;
                                        str3 = "video/webm";
                                        str4 = "audio/raw";
                                        i7 = -1;
                                        i6 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 24:
                                        sparseArray = sparseArray3;
                                        int i60 = track6.R;
                                        String str19 = Util.a;
                                        r = Util.t(i60, ByteOrder.LITTLE_ENDIAN);
                                        if (r == 0) {
                                            Log.f("MatroskaExtractor", "Unsupported little endian PCM bit depth: " + track6.R + ". Setting mimeType to audio/x-unknown");
                                            matroskaExtractor = matroskaExtractor2;
                                            i4 = i39;
                                            str3 = "video/webm";
                                            str4 = "audio/x-unknown";
                                            i7 = -1;
                                            i6 = -1;
                                            i5 = -1;
                                            i13 = -1;
                                            i14 = -1;
                                            i9 = -1;
                                            i15 = -1;
                                            str7 = null;
                                            singletonList = null;
                                            if (track6.P == null) {
                                            }
                                            str10 = str4;
                                            str11 = str7;
                                            int i40222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                            builder = new Format.Builder();
                                            if (MimeTypes.h(str10)) {
                                            }
                                            str12 = track6.b;
                                            if (str12 != null) {
                                            }
                                            builder.a = Integer.toString(i4);
                                            builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                            builder.o = MimeTypes.l(str10);
                                            builder.p = i16;
                                            builder.d = track6.c0;
                                            builder.e = i40222222222222222222222222222222;
                                            builder.r = singletonList;
                                            builder.k = str11;
                                            builder.s = track6.n;
                                            track6.e0 = new Format(builder);
                                            matroskaExtractor2 = matroskaExtractor;
                                            track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                            sparseArray.put(track6.d, track6);
                                            break;
                                        }
                                        matroskaExtractor = matroskaExtractor2;
                                        i5 = r;
                                        i4 = i39;
                                        str3 = "video/webm";
                                        str4 = "audio/raw";
                                        i7 = -1;
                                        i6 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 25:
                                    case 26:
                                        sparseArray = sparseArray3;
                                        matroskaExtractor = matroskaExtractor2;
                                        singletonList = ImmutableList.u(MatroskaExtractor.r0, track6.a(str14));
                                        i4 = i39;
                                        str4 = "text/x-ssa";
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 27:
                                        sparseArray = sparseArray3;
                                        HevcConfig a6 = HevcConfig.a(new ParsableByteArray(track6.a(track6.c)), false, null);
                                        List list3 = a6.a;
                                        track6.f0 = a6.b;
                                        str8 = a6.n;
                                        i8 = a6.h;
                                        i9 = a6.j;
                                        list = list3;
                                        i10 = a6.i;
                                        i11 = a6.f;
                                        i12 = a6.g;
                                        str9 = "video/hevc";
                                        matroskaExtractor = matroskaExtractor2;
                                        str3 = "video/webm";
                                        singletonList = list;
                                        i15 = i10;
                                        str4 = str9;
                                        str7 = str8;
                                        i4 = i39;
                                        i13 = i8;
                                        i5 = -1;
                                        i14 = i12;
                                        i7 = i11;
                                        i6 = -1;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i40222222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i40222222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 28:
                                        sparseArray = sparseArray3;
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str3 = "video/webm";
                                        str4 = "text/vtt";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 29:
                                        sparseArray = sparseArray3;
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = "application/x-subrip";
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 30:
                                        sparseArray = sparseArray3;
                                        str15 = "video/mpeg2";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i40222222222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i40222222222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case 31:
                                        sparseArray = sparseArray3;
                                        t = Collections.singletonList(track6.a(str14));
                                        int i61 = track6.R;
                                        String str20 = Util.a;
                                        t2 = Util.t(i61, ByteOrder.LITTLE_ENDIAN);
                                        str15 = "audio/alac";
                                        break;
                                    case ' ':
                                        sparseArray = sparseArray3;
                                        str15 = "audio/eac3";
                                        matroskaExtractor = matroskaExtractor2;
                                        i4 = i39;
                                        str4 = str15;
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i6 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        singletonList = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i402222222222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i402222222222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    case '!':
                                        sparseArray = sparseArray3;
                                        t = Collections.singletonList(track6.a(str14));
                                        int i62 = track6.R;
                                        String str21 = Util.a;
                                        t2 = Util.t(i62, ByteOrder.LITTLE_ENDIAN);
                                        str15 = "audio/flac";
                                        break;
                                    case '\"':
                                        ArrayList arrayList3 = new ArrayList(3);
                                        arrayList3.add(track6.a(track6.c));
                                        ByteBuffer allocate = ByteBuffer.allocate(8);
                                        ByteOrder byteOrder = ByteOrder.LITTLE_ENDIAN;
                                        sparseArray = sparseArray3;
                                        arrayList3.add(allocate.order(byteOrder).putLong(track6.U).array());
                                        arrayList3.add(ByteBuffer.allocate(8).order(byteOrder).putLong(track6.V).array());
                                        i6 = 5760;
                                        matroskaExtractor = matroskaExtractor2;
                                        singletonList = arrayList3;
                                        i4 = i39;
                                        str4 = "audio/opus";
                                        str3 = "video/webm";
                                        i7 = -1;
                                        i5 = -1;
                                        i13 = -1;
                                        i14 = -1;
                                        i9 = -1;
                                        i15 = -1;
                                        str7 = null;
                                        if (track6.P == null) {
                                        }
                                        str10 = str4;
                                        str11 = str7;
                                        int i4022222222222222222222222222222222222222 = (track6.b0 ? 1 : 0) | (track6.a0 ? 2 : 0);
                                        builder = new Format.Builder();
                                        if (MimeTypes.h(str10)) {
                                        }
                                        str12 = track6.b;
                                        if (str12 != null) {
                                        }
                                        builder.a = Integer.toString(i4);
                                        builder.n = MimeTypes.l(track6.a ? str3 : "video/x-matroska");
                                        builder.o = MimeTypes.l(str10);
                                        builder.p = i16;
                                        builder.d = track6.c0;
                                        builder.e = i4022222222222222222222222222222222222222;
                                        builder.r = singletonList;
                                        builder.k = str11;
                                        builder.s = track6.n;
                                        track6.e0 = new Format(builder);
                                        matroskaExtractor2 = matroskaExtractor;
                                        track6.d0 = matroskaExtractor2.p0.s(track6.d, track6.f);
                                        sparseArray.put(track6.d, track6);
                                        break;
                                    default:
                                        throw ParserException.a(null, "Unrecognized codec identifier.");
                                }
                        }
                        matroskaExtractor2.A = null;
                        return true;
                    }
                    throw ParserException.a(null, "CodecId is missing in TrackEntry element");
                }
            } else {
                i = 8;
            }
            boolean z2 = true;
            int i63 = this.e;
            VarintReader varintReader = this.c;
            if (i63 == 0) {
                int i64 = 4;
                int i65 = 0;
                long b3 = varintReader.b(extractorInput, true, false, 4);
                if (b3 == -2) {
                    extractorInput.j();
                    while (true) {
                        byte[] bArr10 = this.a;
                        extractorInput.n(bArr10, i65, i64);
                        byte b4 = bArr10[i65];
                        int i66 = i;
                        int i67 = 0;
                        while (true) {
                            if (i67 >= i66) {
                                i3 = -1;
                            } else if ((VarintReader.d[i67] & b4) != 0) {
                                i3 = i67 + 1;
                            } else {
                                i67++;
                                i66 = 8;
                            }
                        }
                        if (i3 != -1 && i3 <= 4) {
                            a = (int) VarintReader.a(bArr10, i3, false);
                            MatroskaExtractor matroskaExtractor3 = MatroskaExtractor.this;
                            if (a == 357149030 || a == 272869232 || a == 524531317 || a == 475249515 || a == 374648427) {
                            }
                        }
                        extractorInput.k(1);
                        i64 = 4;
                        i65 = 0;
                        i = 8;
                    }
                    extractorInput.k(i3);
                    b3 = a;
                }
                z2 = true;
                if (b3 == -1) {
                    return false;
                }
                z = false;
                this.f = (int) b3;
                this.e = 1;
            } else {
                z = false;
            }
            if (this.e == z2) {
                this.g = varintReader.b(extractorInput, z, z2, 8);
                this.e = 2;
            }
            EbmlProcessor ebmlProcessor2 = this.d;
            int i68 = this.f;
            MatroskaExtractor matroskaExtractor4 = MatroskaExtractor.this;
            switch (i68) {
                case 128:
                case 143:
                case 160:
                case 166:
                case 174:
                case 182:
                case 183:
                case 187:
                case 224:
                case 225:
                case 16868:
                case 17849:
                case 18407:
                case 19899:
                case 20532:
                case 20533:
                case 21936:
                case 21968:
                case 25152:
                case 28032:
                case 30113:
                case 30320:
                case 272869232:
                case 290298740:
                case 357149030:
                case 374648427:
                case 408125543:
                case 440786851:
                case 475249515:
                case 524531317:
                    i2 = 1;
                    break;
                case 131:
                case 136:
                case 137:
                case 145:
                case 146:
                case 152:
                case 155:
                case 159:
                case 176:
                case 179:
                case 186:
                case 215:
                case 231:
                case 238:
                case 240:
                case 241:
                case 247:
                case 251:
                case 16871:
                case 16980:
                case 17029:
                case 17143:
                case 18401:
                case 18408:
                case 20529:
                case 20530:
                case 21420:
                case 21432:
                case 21680:
                case 21682:
                case 21690:
                case 21930:
                case 21938:
                case 21945:
                case 21946:
                case 21947:
                case 21948:
                case 21949:
                case 21998:
                case 22186:
                case 22203:
                case 25188:
                case 29636:
                case 29637:
                case 30114:
                case 30321:
                case 2352003:
                case 2807729:
                    i2 = 2;
                    break;
                case 133:
                case 134:
                case 17026:
                case 17276:
                case 21358:
                case 2274716:
                    i2 = 3;
                    break;
                case 161:
                case 163:
                case 165:
                case 16877:
                case 16981:
                case 18402:
                case 21419:
                case 25506:
                case 30322:
                    i2 = 4;
                    break;
                case 181:
                case 17545:
                case 21969:
                case 21970:
                case 21971:
                case 21972:
                case 21973:
                case 21974:
                case 21975:
                case 21976:
                case 21977:
                case 21978:
                case 30323:
                case 30324:
                case 30325:
                    i2 = 5;
                    break;
                default:
                    i2 = 0;
                    break;
            }
            if (i2 != 0) {
                if (i2 == 1) {
                    long position = extractorInput.getPosition();
                    arrayDeque.push(new MasterElement(this.f, this.g + position));
                    ((MatroskaExtractor.InnerEbmlProcessor) this.d).c(this.f, position, this.g);
                    this.e = 0;
                    return true;
                }
                if (i2 == 2) {
                    long j5 = this.g;
                    if (j5 <= 8) {
                        ((MatroskaExtractor.InnerEbmlProcessor) ebmlProcessor2).b(i68, b(extractorInput, (int) j5));
                        this.e = 0;
                        return true;
                    }
                    throw ParserException.a(null, "Invalid integer size: " + this.g);
                }
                if (i2 == 3) {
                    int i69 = 0;
                    long j6 = this.g;
                    if (j6 <= 2147483647L) {
                        int i70 = (int) j6;
                        if (i70 == 0) {
                            str = "";
                        } else {
                            byte[] bArr11 = new byte[i70];
                            extractorInput.readFully(bArr11, 0, i70);
                            while (i70 > 0 && bArr11[i70 - 1] == 0) {
                                i70--;
                            }
                            i69 = 0;
                            str = new String(bArr11, 0, i70);
                        }
                        ((MatroskaExtractor.InnerEbmlProcessor) ebmlProcessor2).d(i68, str);
                        this.e = i69;
                        return true;
                    }
                    throw ParserException.a(null, "String element size: " + this.g);
                }
                if (i2 == 4) {
                    ((MatroskaExtractor.InnerEbmlProcessor) ebmlProcessor2).a(i68, (int) this.g, extractorInput);
                    this.e = 0;
                    return true;
                }
                if (i2 == 5) {
                    long j7 = this.g;
                    if (j7 != 4 && j7 != 8) {
                        throw ParserException.a(null, "Invalid float size: " + this.g);
                    }
                    int i71 = (int) j7;
                    long b5 = b(extractorInput, i71);
                    if (i71 == 4) {
                        longBitsToDouble = Float.intBitsToFloat((int) b5);
                    } else {
                        longBitsToDouble = Double.longBitsToDouble(b5);
                    }
                    MatroskaExtractor matroskaExtractor5 = MatroskaExtractor.this;
                    if (i68 == 181) {
                        matroskaExtractor5.h(i68);
                        matroskaExtractor5.A.T = (int) longBitsToDouble;
                    } else if (i68 != 17545) {
                        switch (i68) {
                            case 21969:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.F = (float) longBitsToDouble;
                                break;
                            case 21970:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.G = (float) longBitsToDouble;
                                break;
                            case 21971:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.H = (float) longBitsToDouble;
                                break;
                            case 21972:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.I = (float) longBitsToDouble;
                                break;
                            case 21973:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.J = (float) longBitsToDouble;
                                break;
                            case 21974:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.K = (float) longBitsToDouble;
                                break;
                            case 21975:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.L = (float) longBitsToDouble;
                                break;
                            case 21976:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.M = (float) longBitsToDouble;
                                break;
                            case 21977:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.N = (float) longBitsToDouble;
                                break;
                            case 21978:
                                matroskaExtractor5.h(i68);
                                matroskaExtractor5.A.O = (float) longBitsToDouble;
                                break;
                            default:
                                switch (i68) {
                                    case 30323:
                                        matroskaExtractor5.h(i68);
                                        matroskaExtractor5.A.v = (float) longBitsToDouble;
                                        break;
                                    case 30324:
                                        matroskaExtractor5.h(i68);
                                        matroskaExtractor5.A.w = (float) longBitsToDouble;
                                        break;
                                    case 30325:
                                        matroskaExtractor5.h(i68);
                                        matroskaExtractor5.A.x = (float) longBitsToDouble;
                                        break;
                                }
                        }
                    } else {
                        matroskaExtractor5.v = (long) longBitsToDouble;
                    }
                    this.e = 0;
                    return true;
                }
                throw ParserException.a(null, "Invalid element type " + i2);
            }
            extractorInput.k((int) this.g);
            this.e = 0;
        }
    }

    public final long b(ExtractorInput extractorInput, int i) {
        extractorInput.readFully(this.a, 0, i);
        long j = 0;
        for (int i2 = 0; i2 < i; i2++) {
            j = (j << 8) | (r5[i2] & 255);
        }
        return j;
    }
}
