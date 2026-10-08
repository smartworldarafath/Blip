package androidx.media3.extractor.mkv;

import android.util.LongSparseArray;
import android.util.SparseArray;
import androidx.datastore.preferences.PreferencesProto$Value;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.Metadata;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.DefaultExtractorInput;
import androidx.media3.extractor.DtsUtil;
import androidx.media3.extractor.Extractor;
import androidx.media3.extractor.ExtractorInput;
import androidx.media3.extractor.ExtractorOutput;
import androidx.media3.extractor.PositionHolder;
import androidx.media3.extractor.SeekMap;
import androidx.media3.extractor.SeekPoint;
import androidx.media3.extractor.TrackOutput;
import androidx.media3.extractor.TrueHdSampleRechunker;
import androidx.media3.extractor.metadata.Chapter;
import androidx.media3.extractor.metadata.ThumbnailMetadata;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Preconditions;
import defpackage.fe;
import defpackage.q;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Locale;
import java.util.Map;
import java.util.Objects;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class MatroskaExtractor implements Extractor {
    public static final byte[] q0 = {49, 10, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 48, 48, 10};
    public static final byte[] r0;
    public static final byte[] s0;
    public static final byte[] t0;
    public static final UUID u0;
    public static final Map v0;
    public Track A;
    public boolean B;
    public int C;
    public long D;
    public final SparseArray E;
    public boolean F;
    public long G;
    public int H;
    public long I;
    public long J;
    public int K;
    public boolean L;
    public long M;
    public long N;
    public long O;
    public boolean P;
    public long Q;
    public boolean R;
    public long S;
    public boolean T;
    public int U;
    public long V;
    public long W;
    public int X;
    public int Y;
    public int[] Z;
    public final DefaultEbmlReader a;
    public int a0;
    public final VarintReader b;
    public int b0;
    public final SparseArray c;
    public int c0;
    public final LongSparseArray d;
    public int d0;
    public final boolean e;
    public boolean e0;
    public final boolean f;
    public long f0;
    public final SubtitleParser.Factory g;
    public int g0;
    public final ParsableByteArray h;
    public int h0;
    public final ParsableByteArray i;
    public int i0;
    public final ParsableByteArray j;
    public boolean j0;
    public final ParsableByteArray k;
    public boolean k0;
    public final ParsableByteArray l;
    public boolean l0;
    public final ParsableByteArray m;
    public int m0;
    public final ParsableByteArray n;
    public byte n0;
    public final ParsableByteArray o;
    public boolean o0;
    public final ParsableByteArray p;
    public ExtractorOutput p0;
    public final ParsableByteArray q;
    public ByteBuffer r;
    public long s;
    public long t;
    public long u;
    public long v;
    public long w;
    public boolean x;
    public boolean y;
    public ChapterEntry z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ChapterEntry {
        public long a;
        public long b;
        public long c;
        public boolean d;
        public long e;
        public String f;
        public String g;
        public String h;
        public String i;
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public final class InnerEbmlProcessor implements EbmlProcessor {
        public InnerEbmlProcessor() {
        }

        public final void a(int i, int i2, ExtractorInput extractorInput) {
            int i3;
            int i4;
            int i5;
            int i6;
            int i7;
            int i8;
            long j;
            int i9;
            int i10;
            int[] iArr;
            int i11;
            int i12;
            int i13;
            MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
            VarintReader varintReader = matroskaExtractor.b;
            SparseArray sparseArray = matroskaExtractor.c;
            ParsableByteArray parsableByteArray = matroskaExtractor.l;
            ParsableByteArray parsableByteArray2 = matroskaExtractor.j;
            int i14 = 2;
            int i15 = 0;
            if (i != 161 && i != 163) {
                if (i != 165) {
                    if (i != 16877) {
                        if (i != 16981) {
                            if (i != 18402) {
                                if (i != 21419) {
                                    if (i != 25506) {
                                        if (i == 30322) {
                                            matroskaExtractor.h(i);
                                            byte[] bArr = new byte[i2];
                                            matroskaExtractor.A.y = bArr;
                                            extractorInput.readFully(bArr, 0, i2);
                                            return;
                                        }
                                        throw ParserException.a(null, "Unexpected id: " + i);
                                    }
                                    matroskaExtractor.h(i);
                                    byte[] bArr2 = new byte[i2];
                                    matroskaExtractor.A.m = bArr2;
                                    extractorInput.readFully(bArr2, 0, i2);
                                    return;
                                }
                                Arrays.fill(parsableByteArray.a, (byte) 0);
                                extractorInput.readFully(parsableByteArray.a, 4 - i2, i2);
                                parsableByteArray.M(0);
                                matroskaExtractor.C = (int) parsableByteArray.B();
                                return;
                            }
                            byte[] bArr3 = new byte[i2];
                            extractorInput.readFully(bArr3, 0, i2);
                            matroskaExtractor.h(i);
                            matroskaExtractor.A.l = new TrackOutput.CryptoData(1, 0, 0, bArr3);
                            return;
                        }
                        matroskaExtractor.h(i);
                        byte[] bArr4 = new byte[i2];
                        matroskaExtractor.A.k = bArr4;
                        extractorInput.readFully(bArr4, 0, i2);
                        return;
                    }
                    matroskaExtractor.h(i);
                    Track track = matroskaExtractor.A;
                    int i16 = track.i;
                    if (i16 != 1685485123 && i16 != 1685480259) {
                        extractorInput.k(i2);
                        return;
                    }
                    byte[] bArr5 = new byte[i2];
                    track.P = bArr5;
                    extractorInput.readFully(bArr5, 0, i2);
                    return;
                }
                if (matroskaExtractor.U == 2) {
                    Track track2 = (Track) sparseArray.get(matroskaExtractor.a0);
                    int i17 = matroskaExtractor.d0;
                    ParsableByteArray parsableByteArray3 = matroskaExtractor.q;
                    if (i17 == 4 && "V_VP9".equals(track2.c)) {
                        parsableByteArray3.J(i2);
                        extractorInput.readFully(parsableByteArray3.a, 0, i2);
                        return;
                    } else {
                        extractorInput.k(i2);
                        return;
                    }
                }
                return;
            }
            int i18 = 8;
            if (matroskaExtractor.U == 0) {
                matroskaExtractor.a0 = (int) varintReader.b(extractorInput, false, true, 8);
                matroskaExtractor.b0 = varintReader.c;
                matroskaExtractor.W = -9223372036854775807L;
                matroskaExtractor.U = 1;
                parsableByteArray2.J(0);
            }
            Track track3 = (Track) sparseArray.get(matroskaExtractor.a0);
            if (track3 == null) {
                extractorInput.k(i2 - matroskaExtractor.b0);
                matroskaExtractor.U = 0;
                return;
            }
            track3.d0.getClass();
            if (matroskaExtractor.U == 1) {
                matroskaExtractor.m(extractorInput, 3);
                int i19 = (parsableByteArray2.a[2] & 6) >> 1;
                if (i19 == 0) {
                    matroskaExtractor.Y = 1;
                    int[] iArr2 = matroskaExtractor.Z;
                    if (iArr2 == null) {
                        iArr2 = new int[1];
                    } else if (iArr2.length < 1) {
                        iArr2 = new int[Math.max(iArr2.length * 2, 1)];
                    }
                    matroskaExtractor.Z = iArr2;
                    iArr2[0] = (i2 - matroskaExtractor.b0) - 3;
                } else {
                    matroskaExtractor.m(extractorInput, 4);
                    int i20 = (parsableByteArray2.a[3] & 255) + 1;
                    matroskaExtractor.Y = i20;
                    int[] iArr3 = matroskaExtractor.Z;
                    if (iArr3 == null) {
                        iArr3 = new int[i20];
                        i3 = 4;
                    } else {
                        i3 = 4;
                        if (iArr3.length < i20) {
                            iArr3 = new int[Math.max(iArr3.length * 2, i20)];
                        }
                    }
                    matroskaExtractor.Z = iArr3;
                    if (i19 == 2) {
                        int i21 = (i2 - matroskaExtractor.b0) - 4;
                        int i22 = matroskaExtractor.Y;
                        Arrays.fill(iArr3, 0, i22, i21 / i22);
                    } else if (i19 == 1) {
                        int i23 = 0;
                        int i24 = 0;
                        int i25 = i3;
                        while (true) {
                            i10 = matroskaExtractor.Y - 1;
                            iArr = matroskaExtractor.Z;
                            if (i23 >= i10) {
                                break;
                            }
                            iArr[i23] = 0;
                            while (true) {
                                i11 = i25 + 1;
                                matroskaExtractor.m(extractorInput, i11);
                                int i26 = parsableByteArray2.a[i25] & 255;
                                int[] iArr4 = matroskaExtractor.Z;
                                i12 = iArr4[i23] + i26;
                                iArr4[i23] = i12;
                                if (i26 != 255) {
                                    break;
                                } else {
                                    i25 = i11;
                                }
                            }
                            i24 += i12;
                            i23++;
                            i25 = i11;
                        }
                        iArr[i10] = ((i2 - matroskaExtractor.b0) - i25) - i24;
                    } else {
                        if (i19 == 3) {
                            int i27 = 0;
                            int i28 = 0;
                            int i29 = i3;
                            while (true) {
                                int i30 = matroskaExtractor.Y - 1;
                                int[] iArr5 = matroskaExtractor.Z;
                                if (i27 < i30) {
                                    iArr5[i27] = i15;
                                    int i31 = i29 + 1;
                                    matroskaExtractor.m(extractorInput, i31);
                                    if (parsableByteArray2.a[i29] != 0) {
                                        int i32 = i15;
                                        while (true) {
                                            if (i32 < i18) {
                                                i6 = i18;
                                                int i33 = 1 << (7 - i32);
                                                i8 = i15;
                                                if ((parsableByteArray2.a[i29] & i33) != 0) {
                                                    i9 = i31 + i32;
                                                    matroskaExtractor.m(extractorInput, i9);
                                                    i7 = i14;
                                                    j = (~i33) & parsableByteArray2.a[i29] & 255;
                                                    while (i31 < i9) {
                                                        j = (j << i6) | (parsableByteArray2.a[i31] & 255);
                                                        i31++;
                                                    }
                                                    if (i27 > 0) {
                                                        j -= (1 << ((i32 * 7) + 6)) - 1;
                                                    }
                                                } else {
                                                    i32++;
                                                    i15 = i8;
                                                    i18 = i6;
                                                }
                                            } else {
                                                i6 = i18;
                                                i7 = i14;
                                                i8 = i15;
                                                j = 0;
                                                i9 = i31;
                                                break;
                                            }
                                        }
                                        if (j < -2147483648L || j > 2147483647L) {
                                            break;
                                        }
                                        int i34 = (int) j;
                                        int[] iArr6 = matroskaExtractor.Z;
                                        if (i27 != 0) {
                                            i34 += iArr6[i27 - 1];
                                        }
                                        iArr6[i27] = i34;
                                        i28 += i34;
                                        i27++;
                                        i29 = i9;
                                        i15 = i8;
                                        i18 = i6;
                                        i14 = i7;
                                    } else {
                                        throw ParserException.a(null, "No valid varint length mask found");
                                    }
                                } else {
                                    i4 = i14;
                                    i5 = i15;
                                    iArr5[i30] = ((i2 - matroskaExtractor.b0) - i29) - i28;
                                    break;
                                }
                            }
                            throw ParserException.a(null, "EBML lacing sample size out of range.");
                        }
                        throw ParserException.a(null, "Unexpected lacing value: " + i19);
                    }
                }
                i4 = 2;
                i5 = 0;
                byte[] bArr6 = parsableByteArray2.a;
                matroskaExtractor.V = matroskaExtractor.o((bArr6[1] & 255) | (bArr6[i5] << 8)) + matroskaExtractor.S;
                if (track3.f != 1 && (i != 163 || (parsableByteArray2.a[i4] & 128) != 128)) {
                    i13 = i5;
                } else {
                    i13 = 1;
                }
                matroskaExtractor.c0 = i13;
                matroskaExtractor.U = i4;
                matroskaExtractor.X = i5;
            }
            if (i == 163) {
                while (true) {
                    int i35 = matroskaExtractor.X;
                    if (i35 < matroskaExtractor.Y) {
                        matroskaExtractor.i(track3, ((matroskaExtractor.X * track3.g) / 1000) + matroskaExtractor.V, matroskaExtractor.c0, matroskaExtractor.q(extractorInput, track3, matroskaExtractor.Z[i35], false), 0);
                        matroskaExtractor.X++;
                    } else {
                        matroskaExtractor.U = 0;
                        return;
                    }
                }
            } else {
                while (true) {
                    int i36 = matroskaExtractor.X;
                    if (i36 < matroskaExtractor.Y) {
                        int[] iArr7 = matroskaExtractor.Z;
                        iArr7[i36] = matroskaExtractor.q(extractorInput, track3, iArr7[i36], true);
                        matroskaExtractor.X++;
                    } else {
                        return;
                    }
                }
            }
        }

        public final void b(int i, long j) {
            MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
            boolean z = false;
            if (i != 136) {
                if (i != 137) {
                    if (i != 145) {
                        if (i != 146) {
                            if (i != 240) {
                                if (i != 241) {
                                    if (i != 20529) {
                                        if (i != 20530) {
                                            if (i != 29636) {
                                                if (i != 29637) {
                                                    switch (i) {
                                                        case 131:
                                                            int i2 = (int) j;
                                                            if (i2 != 1) {
                                                                if (i2 != 2) {
                                                                    if (i2 != 17) {
                                                                        if (i2 != 33) {
                                                                            matroskaExtractor.h(i);
                                                                            matroskaExtractor.A.f = -1;
                                                                            return;
                                                                        } else {
                                                                            matroskaExtractor.h(i);
                                                                            matroskaExtractor.A.f = 5;
                                                                            return;
                                                                        }
                                                                    }
                                                                    matroskaExtractor.h(i);
                                                                    matroskaExtractor.A.f = 3;
                                                                    return;
                                                                }
                                                                matroskaExtractor.h(i);
                                                                matroskaExtractor.A.f = 1;
                                                                return;
                                                            }
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.f = 2;
                                                            return;
                                                        case 152:
                                                            ChapterEntry k = matroskaExtractor.k(i);
                                                            if (j == 1) {
                                                                z = true;
                                                            }
                                                            k.d = z;
                                                            return;
                                                        case 155:
                                                            matroskaExtractor.W = matroskaExtractor.o(j);
                                                            return;
                                                        case 159:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.Q = (int) j;
                                                            return;
                                                        case 176:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.o = (int) j;
                                                            return;
                                                        case 179:
                                                            if (!matroskaExtractor.B) {
                                                                matroskaExtractor.g(i);
                                                                matroskaExtractor.G = matroskaExtractor.o(j);
                                                                return;
                                                            }
                                                            return;
                                                        case 186:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.p = (int) j;
                                                            return;
                                                        case 215:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.d = (int) j;
                                                            return;
                                                        case 231:
                                                            matroskaExtractor.S = matroskaExtractor.o(j);
                                                            return;
                                                        case 238:
                                                            matroskaExtractor.d0 = (int) j;
                                                            return;
                                                        case 247:
                                                            if (!matroskaExtractor.B) {
                                                                matroskaExtractor.g(i);
                                                                matroskaExtractor.H = (int) j;
                                                                return;
                                                            }
                                                            return;
                                                        case 251:
                                                            matroskaExtractor.e0 = true;
                                                            return;
                                                        case 16871:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.i = (int) j;
                                                            return;
                                                        case 16980:
                                                            if (j != 3) {
                                                                throw ParserException.a(null, "ContentCompAlgo " + j + " not supported");
                                                            }
                                                            return;
                                                        case 17029:
                                                            if (j < 1 || j > 2) {
                                                                throw ParserException.a(null, "DocTypeReadVersion " + j + " not supported");
                                                            }
                                                            return;
                                                        case 17143:
                                                            if (j != 1) {
                                                                throw ParserException.a(null, "EBMLReadVersion " + j + " not supported");
                                                            }
                                                            return;
                                                        case 18401:
                                                            if (j != 5) {
                                                                throw ParserException.a(null, "ContentEncAlgo " + j + " not supported");
                                                            }
                                                            return;
                                                        case 18408:
                                                            if (j != 1) {
                                                                throw ParserException.a(null, "AESSettingsCipherMode " + j + " not supported");
                                                            }
                                                            return;
                                                        case 21420:
                                                            matroskaExtractor.D = j + matroskaExtractor.t;
                                                            return;
                                                        case 21432:
                                                            int i3 = (int) j;
                                                            matroskaExtractor.h(i);
                                                            if (i3 != 0) {
                                                                if (i3 != 1) {
                                                                    if (i3 != 3) {
                                                                        if (i3 == 15) {
                                                                            matroskaExtractor.A.z = 3;
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                    matroskaExtractor.A.z = 1;
                                                                    return;
                                                                }
                                                                matroskaExtractor.A.z = 2;
                                                                return;
                                                            }
                                                            matroskaExtractor.A.z = 0;
                                                            return;
                                                        case 21680:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.r = (int) j;
                                                            return;
                                                        case 21682:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.t = (int) j;
                                                            return;
                                                        case 21690:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.s = (int) j;
                                                            return;
                                                        case 21930:
                                                            matroskaExtractor.h(i);
                                                            Track track = matroskaExtractor.A;
                                                            if (j == 1) {
                                                                z = true;
                                                            }
                                                            track.a0 = z;
                                                            return;
                                                        case 21938:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.q = (int) j;
                                                            return;
                                                        case 21998:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.h = (int) j;
                                                            return;
                                                        case 22186:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.U = j;
                                                            return;
                                                        case 22203:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.V = j;
                                                            return;
                                                        case 25188:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.R = (int) j;
                                                            return;
                                                        case 30114:
                                                            matroskaExtractor.f0 = j;
                                                            return;
                                                        case 30321:
                                                            matroskaExtractor.h(i);
                                                            int i4 = (int) j;
                                                            if (i4 != 0) {
                                                                if (i4 != 1) {
                                                                    if (i4 != 2) {
                                                                        if (i4 == 3) {
                                                                            matroskaExtractor.A.u = 3;
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                    matroskaExtractor.A.u = 2;
                                                                    return;
                                                                }
                                                                matroskaExtractor.A.u = 1;
                                                                return;
                                                            }
                                                            matroskaExtractor.A.u = 0;
                                                            return;
                                                        case 2352003:
                                                            matroskaExtractor.h(i);
                                                            matroskaExtractor.A.g = (int) j;
                                                            return;
                                                        case 2807729:
                                                            matroskaExtractor.u = j;
                                                            return;
                                                        default:
                                                            switch (i) {
                                                                case 21945:
                                                                    matroskaExtractor.h(i);
                                                                    int i5 = (int) j;
                                                                    if (i5 != 1) {
                                                                        if (i5 == 2) {
                                                                            matroskaExtractor.A.C = 1;
                                                                            return;
                                                                        }
                                                                        return;
                                                                    }
                                                                    matroskaExtractor.A.C = 2;
                                                                    return;
                                                                case 21946:
                                                                    matroskaExtractor.h(i);
                                                                    int g = ColorInfo.g((int) j);
                                                                    if (g != -1) {
                                                                        matroskaExtractor.A.B = g;
                                                                        return;
                                                                    }
                                                                    return;
                                                                case 21947:
                                                                    matroskaExtractor.h(i);
                                                                    int f = ColorInfo.f((int) j);
                                                                    if (f != -1) {
                                                                        matroskaExtractor.A.A = f;
                                                                        return;
                                                                    }
                                                                    return;
                                                                case 21948:
                                                                    matroskaExtractor.h(i);
                                                                    matroskaExtractor.A.D = (int) j;
                                                                    return;
                                                                case 21949:
                                                                    matroskaExtractor.h(i);
                                                                    matroskaExtractor.A.E = (int) j;
                                                                    return;
                                                                default:
                                                                    return;
                                                            }
                                                    }
                                                }
                                                matroskaExtractor.h(i);
                                                matroskaExtractor.A.e = j;
                                                return;
                                            }
                                            matroskaExtractor.k(i).a = j;
                                            return;
                                        }
                                        if (j != 1) {
                                            throw ParserException.a(null, "ContentEncodingScope " + j + " not supported");
                                        }
                                        return;
                                    }
                                    if (j != 0) {
                                        throw ParserException.a(null, "ContentEncodingOrder " + j + " not supported");
                                    }
                                    return;
                                }
                                if (!matroskaExtractor.B) {
                                    matroskaExtractor.g(i);
                                    if (matroskaExtractor.I == -1) {
                                        matroskaExtractor.I = j;
                                        return;
                                    }
                                    return;
                                }
                                return;
                            }
                            if (!matroskaExtractor.B) {
                                matroskaExtractor.g(i);
                                if (matroskaExtractor.J == -1) {
                                    matroskaExtractor.J = j;
                                    return;
                                }
                                return;
                            }
                            return;
                        }
                        matroskaExtractor.k(i).c = j;
                        return;
                    }
                    matroskaExtractor.k(i).b = j;
                    return;
                }
                matroskaExtractor.k(i).e = j;
                return;
            }
            matroskaExtractor.h(i);
            Track track2 = matroskaExtractor.A;
            if (j == 1) {
                z = true;
            }
            track2.b0 = z;
        }

        /* JADX WARN: Type inference failed for: r10v1, types: [androidx.media3.extractor.mkv.MatroskaExtractor$Track, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r10v13, types: [androidx.media3.extractor.mkv.MatroskaExtractor$ChapterEntry, java.lang.Object] */
        public final void c(int i, long j, long j2) {
            MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
            matroskaExtractor.p0.getClass();
            if (i != 128) {
                if (i != 160) {
                    if (i != 174) {
                        if (i != 187) {
                            if (i != 19899) {
                                if (i != 20533) {
                                    if (i != 408125543) {
                                        if (i != 475249515) {
                                            if (i != 524531317) {
                                                if (i != 182) {
                                                    if (i == 183 && !matroskaExtractor.B) {
                                                        matroskaExtractor.g(i);
                                                        matroskaExtractor.H = -1;
                                                        matroskaExtractor.I = -1L;
                                                        matroskaExtractor.J = -1L;
                                                        return;
                                                    }
                                                    return;
                                                }
                                                ?? obj = new Object();
                                                obj.b = -9223372036854775807L;
                                                obj.c = -9223372036854775807L;
                                                matroskaExtractor.z = obj;
                                                return;
                                            }
                                            if (matroskaExtractor.O != -1 && !matroskaExtractor.R) {
                                                matroskaExtractor.P = true;
                                            }
                                            if (!matroskaExtractor.B) {
                                                if (matroskaExtractor.e && matroskaExtractor.M != -1) {
                                                    matroskaExtractor.L = true;
                                                    return;
                                                } else {
                                                    matroskaExtractor.p0.f(new SeekMap.Unseekable(matroskaExtractor.w));
                                                    matroskaExtractor.B = true;
                                                    return;
                                                }
                                            }
                                            return;
                                        }
                                        if (!matroskaExtractor.B) {
                                            matroskaExtractor.F = true;
                                            return;
                                        }
                                        return;
                                    }
                                    long j3 = matroskaExtractor.t;
                                    if (j3 != -1 && j3 != j) {
                                        throw ParserException.a(null, "Multiple Segment elements not supported");
                                    }
                                    matroskaExtractor.t = j;
                                    matroskaExtractor.s = j2;
                                    return;
                                }
                                matroskaExtractor.h(i);
                                matroskaExtractor.A.j = true;
                                return;
                            }
                            matroskaExtractor.C = -1;
                            matroskaExtractor.D = -1L;
                            return;
                        }
                        if (!matroskaExtractor.B) {
                            matroskaExtractor.g(i);
                            matroskaExtractor.G = -9223372036854775807L;
                            return;
                        }
                        return;
                    }
                    ?? obj2 = new Object();
                    obj2.o = -1;
                    obj2.p = -1;
                    obj2.q = -1;
                    obj2.r = -1;
                    obj2.s = -1;
                    obj2.t = 0;
                    obj2.u = -1;
                    obj2.v = 0.0f;
                    obj2.w = 0.0f;
                    obj2.x = 0.0f;
                    obj2.y = null;
                    obj2.z = -1;
                    obj2.A = -1;
                    obj2.B = -1;
                    obj2.C = -1;
                    obj2.D = 1000;
                    obj2.E = 200;
                    obj2.F = -1.0f;
                    obj2.G = -1.0f;
                    obj2.H = -1.0f;
                    obj2.I = -1.0f;
                    obj2.J = -1.0f;
                    obj2.K = -1.0f;
                    obj2.L = -1.0f;
                    obj2.M = -1.0f;
                    obj2.N = -1.0f;
                    obj2.O = -1.0f;
                    obj2.Q = 1;
                    obj2.R = -1;
                    obj2.S = -1;
                    obj2.T = 8000;
                    obj2.U = 0L;
                    obj2.V = 0L;
                    obj2.X = false;
                    obj2.b0 = true;
                    obj2.c0 = "eng";
                    matroskaExtractor.A = obj2;
                    obj2.a = matroskaExtractor.x;
                    return;
                }
                matroskaExtractor.e0 = false;
                matroskaExtractor.f0 = 0L;
                return;
            }
            matroskaExtractor.k(i).h = null;
            matroskaExtractor.k(i).i = null;
        }

        public final void d(int i, String str) {
            MatroskaExtractor matroskaExtractor = MatroskaExtractor.this;
            if (i != 133) {
                if (i != 134) {
                    if (i != 17026) {
                        if (i != 17276) {
                            if (i != 21358) {
                                if (i != 2274716) {
                                    return;
                                }
                                matroskaExtractor.h(i);
                                matroskaExtractor.A.c0 = str;
                                return;
                            }
                            matroskaExtractor.h(i);
                            matroskaExtractor.A.b = str;
                            return;
                        }
                        matroskaExtractor.k(i).i = str;
                        return;
                    }
                    if (!"webm".equals(str) && !"matroska".equals(str)) {
                        throw ParserException.a(null, "DocType " + str + " not supported");
                    }
                    matroskaExtractor.x = str.equals("webm");
                    return;
                }
                matroskaExtractor.h(i);
                matroskaExtractor.A.c = str;
                return;
            }
            matroskaExtractor.k(i).h = str;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MatroskaSeekMap implements SeekMap {
        public final ChunkIndex a;
        public final SparseArray b;
        public final long c;
        public final int d;

        /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
        /* loaded from: classes.dex */
        public static final class CuePointData implements Comparable<CuePointData> {
            public final long j;
            public final long k;
            public final long l;

            public CuePointData(long j, long j2, long j3) {
                this.j = j;
                this.k = j2;
                this.l = j3;
            }

            @Override // java.lang.Comparable
            public final int compareTo(CuePointData cuePointData) {
                return Long.compare(this.j, cuePointData.j);
            }

            public final boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                if (!(obj instanceof CuePointData)) {
                    return false;
                }
                CuePointData cuePointData = (CuePointData) obj;
                if (this.j == cuePointData.j && this.k == cuePointData.k && this.l == cuePointData.l) {
                    return true;
                }
                return false;
            }

            public final int hashCode() {
                return Objects.hash(Long.valueOf(this.j), Long.valueOf(this.k), Long.valueOf(this.l));
            }
        }

        public MatroskaSeekMap(SparseArray sparseArray, long j, int i, long j2, long j3) {
            ChunkIndex chunkIndex;
            int i2;
            this.b = sparseArray;
            this.c = j;
            this.d = i;
            List list = (List) sparseArray.get(i);
            if (list != null && !list.isEmpty()) {
                int size = list.size();
                int[] iArr = new int[size];
                long[] jArr = new long[size];
                long[] jArr2 = new long[size];
                long[] jArr3 = new long[size];
                int i3 = 0;
                for (int i4 = 0; i4 < size; i4++) {
                    CuePointData cuePointData = (CuePointData) list.get(i4);
                    jArr3[i4] = cuePointData.j;
                    jArr[i4] = cuePointData.k;
                }
                while (true) {
                    i2 = size - 1;
                    if (i3 >= i2) {
                        break;
                    }
                    int i5 = i3 + 1;
                    iArr[i3] = (int) (jArr[i5] - jArr[i3]);
                    jArr2[i3] = jArr3[i5] - jArr3[i3];
                    i3 = i5;
                }
                int i6 = i2;
                while (i6 > 0 && jArr3[i6] >= j) {
                    i6--;
                }
                iArr[i6] = (int) ((j2 + j3) - jArr[i6]);
                jArr2[i6] = j - jArr3[i6];
                if (i6 < i2) {
                    Log.f("MatroskaExtractor", "Discarding trailing cue points with timestamps greater than total duration.");
                    int i7 = i6 + 1;
                    iArr = Arrays.copyOf(iArr, i7);
                    jArr = Arrays.copyOf(jArr, i7);
                    jArr2 = Arrays.copyOf(jArr2, i7);
                    jArr3 = Arrays.copyOf(jArr3, i7);
                }
                chunkIndex = new ChunkIndex(iArr, jArr, jArr2, jArr3);
            } else {
                chunkIndex = null;
            }
            this.a = chunkIndex;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean b() {
            List list = (List) this.b.get(this.d);
            if (list != null && !list.isEmpty()) {
                return true;
            }
            return false;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints e(long j) {
            ChunkIndex chunkIndex = this.a;
            if (chunkIndex != null) {
                return chunkIndex.e(j);
            }
            SeekPoint seekPoint = SeekPoint.c;
            return new SeekMap.SeekPoints(seekPoint, seekPoint);
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long g() {
            return this.c;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Track {
        public int A;
        public int B;
        public int C;
        public int D;
        public int E;
        public float F;
        public float G;
        public float H;
        public float I;
        public float J;
        public float K;
        public float L;
        public float M;
        public float N;
        public float O;
        public byte[] P;
        public int Q;
        public int R;
        public int S;
        public int T;
        public long U;
        public long V;
        public TrueHdSampleRechunker W;
        public boolean X;
        public boolean Y;
        public boolean Z;
        public boolean a;
        public boolean a0;
        public String b;
        public boolean b0;
        public String c;
        public String c0;
        public int d;
        public TrackOutput d0;
        public long e;
        public Format e0;
        public int f;
        public int f0;
        public int g;
        public int h;
        public int i;
        public boolean j;
        public byte[] k;
        public TrackOutput.CryptoData l;
        public byte[] m;
        public DrmInitData n;
        public int o;
        public int p;
        public int q;
        public int r;
        public int s;
        public int t;
        public int u;
        public float v;
        public float w;
        public float x;
        public byte[] y;
        public int z;

        public final byte[] a(String str) {
            byte[] bArr = this.m;
            if (bArr != null) {
                return bArr;
            }
            throw ParserException.a(null, "Missing CodecPrivate for codec " + str);
        }
    }

    static {
        String str = Util.a;
        r0 = "Format: Start, End, ReadOrder, Layer, Style, Name, MarginL, MarginR, MarginV, Effect, Text".getBytes(StandardCharsets.UTF_8);
        s0 = new byte[]{68, 105, 97, 108, 111, 103, 117, 101, 58, 32, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44, 48, 58, 48, 48, 58, 48, 48, 58, 48, 48, 44};
        t0 = new byte[]{87, 69, 66, 86, 84, 84, 10, 10, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 32, 45, 45, 62, 32, 48, 48, 58, 48, 48, 58, 48, 48, 46, 48, 48, 48, 10};
        u0 = new UUID(72057594037932032L, -9223371306706625679L);
        HashMap hashMap = new HashMap();
        q.t(0, hashMap, "htc_video_rotA-000", 90, "htc_video_rotA-090");
        q.t(180, hashMap, "htc_video_rotA-180", 270, "htc_video_rotA-270");
        v0 = Collections.unmodifiableMap(hashMap);
    }

    public MatroskaExtractor(SubtitleParser.Factory factory, int i) {
        boolean z;
        DefaultEbmlReader defaultEbmlReader = new DefaultEbmlReader();
        this.t = -1L;
        this.u = -9223372036854775807L;
        this.v = -9223372036854775807L;
        this.w = -9223372036854775807L;
        this.G = -9223372036854775807L;
        this.H = -1;
        this.I = -1L;
        this.J = -1L;
        this.K = -1;
        this.M = -1L;
        this.N = -1L;
        this.O = -1L;
        this.Q = -1L;
        this.S = -9223372036854775807L;
        this.a = defaultEbmlReader;
        defaultEbmlReader.d = new InnerEbmlProcessor();
        this.g = factory;
        this.E = new SparseArray();
        this.e = true;
        if ((i & 2) == 0) {
            z = true;
        } else {
            z = false;
        }
        this.f = z;
        this.b = new VarintReader();
        this.d = new LongSparseArray();
        this.c = new SparseArray();
        this.j = new ParsableByteArray(4);
        this.k = new ParsableByteArray(ByteBuffer.allocate(4).putInt(-1).array());
        this.l = new ParsableByteArray(4);
        this.h = new ParsableByteArray(NalUnitUtil.a);
        this.i = new ParsableByteArray(4);
        this.m = new ParsableByteArray();
        this.n = new ParsableByteArray();
        this.o = new ParsableByteArray(8);
        this.p = new ParsableByteArray();
        this.q = new ParsableByteArray();
        this.Z = new int[1];
        this.y = true;
    }

    public static byte[] j(long j, long j2, String str) {
        boolean z;
        if (j != -9223372036854775807L) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        int i = (int) (j / 3600000000L);
        long j3 = j - (i * 3600000000L);
        int i2 = (int) (j3 / 60000000);
        long j4 = j3 - (i2 * 60000000);
        int i3 = (int) (j4 / 1000000);
        String format = String.format(Locale.US, str, Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf((int) ((j4 - (i3 * 1000000)) / j2)));
        String str2 = Util.a;
        return format.getBytes(StandardCharsets.UTF_8);
    }

    /* JADX WARN: Code restructure failed: missing block: B:13:0x0096, code lost:
    
        return false;
     */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final boolean b(ExtractorInput extractorInput) {
        Sniffer sniffer = new Sniffer();
        DefaultExtractorInput defaultExtractorInput = (DefaultExtractorInput) extractorInput;
        long j = defaultExtractorInput.c;
        long j2 = 1024;
        if (j != -1 && j <= 1024) {
            j2 = j;
        }
        int i = (int) j2;
        ParsableByteArray parsableByteArray = sniffer.a;
        defaultExtractorInput.d(parsableByteArray.a, 0, 4, false);
        long B = parsableByteArray.B();
        sniffer.b = 4;
        while (true) {
            if (B != 440786851) {
                int i2 = sniffer.b + 1;
                sniffer.b = i2;
                if (i2 == i) {
                    break;
                }
                defaultExtractorInput.d(parsableByteArray.a, 0, 1, false);
                B = ((B << 8) & (-256)) | (parsableByteArray.a[0] & 255);
            } else {
                long a = sniffer.a(defaultExtractorInput);
                long j3 = sniffer.b;
                if (a != Long.MIN_VALUE && (j == -1 || j3 + a < j)) {
                    while (true) {
                        long j4 = sniffer.b;
                        long j5 = j3 + a;
                        if (j4 < j5) {
                            if (sniffer.a(defaultExtractorInput) != Long.MIN_VALUE) {
                                long a2 = sniffer.a(defaultExtractorInput);
                                if (a2 < 0 || a2 > 2147483647L) {
                                    break;
                                }
                                if (a2 != 0) {
                                    int i3 = (int) a2;
                                    defaultExtractorInput.p(i3, false);
                                    sniffer.b += i3;
                                }
                            } else {
                                break;
                            }
                        } else if (j4 == j5) {
                            return true;
                        }
                    }
                }
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        this.S = -9223372036854775807L;
        this.U = 0;
        DefaultEbmlReader defaultEbmlReader = this.a;
        defaultEbmlReader.e = 0;
        defaultEbmlReader.b.clear();
        VarintReader varintReader = defaultEbmlReader.c;
        varintReader.b = 0;
        varintReader.c = 0;
        VarintReader varintReader2 = this.b;
        varintReader2.b = 0;
        varintReader2.c = 0;
        n();
        this.F = false;
        this.G = -9223372036854775807L;
        this.H = -1;
        this.I = -1L;
        this.J = -1L;
        if (!this.B) {
            this.E.clear();
        }
        int i = 0;
        while (true) {
            SparseArray sparseArray = this.c;
            if (i < sparseArray.size()) {
                TrueHdSampleRechunker trueHdSampleRechunker = ((Track) sparseArray.valueAt(i)).W;
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.b = false;
                    trueHdSampleRechunker.c = 0;
                }
                i++;
            } else {
                return;
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        if (this.f) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.g);
        }
        this.p0 = extractorOutput;
    }

    @Override // androidx.media3.extractor.Extractor
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        int i = 0;
        this.T = false;
        boolean z = true;
        while (z && !this.T) {
            z = this.a.a(extractorInput);
            if (z) {
                long position = extractorInput.getPosition();
                if (this.P) {
                    this.Q = position;
                    positionHolder.a = this.O;
                    this.P = false;
                    return 1;
                }
                if (this.R) {
                    long j = this.Q;
                    if (j != -1) {
                        positionHolder.a = j;
                        this.Q = -1L;
                        return 1;
                    }
                }
                long position2 = extractorInput.getPosition();
                if (this.L) {
                    this.N = position2;
                    positionHolder.a = this.M;
                    this.L = false;
                    return 1;
                }
                if (this.B) {
                    long j2 = this.N;
                    if (j2 != -1) {
                        positionHolder.a = j2;
                        this.N = -1L;
                        return 1;
                    }
                } else {
                    continue;
                }
            }
        }
        if (z) {
            return 0;
        }
        while (true) {
            SparseArray sparseArray = this.c;
            if (i < sparseArray.size()) {
                Track track = (Track) sparseArray.valueAt(i);
                track.d0.getClass();
                TrueHdSampleRechunker trueHdSampleRechunker = track.W;
                if (trueHdSampleRechunker != null) {
                    trueHdSampleRechunker.a(track.d0, track.l);
                }
                i++;
            } else {
                return -1;
            }
        }
    }

    public final void g(int i) {
        if (this.F) {
            return;
        }
        throw ParserException.a(null, "Element " + i + " must be in a Cues");
    }

    public final void h(int i) {
        if (this.A != null) {
            return;
        }
        throw ParserException.a(null, "Element " + i + " must be in a TrackEntry");
    }

    /* JADX WARN: Removed duplicated region for block: B:18:0x00e8  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void i(Track track, long j, int i, int i2, int i3) {
        byte[] j2;
        int i4;
        int i5;
        TrueHdSampleRechunker trueHdSampleRechunker = track.W;
        if (trueHdSampleRechunker != null) {
            trueHdSampleRechunker.b(track.d0, j, i, i2, i3, track.l);
        } else {
            if ("S_TEXT/UTF8".equals(track.c) || "S_TEXT/ASS".equals(track.c) || "S_TEXT/SSA".equals(track.c) || "S_TEXT/WEBVTT".equals(track.c)) {
                if (this.Y > 1) {
                    Log.f("MatroskaExtractor", "Skipping subtitle sample in laced block.");
                } else {
                    long j3 = this.W;
                    if (j3 == -9223372036854775807L) {
                        Log.f("MatroskaExtractor", "Skipping subtitle sample with no duration.");
                    } else {
                        String str = track.c;
                        ParsableByteArray parsableByteArray = this.n;
                        byte[] bArr = parsableByteArray.a;
                        str.getClass();
                        char c = 65535;
                        switch (str.hashCode()) {
                            case 738597099:
                                if (str.equals("S_TEXT/ASS")) {
                                    c = 0;
                                    break;
                                }
                                break;
                            case 738614379:
                                if (str.equals("S_TEXT/SSA")) {
                                    c = 1;
                                    break;
                                }
                                break;
                            case 1045209816:
                                if (str.equals("S_TEXT/WEBVTT")) {
                                    c = 2;
                                    break;
                                }
                                break;
                            case 1422270023:
                                if (str.equals("S_TEXT/UTF8")) {
                                    c = 3;
                                    break;
                                }
                                break;
                        }
                        switch (c) {
                            case 0:
                            case 1:
                                j2 = j(j3, 10000L, "%01d:%02d:%02d:%02d");
                                i4 = 21;
                                break;
                            case PreferencesProto$Value.FLOAT_FIELD_NUMBER /* 2 */:
                                j2 = j(j3, 1000L, "%02d:%02d:%02d.%03d");
                                i4 = 25;
                                break;
                            case PreferencesProto$Value.INTEGER_FIELD_NUMBER /* 3 */:
                                j2 = j(j3, 1000L, "%02d:%02d:%02d,%03d");
                                i4 = 19;
                                break;
                            default:
                                fe.h();
                                return;
                        }
                        System.arraycopy(j2, 0, bArr, i4, j2.length);
                        int i6 = parsableByteArray.b;
                        while (true) {
                            if (i6 < parsableByteArray.c) {
                                if (parsableByteArray.a[i6] == 0) {
                                    parsableByteArray.L(i6);
                                } else {
                                    i6++;
                                }
                            }
                        }
                        track.d0.f(parsableByteArray.c, parsableByteArray);
                        i5 = i2 + parsableByteArray.c;
                        if ((i & 268435456) != 0) {
                            int i7 = this.Y;
                            ParsableByteArray parsableByteArray2 = this.q;
                            if (i7 > 1) {
                                parsableByteArray2.J(0);
                            } else {
                                int i8 = parsableByteArray2.c;
                                track.d0.b(parsableByteArray2, i8, 2);
                                i5 += i8;
                            }
                        }
                        track.d0.g(j, i, i5, i3, track.l);
                    }
                }
            }
            i5 = i2;
            if ((i & 268435456) != 0) {
            }
            track.d0.g(j, i, i5, i3, track.l);
        }
        this.T = true;
    }

    public final ChapterEntry k(int i) {
        ChapterEntry chapterEntry = this.z;
        if (chapterEntry != null) {
            return chapterEntry;
        }
        throw ParserException.a(null, "Element " + i + " must be in an EditionEntry");
    }

    public final void l() {
        if (this.y) {
            if (this.O == -1 || this.R) {
                int i = 0;
                while (true) {
                    SparseArray sparseArray = this.c;
                    if (i < sparseArray.size()) {
                        if (((Track) sparseArray.valueAt(i)).X) {
                            return;
                        } else {
                            i++;
                        }
                    } else {
                        ExtractorOutput extractorOutput = this.p0;
                        extractorOutput.getClass();
                        extractorOutput.n();
                        this.y = false;
                        return;
                    }
                }
            }
        }
    }

    public final void m(ExtractorInput extractorInput, int i) {
        ParsableByteArray parsableByteArray = this.j;
        if (parsableByteArray.c >= i) {
            return;
        }
        byte[] bArr = parsableByteArray.a;
        if (bArr.length < i) {
            parsableByteArray.c(Math.max(bArr.length * 2, i));
        }
        byte[] bArr2 = parsableByteArray.a;
        int i2 = parsableByteArray.c;
        extractorInput.readFully(bArr2, i2, i - i2);
        parsableByteArray.L(i);
    }

    public final void n() {
        this.g0 = 0;
        this.h0 = 0;
        this.i0 = 0;
        this.j0 = false;
        this.k0 = false;
        this.l0 = false;
        this.m0 = 0;
        this.n0 = (byte) 0;
        this.o0 = false;
        this.m.J(0);
    }

    public final long o(long j) {
        long j2 = this.u;
        if (j2 != -9223372036854775807L) {
            String str = Util.a;
            return Util.J(j, j2, 1000L, RoundingMode.DOWN);
        }
        throw ParserException.a(null, "Can't scale timecode prior to timecodeScale being set.");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:50:0x0170  */
    /* JADX WARN: Removed duplicated region for block: B:57:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Type inference failed for: r29v10 */
    /* JADX WARN: Type inference failed for: r29v4 */
    /* JADX WARN: Type inference failed for: r29v9 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void p(Track track) {
        long j;
        boolean z;
        long j2;
        long j3;
        long j4;
        long j5;
        ?? r29;
        boolean z2;
        Metadata a;
        boolean z3;
        Metadata metadata;
        long j6 = 0;
        int i = 1;
        boolean z4 = false;
        if (!track.Y) {
            LongSparseArray longSparseArray = this.d;
            if (longSparseArray.size() != 0) {
                ArrayList arrayList = new ArrayList(longSparseArray.size());
                for (int i2 = 0; i2 < longSparseArray.size(); i2++) {
                    ChapterEntry chapterEntry = (ChapterEntry) longSparseArray.valueAt(i2);
                    long j7 = chapterEntry.e;
                    if (j7 == 0 || j7 == track.e) {
                        Chapter.Builder builder = new Chapter.Builder();
                        long j8 = chapterEntry.b;
                        String str = Util.a;
                        if (j8 != -9223372036854775807L && j8 != Long.MIN_VALUE) {
                            j8 /= 1000000;
                        }
                        builder.a = j8;
                        long j9 = chapterEntry.c;
                        if (j9 != -9223372036854775807L && j9 != Long.MIN_VALUE) {
                            j9 /= 1000000;
                        }
                        builder.b = j9;
                        builder.c = chapterEntry.d;
                        if (chapterEntry.f != null) {
                            builder.d = new Label(chapterEntry.g, chapterEntry.f);
                        }
                        arrayList.add(builder.a());
                    }
                }
                if (!arrayList.isEmpty()) {
                    Format format = track.e0;
                    format.getClass();
                    Format.Builder a2 = format.a();
                    Metadata metadata2 = track.e0.m;
                    if (metadata2 != null) {
                        metadata = metadata2.a((Metadata.Entry[]) arrayList.toArray(new Chapter[0]));
                    } else {
                        metadata = new Metadata(arrayList);
                    }
                    a2.l = metadata;
                    track.e0 = new Format(a2);
                    track.Y = true;
                }
            }
        }
        long j10 = this.w;
        long j11 = this.t;
        long j12 = this.s;
        if (track.f == 2) {
            List list = (List) this.E.get(track.d);
            if (!track.Z && list != null && !list.isEmpty()) {
                if (list.isEmpty()) {
                    j = -9223372036854775807L;
                    z3 = false;
                } else {
                    int min = Math.min(list.size(), 20);
                    double d = 0.0d;
                    j = -9223372036854775807L;
                    int i3 = 0;
                    int i4 = -1;
                    while (true) {
                        if (i3 < min) {
                            long j13 = j6;
                            MatroskaSeekMap.CuePointData cuePointData = (MatroskaSeekMap.CuePointData) list.get(i3);
                            boolean z5 = z4;
                            long j14 = j10;
                            long j15 = cuePointData.j;
                            z = z5;
                            int i5 = i;
                            long j16 = cuePointData.l;
                            long j17 = j11;
                            long j18 = cuePointData.k;
                            if (j15 > 10000000) {
                                break;
                            }
                            if (i3 < list.size() - i5) {
                                MatroskaSeekMap.CuePointData cuePointData2 = (MatroskaSeekMap.CuePointData) list.get(i3 + 1);
                                j3 = j12;
                                j4 = (cuePointData2.k + cuePointData2.l) - (j18 + j16);
                                j5 = cuePointData2.j - j15;
                            } else {
                                j3 = j12;
                                j4 = (j17 + j3) - (j18 + j16);
                                j5 = j14 - j15;
                            }
                            if (j5 > j13) {
                                double d2 = j4 / j5;
                                if (d2 > d) {
                                    i4 = i3;
                                    d = d2;
                                }
                            }
                            i3++;
                            z4 = z ? 1 : 0;
                            j6 = j13;
                            j10 = j14;
                            j11 = j17;
                            j12 = j3;
                            i = 1;
                        } else {
                            z = z4;
                            break;
                        }
                    }
                    z3 = z;
                    if (i4 != -1) {
                        j2 = ((MatroskaSeekMap.CuePointData) list.get(i4)).j;
                        r29 = z;
                        if (j2 == j) {
                            Format format2 = track.e0;
                            format2.getClass();
                            Metadata metadata3 = format2.m;
                            ThumbnailMetadata thumbnailMetadata = new ThumbnailMetadata(j2);
                            if (metadata3 == null) {
                                z2 = true;
                                Metadata.Entry[] entryArr = new Metadata.Entry[1];
                                entryArr[r29] = thumbnailMetadata;
                                a = new Metadata(entryArr);
                            } else {
                                z2 = true;
                                Metadata.Entry[] entryArr2 = new Metadata.Entry[1];
                                entryArr2[r29] = thumbnailMetadata;
                                a = metadata3.a(entryArr2);
                            }
                            Format.Builder a3 = track.e0.a();
                            a3.l = a;
                            track.e0 = new Format(a3);
                            track.Z = z2;
                            return;
                        }
                        return;
                    }
                }
                j2 = j;
                r29 = z3;
                if (j2 == j) {
                }
            }
        }
    }

    public final int q(ExtractorInput extractorInput, Track track, int i, boolean z) {
        int c;
        int c2;
        int i2;
        boolean z2;
        boolean z3;
        int i3;
        if ("S_TEXT/UTF8".equals(track.c)) {
            r(extractorInput, q0, i);
            int i4 = this.h0;
            n();
            return i4;
        }
        if (!"S_TEXT/ASS".equals(track.c) && !"S_TEXT/SSA".equals(track.c)) {
            if ("S_TEXT/WEBVTT".equals(track.c)) {
                r(extractorInput, t0, i);
                int i5 = this.h0;
                n();
                return i5;
            }
            if (track.X) {
                track.e0.getClass();
                Format h = DtsUtil.h(extractorInput, i, track.e0);
                track.e0 = h;
                track.d0.e(h);
                track.X = false;
                l();
            }
            TrackOutput trackOutput = track.d0;
            boolean z4 = this.j0;
            ParsableByteArray parsableByteArray = this.m;
            int i6 = 2;
            boolean z5 = true;
            if (!z4) {
                boolean z6 = track.j;
                ParsableByteArray parsableByteArray2 = this.j;
                if (z6) {
                    this.c0 &= -1073741825;
                    int i7 = 128;
                    if (!this.k0) {
                        extractorInput.readFully(parsableByteArray2.a, 0, 1);
                        this.g0++;
                        byte b = parsableByteArray2.a[0];
                        if ((b & 128) != 128) {
                            this.n0 = b;
                            this.k0 = true;
                        } else {
                            throw ParserException.a(null, "Extension bit is set in signal byte");
                        }
                    }
                    byte b2 = this.n0;
                    if ((b2 & 1) == 1) {
                        if ((b2 & 2) == 2) {
                            z3 = true;
                        } else {
                            z3 = false;
                        }
                        this.c0 |= 1073741824;
                        if (!this.o0) {
                            ParsableByteArray parsableByteArray3 = this.o;
                            extractorInput.readFully(parsableByteArray3.a, 0, 8);
                            this.g0 += 8;
                            this.o0 = true;
                            byte[] bArr = parsableByteArray2.a;
                            if (!z3) {
                                i7 = 0;
                            }
                            bArr[0] = (byte) (i7 | 8);
                            parsableByteArray2.M(0);
                            trackOutput.b(parsableByteArray2, 1, 1);
                            this.h0++;
                            parsableByteArray3.M(0);
                            trackOutput.b(parsableByteArray3, 8, 1);
                            this.h0 += 8;
                        }
                        if (z3) {
                            if (!this.l0) {
                                extractorInput.readFully(parsableByteArray2.a, 0, 1);
                                this.g0++;
                                parsableByteArray2.M(0);
                                this.m0 = parsableByteArray2.z();
                                this.l0 = true;
                            }
                            int i8 = this.m0 * 4;
                            parsableByteArray2.J(i8);
                            extractorInput.readFully(parsableByteArray2.a, 0, i8);
                            this.g0 += i8;
                            short s = (short) ((this.m0 / 2) + 1);
                            int i9 = (s * 6) + 2;
                            ByteBuffer byteBuffer = this.r;
                            if (byteBuffer == null || byteBuffer.capacity() < i9) {
                                this.r = ByteBuffer.allocate(i9);
                            }
                            this.r.position(0);
                            this.r.putShort(s);
                            int i10 = 0;
                            int i11 = 0;
                            while (true) {
                                i3 = this.m0;
                                if (i10 >= i3) {
                                    break;
                                }
                                int D = parsableByteArray2.D();
                                int i12 = i10 % 2;
                                int i13 = i6;
                                ByteBuffer byteBuffer2 = this.r;
                                if (i12 == 0) {
                                    byteBuffer2.putShort((short) (D - i11));
                                } else {
                                    byteBuffer2.putInt(D - i11);
                                }
                                i10++;
                                i11 = D;
                                i6 = i13;
                            }
                            i2 = i6;
                            int i14 = (i - this.g0) - i11;
                            int i15 = i3 % 2;
                            ByteBuffer byteBuffer3 = this.r;
                            if (i15 == 1) {
                                byteBuffer3.putInt(i14);
                            } else {
                                byteBuffer3.putShort((short) i14);
                                this.r.putInt(0);
                            }
                            byte[] array = this.r.array();
                            ParsableByteArray parsableByteArray4 = this.p;
                            parsableByteArray4.K(i9, array);
                            trackOutput.b(parsableByteArray4, i9, 1);
                            this.h0 += i9;
                        }
                    }
                    i2 = 2;
                } else {
                    i2 = 2;
                    byte[] bArr2 = track.k;
                    if (bArr2 != null) {
                        parsableByteArray.K(bArr2.length, bArr2);
                    }
                }
                if ("A_OPUS".equals(track.c)) {
                    z2 = z;
                } else if (track.h > 0) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (z2) {
                    this.c0 |= 268435456;
                    this.q.J(0);
                    int i16 = (parsableByteArray.c + i) - this.g0;
                    parsableByteArray2.J(4);
                    byte[] bArr3 = parsableByteArray2.a;
                    bArr3[0] = (byte) ((i16 >> 24) & 255);
                    bArr3[1] = (byte) ((i16 >> 16) & 255);
                    bArr3[i2] = (byte) ((i16 >> 8) & 255);
                    bArr3[3] = (byte) (i16 & 255);
                    trackOutput.b(parsableByteArray2, 4, i2);
                    this.h0 += 4;
                }
                this.j0 = true;
            }
            int i17 = i + parsableByteArray.c;
            if (!"V_MPEG4/ISO/AVC".equals(track.c) && !"V_MPEGH/ISO/HEVC".equals(track.c)) {
                if (track.W != null) {
                    if (parsableByteArray.c != 0) {
                        z5 = false;
                    }
                    Preconditions.n(z5);
                    track.W.c(extractorInput);
                }
                while (true) {
                    int i18 = this.g0;
                    if (i18 >= i17) {
                        break;
                    }
                    int i19 = i17 - i18;
                    int a = parsableByteArray.a();
                    if (a > 0) {
                        c2 = Math.min(i19, a);
                        trackOutput.f(c2, parsableByteArray);
                    } else {
                        c2 = trackOutput.c(extractorInput, i19, false);
                    }
                    this.g0 += c2;
                    this.h0 += c2;
                }
            } else {
                ParsableByteArray parsableByteArray5 = this.i;
                byte[] bArr4 = parsableByteArray5.a;
                bArr4[0] = 0;
                bArr4[1] = 0;
                bArr4[2] = 0;
                int i20 = track.f0;
                int i21 = 4 - i20;
                while (this.g0 < i17) {
                    int i22 = this.i0;
                    if (i22 == 0) {
                        int min = Math.min(i20, parsableByteArray.a());
                        extractorInput.readFully(bArr4, i21 + min, i20 - min);
                        if (min > 0) {
                            parsableByteArray.k(bArr4, i21, min);
                        }
                        this.g0 += i20;
                        parsableByteArray5.M(0);
                        this.i0 = parsableByteArray5.D();
                        ParsableByteArray parsableByteArray6 = this.h;
                        parsableByteArray6.M(0);
                        trackOutput.f(4, parsableByteArray6);
                        this.h0 += 4;
                    } else {
                        int a2 = parsableByteArray.a();
                        if (a2 > 0) {
                            c = Math.min(i22, a2);
                            trackOutput.f(c, parsableByteArray);
                        } else {
                            c = trackOutput.c(extractorInput, i22, false);
                        }
                        this.g0 += c;
                        this.h0 += c;
                        this.i0 -= c;
                    }
                }
            }
            if ("A_VORBIS".equals(track.c)) {
                ParsableByteArray parsableByteArray7 = this.k;
                parsableByteArray7.M(0);
                trackOutput.f(4, parsableByteArray7);
                this.h0 += 4;
            }
            int i23 = this.h0;
            n();
            return i23;
        }
        r(extractorInput, s0, i);
        int i24 = this.h0;
        n();
        return i24;
    }

    public final void r(ExtractorInput extractorInput, byte[] bArr, int i) {
        int length = bArr.length + i;
        ParsableByteArray parsableByteArray = this.n;
        byte[] bArr2 = parsableByteArray.a;
        if (bArr2.length < length) {
            byte[] copyOf = Arrays.copyOf(bArr, length + i);
            parsableByteArray.getClass();
            parsableByteArray.K(copyOf.length, copyOf);
        } else {
            System.arraycopy(bArr, 0, bArr2, 0, bArr.length);
        }
        extractorInput.readFully(parsableByteArray.a, bArr.length, i);
        parsableByteArray.M(0);
        parsableByteArray.L(length);
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
