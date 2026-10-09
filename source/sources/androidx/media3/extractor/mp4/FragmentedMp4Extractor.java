package androidx.media3.extractor.mp4;

import android.util.Pair;
import android.util.SparseArray;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.container.ReorderingBufferQueue;
import androidx.media3.extractor.ChunkIndex;
import androidx.media3.extractor.ChunkIndexMerger;
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
import androidx.media3.extractor.metadata.emsg.EventMessageEncoder;
import androidx.media3.extractor.mp4.PsshAtomUtil;
import androidx.media3.extractor.text.SubtitleParser;
import androidx.media3.extractor.text.SubtitleTranscodingExtractorOutput;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.ImmutableLongArray;
import defpackage.jb;
import defpackage.k8;
import defpackage.p;
import defpackage.q;
import java.math.RoundingMode;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;
import java.util.UUID;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public class FragmentedMp4Extractor implements Extractor {
    public static final byte[] N = {-94, 57, 79, 82, 90, -101, 79, 20, -94, 68, 108, 66, 124, 100, -115, -12};
    public static final Format O;
    public TrackBundle A;
    public int B;
    public int C;
    public int D;
    public boolean E;
    public boolean F;
    public ExtractorOutput G;
    public TrackOutput[] H;
    public TrackOutput[] I;
    public boolean J;
    public boolean K;
    public long L;
    public long M;
    public final SubtitleParser.Factory a;
    public final int b;
    public final List c;
    public final SparseArray d;
    public final ParsableByteArray e;
    public final ParsableByteArray f;
    public final ParsableByteArray g;
    public final byte[] h;
    public final ParsableByteArray i;
    public final EventMessageEncoder j;
    public final ParsableByteArray k;
    public final ArrayDeque l;
    public final ArrayDeque m;
    public final ReorderingBufferQueue n;
    public final ChunkIndexMerger o;
    public ImmutableList p;
    public int q;
    public int r;
    public long s;
    public int t;
    public ParsableByteArray u;
    public long v;
    public int w;
    public long x;
    public long y;
    public long z;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MetadataSampleInfo {
        public final long a;
        public final boolean b;
        public final int c;

        public MetadataSampleInfo(int i, long j, boolean z) {
            this.a = j;
            this.b = z;
            this.c = i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MfraSeekMap implements SeekMap {
        public final SparseArray a;
        public final SparseArray b;
        public final long c;
        public final long d;
        public final int e;

        public MfraSeekMap(SparseArray sparseArray, SparseArray sparseArray2, long j, long j2, int i) {
            this.a = sparseArray;
            this.b = sparseArray2;
            this.c = j;
            this.d = j2;
            this.e = i;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final boolean b() {
            return true;
        }

        @Override // androidx.media3.extractor.SeekMap
        public final SeekMap.SeekPoints e(long j) {
            SparseArray sparseArray = this.a;
            int i = this.e;
            long[] jArr = (long[]) sparseArray.get(i);
            SparseArray sparseArray2 = this.b;
            long[] jArr2 = (long[]) sparseArray2.get(i);
            if (jArr == null || jArr2 == null) {
                jArr = (long[]) sparseArray.get(i);
                jArr2 = (long[]) sparseArray2.get(i);
                if (jArr == null || jArr2 == null) {
                    jArr = (long[]) sparseArray.valueAt(0);
                    jArr2 = (long[]) sparseArray2.valueAt(0);
                }
            }
            if (jArr.length != 0 && j >= jArr[0]) {
                int d = Util.d(jArr, j, true);
                SeekPoint seekPoint = new SeekPoint(jArr[d], jArr2[d]);
                return new SeekMap.SeekPoints(seekPoint, seekPoint);
            }
            SeekPoint seekPoint2 = new SeekPoint(0L, this.d);
            return new SeekMap.SeekPoints(seekPoint2, seekPoint2);
        }

        @Override // androidx.media3.extractor.SeekMap
        public final long g() {
            return this.c;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TrackBundle {
        public final TrackOutput a;
        public TrackSampleTable d;
        public DefaultSampleValues e;
        public int f;
        public int g;
        public int h;
        public int i;
        public Format l;
        public Format m;
        public boolean n;
        public final TrackFragment b = new TrackFragment();
        public final ParsableByteArray c = new ParsableByteArray();
        public final ParsableByteArray j = new ParsableByteArray(1);
        public final ParsableByteArray k = new ParsableByteArray();

        public TrackBundle(TrackOutput trackOutput, TrackSampleTable trackSampleTable, DefaultSampleValues defaultSampleValues, Format format) {
            this.a = trackOutput;
            this.d = trackSampleTable;
            this.e = defaultSampleValues;
            this.m = format;
            if (DtsUtil.e(format.p)) {
                this.l = format;
            }
            this.d = trackSampleTable;
            this.e = defaultSampleValues;
            if (this.l == null) {
                trackOutput.e(this.m);
            }
            e();
        }

        public final int a() {
            int i;
            if (!this.n) {
                i = this.d.g[this.f];
            } else if (this.b.j[this.f]) {
                i = 1;
            } else {
                i = 0;
            }
            if (b() != null) {
                return 1073741824 | i;
            }
            return i;
        }

        public final TrackEncryptionBox b() {
            if (this.n) {
                TrackFragment trackFragment = this.b;
                DefaultSampleValues defaultSampleValues = trackFragment.a;
                String str = Util.a;
                int i = defaultSampleValues.a;
                TrackEncryptionBox trackEncryptionBox = trackFragment.m;
                if (trackEncryptionBox == null) {
                    TrackEncryptionBox[] trackEncryptionBoxArr = this.d.a.n;
                    if (trackEncryptionBoxArr == null) {
                        trackEncryptionBox = null;
                    } else {
                        trackEncryptionBox = trackEncryptionBoxArr[i];
                    }
                }
                if (trackEncryptionBox != null && trackEncryptionBox.a) {
                    return trackEncryptionBox;
                }
            }
            return null;
        }

        public final boolean c() {
            this.f++;
            if (!this.n) {
                return false;
            }
            int i = this.g + 1;
            this.g = i;
            int[] iArr = this.b.g;
            int i2 = this.h;
            if (i != iArr[i2]) {
                return true;
            }
            this.h = i2 + 1;
            this.g = 0;
            return false;
        }

        public final int d(int i, int i2) {
            ParsableByteArray parsableByteArray;
            boolean z;
            boolean z2;
            int i3;
            TrackEncryptionBox b = b();
            if (b == null) {
                return 0;
            }
            int i4 = b.d;
            TrackFragment trackFragment = this.b;
            if (i4 != 0) {
                parsableByteArray = trackFragment.n;
            } else {
                byte[] bArr = b.e;
                String str = Util.a;
                int length = bArr.length;
                ParsableByteArray parsableByteArray2 = this.k;
                parsableByteArray2.K(length, bArr);
                i4 = bArr.length;
                parsableByteArray = parsableByteArray2;
            }
            int i5 = this.f;
            if (trackFragment.k && trackFragment.l[i5]) {
                z = true;
            } else {
                z = false;
            }
            if (!z && i2 == 0) {
                z2 = false;
            } else {
                z2 = true;
            }
            ParsableByteArray parsableByteArray3 = this.j;
            byte[] bArr2 = parsableByteArray3.a;
            if (z2) {
                i3 = 128;
            } else {
                i3 = 0;
            }
            bArr2[0] = (byte) (i3 | i4);
            parsableByteArray3.M(0);
            TrackOutput trackOutput = this.a;
            trackOutput.b(parsableByteArray3, 1, 1);
            trackOutput.b(parsableByteArray, i4, 1);
            if (!z2) {
                return i4 + 1;
            }
            ParsableByteArray parsableByteArray4 = this.c;
            if (!z) {
                parsableByteArray4.J(8);
                byte[] bArr3 = parsableByteArray4.a;
                bArr3[0] = 0;
                bArr3[1] = 1;
                bArr3[2] = 0;
                bArr3[3] = (byte) (i2 & 255);
                bArr3[4] = (byte) ((i >> 24) & 255);
                bArr3[5] = (byte) ((i >> 16) & 255);
                bArr3[6] = (byte) ((i >> 8) & 255);
                bArr3[7] = (byte) (i & 255);
                trackOutput.b(parsableByteArray4, 8, 1);
                return i4 + 9;
            }
            ParsableByteArray parsableByteArray5 = trackFragment.n;
            int G = parsableByteArray5.G();
            parsableByteArray5.N(-2);
            int i6 = (G * 6) + 2;
            if (i2 != 0) {
                parsableByteArray4.J(i6);
                byte[] bArr4 = parsableByteArray4.a;
                parsableByteArray5.k(bArr4, 0, i6);
                int i7 = (((bArr4[2] & 255) << 8) | (bArr4[3] & 255)) + i2;
                bArr4[2] = (byte) ((i7 >> 8) & 255);
                bArr4[3] = (byte) (i7 & 255);
            } else {
                parsableByteArray4 = parsableByteArray5;
            }
            trackOutput.b(parsableByteArray4, i6, 1);
            return i4 + 1 + i6;
        }

        public final void e() {
            TrackFragment trackFragment = this.b;
            trackFragment.d = 0;
            trackFragment.p = 0L;
            trackFragment.q = false;
            trackFragment.k = false;
            trackFragment.o = false;
            trackFragment.m = null;
            this.f = 0;
            this.h = 0;
            this.g = 0;
            this.i = 0;
            this.n = false;
        }
    }

    static {
        Format.Builder builder = new Format.Builder();
        builder.o = MimeTypes.l("application/x-emsg");
        O = new Format(builder);
    }

    public FragmentedMp4Extractor(SubtitleParser.Factory factory, int i) {
        ImmutableList r = ImmutableList.r();
        this.a = factory;
        this.b = i;
        this.c = Collections.unmodifiableList(r);
        this.j = new EventMessageEncoder();
        this.k = new ParsableByteArray(16);
        this.e = new ParsableByteArray(NalUnitUtil.a);
        this.f = new ParsableByteArray(6);
        this.g = new ParsableByteArray();
        byte[] bArr = new byte[16];
        this.h = bArr;
        this.i = new ParsableByteArray(bArr);
        this.l = new ArrayDeque();
        this.m = new ArrayDeque();
        this.d = new SparseArray();
        this.p = ImmutableList.r();
        this.y = -9223372036854775807L;
        this.x = -9223372036854775807L;
        this.z = -9223372036854775807L;
        this.G = ExtractorOutput.f;
        this.H = new TrackOutput[0];
        this.I = new TrackOutput[0];
        this.n = new ReorderingBufferQueue(new p(11, this));
        this.o = new ChunkIndexMerger();
        this.L = -1L;
        this.M = -1L;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x00de  */
    /* JADX WARN: Removed duplicated region for block: B:13:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x00ec  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x00e0  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static DrmInitData h(List list) {
        UUID[] uuidArr;
        PsshAtomUtil.PsshAtom psshAtom;
        UUID uuid;
        int size = list.size();
        int i = 0;
        int i2 = 0;
        ArrayList arrayList = null;
        while (i2 < size) {
            Mp4Box.LeafBox leafBox = (Mp4Box.LeafBox) list.get(i2);
            if (leafBox.a == 1886614376) {
                if (arrayList == null) {
                    arrayList = new ArrayList();
                }
                byte[] bArr = leafBox.b.a;
                ParsableByteArray parsableByteArray = new ParsableByteArray(bArr);
                if (parsableByteArray.c >= 32) {
                    parsableByteArray.M(i);
                    int a = parsableByteArray.a();
                    int m = parsableByteArray.m();
                    if (m != a) {
                        Log.f("PsshAtomUtil", "Advertised atom size (" + m + ") does not match buffer size: " + a);
                    } else {
                        int m2 = parsableByteArray.m();
                        if (m2 != 1886614376) {
                            q.x("Atom type is not pssh: ", m2, "PsshAtomUtil");
                        } else {
                            int d = BoxParser.d(parsableByteArray.m());
                            if (d > 1) {
                                q.x("Unsupported pssh version: ", d, "PsshAtomUtil");
                            } else {
                                UUID uuid2 = new UUID(parsableByteArray.t(), parsableByteArray.t());
                                if (d == 1) {
                                    int D = parsableByteArray.D();
                                    uuidArr = new UUID[D];
                                    int i3 = i;
                                    while (i3 < D) {
                                        UUID[] uuidArr2 = uuidArr;
                                        int i4 = i3;
                                        uuidArr2[i4] = new UUID(parsableByteArray.t(), parsableByteArray.t());
                                        i3 = i4 + 1;
                                        uuidArr = uuidArr2;
                                    }
                                } else {
                                    uuidArr = null;
                                }
                                int D2 = parsableByteArray.D();
                                int a2 = parsableByteArray.a();
                                if (D2 != a2) {
                                    Log.f("PsshAtomUtil", "Atom data size (" + D2 + ") does not match the bytes left: " + a2);
                                } else {
                                    byte[] bArr2 = new byte[D2];
                                    parsableByteArray.k(bArr2, 0, D2);
                                    psshAtom = new PsshAtomUtil.PsshAtom(uuid2, d, bArr2, uuidArr);
                                    if (psshAtom != null) {
                                        uuid = null;
                                    } else {
                                        uuid = psshAtom.a;
                                    }
                                    if (uuid != null) {
                                        Log.f("FragmentedMp4Extractor", "Skipped pssh atom (failed to extract uuid)");
                                    } else {
                                        arrayList.add(new DrmInitData.SchemeData(uuid, null, "video/mp4", bArr));
                                        i2++;
                                        i = 0;
                                    }
                                }
                            }
                        }
                    }
                }
                psshAtom = null;
                if (psshAtom != null) {
                }
                if (uuid != null) {
                }
            }
            i2++;
            i = 0;
        }
        if (arrayList == null) {
            return null;
        }
        return new DrmInitData(null, false, (DrmInitData.SchemeData[]) arrayList.toArray(new DrmInitData.SchemeData[0]));
    }

    public static void j(ParsableByteArray parsableByteArray, int i, TrackFragment trackFragment) {
        boolean z;
        parsableByteArray.M(i + 8);
        int m = parsableByteArray.m();
        byte[] bArr = BoxParser.a;
        if ((m & 1) == 0) {
            if ((m & 2) != 0) {
                z = true;
            } else {
                z = false;
            }
            int D = parsableByteArray.D();
            if (D == 0) {
                Arrays.fill(trackFragment.l, 0, trackFragment.e, false);
                return;
            }
            int i2 = trackFragment.e;
            ParsableByteArray parsableByteArray2 = trackFragment.n;
            if (D == i2) {
                Arrays.fill(trackFragment.l, 0, D, z);
                parsableByteArray2.J(parsableByteArray.a());
                trackFragment.k = true;
                trackFragment.o = true;
                parsableByteArray.k(parsableByteArray2.a, 0, parsableByteArray2.c);
                parsableByteArray2.M(0);
                trackFragment.o = false;
                return;
            }
            StringBuilder j = jb.j("Senc sample count ", D, " is different from fragment sample count");
            j.append(trackFragment.e);
            throw ParserException.a(null, j.toString());
        }
        throw ParserException.b("Overriding TrackEncryptionBox parameters is unsupported.");
    }

    public static Pair k(long j, ParsableByteArray parsableByteArray) {
        long F;
        long F2;
        ParsableByteArray parsableByteArray2 = parsableByteArray;
        parsableByteArray2.M(8);
        int d = BoxParser.d(parsableByteArray2.m());
        parsableByteArray2.N(4);
        long B = parsableByteArray2.B();
        if (d == 0) {
            F = parsableByteArray2.B();
            F2 = parsableByteArray2.B();
        } else {
            F = parsableByteArray2.F();
            F2 = parsableByteArray2.F();
        }
        long j2 = F2 + j;
        String str = Util.a;
        long J = Util.J(F, 1000000L, B, RoundingMode.DOWN);
        parsableByteArray2.N(2);
        int G = parsableByteArray2.G();
        int[] iArr = new int[G];
        long[] jArr = new long[G];
        long[] jArr2 = new long[G];
        long[] jArr3 = new long[G];
        long j3 = j2;
        long j4 = J;
        int i = 0;
        while (i < G) {
            int m = parsableByteArray2.m();
            if ((Integer.MIN_VALUE & m) == 0) {
                long B2 = parsableByteArray2.B();
                iArr[i] = m & Integer.MAX_VALUE;
                jArr[i] = j3;
                jArr3[i] = j4;
                F += B2;
                long[] jArr4 = jArr2;
                long[] jArr5 = jArr3;
                long J2 = Util.J(F, 1000000L, B, RoundingMode.DOWN);
                jArr4[i] = J2 - jArr5[i];
                parsableByteArray2.N(4);
                j3 += iArr[i];
                i++;
                G = G;
                parsableByteArray2 = parsableByteArray;
                j4 = J2;
                jArr2 = jArr4;
                jArr3 = jArr5;
            } else {
                throw ParserException.a(null, "Unhandled indirect reference");
            }
        }
        return Pair.create(Long.valueOf(J), new ChunkIndex(iArr, jArr, jArr2, jArr3));
    }

    @Override // androidx.media3.extractor.Extractor
    public final boolean b(ExtractorInput extractorInput) {
        ImmutableList r;
        SniffFailure a = Sniffer.a(extractorInput, true);
        if (a != null) {
            r = ImmutableList.t(a);
        } else {
            r = ImmutableList.r();
        }
        this.p = r;
        if (a == null) {
            return true;
        }
        return false;
    }

    @Override // androidx.media3.extractor.Extractor
    public final void c(long j, long j2) {
        SparseArray sparseArray = this.d;
        int size = sparseArray.size();
        for (int i = 0; i < size; i++) {
            ((TrackBundle) sparseArray.valueAt(i)).e();
        }
        this.m.clear();
        this.w = 0;
        this.n.d.clear();
        this.x = j2;
        this.l.clear();
        this.M = -1L;
        g();
    }

    @Override // androidx.media3.extractor.Extractor
    public final void d(ExtractorOutput extractorOutput) {
        if ((this.b & 32) == 0) {
            extractorOutput = new SubtitleTranscodingExtractorOutput(extractorOutput, this.a);
        }
        this.G = extractorOutput;
        g();
        TrackOutput[] trackOutputArr = new TrackOutput[2];
        this.H = trackOutputArr;
        int i = 0;
        TrackOutput[] trackOutputArr2 = (TrackOutput[]) Util.F(0, trackOutputArr);
        this.H = trackOutputArr2;
        for (TrackOutput trackOutput : trackOutputArr2) {
            trackOutput.e(O);
        }
        List list = this.c;
        this.I = new TrackOutput[list.size()];
        int i2 = 100;
        while (i < this.I.length) {
            int i3 = i2 + 1;
            TrackOutput s = this.G.s(i2, 3);
            s.e((Format) list.get(i));
            this.I[i] = s;
            i++;
            i2 = i3;
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final List e() {
        return this.p;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x08e3, code lost:
    
        throw androidx.media3.common.ParserException.b("Atom size less than header length (unsupported).");
     */
    /* JADX WARN: Code restructure failed: missing block: B:408:0x00e6, code lost:
    
        r2 = r3.a;
        r4 = r3.b;
        r7 = "video/hevc";
     */
    /* JADX WARN: Code restructure failed: missing block: B:409:0x00f1, code lost:
    
        if (r49.q != 3) goto L92;
     */
    /* JADX WARN: Code restructure failed: missing block: B:411:0x00f5, code lost:
    
        if (r3.n != false) goto L54;
     */
    /* JADX WARN: Code restructure failed: missing block: B:412:0x00f7, code lost:
    
        r6 = r3.d.d[r3.f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:413:0x0106, code lost:
    
        r49.B = r6;
        r6 = r3.d.a.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:414:0x0114, code lost:
    
        if (java.util.Objects.equals(r6.p, "video/avc") == false) goto L61;
     */
    /* JADX WARN: Code restructure failed: missing block: B:416:0x0118, code lost:
    
        if ((r9 & 64) == 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:417:0x011a, code lost:
    
        r6 = r37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:418:0x012d, code lost:
    
        r49.E = !r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:419:0x0135, code lost:
    
        if (r3.f >= r3.i) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:420:0x0137, code lost:
    
        r1.k(r49.B);
        r1 = r3.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:421:0x0140, code lost:
    
        if (r1 != null) goto L71;
     */
    /* JADX WARN: Code restructure failed: missing block: B:422:0x0143, code lost:
    
        r2 = r4.n;
        r1 = r1.d;
     */
    /* JADX WARN: Code restructure failed: missing block: B:423:0x0147, code lost:
    
        if (r1 == 0) goto L74;
     */
    /* JADX WARN: Code restructure failed: missing block: B:424:0x0149, code lost:
    
        r2.N(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:425:0x014c, code lost:
    
        r1 = r3.f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:426:0x0150, code lost:
    
        if (r4.k == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:428:0x0156, code lost:
    
        if (r4.l[r1] == false) goto L79;
     */
    /* JADX WARN: Code restructure failed: missing block: B:429:0x0158, code lost:
    
        r2.N(r2.G() * 6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0165, code lost:
    
        if (r3.c() != false) goto L82;
     */
    /* JADX WARN: Code restructure failed: missing block: B:432:0x0167, code lost:
    
        r49.A = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:433:0x016a, code lost:
    
        r49.q = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:434:0x016d, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:436:0x0176, code lost:
    
        if (r3.d.a.h != r37) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:437:0x0178, code lost:
    
        r49.B -= 8;
        r1.k(8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:438:0x0183, code lost:
    
        r6 = "audio/ac4".equals(r3.d.a.g.p);
        r9 = r49.B;
     */
    /* JADX WARN: Code restructure failed: missing block: B:439:0x0193, code lost:
    
        if (r6 == false) goto L90;
     */
    /* JADX WARN: Code restructure failed: missing block: B:440:0x0195, code lost:
    
        r49.C = r3.d(r9, 7);
        androidx.media3.extractor.Ac4Util.a(r49.B, r13);
        r2.f(7, r13);
        r49.C += 7;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:441:0x01b4, code lost:
    
        r49.B += r49.C;
        r49.q = 4;
        r49.D = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:442:0x01ac, code lost:
    
        r6 = 0;
        r49.C = r3.d(r9, 0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:443:0x011d, code lost:
    
        r6 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:445:0x0126, code lost:
    
        if (java.util.Objects.equals(r6.p, "video/hevc") == false) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:447:0x012a, code lost:
    
        if ((r9 & 128) == 0) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:448:0x0100, code lost:
    
        r6 = r4.h[r3.f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:449:0x01c0, code lost:
    
        r6 = r3.d;
        r9 = r6.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:450:0x01c6, code lost:
    
        if (r3.n != false) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:451:0x01c8, code lost:
    
        r10 = r6.f[r3.f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:452:0x01d5, code lost:
    
        r4 = r9.k;
        r6 = r9.g;
     */
    /* JADX WARN: Code restructure failed: missing block: B:453:0x01d9, code lost:
    
        if (r4 == 0) goto L173;
     */
    /* JADX WARN: Code restructure failed: missing block: B:454:0x01db, code lost:
    
        r9 = r49.f;
        r12 = r9.a;
        r12[0] = 0;
        r12[1] = 0;
        r12[2] = 0;
        r13 = 4 - r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:455:0x01eb, code lost:
    
        r16 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:456:0x01f1, code lost:
    
        if (r49.C >= r49.B) goto L628;
     */
    /* JADX WARN: Code restructure failed: missing block: B:457:0x01f3, code lost:
    
        r4 = r49.D;
     */
    /* JADX WARN: Code restructure failed: missing block: B:458:0x01f5, code lost:
    
        if (r4 != 0) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:460:0x01fa, code lost:
    
        if (r49.I.length > 0) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:462:0x01fe, code lost:
    
        if (r49.E != false) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:463:0x0215, code lost:
    
        r4 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:464:0x0216, code lost:
    
        r1.readFully(r12, r13, r16 + r4);
        r9.M(0);
        r17 = r9.m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:465:0x0223, code lost:
    
        if (r17 < 0) goto L627;
     */
    /* JADX WARN: Code restructure failed: missing block: B:466:0x0225, code lost:
    
        r49.D = r17 - r4;
        r14 = r49.e;
        r51 = r13;
        r14.M(0);
        r2.f(4, r14);
        r49.C += 4;
        r49.B += r51;
     */
    /* JADX WARN: Code restructure failed: missing block: B:467:0x0243, code lost:
    
        if (r49.I.length <= 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:468:0x0245, code lost:
    
        if (r4 <= 0) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:469:0x0247, code lost:
    
        r13 = androidx.media3.container.NalUnitUtil.c(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:470:0x024b, code lost:
    
        if (r13 != null) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:472:0x0252, code lost:
    
        switch(r13.hashCode()) {
            case -1662541442: goto L130;
            case 1331836730: goto L126;
            case 1331856911: goto L122;
            default: goto L121;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:473:0x0255, code lost:
    
        r13 = 65535;
     */
    /* JADX WARN: Code restructure failed: missing block: B:474:0x0274, code lost:
    
        switch(r13) {
            case 0: goto L142;
            case 1: goto L139;
            case 2: goto L136;
            default: goto L145;
        };
     */
    /* JADX WARN: Code restructure failed: missing block: B:476:0x0282, code lost:
    
        if (((r12[r34] & 248) >> 3) != 23) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:477:0x029e, code lost:
    
        r13 = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:478:0x02a1, code lost:
    
        r49.F = r13;
        r2.f(r4, r9);
        r49.C += r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:479:0x02ab, code lost:
    
        if (r4 <= 0) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:481:0x02af, code lost:
    
        if (r49.E != false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:483:0x02b5, code lost:
    
        if (androidx.media3.container.NalUnitUtil.d(r12, r4, r6) == false) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:484:0x02b7, code lost:
    
        r49.E = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:485:0x02ba, code lost:
    
        r13 = r51;
        r4 = r16;
     */
    /* JADX WARN: Code restructure failed: missing block: B:487:0x02be, code lost:
    
        r35 = 6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:489:0x028d, code lost:
    
        if ((r12[4] & 31) != r35) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:491:0x029c, code lost:
    
        if (((r12[4] & 126) >> 1) != 39) goto L145;
     */
    /* JADX WARN: Code restructure failed: missing block: B:493:0x025d, code lost:
    
        if (r13.equals("video/vvc") != false) goto L125;
     */
    /* JADX WARN: Code restructure failed: missing block: B:494:0x0260, code lost:
    
        r13 = 2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:496:0x0267, code lost:
    
        if (r13.equals("video/avc") != false) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:497:0x026a, code lost:
    
        r13 = 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:499:0x0270, code lost:
    
        if (r13.equals(r7) != false) goto L133;
     */
    /* JADX WARN: Code restructure failed: missing block: B:500:0x0273, code lost:
    
        r13 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:501:0x02a0, code lost:
    
        r13 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:504:0x02c9, code lost:
    
        throw androidx.media3.common.ParserException.a(null, "Invalid NAL length");
     */
    /* JADX WARN: Code restructure failed: missing block: B:505:0x0200, code lost:
    
        r4 = androidx.media3.container.NalUnitUtil.e(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:506:0x0210, code lost:
    
        if ((r16 + r4) > (r49.B - r49.C)) goto L110;
     */
    /* JADX WARN: Code restructure failed: missing block: B:507:0x0212, code lost:
    
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:508:0x02ca, code lost:
    
        r51 = r13;
     */
    /* JADX WARN: Code restructure failed: missing block: B:509:0x02ce, code lost:
    
        if (r49.F == false) goto L171;
     */
    /* JADX WARN: Code restructure failed: missing block: B:510:0x02d0, code lost:
    
        r13 = r49.g;
        r13.J(r4);
        r17 = r7;
        r1.readFully(r13.a, 0, r49.D);
        r2.f(r49.D, r13);
        r4 = r49.D;
        r4 = androidx.media3.container.NalUnitUtil.m(r13.c, r13.a);
        r13.M(0);
        r13.L(r4);
        r4 = r6.r;
     */
    /* JADX WARN: Code restructure failed: missing block: B:511:0x02f9, code lost:
    
        if (r4 != (-1)) goto L164;
     */
    /* JADX WARN: Code restructure failed: missing block: B:513:0x02fd, code lost:
    
        if (r15.e == 0) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:514:0x02ff, code lost:
    
        r15.c(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:515:0x030a, code lost:
    
        r15.a(r10, r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:516:0x0316, code lost:
    
        if ((r3.a() & 4) == 0) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:517:0x0318, code lost:
    
        r15.b(0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:518:0x031b, code lost:
    
        r4 = r4;
     */
    /* JADX WARN: Code restructure failed: missing block: B:519:0x0325, code lost:
    
        r49.C += r4;
        r49.D -= r4;
        r13 = r51;
        r4 = r16;
        r7 = r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:522:0x0305, code lost:
    
        if (r15.e == r4) goto L167;
     */
    /* JADX WARN: Code restructure failed: missing block: B:523:0x0307, code lost:
    
        r15.c(r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:524:0x031e, code lost:
    
        r17 = r7;
        r4 = r2.c(r1, r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:526:0x0371, code lost:
    
        r1 = r3.a();
     */
    /* JADX WARN: Code restructure failed: missing block: B:527:0x0377, code lost:
    
        if (r49.E != false) goto L184;
     */
    /* JADX WARN: Code restructure failed: missing block: B:528:0x0379, code lost:
    
        r1 = r1 | 67108864;
     */
    /* JADX WARN: Code restructure failed: missing block: B:529:0x037c, code lost:
    
        r19 = r1;
        r1 = r3.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:530:0x0382, code lost:
    
        if (r1 == null) goto L187;
     */
    /* JADX WARN: Code restructure failed: missing block: B:531:0x0384, code lost:
    
        r22 = r1.c;
     */
    /* JADX WARN: Code restructure failed: missing block: B:532:0x038b, code lost:
    
        r17 = r10;
        r2.g(r17, r19, r49.B, 0, r22);
     */
    /* JADX WARN: Code restructure failed: missing block: B:534:0x039c, code lost:
    
        if (r5.isEmpty() != false) goto L631;
     */
    /* JADX WARN: Code restructure failed: missing block: B:535:0x039e, code lost:
    
        r1 = (androidx.media3.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo) r5.removeFirst();
        r49.w -= r1.c;
        r6 = r1.a;
     */
    /* JADX WARN: Code restructure failed: missing block: B:536:0x03af, code lost:
    
        if (r1.b == false) goto L194;
     */
    /* JADX WARN: Code restructure failed: missing block: B:537:0x03b1, code lost:
    
        r6 = r6 + r17;
     */
    /* JADX WARN: Code restructure failed: missing block: B:538:0x03b3, code lost:
    
        r9 = r6;
        r2 = r49.H;
        r4 = r2.length;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:540:0x03b8, code lost:
    
        if (r6 >= r4) goto L634;
     */
    /* JADX WARN: Code restructure failed: missing block: B:541:0x03ba, code lost:
    
        r2[r6].g(r9, 1, r1.c, r49.w, null);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:546:0x03cc, code lost:
    
        if (r3.c() != false) goto L200;
     */
    /* JADX WARN: Code restructure failed: missing block: B:547:0x03ce, code lost:
    
        r49.A = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:548:0x03d1, code lost:
    
        r49.q = 3;
     */
    /* JADX WARN: Code restructure failed: missing block: B:549:0x03d5, code lost:
    
        return 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:550:0x0389, code lost:
    
        r22 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:551:0x0336, code lost:
    
        r4 = r3.l;
     */
    /* JADX WARN: Code restructure failed: missing block: B:552:0x0338, code lost:
    
        if (r4 == null) goto L636;
     */
    /* JADX WARN: Code restructure failed: missing block: B:554:0x0340, code lost:
    
        if (androidx.media3.extractor.DtsUtil.e(r6.p) == false) goto L636;
     */
    /* JADX WARN: Code restructure failed: missing block: B:555:0x0342, code lost:
    
        r6 = androidx.media3.extractor.DtsUtil.h(r1, r49.B, r3.m);
        r3.m = r6;
        r6 = r6.a();
        r6.s = r4.t;
        r2.e(new androidx.media3.common.Format(r6));
        r3.l = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:557:0x035f, code lost:
    
        r4 = r49.C;
        r6 = r49.B;
     */
    /* JADX WARN: Code restructure failed: missing block: B:558:0x0363, code lost:
    
        if (r4 >= r6) goto L635;
     */
    /* JADX WARN: Code restructure failed: missing block: B:559:0x0365, code lost:
    
        r49.C += r2.c(r1, r6 - r4, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:561:0x01cf, code lost:
    
        r10 = r4.i[r3.f];
     */
    /* JADX WARN: Code restructure failed: missing block: B:566:0x068d, code lost:
    
        r3 = (int) (r49.s - r49.t);
        r4 = r49.u;
     */
    /* JADX WARN: Code restructure failed: missing block: B:567:0x0696, code lost:
    
        if (r4 == null) goto L381;
     */
    /* JADX WARN: Code restructure failed: missing block: B:568:0x0698, code lost:
    
        r1.readFully(r4.a, 8, r3);
        r8 = r49.r;
        r3 = new androidx.media3.container.Mp4Box.LeafBox(r8, r4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:569:0x06aa, code lost:
    
        if (r6.isEmpty() != false) goto L338;
     */
    /* JADX WARN: Code restructure failed: missing block: B:570:0x06ac, code lost:
    
        ((androidx.media3.container.Mp4Box.ContainerBox) r6.peek()).c.add(r3);
     */
    /* JADX WARN: Code restructure failed: missing block: B:571:0x0822, code lost:
    
        r1 = r50;
     */
    /* JADX WARN: Code restructure failed: missing block: B:575:0x06bc, code lost:
    
        if (r8 != 1936286840) goto L347;
     */
    /* JADX WARN: Code restructure failed: missing block: B:576:0x06be, code lost:
    
        r3 = k(r1.getPosition(), r4);
        r7.a((androidx.media3.extractor.ChunkIndex) r3.second);
        r4 = r7.a;
        r49.z = ((java.lang.Long) r3.first).longValue();
     */
    /* JADX WARN: Code restructure failed: missing block: B:577:0x06db, code lost:
    
        if (r49.K != false) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:578:0x06dd, code lost:
    
        r5 = r49.G;
     */
    /* JADX WARN: Code restructure failed: missing block: B:579:0x06e4, code lost:
    
        if (r4.size() != 1) goto L345;
     */
    /* JADX WARN: Code restructure failed: missing block: B:580:0x06e6, code lost:
    
        r3 = (androidx.media3.extractor.SeekMap) r3.second;
     */
    /* JADX WARN: Code restructure failed: missing block: B:581:0x06ef, code lost:
    
        r5.f(r3);
        r49.J = true;
     */
    /* JADX WARN: Code restructure failed: missing block: B:582:0x06eb, code lost:
    
        r3 = r7.b();
     */
    /* JADX WARN: Code restructure failed: missing block: B:584:0x06f9, code lost:
    
        if (r8 != 1701671783) goto L380;
     */
    /* JADX WARN: Code restructure failed: missing block: B:586:0x06fe, code lost:
    
        if (r49.H.length != 0) goto L352;
     */
    /* JADX WARN: Code restructure failed: missing block: B:587:0x0702, code lost:
    
        r4.M(8);
        r3 = androidx.media3.extractor.mp4.BoxParser.d(r4.m());
     */
    /* JADX WARN: Code restructure failed: missing block: B:588:0x070f, code lost:
    
        if (r3 == 0) goto L358;
     */
    /* JADX WARN: Code restructure failed: missing block: B:590:0x0712, code lost:
    
        if (r3 == 1) goto L357;
     */
    /* JADX WARN: Code restructure failed: missing block: B:591:0x0714, code lost:
    
        defpackage.q.x("Skipping unsupported emsg version: ", r3, "FragmentedMp4Extractor");
     */
    /* JADX WARN: Code restructure failed: missing block: B:592:0x071b, code lost:
    
        r17 = r4.B();
        r13 = r4.F();
        r19 = java.math.RoundingMode.DOWN;
        r6 = androidx.media3.common.util.Util.J(r13, 1000000, r17, r19);
        r8 = androidx.media3.common.util.Util.J(r4.B(), 1000, r17, r19);
        r10 = r4.B();
        r3 = r4.u();
        r3.getClass();
        r12 = r4.u();
        r12.getClass();
        r13 = r10;
        r6 = r12;
        r11 = r8;
        r9 = -9223372036854775807L;
        r7 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:593:0x0790, code lost:
    
        r15 = new byte[r4.a()];
        r4.k(r15, 0, r4.a());
        r4 = r49.j;
        r1 = r4.b;
        r4 = r4.a;
        r4.reset();
     */
    /* JADX WARN: Code restructure failed: missing block: B:595:0x07ab, code lost:
    
        r1.writeBytes(r3);
        r1.writeByte(0);
        r1.writeBytes(r6);
        r1.writeByte(0);
        r1.writeLong(r11);
        r1.writeLong(r13);
        r1.write(r15);
        r1.flush();
     */
    /* JADX WARN: Code restructure failed: missing block: B:596:0x07c8, code lost:
    
        r2 = new androidx.media3.common.util.ParsableByteArray(r4.toByteArray());
        r1 = r2.a();
        r3 = r49.H;
        r4 = r3.length;
        r6 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:597:0x07d3, code lost:
    
        if (r6 >= r4) goto L637;
     */
    /* JADX WARN: Code restructure failed: missing block: B:598:0x07d5, code lost:
    
        r11 = r3[r6];
        r2.M(0);
        r11.f(r1, r2);
        r6 = r6 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:601:0x07e3, code lost:
    
        if (r7 != (-9223372036854775807L)) goto L371;
     */
    /* JADX WARN: Code restructure failed: missing block: B:602:0x07e5, code lost:
    
        r5.addLast(new androidx.media3.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo(r1, r9, true));
        r49.w += r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:604:0x07f8, code lost:
    
        if (r5.isEmpty() != false) goto L374;
     */
    /* JADX WARN: Code restructure failed: missing block: B:605:0x07fa, code lost:
    
        r5.addLast(new androidx.media3.extractor.mp4.FragmentedMp4Extractor.MetadataSampleInfo(r1, r7, false));
        r49.w += r1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:606:0x0809, code lost:
    
        r2 = r49.H;
        r3 = r2.length;
        r5 = 0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:607:0x080d, code lost:
    
        if (r5 >= r3) goto L638;
     */
    /* JADX WARN: Code restructure failed: missing block: B:608:0x080f, code lost:
    
        r2[r5].g(r7, 1, r1, 0, null);
        r5 = r5 + 1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:611:0x081b, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:613:0x0821, code lost:
    
        throw new java.lang.RuntimeException(r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:614:0x0752, code lost:
    
        r3 = r4.u();
        r3.getClass();
        r12 = r4.u();
        r12.getClass();
        r17 = r4.B();
        r13 = r4.B();
        r19 = java.math.RoundingMode.DOWN;
        r6 = androidx.media3.common.util.Util.J(r13, 1000000, r17, r19);
        r8 = r49.z;
     */
    /* JADX WARN: Code restructure failed: missing block: B:615:0x0775, code lost:
    
        if (r8 == (-9223372036854775807L)) goto L361;
     */
    /* JADX WARN: Code restructure failed: missing block: B:616:0x0777, code lost:
    
        r8 = r8 + r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:617:0x077b, code lost:
    
        r10 = androidx.media3.common.util.Util.J(r4.B(), 1000, r17, r19);
        r13 = r4.B();
        r6 = r12;
        r7 = r8;
        r11 = r10;
        r9 = r6;
     */
    /* JADX WARN: Code restructure failed: missing block: B:618:0x0779, code lost:
    
        r8 = -9223372036854775807L;
     */
    /* JADX WARN: Code restructure failed: missing block: B:619:0x0825, code lost:
    
        r1.k(r3);
     */
    /* JADX WARN: Removed duplicated region for block: B:17:0x08cf  */
    /* JADX WARN: Removed duplicated region for block: B:29:0x08ea  */
    /* JADX WARN: Removed duplicated region for block: B:35:0x0afd  */
    /* JADX WARN: Removed duplicated region for block: B:38:0x05bd A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x0928  */
    @Override // androidx.media3.extractor.Extractor
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final int f(ExtractorInput extractorInput, PositionHolder positionHolder) {
        char c;
        boolean z;
        char c2;
        long j;
        int i;
        long j2;
        int i2;
        int i3;
        int i4;
        long j3;
        long j4;
        long j5;
        long B;
        long B2;
        PositionHolder positionHolder2;
        long j6;
        long j7;
        long j8;
        ExtractorInput extractorInput2 = extractorInput;
        loop0: while (true) {
            PositionHolder positionHolder3 = positionHolder;
            while (true) {
                int i5 = this.q;
                ArrayDeque arrayDeque = this.l;
                ReorderingBufferQueue reorderingBufferQueue = this.n;
                ChunkIndexMerger chunkIndexMerger = this.o;
                int i6 = this.b;
                SparseArray sparseArray = this.d;
                ParsableByteArray parsableByteArray = this.i;
                boolean z2 = true;
                if (i5 != 0) {
                    ArrayDeque arrayDeque2 = this.m;
                    if (i5 == 1) {
                        break;
                    }
                    if (i5 != 2) {
                        int i7 = 2;
                        if (i5 != 5) {
                            if (i5 != 6) {
                                TrackBundle trackBundle = this.A;
                                if (trackBundle == null) {
                                    int size = sparseArray.size();
                                    c = 6;
                                    c2 = 5;
                                    int i8 = 0;
                                    TrackBundle trackBundle2 = null;
                                    long j9 = Long.MAX_VALUE;
                                    while (i8 < size) {
                                        TrackBundle trackBundle3 = (TrackBundle) sparseArray.valueAt(i8);
                                        boolean z3 = z2;
                                        boolean z4 = trackBundle3.n;
                                        TrackFragment trackFragment = trackBundle3.b;
                                        if (!z4) {
                                            i = size;
                                            if (trackBundle3.f == trackBundle3.d.b) {
                                                i8++;
                                                size = i;
                                                z2 = z3;
                                            }
                                        } else {
                                            i = size;
                                        }
                                        if (!z4 || trackBundle3.h != trackFragment.d) {
                                            if (!z4) {
                                                j2 = trackBundle3.d.c[trackBundle3.f];
                                            } else {
                                                j2 = trackFragment.f[trackBundle3.h];
                                            }
                                            if (j2 < j9) {
                                                trackBundle2 = trackBundle3;
                                                j9 = j2;
                                            }
                                        }
                                        i8++;
                                        size = i;
                                        z2 = z3;
                                    }
                                    z = z2;
                                    if (trackBundle2 == null) {
                                        int position = (int) (this.v - extractorInput2.getPosition());
                                        if (position >= 0) {
                                            extractorInput2.k(position);
                                            g();
                                        } else {
                                            throw ParserException.a(null, "Offset to end of mdat was negative.");
                                        }
                                    } else {
                                        if (!trackBundle2.n) {
                                            j = trackBundle2.d.c[trackBundle2.f];
                                        } else {
                                            j = trackBundle2.b.f[trackBundle2.h];
                                        }
                                        int position2 = (int) (j - extractorInput2.getPosition());
                                        if (position2 < 0) {
                                            Log.f("FragmentedMp4Extractor", "Ignoring negative offset to sample data.");
                                            position2 = 0;
                                        }
                                        extractorInput2.k(position2);
                                        this.A = trackBundle2;
                                        trackBundle = trackBundle2;
                                    }
                                } else {
                                    c = 6;
                                    z = true;
                                    c2 = 5;
                                    break loop0;
                                }
                            } else {
                                long g = extractorInput2.g() - extractorInput2.getPosition();
                                parsableByteArray.J(8);
                                if (!extractorInput2.d(parsableByteArray.a, 0, 8, true)) {
                                    i(new SeekMap.Unseekable(this.y, this.M), positionHolder3);
                                } else {
                                    parsableByteArray.M(0);
                                    int m = parsableByteArray.m();
                                    if (parsableByteArray.m() != 1835430497) {
                                        i(new SeekMap.Unseekable(this.y, this.M), positionHolder3);
                                    } else {
                                        int i9 = (int) g;
                                        ParsableByteArray parsableByteArray2 = new ParsableByteArray(i9);
                                        extractorInput2.readFully(parsableByteArray2.a, 0, i9);
                                        if (m == 1) {
                                            i2 = 16;
                                        } else {
                                            i2 = 8;
                                        }
                                        parsableByteArray2.M(i2);
                                        SparseArray sparseArray2 = new SparseArray();
                                        SparseArray sparseArray3 = new SparseArray();
                                        while (parsableByteArray2.a() >= 8) {
                                            int i10 = parsableByteArray2.b;
                                            long B3 = parsableByteArray2.B();
                                            int m2 = parsableByteArray2.m();
                                            if (B3 == 1) {
                                                if (parsableByteArray2.a() < 8) {
                                                    break;
                                                }
                                                B3 = parsableByteArray2.t();
                                            } else if (B3 == 0) {
                                                B3 = parsableByteArray2.c - i10;
                                            }
                                            if (B3 == 1) {
                                                i4 = 16;
                                            } else {
                                                i4 = 8;
                                            }
                                            if (B3 < i4) {
                                                break;
                                            }
                                            long j10 = i10;
                                            if (B3 > parsableByteArray2.c - j10) {
                                                break;
                                            }
                                            if (m2 == 1952871009) {
                                                if (B3 < i4 + 16) {
                                                    parsableByteArray2.M((int) (j10 + B3));
                                                } else {
                                                    int d = BoxParser.d(parsableByteArray2.m());
                                                    int m3 = parsableByteArray2.m();
                                                    TrackBundle trackBundle4 = (TrackBundle) sparseArray.get(m3);
                                                    if (trackBundle4 == null) {
                                                        parsableByteArray2.M((int) (j10 + B3));
                                                    } else {
                                                        long j11 = trackBundle4.d.a.c;
                                                        int m4 = parsableByteArray2.m();
                                                        int i11 = (m4 >> 4) & 3;
                                                        int i12 = (m4 >> 2) & 3;
                                                        int i13 = m4 & 3;
                                                        j3 = B3;
                                                        long B4 = parsableByteArray2.B();
                                                        if (d == 1) {
                                                            j5 = 16;
                                                        } else {
                                                            j5 = 8;
                                                        }
                                                        int i14 = i11 + 1;
                                                        int i15 = i12 + 1;
                                                        j4 = j10;
                                                        int i16 = i13 + 1;
                                                        if ((j5 + i14 + i15 + i16) * B4 > parsableByteArray2.a()) {
                                                            parsableByteArray2.M((int) (j4 + j3));
                                                        } else {
                                                            int i17 = (int) B4;
                                                            long[] jArr = new long[i17];
                                                            long[] jArr2 = new long[i17];
                                                            int i18 = 0;
                                                            while (i18 < i17) {
                                                                int i19 = i17;
                                                                if (d == 1) {
                                                                    B = parsableByteArray2.F();
                                                                } else {
                                                                    B = parsableByteArray2.B();
                                                                }
                                                                long j12 = B;
                                                                if (d == 1) {
                                                                    B2 = parsableByteArray2.F();
                                                                } else {
                                                                    B2 = parsableByteArray2.B();
                                                                }
                                                                parsableByteArray2.N(i14 + i15 + i16);
                                                                if (j11 != -9223372036854775807L) {
                                                                    j12 = Util.J(j12, 1000000L, j11, RoundingMode.DOWN);
                                                                }
                                                                jArr[i18] = j12;
                                                                jArr2[i18] = B2;
                                                                i18++;
                                                                i17 = i19;
                                                            }
                                                            sparseArray2.put(m3, jArr);
                                                            sparseArray3.put(m3, jArr2);
                                                        }
                                                    }
                                                }
                                            } else {
                                                j3 = B3;
                                                j4 = j10;
                                            }
                                            parsableByteArray2.M((int) (j4 + j3));
                                        }
                                        if (sparseArray2.size() == 0) {
                                            i(new SeekMap.Unseekable(this.y, this.M), positionHolder3);
                                        } else {
                                            int i20 = -1;
                                            int i21 = -1;
                                            int i22 = 0;
                                            while (i22 < sparseArray2.size()) {
                                                int keyAt = sparseArray2.keyAt(i22);
                                                TrackBundle trackBundle5 = (TrackBundle) sparseArray.get(keyAt);
                                                if (trackBundle5 != null) {
                                                    int i23 = trackBundle5.d.a.b;
                                                    if (i20 == -1 && i23 == i7) {
                                                        i20 = keyAt;
                                                    } else if (i21 == -1 && i23 == 1) {
                                                        i21 = keyAt;
                                                    }
                                                }
                                                i22++;
                                                i7 = 2;
                                            }
                                            if (i20 == -1) {
                                                if (i21 != -1) {
                                                    i3 = i21;
                                                    i(new MfraSeekMap(sparseArray2, sparseArray3, this.y, this.M, i3), positionHolder3);
                                                } else {
                                                    i20 = sparseArray2.keyAt(0);
                                                }
                                            }
                                            i3 = i20;
                                            i(new MfraSeekMap(sparseArray2, sparseArray3, this.y, this.M, i3), positionHolder3);
                                        }
                                    }
                                }
                                if (this.q == 0) {
                                    return 1;
                                }
                            }
                        } else {
                            parsableByteArray.J(16);
                            if (!extractorInput2.a(parsableByteArray.a, 0, 16, true)) {
                                i(new SeekMap.Unseekable(this.y, this.M), positionHolder3);
                            } else {
                                parsableByteArray.M(0);
                                int m5 = parsableByteArray.m();
                                int m6 = parsableByteArray.m();
                                if (m5 == 16 && m6 == 1835430511) {
                                    parsableByteArray.N(4);
                                    long B5 = parsableByteArray.B();
                                    long g2 = extractorInput2.g() - B5;
                                    if (B5 > 0 && B5 <= 2147483647L && g2 >= 0 && g2 >= this.M) {
                                        positionHolder3.a = g2;
                                        this.q = 6;
                                    } else {
                                        i(new SeekMap.Unseekable(this.y, this.M), positionHolder3);
                                    }
                                } else {
                                    i(new SeekMap.Unseekable(this.y, this.M), positionHolder3);
                                }
                            }
                            int i24 = this.q;
                            if (i24 == 6 || i24 == 0) {
                                return 1;
                            }
                        }
                    } else {
                        int size2 = sparseArray.size();
                        TrackBundle trackBundle6 = null;
                        long j13 = Long.MAX_VALUE;
                        for (int i25 = 0; i25 < size2; i25++) {
                            TrackFragment trackFragment2 = ((TrackBundle) sparseArray.valueAt(i25)).b;
                            if (trackFragment2.o) {
                                long j14 = trackFragment2.c;
                                if (j14 < j13) {
                                    trackBundle6 = (TrackBundle) sparseArray.valueAt(i25);
                                    j13 = j14;
                                }
                            }
                        }
                        if (trackBundle6 == null) {
                            this.q = 3;
                        } else {
                            int position3 = (int) (j13 - extractorInput2.getPosition());
                            if (position3 >= 0) {
                                extractorInput2.k(position3);
                                TrackFragment trackFragment3 = trackBundle6.b;
                                ParsableByteArray parsableByteArray3 = trackFragment3.n;
                                extractorInput2.readFully(parsableByteArray3.a, 0, parsableByteArray3.c);
                                parsableByteArray3.M(0);
                                trackFragment3.o = false;
                            } else {
                                throw ParserException.a(null, "Offset to encryption data was negative.");
                            }
                        }
                    }
                } else {
                    int i26 = this.t;
                    ParsableByteArray parsableByteArray4 = this.k;
                    if (i26 == 0) {
                        if (!extractorInput2.a(parsableByteArray4.a, 0, 8, true)) {
                            long j15 = this.L;
                            if (j15 != -1) {
                                positionHolder.a = j15;
                                this.L = -1L;
                                this.G.f(chunkIndexMerger.b());
                                this.K = true;
                                return 1;
                            }
                            reorderingBufferQueue.b(0);
                            return -1;
                        }
                        positionHolder2 = positionHolder;
                        this.t = 8;
                        parsableByteArray4.M(0);
                        this.s = parsableByteArray4.B();
                        this.r = parsableByteArray4.m();
                    } else {
                        positionHolder2 = positionHolder;
                    }
                    long j16 = this.s;
                    if (j16 == 1) {
                        extractorInput2.readFully(parsableByteArray4.a, 8, 8);
                        this.t += 8;
                        this.s = parsableByteArray4.F();
                    } else if (j16 == 0) {
                        long g3 = extractorInput2.g();
                        if (g3 == -1 && !arrayDeque.isEmpty()) {
                            g3 = ((Mp4Box.ContainerBox) arrayDeque.peek()).b;
                        }
                        if (g3 != -1) {
                            j6 = -1;
                            this.s = (g3 - extractorInput2.getPosition()) + this.t;
                            j7 = this.s;
                            int i27 = this.t;
                            j8 = i27;
                            if (j7 < j8) {
                                if (this.r != 1718773093 || i27 != 8) {
                                    break loop0;
                                }
                                this.s = j8;
                            }
                            if (this.L == j6) {
                                int i28 = this.r;
                                long j17 = this.s;
                                if (i28 == 1936286840) {
                                    parsableByteArray.J((int) j17);
                                    System.arraycopy(parsableByteArray4.a, 0, parsableByteArray.a, 0, 8);
                                    extractorInput2.readFully(parsableByteArray.a, 8, (int) (this.s - this.t));
                                    chunkIndexMerger.a((ChunkIndex) k(extractorInput2.e(), parsableByteArray).second);
                                } else {
                                    extractorInput2.c((int) (j17 - j8), true);
                                }
                                g();
                            } else {
                                long position4 = extractorInput2.getPosition() - this.t;
                                int i29 = this.r;
                                if ((i29 == 1836019558 || i29 == 1835295092) && !this.J) {
                                    if (extractorInput2.g() != j6 && this.M == j6 && (i6 & 512) != 0) {
                                        this.M = position4;
                                        positionHolder2.a = extractorInput2.g() - 16;
                                        this.q = 5;
                                    } else {
                                        this.G.f(new SeekMap.Unseekable(this.y, position4));
                                        this.J = true;
                                    }
                                }
                                if (this.r == 1836019558) {
                                    int size3 = sparseArray.size();
                                    for (int i30 = 0; i30 < size3; i30++) {
                                        TrackFragment trackFragment4 = ((TrackBundle) sparseArray.valueAt(i30)).b;
                                        trackFragment4.getClass();
                                        trackFragment4.c = position4;
                                        trackFragment4.b = position4;
                                    }
                                }
                                int i31 = this.r;
                                if (i31 == 1835295092) {
                                    this.A = null;
                                    this.v = position4 + this.s;
                                    this.q = 2;
                                } else if (i31 != 1836019574 && i31 != 1953653099 && i31 != 1835297121 && i31 != 1835626086 && i31 != 1937007212 && i31 != 1836019558 && i31 != 1953653094 && i31 != 1836475768 && i31 != 1701082227 && i31 != 1835365473) {
                                    if (i31 != 1751411826 && i31 != 1835296868 && i31 != 1836476516 && i31 != 1936286840 && i31 != 1937011556 && i31 != 1937011827 && i31 != 1668576371 && i31 != 1937011555 && i31 != 1937011578 && i31 != 1937013298 && i31 != 1937007471 && i31 != 1668232756 && i31 != 1937011571 && i31 != 1952867444 && i31 != 1952868452 && i31 != 1953196132 && i31 != 1953654136 && i31 != 1953658222 && i31 != 1886614376 && i31 != 1935763834 && i31 != 1935763823 && i31 != 1936027235 && i31 != 1970628964 && i31 != 1935828848 && i31 != 1936158820 && i31 != 1701606260 && i31 != 1835362404 && i31 != 1701671783 && i31 != 1969517665 && i31 != 1801812339 && i31 != 1768715124) {
                                        if (this.s <= 2147483647L) {
                                            this.u = null;
                                            this.q = 1;
                                        } else {
                                            throw ParserException.b("Skipping atom with length > 2147483647 (unsupported).");
                                        }
                                    } else if (this.t == 8) {
                                        if (this.s <= 2147483647L) {
                                            ParsableByteArray parsableByteArray5 = new ParsableByteArray((int) this.s);
                                            System.arraycopy(parsableByteArray4.a, 0, parsableByteArray5.a, 0, 8);
                                            this.u = parsableByteArray5;
                                            this.q = 1;
                                        } else {
                                            throw ParserException.b("Leaf atom with length > 2147483647 (unsupported).");
                                        }
                                    } else {
                                        throw ParserException.b("Leaf atom defines extended atom size (unsupported).");
                                    }
                                } else {
                                    long position5 = extractorInput2.getPosition();
                                    long j18 = this.s;
                                    long j19 = (position5 + j18) - 8;
                                    if (j18 != this.t && this.r == 1835365473) {
                                        parsableByteArray.J(8);
                                        extractorInput2.n(parsableByteArray.a, 0, 8);
                                        BoxParser.a(parsableByteArray);
                                        extractorInput2.k(parsableByteArray.b);
                                        extractorInput2.j();
                                    }
                                    arrayDeque.push(new Mp4Box.ContainerBox(this.r, j19));
                                    if (this.s == this.t) {
                                        l(j19);
                                    } else {
                                        g();
                                    }
                                }
                            }
                            if (this.q != 5) {
                                return 1;
                            }
                            positionHolder3 = positionHolder2;
                        }
                    }
                    j6 = -1;
                    j7 = this.s;
                    int i272 = this.t;
                    j8 = i272;
                    if (j7 < j8) {
                    }
                    if (this.L == j6) {
                    }
                    if (this.q != 5) {
                    }
                }
            }
            l(extractorInput2.getPosition());
        }
    }

    public final void g() {
        this.q = 0;
        this.t = 0;
    }

    public final void i(SeekMap seekMap, PositionHolder positionHolder) {
        this.G.f(seekMap);
        this.J = true;
        positionHolder.a = this.M;
        g();
    }

    /* JADX WARN: Code restructure failed: missing block: B:430:0x080d, code lost:
    
        g();
     */
    /* JADX WARN: Code restructure failed: missing block: B:431:0x0810, code lost:
    
        return;
     */
    /* JADX WARN: Removed duplicated region for block: B:256:0x071c  */
    /* JADX WARN: Removed duplicated region for block: B:95:0x0453  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void l(long j) {
        Metadata metadata;
        Metadata metadata2;
        int i;
        ArrayList arrayList;
        long j2;
        DefaultSampleValues defaultSampleValues;
        int i2;
        boolean z;
        DefaultSampleValues defaultSampleValues2;
        long F;
        TrackEncryptionBox trackEncryptionBox;
        String str;
        int i3;
        ArrayList arrayList2;
        ArrayList arrayList3;
        int i4;
        int i5;
        int i6;
        int i7;
        int i8;
        TrackEncryptionBox trackEncryptionBox2;
        String str2;
        int size;
        int i9;
        long j3;
        boolean z2;
        byte[] bArr;
        long F2;
        boolean z3;
        int i10;
        boolean z4;
        boolean z5;
        int i11;
        ArrayList arrayList4;
        ArrayList arrayList5;
        int i12;
        int i13;
        TrackBundle trackBundle;
        boolean z6;
        boolean z7;
        boolean z8;
        boolean z9;
        boolean z10;
        TrackBundle trackBundle2;
        int i14;
        int i15;
        int i16;
        int i17;
        int i18;
        boolean[] zArr;
        int i19;
        int i20;
        DefaultSampleValues defaultSampleValues3;
        int i21;
        TrackBundle trackBundle3;
        boolean z11;
        long B;
        while (true) {
            ArrayDeque arrayDeque = this.l;
            if (arrayDeque.isEmpty() || ((Mp4Box.ContainerBox) arrayDeque.peek()).b != j) {
                break;
            }
            Mp4Box.ContainerBox containerBox = (Mp4Box.ContainerBox) arrayDeque.pop();
            int i22 = containerBox.a;
            ArrayList arrayList6 = containerBox.d;
            ArrayList arrayList7 = containerBox.c;
            int i23 = 12;
            SparseArray sparseArray = this.d;
            if (i22 == 1836019574) {
                DrmInitData h = h(arrayList7);
                Mp4Box.ContainerBox b = containerBox.b(1836475768);
                b.getClass();
                SparseArray sparseArray2 = new SparseArray();
                ArrayList arrayList8 = b.c;
                int size2 = arrayList8.size();
                int i24 = 0;
                long j4 = -9223372036854775807L;
                while (i24 < size2) {
                    Mp4Box.LeafBox leafBox = (Mp4Box.LeafBox) arrayList8.get(i24);
                    int i25 = leafBox.a;
                    ParsableByteArray parsableByteArray = leafBox.b;
                    if (i25 == 1953654136) {
                        parsableByteArray.M(i23);
                        Pair create = Pair.create(Integer.valueOf(parsableByteArray.m()), new DefaultSampleValues(parsableByteArray.m() - 1, parsableByteArray.m(), parsableByteArray.m(), parsableByteArray.m()));
                        sparseArray2.put(((Integer) create.first).intValue(), (DefaultSampleValues) create.second);
                    } else if (i25 == 1835362404) {
                        parsableByteArray.M(8);
                        if (BoxParser.d(parsableByteArray.m()) == 0) {
                            F = parsableByteArray.B();
                        } else {
                            F = parsableByteArray.F();
                        }
                        j4 = F;
                    }
                    i24++;
                    i23 = 12;
                }
                Mp4Box.ContainerBox b2 = containerBox.b(1835365473);
                if (b2 != null) {
                    metadata = BoxParser.e(b2);
                } else {
                    metadata = null;
                }
                GaplessInfoHolder gaplessInfoHolder = new GaplessInfoHolder();
                Mp4Box.LeafBox c = containerBox.c(1969517665);
                if (c != null) {
                    Metadata j5 = BoxParser.j(c, false);
                    gaplessInfoHolder.b(j5);
                    metadata2 = j5;
                } else {
                    metadata2 = null;
                }
                Mp4Box.LeafBox c2 = containerBox.c(1836476516);
                c2.getClass();
                Metadata metadata3 = new Metadata(BoxParser.f(c2.b));
                ArrayList i26 = BoxParser.i(containerBox, gaplessInfoHolder, j4, h, false, false, new k8(this), false);
                int size3 = i26.size();
                if (sparseArray.size() == 0) {
                    String a = MimeTypeResolver.a(i26);
                    int i27 = 0;
                    while (i27 < size3) {
                        TrackSampleTable trackSampleTable = (TrackSampleTable) i26.get(i27);
                        Track track = trackSampleTable.a;
                        boolean z12 = track.m;
                        int i28 = track.a;
                        Format format = track.g;
                        int i29 = size3;
                        String str3 = a;
                        long j6 = track.e;
                        int i30 = track.b;
                        if (!z12) {
                            arrayList = i26;
                            i = i27;
                        } else {
                            TrackOutput s = this.G.s(i27, i30);
                            s.d(j6);
                            i = i27;
                            Format.Builder a2 = format.a();
                            arrayList = i26;
                            a2.n = MimeTypes.l(str3);
                            if (i30 == 1) {
                                int i31 = gaplessInfoHolder.a;
                                j2 = j6;
                                if (i31 != -1 && (i2 = gaplessInfoHolder.b) != -1) {
                                    a2.M = i31;
                                    a2.N = i2;
                                }
                            } else {
                                j2 = j6;
                            }
                            MetadataUtil.f(i30, metadata, a2, format.m, metadata2, metadata3);
                            if (sparseArray2.size() == 1) {
                                defaultSampleValues = (DefaultSampleValues) sparseArray2.valueAt(0);
                            } else {
                                defaultSampleValues = (DefaultSampleValues) sparseArray2.get(i28);
                                defaultSampleValues.getClass();
                            }
                            sparseArray.put(i28, new TrackBundle(s, trackSampleTable, defaultSampleValues, new Format(a2)));
                            this.y = Math.max(this.y, j2);
                        }
                        i27 = i + 1;
                        size3 = i29;
                        a = str3;
                        i26 = arrayList;
                    }
                    this.G.n();
                } else {
                    ArrayList arrayList9 = i26;
                    int i32 = 0;
                    int i33 = 0;
                    while (i32 < size3) {
                        ArrayList arrayList10 = arrayList9;
                        if (((TrackSampleTable) arrayList10.get(i32)).a.m) {
                            i33++;
                        }
                        i32++;
                        arrayList9 = arrayList10;
                    }
                    ArrayList arrayList11 = arrayList9;
                    if (sparseArray.size() == i33) {
                        z = true;
                    } else {
                        z = false;
                    }
                    Preconditions.n(z);
                    for (int i34 = 0; i34 < size3; i34++) {
                        TrackSampleTable trackSampleTable2 = (TrackSampleTable) arrayList11.get(i34);
                        Track track2 = trackSampleTable2.a;
                        boolean z13 = track2.m;
                        int i35 = track2.a;
                        if (z13) {
                            TrackBundle trackBundle4 = (TrackBundle) sparseArray.get(i35);
                            if (sparseArray2.size() == 1) {
                                defaultSampleValues2 = (DefaultSampleValues) sparseArray2.valueAt(0);
                            } else {
                                defaultSampleValues2 = (DefaultSampleValues) sparseArray2.get(i35);
                                defaultSampleValues2.getClass();
                            }
                            trackBundle4.d = trackSampleTable2;
                            trackBundle4.e = defaultSampleValues2;
                            if (trackBundle4.l == null) {
                                trackBundle4.a.e(trackBundle4.m);
                            }
                            trackBundle4.e();
                        }
                    }
                }
            } else if (i22 == 1836019558) {
                int size4 = arrayList6.size();
                int i36 = 0;
                while (i36 < size4) {
                    Mp4Box.ContainerBox containerBox2 = (Mp4Box.ContainerBox) arrayList6.get(i36);
                    if (containerBox2.a == 1953653094) {
                        Mp4Box.LeafBox c3 = containerBox2.c(1952868452);
                        ArrayList arrayList12 = containerBox2.c;
                        c3.getClass();
                        ParsableByteArray parsableByteArray2 = c3.b;
                        parsableByteArray2.M(8);
                        int m = parsableByteArray2.m();
                        byte[] bArr2 = BoxParser.a;
                        TrackBundle trackBundle5 = (TrackBundle) sparseArray.get(parsableByteArray2.m());
                        if (trackBundle5 == null) {
                            trackBundle5 = null;
                        } else {
                            TrackFragment trackFragment = trackBundle5.b;
                            if ((m & 1) != 0) {
                                long F3 = parsableByteArray2.F();
                                trackFragment.b = F3;
                                trackFragment.c = F3;
                            }
                            DefaultSampleValues defaultSampleValues4 = trackBundle5.e;
                            int m2 = (m & 2) != 0 ? parsableByteArray2.m() - 1 : defaultSampleValues4.a;
                            if ((m & 8) != 0) {
                                i5 = parsableByteArray2.m();
                            } else {
                                i5 = defaultSampleValues4.b;
                            }
                            if ((m & 16) != 0) {
                                i6 = parsableByteArray2.m();
                            } else {
                                i6 = defaultSampleValues4.c;
                            }
                            if ((m & 32) != 0) {
                                i7 = parsableByteArray2.m();
                            } else {
                                i7 = defaultSampleValues4.d;
                            }
                            trackFragment.a = new DefaultSampleValues(m2, i5, i6, i7);
                        }
                        if (trackBundle5 == null) {
                            i3 = size4;
                            arrayList2 = arrayList6;
                            arrayList3 = arrayList7;
                            i4 = i36;
                        } else {
                            TrackFragment trackFragment2 = trackBundle5.b;
                            long j7 = trackFragment2.p;
                            boolean z14 = trackFragment2.q;
                            trackBundle5.e();
                            trackBundle5.n = true;
                            Mp4Box.LeafBox c4 = containerBox2.c(1952867444);
                            if (c4 != null) {
                                ParsableByteArray parsableByteArray3 = c4.b;
                                parsableByteArray3.M(8);
                                if (BoxParser.d(parsableByteArray3.m()) == 1) {
                                    B = parsableByteArray3.F();
                                } else {
                                    B = parsableByteArray3.B();
                                }
                                trackFragment2.p = B;
                                trackFragment2.q = true;
                            } else {
                                trackFragment2.p = j7;
                                trackFragment2.q = z14;
                            }
                            int size5 = arrayList12.size();
                            int i37 = 0;
                            int i38 = 0;
                            int i39 = 0;
                            while (true) {
                                i8 = 1953658222;
                                if (i37 >= size5) {
                                    break;
                                }
                                Mp4Box.LeafBox leafBox2 = (Mp4Box.LeafBox) arrayList12.get(i37);
                                int i40 = size4;
                                if (leafBox2.a == 1953658222) {
                                    ParsableByteArray parsableByteArray4 = leafBox2.b;
                                    parsableByteArray4.M(12);
                                    int D = parsableByteArray4.D();
                                    if (D > 0) {
                                        i39 += D;
                                        i38++;
                                    }
                                }
                                i37++;
                                size4 = i40;
                            }
                            i3 = size4;
                            trackBundle5.h = 0;
                            trackBundle5.g = 0;
                            trackBundle5.f = 0;
                            trackFragment2.d = i38;
                            trackFragment2.e = i39;
                            if (trackFragment2.g.length < i38) {
                                trackFragment2.f = new long[i38];
                                trackFragment2.g = new int[i38];
                            }
                            if (trackFragment2.h.length < i39) {
                                int i41 = (i39 * 125) / 100;
                                trackFragment2.h = new int[i41];
                                trackFragment2.i = new long[i41];
                                trackFragment2.j = new boolean[i41];
                                trackFragment2.l = new boolean[i41];
                            }
                            int i42 = 0;
                            int i43 = 0;
                            int i44 = 0;
                            while (true) {
                                long j8 = 0;
                                if (i42 < size5) {
                                    Mp4Box.LeafBox leafBox3 = (Mp4Box.LeafBox) arrayList12.get(i42);
                                    if (leafBox3.a == i8) {
                                        int i45 = i43 + 1;
                                        ParsableByteArray parsableByteArray5 = leafBox3.b;
                                        parsableByteArray5.M(8);
                                        int m3 = parsableByteArray5.m();
                                        byte[] bArr3 = BoxParser.a;
                                        i11 = i42;
                                        Track track3 = trackBundle5.d.a;
                                        arrayList4 = arrayList6;
                                        DefaultSampleValues defaultSampleValues5 = trackFragment2.a;
                                        String str4 = Util.a;
                                        arrayList5 = arrayList7;
                                        trackFragment2.g[i43] = parsableByteArray5.D();
                                        long[] jArr = trackFragment2.f;
                                        i12 = i36;
                                        long j9 = trackFragment2.b;
                                        jArr[i43] = j9;
                                        if ((m3 & 1) != 0) {
                                            jArr[i43] = j9 + parsableByteArray5.m();
                                        }
                                        if ((m3 & 4) != 0) {
                                            z6 = true;
                                        } else {
                                            z6 = false;
                                        }
                                        int i46 = defaultSampleValues5.d;
                                        if (z6) {
                                            i46 = parsableByteArray5.m();
                                        }
                                        boolean z15 = z6;
                                        if ((m3 & 256) != 0) {
                                            z7 = true;
                                        } else {
                                            z7 = false;
                                        }
                                        boolean z16 = z7;
                                        if ((m3 & 512) != 0) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        boolean z17 = z8;
                                        if ((m3 & 1024) != 0) {
                                            z9 = true;
                                        } else {
                                            z9 = false;
                                        }
                                        if ((m3 & 2048) != 0) {
                                            z10 = true;
                                        } else {
                                            z10 = false;
                                        }
                                        boolean z18 = z9;
                                        ImmutableLongArray immutableLongArray = track3.i;
                                        int i47 = i46;
                                        ImmutableLongArray immutableLongArray2 = track3.j;
                                        i13 = size5;
                                        if (immutableLongArray != null) {
                                            i14 = i43;
                                            if (immutableLongArray.k != 1 || immutableLongArray2 == null) {
                                                trackBundle2 = trackBundle5;
                                            } else {
                                                int i48 = 0;
                                                if (immutableLongArray.a(0) == 0) {
                                                    trackBundle2 = trackBundle5;
                                                    i15 = i44;
                                                } else {
                                                    long a3 = immutableLongArray.a(0);
                                                    trackBundle2 = trackBundle5;
                                                    long j10 = track3.d;
                                                    RoundingMode roundingMode = RoundingMode.DOWN;
                                                    long J = Util.J(a3, 1000000L, j10, roundingMode);
                                                    i15 = i44;
                                                    if (J + Util.J(immutableLongArray2.a(0), 1000000L, track3.c, roundingMode) >= track3.e) {
                                                        i48 = 0;
                                                    }
                                                    int[] iArr = trackFragment2.h;
                                                    long[] jArr2 = trackFragment2.i;
                                                    boolean[] zArr2 = trackFragment2.j;
                                                    i44 = i15 + trackFragment2.g[i14];
                                                    TrackBundle trackBundle6 = trackBundle2;
                                                    long j11 = track3.c;
                                                    long j12 = trackFragment2.p;
                                                    i16 = i15;
                                                    while (i16 < i44) {
                                                        if (z16) {
                                                            i17 = i16;
                                                            i18 = parsableByteArray5.m();
                                                        } else {
                                                            i17 = i16;
                                                            i18 = defaultSampleValues5.b;
                                                        }
                                                        long[] jArr3 = jArr2;
                                                        if (i18 >= 0) {
                                                            if (z17) {
                                                                zArr = zArr2;
                                                                i19 = parsableByteArray5.m();
                                                            } else {
                                                                zArr = zArr2;
                                                                i19 = defaultSampleValues5.c;
                                                            }
                                                            if (i19 >= 0) {
                                                                if (z18) {
                                                                    i20 = parsableByteArray5.m();
                                                                } else if (i17 == 0 && z15) {
                                                                    i20 = i47;
                                                                } else {
                                                                    i20 = defaultSampleValues5.d;
                                                                }
                                                                if (z10) {
                                                                    defaultSampleValues3 = defaultSampleValues5;
                                                                    i21 = parsableByteArray5.m();
                                                                } else {
                                                                    defaultSampleValues3 = defaultSampleValues5;
                                                                    i21 = 0;
                                                                }
                                                                TrackBundle trackBundle7 = trackBundle6;
                                                                int i49 = i44;
                                                                long J2 = Util.J((i21 + j12) - j8, 1000000L, j11, RoundingMode.DOWN);
                                                                jArr3[i17] = J2;
                                                                int i50 = i20;
                                                                if (!trackFragment2.q) {
                                                                    trackBundle3 = trackBundle7;
                                                                    jArr3[i17] = J2 + trackBundle3.d.i;
                                                                } else {
                                                                    trackBundle3 = trackBundle7;
                                                                }
                                                                iArr[i17] = i19;
                                                                if (((i50 >> 16) & 1) == 0) {
                                                                    z11 = true;
                                                                } else {
                                                                    z11 = false;
                                                                }
                                                                zArr[i17] = z11;
                                                                j12 += i18;
                                                                i16 = i17 + 1;
                                                                trackBundle6 = trackBundle3;
                                                                jArr2 = jArr3;
                                                                zArr2 = zArr;
                                                                defaultSampleValues5 = defaultSampleValues3;
                                                                i44 = i49;
                                                            } else {
                                                                throw ParserException.a(null, "Unexpected negative value: " + i19);
                                                            }
                                                        } else {
                                                            throw ParserException.a(null, "Unexpected negative value: " + i18);
                                                        }
                                                    }
                                                    trackBundle = trackBundle6;
                                                    trackFragment2.p = j12;
                                                    i43 = i45;
                                                }
                                                j8 = immutableLongArray2.a(i48);
                                                int[] iArr2 = trackFragment2.h;
                                                long[] jArr22 = trackFragment2.i;
                                                boolean[] zArr22 = trackFragment2.j;
                                                i44 = i15 + trackFragment2.g[i14];
                                                TrackBundle trackBundle62 = trackBundle2;
                                                long j112 = track3.c;
                                                long j122 = trackFragment2.p;
                                                i16 = i15;
                                                while (i16 < i44) {
                                                }
                                                trackBundle = trackBundle62;
                                                trackFragment2.p = j122;
                                                i43 = i45;
                                            }
                                        } else {
                                            trackBundle2 = trackBundle5;
                                            i14 = i43;
                                        }
                                        i15 = i44;
                                        int[] iArr22 = trackFragment2.h;
                                        long[] jArr222 = trackFragment2.i;
                                        boolean[] zArr222 = trackFragment2.j;
                                        i44 = i15 + trackFragment2.g[i14];
                                        TrackBundle trackBundle622 = trackBundle2;
                                        long j1122 = track3.c;
                                        long j1222 = trackFragment2.p;
                                        i16 = i15;
                                        while (i16 < i44) {
                                        }
                                        trackBundle = trackBundle622;
                                        trackFragment2.p = j1222;
                                        i43 = i45;
                                    } else {
                                        i11 = i42;
                                        arrayList4 = arrayList6;
                                        arrayList5 = arrayList7;
                                        i12 = i36;
                                        i13 = size5;
                                        trackBundle = trackBundle5;
                                    }
                                    i42 = i11 + 1;
                                    trackBundle5 = trackBundle;
                                    arrayList6 = arrayList4;
                                    arrayList7 = arrayList5;
                                    i36 = i12;
                                    size5 = i13;
                                    i8 = 1953658222;
                                } else {
                                    arrayList2 = arrayList6;
                                    arrayList3 = arrayList7;
                                    i4 = i36;
                                    Track track4 = trackBundle5.d.a;
                                    DefaultSampleValues defaultSampleValues6 = trackFragment2.a;
                                    defaultSampleValues6.getClass();
                                    int i51 = defaultSampleValues6.a;
                                    TrackEncryptionBox[] trackEncryptionBoxArr = track4.n;
                                    if (trackEncryptionBoxArr == null) {
                                        trackEncryptionBox2 = null;
                                    } else {
                                        trackEncryptionBox2 = trackEncryptionBoxArr[i51];
                                    }
                                    Mp4Box.LeafBox c5 = containerBox2.c(1935763834);
                                    if (c5 != null) {
                                        trackEncryptionBox2.getClass();
                                        ParsableByteArray parsableByteArray6 = c5.b;
                                        int i52 = trackEncryptionBox2.d;
                                        parsableByteArray6.M(8);
                                        int m4 = parsableByteArray6.m();
                                        byte[] bArr4 = BoxParser.a;
                                        if ((m4 & 1) == 1) {
                                            parsableByteArray6.N(8);
                                        }
                                        int z19 = parsableByteArray6.z();
                                        int D2 = parsableByteArray6.D();
                                        if (D2 <= trackFragment2.e) {
                                            if (z19 == 0) {
                                                boolean[] zArr3 = trackFragment2.l;
                                                i10 = 0;
                                                for (int i53 = 0; i53 < D2; i53++) {
                                                    int z20 = parsableByteArray6.z();
                                                    i10 += z20;
                                                    if (z20 > i52) {
                                                        z5 = true;
                                                    } else {
                                                        z5 = false;
                                                    }
                                                    zArr3[i53] = z5;
                                                }
                                                z4 = false;
                                            } else {
                                                if (z19 > i52) {
                                                    z3 = true;
                                                } else {
                                                    z3 = false;
                                                }
                                                i10 = z19 * D2;
                                                z4 = false;
                                                Arrays.fill(trackFragment2.l, 0, D2, z3);
                                            }
                                            Arrays.fill(trackFragment2.l, D2, trackFragment2.e, z4);
                                            if (i10 > 0) {
                                                trackFragment2.n.J(i10);
                                                trackFragment2.k = true;
                                                trackFragment2.o = true;
                                            }
                                        } else {
                                            StringBuilder j13 = jb.j("Saiz sample count ", D2, " is greater than fragment sample count");
                                            j13.append(trackFragment2.e);
                                            throw ParserException.a(null, j13.toString());
                                        }
                                    }
                                    Mp4Box.LeafBox c6 = containerBox2.c(1935763823);
                                    if (c6 != null) {
                                        ParsableByteArray parsableByteArray7 = c6.b;
                                        parsableByteArray7.M(8);
                                        int m5 = parsableByteArray7.m();
                                        byte[] bArr5 = BoxParser.a;
                                        if ((m5 & 1) == 1) {
                                            parsableByteArray7.N(8);
                                        }
                                        int D3 = parsableByteArray7.D();
                                        if (D3 == 1) {
                                            int d = BoxParser.d(m5);
                                            long j14 = trackFragment2.c;
                                            if (d == 0) {
                                                F2 = parsableByteArray7.B();
                                            } else {
                                                F2 = parsableByteArray7.F();
                                            }
                                            trackFragment2.c = j14 + F2;
                                        } else {
                                            throw ParserException.a(null, "Unexpected saio entry count: " + D3);
                                        }
                                    }
                                    Mp4Box.LeafBox c7 = containerBox2.c(1936027235);
                                    if (c7 != null) {
                                        j(c7.b, 0, trackFragment2);
                                    }
                                    if (trackEncryptionBox2 != null) {
                                        str2 = trackEncryptionBox2.b;
                                    } else {
                                        str2 = null;
                                    }
                                    ParsableByteArray parsableByteArray8 = null;
                                    ParsableByteArray parsableByteArray9 = null;
                                    for (int i54 = 0; i54 < arrayList12.size(); i54++) {
                                        Mp4Box.LeafBox leafBox4 = (Mp4Box.LeafBox) arrayList12.get(i54);
                                        ParsableByteArray parsableByteArray10 = leafBox4.b;
                                        int i55 = leafBox4.a;
                                        if (i55 == 1935828848) {
                                            parsableByteArray10.M(12);
                                            if (parsableByteArray10.m() == 1936025959) {
                                                parsableByteArray9 = parsableByteArray10;
                                            }
                                        } else if (i55 == 1936158820) {
                                            parsableByteArray10.M(12);
                                            if (parsableByteArray10.m() == 1936025959) {
                                                parsableByteArray8 = parsableByteArray10;
                                            }
                                        }
                                    }
                                    if (parsableByteArray9 != null && parsableByteArray8 != null) {
                                        parsableByteArray9.M(8);
                                        int d2 = BoxParser.d(parsableByteArray9.m());
                                        parsableByteArray9.N(4);
                                        if (d2 == 1) {
                                            parsableByteArray9.N(4);
                                        }
                                        if (parsableByteArray9.m() == 1) {
                                            parsableByteArray8.M(8);
                                            int d3 = BoxParser.d(parsableByteArray8.m());
                                            parsableByteArray8.N(4);
                                            if (d3 >= 1) {
                                                j3 = parsableByteArray8.B();
                                            } else {
                                                j3 = 0;
                                            }
                                            if (d3 >= 2) {
                                                parsableByteArray8.N(4);
                                            }
                                            if (parsableByteArray8.B() == 1) {
                                                if (d3 >= 1 && j3 == 0) {
                                                    parsableByteArray8.N(4);
                                                }
                                                parsableByteArray8.N(1);
                                                int z21 = parsableByteArray8.z();
                                                int i56 = (z21 & 240) >> 4;
                                                int i57 = z21 & 15;
                                                if (parsableByteArray8.z() == 1) {
                                                    z2 = true;
                                                } else {
                                                    z2 = false;
                                                }
                                                if (z2) {
                                                    int z22 = parsableByteArray8.z();
                                                    byte[] bArr6 = new byte[16];
                                                    parsableByteArray8.k(bArr6, 0, 16);
                                                    if (z22 == 0) {
                                                        int z23 = parsableByteArray8.z();
                                                        byte[] bArr7 = new byte[z23];
                                                        parsableByteArray8.k(bArr7, 0, z23);
                                                        bArr = bArr7;
                                                    } else {
                                                        bArr = null;
                                                    }
                                                    trackFragment2.k = true;
                                                    trackFragment2.m = new TrackEncryptionBox(z2, str2, z22, bArr6, i56, i57, bArr);
                                                    size = arrayList12.size();
                                                    for (i9 = 0; i9 < size; i9++) {
                                                        Mp4Box.LeafBox leafBox5 = (Mp4Box.LeafBox) arrayList12.get(i9);
                                                        if (leafBox5.a == 1970628964) {
                                                            ParsableByteArray parsableByteArray11 = leafBox5.b;
                                                            parsableByteArray11.M(8);
                                                            byte[] bArr8 = this.h;
                                                            parsableByteArray11.k(bArr8, 0, 16);
                                                            if (Arrays.equals(bArr8, N)) {
                                                                j(parsableByteArray11, 16, trackFragment2);
                                                            }
                                                        }
                                                    }
                                                }
                                            } else {
                                                throw ParserException.b("Entry count in sgpd != 1 (unsupported).");
                                            }
                                        } else {
                                            throw ParserException.b("Entry count in sbgp != 1 (unsupported).");
                                        }
                                    }
                                    size = arrayList12.size();
                                    while (i9 < size) {
                                    }
                                }
                            }
                        }
                    } else {
                        i3 = size4;
                        arrayList2 = arrayList6;
                        arrayList3 = arrayList7;
                        i4 = i36;
                    }
                    i36 = i4 + 1;
                    size4 = i3;
                    arrayList6 = arrayList2;
                    arrayList7 = arrayList3;
                }
                DrmInitData h2 = h(arrayList7);
                if (h2 != null) {
                    int size6 = sparseArray.size();
                    for (int i58 = 0; i58 < size6; i58++) {
                        TrackBundle trackBundle8 = (TrackBundle) sparseArray.valueAt(i58);
                        Track track5 = trackBundle8.d.a;
                        DefaultSampleValues defaultSampleValues7 = trackBundle8.b.a;
                        String str5 = Util.a;
                        int i59 = defaultSampleValues7.a;
                        TrackEncryptionBox[] trackEncryptionBoxArr2 = track5.n;
                        if (trackEncryptionBoxArr2 == null) {
                            trackEncryptionBox = null;
                        } else {
                            trackEncryptionBox = trackEncryptionBoxArr2[i59];
                        }
                        if (trackEncryptionBox != null) {
                            str = trackEncryptionBox.b;
                        } else {
                            str = null;
                        }
                        DrmInitData a4 = h2.a(str);
                        Format.Builder a5 = trackBundle8.m.a();
                        a5.s = a4;
                        Format format2 = new Format(a5);
                        if (trackBundle8.l != null) {
                            trackBundle8.l = format2;
                        } else {
                            trackBundle8.a.e(format2);
                        }
                    }
                }
                if (this.x != -9223372036854775807L) {
                    int size7 = sparseArray.size();
                    for (int i60 = 0; i60 < size7; i60++) {
                        TrackBundle trackBundle9 = (TrackBundle) sparseArray.valueAt(i60);
                        long j15 = this.x;
                        int i61 = trackBundle9.f;
                        while (true) {
                            TrackFragment trackFragment3 = trackBundle9.b;
                            if (i61 < trackFragment3.e && trackFragment3.i[i61] <= j15) {
                                if (trackFragment3.j[i61]) {
                                    trackBundle9.i = i61;
                                }
                                i61++;
                            }
                        }
                    }
                    this.x = -9223372036854775807L;
                }
            } else if (!arrayDeque.isEmpty()) {
                ((Mp4Box.ContainerBox) arrayDeque.peek()).d.add(containerBox);
            }
        }
    }

    @Override // androidx.media3.extractor.Extractor
    public final void a() {
    }
}
