package androidx.media3.extractor.mp4;

import android.util.Pair;
import androidx.media3.common.ColorInfo;
import androidx.media3.common.DrmInitData;
import androidx.media3.common.Format;
import androidx.media3.common.Label;
import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.ParserException;
import androidx.media3.common.util.CodecSpecificDataUtil;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.container.DolbyVisionConfig;
import androidx.media3.container.MdtaMetadataEntry;
import androidx.media3.container.Mp4AlternateGroupData;
import androidx.media3.container.Mp4Box;
import androidx.media3.container.Mp4LocationData;
import androidx.media3.container.Mp4TimestampData;
import androidx.media3.container.NalUnitUtil;
import androidx.media3.extractor.Av1Config;
import androidx.media3.extractor.AvcConfig;
import androidx.media3.extractor.ExtractorUtil;
import androidx.media3.extractor.GaplessInfoHolder;
import androidx.media3.extractor.HevcConfig;
import androidx.media3.extractor.metadata.Chapter;
import androidx.media3.extractor.metadata.mp4.SmtaMetadataEntry;
import androidx.media3.extractor.mp4.Track;
import com.google.common.base.Function;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableList;
import com.google.common.primitives.ImmutableLongArray;
import com.google.common.primitives.Ints;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import java.math.RoundingMode;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Locale;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BoxParser {
    public static final byte[] a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class BtrtData {
        public final long a;
        public final long b;

        public BtrtData(long j, long j2) {
            this.a = j;
            this.b = j2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ChunkIterator {
        public final int a;
        public int b;
        public int c;
        public long d;
        public final boolean e;
        public final ParsableByteArray f;
        public final ParsableByteArray g;
        public int h;
        public int i;

        public ChunkIterator(ParsableByteArray parsableByteArray, ParsableByteArray parsableByteArray2, boolean z) {
            this.g = parsableByteArray;
            this.f = parsableByteArray2;
            this.e = z;
            parsableByteArray2.M(12);
            this.a = parsableByteArray2.D();
            parsableByteArray.M(12);
            this.i = parsableByteArray.D();
            ExtractorUtil.a("first_chunk must be 1", parsableByteArray.m() == 1);
            this.b = -1;
        }

        public final boolean a() {
            long B;
            int i;
            int i2 = this.b + 1;
            this.b = i2;
            if (i2 == this.a) {
                return false;
            }
            boolean z = this.e;
            ParsableByteArray parsableByteArray = this.f;
            if (z) {
                B = parsableByteArray.F();
            } else {
                B = parsableByteArray.B();
            }
            this.d = B;
            if (this.b == this.h) {
                ParsableByteArray parsableByteArray2 = this.g;
                this.c = parsableByteArray2.D();
                parsableByteArray2.N(4);
                int i3 = this.i - 1;
                this.i = i3;
                if (i3 > 0) {
                    i = parsableByteArray2.D() - 1;
                } else {
                    i = -1;
                }
                this.h = i;
            }
            return true;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EsdsData {
        public final String a;
        public final byte[] b;
        public final long c;
        public final long d;

        public EsdsData(String str, byte[] bArr, long j, long j2) {
            this.a = str;
            this.b = bArr;
            this.c = j;
            this.d = j2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class EyesData {
        public final StriData a;

        public EyesData(StriData striData) {
            this.a = striData;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class MdhdData {
        public final long a;
        public final long b;

        public MdhdData(long j, long j2, String str) {
            this.a = j;
            this.b = j2;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface SampleSizeBox {
        int a();

        int b();

        int c();
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StriData {
        public final boolean a;
        public final boolean b;
        public final boolean c;

        public StriData(boolean z, boolean z2, boolean z3) {
            this.a = z;
            this.b = z2;
            this.c = z3;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StsdData {
        public final TrackEncryptionBox[] a;
        public Format b;
        public int c;
        public int d = 0;

        public StsdData(int i) {
            this.a = new TrackEncryptionBox[i];
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StszSampleSizeBox implements SampleSizeBox {
        public final int a;
        public final int b;
        public final ParsableByteArray c;

        public StszSampleSizeBox(Mp4Box.LeafBox leafBox, Format format) {
            ParsableByteArray parsableByteArray = leafBox.b;
            this.c = parsableByteArray;
            parsableByteArray.M(12);
            int D = parsableByteArray.D();
            if ("audio/raw".equals(format.p)) {
                int n = Util.n(format.M) * format.J;
                if (D % n != 0) {
                    Log.f("BoxParsers", "Audio sample size mismatch. stsd sample size: " + n + ", stsz sample size: " + D);
                    D = n;
                }
            }
            this.a = D == 0 ? -1 : D;
            this.b = parsableByteArray.D();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int a() {
            return this.a;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int b() {
            return this.b;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int c() {
            int i = this.a;
            if (i == -1) {
                return this.c.D();
            }
            return i;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Stz2SampleSizeBox implements SampleSizeBox {
        public final ParsableByteArray a;
        public final int b;
        public final int c;
        public int d;
        public int e;

        public Stz2SampleSizeBox(Mp4Box.LeafBox leafBox) {
            ParsableByteArray parsableByteArray = leafBox.b;
            this.a = parsableByteArray;
            parsableByteArray.M(12);
            this.c = parsableByteArray.D() & 255;
            this.b = parsableByteArray.D();
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int a() {
            return -1;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int b() {
            return this.b;
        }

        @Override // androidx.media3.extractor.mp4.BoxParser.SampleSizeBox
        public final int c() {
            ParsableByteArray parsableByteArray = this.a;
            int i = this.c;
            if (i == 8) {
                return parsableByteArray.z();
            }
            if (i == 16) {
                return parsableByteArray.G();
            }
            int i2 = this.d;
            this.d = i2 + 1;
            if (i2 % 2 == 0) {
                int z = parsableByteArray.z();
                this.e = z;
                return (z & 240) >> 4;
            }
            return this.e & 15;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class TkhdData {
        public final int a;
        public final int b;
        public final int c;
        public final boolean d;
        public final int e;
        public final int f;

        public TkhdData(int i, long j, int i2, int i3, boolean z, int i4, int i5) {
            this.a = i;
            this.b = i2;
            this.c = i3;
            this.d = z;
            this.e = i4;
            this.f = i5;
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class VexuData {
        public final EyesData a;

        public VexuData(EyesData eyesData) {
            this.a = eyesData;
        }
    }

    static {
        String str = Util.a;
        a = "OpusHead".getBytes(StandardCharsets.UTF_8);
    }

    public static void a(ParsableByteArray parsableByteArray) {
        int i = parsableByteArray.b;
        parsableByteArray.N(4);
        if (parsableByteArray.m() != 1751411826) {
            i += 4;
        }
        parsableByteArray.M(i);
    }

    public static EsdsData b(int i, ParsableByteArray parsableByteArray) {
        long j;
        parsableByteArray.M(i + 12);
        parsableByteArray.N(1);
        c(parsableByteArray);
        parsableByteArray.N(2);
        int z = parsableByteArray.z();
        if ((z & 128) != 0) {
            parsableByteArray.N(2);
        }
        if ((z & 64) != 0) {
            parsableByteArray.N(parsableByteArray.z());
        }
        if ((z & 32) != 0) {
            parsableByteArray.N(2);
        }
        parsableByteArray.N(1);
        c(parsableByteArray);
        String d = MimeTypes.d(parsableByteArray.z());
        if (!"audio/mpeg".equals(d) && !"audio/vnd.dts".equals(d) && !"audio/vnd.dts.hd".equals(d)) {
            parsableByteArray.N(4);
            long B = parsableByteArray.B();
            long B2 = parsableByteArray.B();
            parsableByteArray.N(1);
            int c = c(parsableByteArray);
            long j2 = B2;
            byte[] bArr = new byte[c];
            parsableByteArray.k(bArr, 0, c);
            if (j2 <= 0) {
                j2 = -1;
            }
            if (B > 0) {
                j = B;
            } else {
                j = -1;
            }
            return new EsdsData(d, bArr, j2, j);
        }
        return new EsdsData(d, null, -1L, -1L);
    }

    public static int c(ParsableByteArray parsableByteArray) {
        int z = parsableByteArray.z();
        int i = z & 127;
        while ((z & 128) == 128) {
            z = parsableByteArray.z();
            i = (i << 7) | (z & 127);
        }
        return i;
    }

    public static int d(int i) {
        return (i >> 24) & 255;
    }

    /* JADX WARN: Code restructure failed: missing block: B:25:0x008a, code lost:
    
        r9 = r14.m();
        r10 = r14.m();
        r11 = r11 - 16;
        r12 = new byte[r11];
        r14.k(r12, 0, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x0099, code lost:
    
        r11 = new androidx.media3.container.MdtaMetadataEntry(r8, r12, r10, r9);
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x009f, code lost:
    
        defpackage.q.y("Failed to parse metadata entry with key: ", r8, "MetadataUtil");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Metadata e(Mp4Box.ContainerBox containerBox) {
        Mp4Box.LeafBox c = containerBox.c(1751411826);
        Mp4Box.LeafBox c2 = containerBox.c(1801812339);
        Mp4Box.LeafBox c3 = containerBox.c(1768715124);
        if (c == null || c2 == null || c3 == null) {
            return null;
        }
        ParsableByteArray parsableByteArray = c.b;
        parsableByteArray.M(16);
        if (parsableByteArray.m() != 1835299937) {
            return null;
        }
        ParsableByteArray parsableByteArray2 = c2.b;
        parsableByteArray2.M(12);
        int m = parsableByteArray2.m();
        String[] strArr = new String[m];
        for (int i = 0; i < m; i++) {
            int m2 = parsableByteArray2.m();
            parsableByteArray2.N(4);
            strArr[i] = parsableByteArray2.x(m2 - 8, StandardCharsets.UTF_8);
        }
        ParsableByteArray parsableByteArray3 = c3.b;
        parsableByteArray3.M(8);
        ArrayList arrayList = new ArrayList();
        while (parsableByteArray3.a() > 8) {
            int i2 = parsableByteArray3.b;
            int m3 = parsableByteArray3.m();
            int m4 = parsableByteArray3.m() - 1;
            if (m4 >= 0 && m4 < m) {
                String str = strArr[m4];
                int i3 = i2 + m3;
                while (true) {
                    int i4 = parsableByteArray3.b;
                    if (i4 >= i3) {
                        break;
                    }
                    int m5 = parsableByteArray3.m();
                    if (parsableByteArray3.m() == 1684108385) {
                        break;
                    }
                    parsableByteArray3.M(i4 + m5);
                }
                MdtaMetadataEntry mdtaMetadataEntry = null;
                if (mdtaMetadataEntry != null) {
                    arrayList.add(mdtaMetadataEntry);
                }
            } else {
                q.x("Skipped metadata with unknown key index: ", m4, "BoxParsers");
            }
            parsableByteArray3.M(i2 + m3);
        }
        if (arrayList.isEmpty()) {
            return null;
        }
        return new Metadata(arrayList);
    }

    public static Mp4TimestampData f(ParsableByteArray parsableByteArray) {
        long t;
        long t2;
        parsableByteArray.M(8);
        if (d(parsableByteArray.m()) == 0) {
            t = parsableByteArray.B();
            t2 = parsableByteArray.B();
        } else {
            t = parsableByteArray.t();
            t2 = parsableByteArray.t();
        }
        return new Mp4TimestampData(t, t2, parsableByteArray.B());
    }

    public static Pair g(ParsableByteArray parsableByteArray, int i, int i2) {
        boolean z;
        boolean z2;
        boolean z3;
        Integer num;
        TrackEncryptionBox trackEncryptionBox;
        Pair create;
        int i3;
        int i4;
        Integer num2;
        boolean z4;
        int i5 = parsableByteArray.b;
        while (i5 - i < i2) {
            parsableByteArray.M(i5);
            int m = parsableByteArray.m();
            boolean z5 = false;
            if (m > 0) {
                z = true;
            } else {
                z = false;
            }
            ExtractorUtil.a("childAtomSize must be positive", z);
            if (parsableByteArray.m() == 1936289382) {
                int i6 = i5 + 8;
                int i7 = 0;
                int i8 = -1;
                Integer num3 = null;
                String str = null;
                while (i6 - i5 < m) {
                    parsableByteArray.M(i6);
                    int m2 = parsableByteArray.m();
                    int m3 = parsableByteArray.m();
                    if (m3 == 1718775137) {
                        num3 = Integer.valueOf(parsableByteArray.m());
                    } else if (m3 == 1935894637) {
                        parsableByteArray.N(4);
                        str = parsableByteArray.x(4, StandardCharsets.UTF_8);
                    } else if (m3 == 1935894633) {
                        i8 = i6;
                        i7 = m2;
                    }
                    i6 += m2;
                }
                byte[] bArr = null;
                if (!"cenc".equals(str) && !"cbc1".equals(str) && !"cens".equals(str) && !"cbcs".equals(str)) {
                    create = null;
                } else {
                    if (num3 != null) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    ExtractorUtil.a("frma atom is mandatory", z2);
                    if (i8 != -1) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    ExtractorUtil.a("schi atom is mandatory", z3);
                    int i9 = i8 + 8;
                    while (true) {
                        if (i9 - i8 < i7) {
                            parsableByteArray.M(i9);
                            int m4 = parsableByteArray.m();
                            if (parsableByteArray.m() == 1952804451) {
                                int d = d(parsableByteArray.m());
                                parsableByteArray.N(1);
                                if (d == 0) {
                                    parsableByteArray.N(1);
                                    i4 = 0;
                                    i3 = 0;
                                } else {
                                    int z6 = parsableByteArray.z();
                                    i3 = z6 & 15;
                                    i4 = (z6 & 240) >> 4;
                                }
                                if (parsableByteArray.z() == 1) {
                                    num2 = num3;
                                    z4 = true;
                                } else {
                                    num2 = num3;
                                    z4 = false;
                                }
                                int z7 = parsableByteArray.z();
                                byte[] bArr2 = new byte[16];
                                parsableByteArray.k(bArr2, 0, 16);
                                if (z4 && z7 == 0) {
                                    int z8 = parsableByteArray.z();
                                    byte[] bArr3 = new byte[z8];
                                    parsableByteArray.k(bArr3, 0, z8);
                                    bArr = bArr3;
                                }
                                num = num2;
                                trackEncryptionBox = new TrackEncryptionBox(z4, str, z7, bArr2, i4, i3, bArr);
                            } else {
                                i9 += m4;
                            }
                        } else {
                            num = num3;
                            trackEncryptionBox = null;
                            break;
                        }
                    }
                    if (trackEncryptionBox != null) {
                        z5 = true;
                    }
                    ExtractorUtil.a("tenc atom is mandatory", z5);
                    String str2 = Util.a;
                    create = Pair.create(num, trackEncryptionBox);
                }
                if (create != null) {
                    return create;
                }
            }
            i5 += m;
        }
        return null;
    }

    /*  JADX ERROR: Type inference failed
        jadx.core.utils.exceptions.JadxOverflowException: Type inference error: updates count limit reached
        	at jadx.core.utils.ErrorsCounter.addError(ErrorsCounter.java:59)
        	at jadx.core.utils.ErrorsCounter.error(ErrorsCounter.java:31)
        	at jadx.core.dex.attributes.nodes.NotificationAttrNode.addError(NotificationAttrNode.java:19)
        	at jadx.core.dex.visitors.typeinference.TypeInferenceVisitor.visit(TypeInferenceVisitor.java:77)
        */
    public static androidx.media3.extractor.mp4.BoxParser.StsdData h(androidx.media3.common.util.ParsableByteArray r47, androidx.media3.extractor.mp4.BoxParser.TkhdData r48, java.lang.String r49, androidx.media3.common.DrmInitData r50, boolean r51) {
        /*
            Method dump skipped, instructions count: 2976
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.media3.extractor.mp4.BoxParser.h(androidx.media3.common.util.ParsableByteArray, androidx.media3.extractor.mp4.BoxParser$TkhdData, java.lang.String, androidx.media3.common.DrmInitData, boolean):androidx.media3.extractor.mp4.BoxParser$StsdData");
    }

    /* JADX WARN: Code restructure failed: missing block: B:394:0x00ee, code lost:
    
        if (r29 == 0) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:395:0x00f0, code lost:
    
        r29 = -9223372036854775807L;
     */
    /* JADX WARN: Removed duplicated region for block: B:101:0x07eb  */
    /* JADX WARN: Removed duplicated region for block: B:108:0x0833  */
    /* JADX WARN: Removed duplicated region for block: B:112:0x0847  */
    /* JADX WARN: Removed duplicated region for block: B:272:0x064c  */
    /* JADX WARN: Removed duplicated region for block: B:362:0x0593  */
    /* JADX WARN: Removed duplicated region for block: B:407:0x016a  */
    /* JADX WARN: Removed duplicated region for block: B:410:0x017a  */
    /* JADX WARN: Removed duplicated region for block: B:413:0x018b  */
    /* JADX WARN: Removed duplicated region for block: B:417:0x01ce  */
    /* JADX WARN: Removed duplicated region for block: B:420:0x01de  */
    /* JADX WARN: Removed duplicated region for block: B:423:0x01e8  */
    /* JADX WARN: Removed duplicated region for block: B:434:0x024b  */
    /* JADX WARN: Removed duplicated region for block: B:443:0x0277  */
    /* JADX WARN: Removed duplicated region for block: B:445:0x0288  */
    /* JADX WARN: Removed duplicated region for block: B:462:0x03a2  */
    /* JADX WARN: Removed duplicated region for block: B:463:0x03a6  */
    /* JADX WARN: Removed duplicated region for block: B:513:0x0220 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:515:0x01e0  */
    /* JADX WARN: Removed duplicated region for block: B:516:0x01d1  */
    /* JADX WARN: Removed duplicated region for block: B:517:0x0192  */
    /* JADX WARN: Removed duplicated region for block: B:518:0x017d  */
    /* JADX WARN: Removed duplicated region for block: B:519:0x016d  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x0590  */
    /* JADX WARN: Removed duplicated region for block: B:71:0x0597  */
    /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object, com.google.common.primitives.ImmutableLongArray$Builder] */
    /* JADX WARN: Type inference failed for: r3v6, types: [java.lang.Object, com.google.common.primitives.ImmutableLongArray$Builder] */
    /* JADX WARN: Type inference failed for: r9v8, types: [androidx.media3.extractor.mp4.Track$Builder, java.lang.Object] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static ArrayList i(Mp4Box.ContainerBox containerBox, GaplessInfoHolder gaplessInfoHolder, long j, DrmInitData drmInitData, boolean z, boolean z2, Function function, boolean z3) {
        int i;
        long j2;
        long j3;
        long j4;
        int i2;
        int i3;
        long j5;
        long J;
        long j6;
        int d;
        int i4;
        ArrayList arrayList;
        int i5;
        long j7;
        int i6;
        String str;
        Mp4Box.LeafBox c;
        int i7;
        ArrayList arrayList2;
        int i8;
        Mp4Box.ContainerBox containerBox2;
        String str2;
        ImmutableLongArray immutableLongArray;
        ImmutableLongArray immutableLongArray2;
        Format format;
        Track track;
        Function function2;
        Metadata metadata;
        Mp4Box.ContainerBox b;
        Pair create;
        Mp4Box.LeafBox c2;
        int i9;
        int i10;
        SampleSizeBox stz2SampleSizeBox;
        boolean z4;
        int i11;
        int i12;
        int i13;
        boolean z5;
        int i14;
        int i15;
        String str3;
        long[] jArr;
        long[] jArr2;
        int i16;
        int[] iArr;
        boolean z6;
        int[] iArr2;
        int i17;
        long j8;
        int i18;
        long j9;
        long j10;
        long j11;
        ImmutableLongArray immutableLongArray3;
        ArrayList arrayList3;
        long j12;
        ArrayList arrayList4;
        TrackSampleTable trackSampleTable;
        long[] jArr3;
        int[] iArr3;
        boolean z7;
        ImmutableLongArray immutableLongArray4;
        int i19;
        int i20;
        TrackSampleTable trackSampleTable2;
        long J2;
        Mp4Box.ContainerBox containerBox3 = containerBox;
        ArrayList arrayList5 = containerBox3.d;
        ArrayList arrayList6 = new ArrayList();
        int i21 = 0;
        while (i21 < arrayList5.size()) {
            Mp4Box.ContainerBox containerBox4 = (Mp4Box.ContainerBox) arrayList5.get(i21);
            if (containerBox4.a != 1953653099) {
                arrayList = arrayList5;
                arrayList4 = arrayList6;
                i = i21;
            } else {
                Mp4Box.LeafBox c3 = containerBox3.c(1836476516);
                c3.getClass();
                Mp4Box.ContainerBox b2 = containerBox4.b(1835297121);
                b2.getClass();
                Mp4Box.LeafBox c4 = b2.c(1751411826);
                c4.getClass();
                ParsableByteArray parsableByteArray = c4.b;
                parsableByteArray.M(16);
                int m = parsableByteArray.m();
                int i22 = m == 1936684398 ? 1 : m == 1986618469 ? 2 : (m == 1952807028 || m == 1935832172 || m == 1937072756 || m == 1668047728 || m == 1937072752) ? 3 : m == 1835365473 ? 5 : -1;
                short s = 1;
                i = i21;
                if (i22 == -1) {
                    function2 = function;
                    arrayList = arrayList5;
                    arrayList2 = arrayList6;
                    containerBox2 = containerBox4;
                    str2 = "BoxParsers";
                    track = null;
                    j2 = 0;
                } else {
                    j2 = 0;
                    Mp4Box.LeafBox c5 = containerBox4.c(1953196132);
                    c5.getClass();
                    ParsableByteArray parsableByteArray2 = c5.b;
                    parsableByteArray2.M(8);
                    int d2 = d(parsableByteArray2.m());
                    parsableByteArray2.N(d2 != 0 ? 16 : 8);
                    int m2 = parsableByteArray2.m();
                    parsableByteArray2.N(4);
                    int i23 = parsableByteArray2.b;
                    int i24 = d2 == 0 ? 4 : 8;
                    int i25 = 0;
                    while (true) {
                        j3 = -9223372036854775807L;
                        if (i25 < i24) {
                            if (parsableByteArray2.a[i23 + i25] != -1) {
                                j4 = d2 == 0 ? parsableByteArray2.B() : parsableByteArray2.F();
                            } else {
                                i25++;
                            }
                        } else {
                            parsableByteArray2.N(i24);
                            break;
                        }
                    }
                    parsableByteArray2.N(10);
                    int G = parsableByteArray2.G();
                    parsableByteArray2.N(4);
                    int m3 = parsableByteArray2.m();
                    int m4 = parsableByteArray2.m();
                    parsableByteArray2.N(4);
                    int m5 = parsableByteArray2.m();
                    int m6 = parsableByteArray2.m();
                    if (m3 == 0 && m4 == 65536 && ((m5 == -65536 || m5 == 65536) && m6 == 0)) {
                        i2 = 90;
                    } else if (m3 == 0 && m4 == -65536 && ((m5 == 65536 || m5 == -65536) && m6 == 0)) {
                        i2 = 270;
                    } else if ((m3 == -65536 || m3 == 65536) && m4 == 0 && m5 == 0 && m6 == -65536) {
                        i2 = 180;
                    } else {
                        i3 = 0;
                        parsableByteArray2.N(16);
                        short w = parsableByteArray2.w();
                        parsableByteArray2.N(2);
                        TkhdData tkhdData = new TkhdData(m2, j4, G, i3, (((long) m3) * ((long) m6)) - (((long) m4) * ((long) m5)) >= 0, w, parsableByteArray2.w());
                        j5 = j != -9223372036854775807L ? j4 : j;
                        long j13 = f(c3.b).c;
                        if (j5 != -9223372036854775807L) {
                            j6 = j13;
                            J = -9223372036854775807L;
                        } else {
                            String str4 = Util.a;
                            J = Util.J(j5, 1000000L, j13, RoundingMode.DOWN);
                            j6 = j13;
                        }
                        Mp4Box.ContainerBox b3 = b2.b(1835626086);
                        b3.getClass();
                        Mp4Box.ContainerBox b4 = b3.b(1937007212);
                        b4.getClass();
                        Mp4Box.LeafBox c6 = b2.c(1835296868);
                        c6.getClass();
                        ParsableByteArray parsableByteArray3 = c6.b;
                        parsableByteArray3.M(8);
                        d = d(parsableByteArray3.m());
                        parsableByteArray3.N(d != 0 ? 8 : 16);
                        long B = parsableByteArray3.B();
                        int i26 = parsableByteArray3.b;
                        i4 = d != 0 ? 4 : 8;
                        arrayList = arrayList5;
                        i5 = 0;
                        while (true) {
                            if (i5 >= i4) {
                                i9 = i5;
                                i10 = d;
                                if (parsableByteArray3.a[i26 + i9] != -1) {
                                    long B2 = i10 == 0 ? parsableByteArray3.B() : parsableByteArray3.F();
                                    if (B2 == 0) {
                                        j7 = B;
                                    } else {
                                        String str5 = Util.a;
                                        j7 = B;
                                        j3 = Util.J(B2, 1000000L, j7, RoundingMode.DOWN);
                                    }
                                } else {
                                    i5 = i9 + 1;
                                    d = i10;
                                }
                            } else {
                                j7 = B;
                                parsableByteArray3.N(i4);
                                break;
                            }
                        }
                        int G2 = parsableByteArray3.G();
                        char[] cArr = {(char) (((G2 >> 10) & 31) + 96), (char) (((G2 >> 5) & 31) + 96), (char) ((G2 & 31) + 96)};
                        for (i6 = 0; i6 < 3; i6++) {
                            char c7 = cArr[i6];
                            if (c7 < 'a' || c7 > 'z') {
                                str = null;
                                break;
                            }
                        }
                        str = new String(cArr);
                        MdhdData mdhdData = new MdhdData(j7, j3, str);
                        c = b4.c(1937011556);
                        if (c != null) {
                            Log.f("BoxParsers", "Ignoring track where sample table (stbl) box is missing a sample description (stsd).");
                            function2 = function;
                            arrayList2 = arrayList6;
                            containerBox2 = containerBox4;
                            str2 = "BoxParsers";
                        } else {
                            StsdData h = h(c.b, tkhdData, str, drmInitData, z2);
                            Mp4Box.ContainerBox b5 = containerBox4.b(1953654118);
                            if (b5 != null && (c2 = b5.c(1667785072)) != null) {
                                ParsableByteArray parsableByteArray4 = c2.b;
                                parsableByteArray4.M(8);
                                if (parsableByteArray4.a() >= 4) {
                                    i7 = parsableByteArray4.m();
                                    if (!z || (b = containerBox4.b(1701082227)) == null) {
                                        arrayList2 = arrayList6;
                                        i8 = i7;
                                        containerBox2 = containerBox4;
                                        str2 = "BoxParsers";
                                    } else {
                                        Mp4Box.LeafBox c8 = b.c(1701606260);
                                        if (c8 == null) {
                                            arrayList2 = arrayList6;
                                            i8 = i7;
                                            containerBox2 = containerBox4;
                                            str2 = "BoxParsers";
                                            create = null;
                                        } else {
                                            ParsableByteArray parsableByteArray5 = c8.b;
                                            parsableByteArray5.M(8);
                                            int d3 = d(parsableByteArray5.m());
                                            int D = parsableByteArray5.D();
                                            arrayList2 = arrayList6;
                                            Preconditions.c(D, "Invalid initialCapacity: %s", D >= 0);
                                            ?? obj = new Object();
                                            str2 = "BoxParsers";
                                            obj.b = 0;
                                            obj.a = new long[D];
                                            Preconditions.c(D, "Invalid initialCapacity: %s", D >= 0);
                                            ?? obj2 = new Object();
                                            obj2.b = 0;
                                            obj2.a = new long[D];
                                            int i27 = 0;
                                            while (i27 < D) {
                                                int i28 = D;
                                                short s2 = s;
                                                int i29 = i7;
                                                Mp4Box.ContainerBox containerBox5 = containerBox4;
                                                obj.a(d3 == s2 ? parsableByteArray5.F() : parsableByteArray5.B());
                                                obj2.a(d3 == s2 ? parsableByteArray5.t() : parsableByteArray5.m());
                                                if (parsableByteArray5.w() == s2) {
                                                    parsableByteArray5.N(2);
                                                    i27++;
                                                    D = i28;
                                                    containerBox4 = containerBox5;
                                                    i7 = i29;
                                                    s = 1;
                                                } else {
                                                    u2.g("Unsupported media rate.");
                                                    return null;
                                                }
                                            }
                                            i8 = i7;
                                            containerBox2 = containerBox4;
                                            int i30 = obj.b;
                                            ImmutableLongArray immutableLongArray5 = ImmutableLongArray.l;
                                            ImmutableLongArray immutableLongArray6 = i30 == 0 ? immutableLongArray5 : new ImmutableLongArray(obj.a, i30);
                                            int i31 = obj2.b;
                                            if (i31 != 0) {
                                                immutableLongArray5 = new ImmutableLongArray(obj2.a, i31);
                                            }
                                            create = Pair.create(immutableLongArray6, immutableLongArray5);
                                        }
                                        if (create != null) {
                                            immutableLongArray2 = (ImmutableLongArray) create.first;
                                            immutableLongArray = (ImmutableLongArray) create.second;
                                            format = h.b;
                                            if (format == null) {
                                                function2 = function;
                                            } else {
                                                int i32 = tkhdData.b;
                                                if (i32 != 0) {
                                                    Mp4AlternateGroupData mp4AlternateGroupData = new Mp4AlternateGroupData(i32);
                                                    Format.Builder a2 = format.a();
                                                    Metadata metadata2 = h.b.m;
                                                    if (metadata2 != null) {
                                                        metadata = metadata2.a(mp4AlternateGroupData);
                                                    } else {
                                                        metadata = new Metadata(mp4AlternateGroupData);
                                                    }
                                                    a2.l = metadata;
                                                    format = new Format(a2);
                                                }
                                                boolean z8 = !Objects.equals(format.p, "text/x-unknown");
                                                ?? obj3 = new Object();
                                                obj3.m = true;
                                                obj3.n = -1;
                                                obj3.a = tkhdData.a;
                                                obj3.b = i22;
                                                obj3.c = mdhdData.a;
                                                obj3.d = j6;
                                                obj3.e = J;
                                                obj3.f = mdhdData.b;
                                                obj3.g = format;
                                                obj3.h = h.d;
                                                obj3.i = (TrackEncryptionBox[]) h.a.clone();
                                                obj3.j = h.c;
                                                obj3.k = immutableLongArray2;
                                                obj3.l = immutableLongArray;
                                                obj3.m = z8;
                                                obj3.n = i8;
                                                obj3.g.getClass();
                                                track = new Track(obj3);
                                                function2 = function;
                                            }
                                        }
                                    }
                                    immutableLongArray = null;
                                    immutableLongArray2 = null;
                                    format = h.b;
                                    if (format == null) {
                                    }
                                }
                            }
                            i7 = -1;
                            if (!z) {
                            }
                            arrayList2 = arrayList6;
                            i8 = i7;
                            containerBox2 = containerBox4;
                            str2 = "BoxParsers";
                            immutableLongArray = null;
                            immutableLongArray2 = null;
                            format = h.b;
                            if (format == null) {
                            }
                        }
                        track = null;
                    }
                    i3 = i2;
                    parsableByteArray2.N(16);
                    short w2 = parsableByteArray2.w();
                    parsableByteArray2.N(2);
                    TkhdData tkhdData2 = new TkhdData(m2, j4, G, i3, (((long) m3) * ((long) m6)) - (((long) m4) * ((long) m5)) >= 0, w2, parsableByteArray2.w());
                    if (j != -9223372036854775807L) {
                    }
                    long j132 = f(c3.b).c;
                    if (j5 != -9223372036854775807L) {
                    }
                    Mp4Box.ContainerBox b32 = b2.b(1835626086);
                    b32.getClass();
                    Mp4Box.ContainerBox b42 = b32.b(1937007212);
                    b42.getClass();
                    Mp4Box.LeafBox c62 = b2.c(1835296868);
                    c62.getClass();
                    ParsableByteArray parsableByteArray32 = c62.b;
                    parsableByteArray32.M(8);
                    d = d(parsableByteArray32.m());
                    parsableByteArray32.N(d != 0 ? 8 : 16);
                    long B3 = parsableByteArray32.B();
                    int i262 = parsableByteArray32.b;
                    if (d != 0) {
                    }
                    arrayList = arrayList5;
                    i5 = 0;
                    while (true) {
                        if (i5 >= i4) {
                        }
                        i5 = i9 + 1;
                        d = i10;
                    }
                    int G22 = parsableByteArray32.G();
                    char[] cArr2 = {(char) (((G22 >> 10) & 31) + 96), (char) (((G22 >> 5) & 31) + 96), (char) ((G22 & 31) + 96)};
                    while (i6 < 3) {
                    }
                    str = new String(cArr2);
                    MdhdData mdhdData2 = new MdhdData(j7, j3, str);
                    c = b42.c(1937011556);
                    if (c != null) {
                    }
                    track = null;
                }
                Track track2 = (Track) function2.apply(track);
                if (track2 == null) {
                    arrayList4 = arrayList2;
                } else {
                    Format format2 = track2.g;
                    Mp4Box.ContainerBox b6 = containerBox2.b(1835297121);
                    b6.getClass();
                    Mp4Box.ContainerBox b7 = b6.b(1835626086);
                    b7.getClass();
                    Mp4Box.ContainerBox b8 = b7.b(1937007212);
                    b8.getClass();
                    Mp4Box.LeafBox c9 = b8.c(1937011578);
                    if (c9 != null) {
                        stz2SampleSizeBox = new StszSampleSizeBox(c9, format2);
                    } else {
                        Mp4Box.LeafBox c10 = b8.c(1937013298);
                        if (c10 != null) {
                            stz2SampleSizeBox = new Stz2SampleSizeBox(c10);
                        } else {
                            throw ParserException.a(null, "Track has no sample table size information");
                        }
                    }
                    int b9 = stz2SampleSizeBox.b();
                    if (b9 == 0) {
                        trackSampleTable = new TrackSampleTable(track2, new long[0], new int[0], 0, new long[0], new int[0], new int[0], false, 0L, 0);
                        arrayList4 = arrayList2;
                    } else {
                        if (track2.b == 2) {
                            long j14 = track2.f;
                            if (j14 > j2) {
                                float f = b9 / (((float) j14) / 1000000.0f);
                                Format.Builder a3 = format2.a();
                                Preconditions.e(f == -1.0f || f > 0.0f);
                                a3.A = f;
                                Format format3 = new Format(a3);
                                Track.Builder a4 = track2.a();
                                a4.g = format3;
                                track2 = new Track(a4);
                            }
                        }
                        Format format4 = track2.g;
                        Mp4Box.LeafBox c11 = b8.c(1937007471);
                        if (c11 == null) {
                            c11 = b8.c(1668232756);
                            c11.getClass();
                            z4 = true;
                        } else {
                            z4 = false;
                        }
                        ParsableByteArray parsableByteArray6 = c11.b;
                        Mp4Box.LeafBox c12 = b8.c(1937011555);
                        c12.getClass();
                        ParsableByteArray parsableByteArray7 = c12.b;
                        Mp4Box.LeafBox c13 = b8.c(1937011827);
                        c13.getClass();
                        ParsableByteArray parsableByteArray8 = c13.b;
                        Mp4Box.LeafBox c14 = b8.c(1937011571);
                        ParsableByteArray parsableByteArray9 = c14 != null ? c14.b : null;
                        Mp4Box.LeafBox c15 = b8.c(1668576371);
                        ParsableByteArray parsableByteArray10 = c15 != null ? c15.b : null;
                        ChunkIterator chunkIterator = new ChunkIterator(parsableByteArray7, parsableByteArray6, z4);
                        parsableByteArray8.M(12);
                        int D2 = parsableByteArray8.D() - 1;
                        int D3 = parsableByteArray8.D();
                        int D4 = parsableByteArray8.D();
                        if (parsableByteArray10 != null) {
                            parsableByteArray10.M(12);
                            i11 = parsableByteArray10.D();
                        } else {
                            i11 = 0;
                        }
                        if (parsableByteArray9 != null) {
                            parsableByteArray9.M(12);
                            i12 = parsableByteArray9.D();
                            if (i12 > 0) {
                                i13 = parsableByteArray9.D() - 1;
                                int a5 = stz2SampleSizeBox.a();
                                String str6 = format4.p;
                                z5 = a5 == -1 && ("audio/raw".equals(str6) || "audio/g711-mlaw".equals(str6) || "audio/g711-alaw".equals(str6)) && D2 == 0 && i11 == 0 && i12 == 0;
                                ArrayList arrayList7 = new ArrayList();
                                boolean z9 = parsableByteArray9 != null;
                                if (!z5) {
                                    int i33 = chunkIterator.a;
                                    long[] jArr4 = new long[i33];
                                    int[] iArr4 = new int[i33];
                                    while (chunkIterator.a()) {
                                        int i34 = chunkIterator.b;
                                        jArr4[i34] = chunkIterator.d;
                                        iArr4[i34] = chunkIterator.c;
                                    }
                                    long j15 = D4;
                                    int i35 = 8192 / a5;
                                    int i36 = 0;
                                    for (int i37 = 0; i37 < i33; i37++) {
                                        i36 += Util.e(iArr4[i37], i35);
                                    }
                                    jArr2 = new long[i36];
                                    int[] iArr5 = new int[i36];
                                    jArr = new long[i36];
                                    iArr = new int[i36];
                                    int i38 = 0;
                                    int i39 = 0;
                                    int i40 = 0;
                                    int i41 = 0;
                                    int i42 = 0;
                                    while (i39 < i33) {
                                        int i43 = iArr4[i39];
                                        long j16 = jArr4[i39];
                                        int i44 = i42;
                                        int i45 = i33;
                                        int i46 = i41;
                                        int i47 = i44;
                                        int i48 = i38;
                                        int i49 = i43;
                                        while (i49 > 0) {
                                            int min = Math.min(i35, i49);
                                            jArr2[i47] = j16;
                                            int i50 = i49;
                                            int i51 = a5 * min;
                                            iArr5[i47] = i51;
                                            i48 += i51;
                                            i46 = Math.max(i46, i51);
                                            long j17 = j15;
                                            jArr[i47] = j17 * i40;
                                            iArr[i47] = 1;
                                            j16 += iArr5[i47];
                                            i40 += min;
                                            i49 = i50 - min;
                                            i47++;
                                            iArr4 = iArr4;
                                            j15 = j17;
                                        }
                                        i39++;
                                        int i52 = i47;
                                        i41 = i46;
                                        i33 = i45;
                                        i42 = i52;
                                        i38 = i48;
                                    }
                                    long j18 = j15 * i40;
                                    j9 = i38;
                                    if (z3) {
                                        jArr2 = new long[0];
                                    }
                                    if (z3) {
                                        iArr5 = new int[0];
                                    }
                                    if (z3) {
                                        jArr = new long[0];
                                    }
                                    if (z3) {
                                        iArr = new int[0];
                                    }
                                    j8 = j18;
                                    i17 = i36;
                                    iArr2 = iArr5;
                                    i18 = i41;
                                } else {
                                    long[] jArr5 = z3 ? new long[0] : new long[b9];
                                    ParsableByteArray parsableByteArray11 = parsableByteArray10;
                                    int[] iArr6 = z3 ? new int[0] : new int[b9];
                                    SampleSizeBox sampleSizeBox = stz2SampleSizeBox;
                                    long[] jArr6 = z3 ? new long[0] : new long[b9];
                                    int i53 = i12;
                                    int[] iArr7 = z3 ? new int[0] : new int[b9];
                                    ParsableByteArray parsableByteArray12 = parsableByteArray9;
                                    int i54 = i11;
                                    int i55 = i53;
                                    long j19 = j2;
                                    long j20 = j19;
                                    long j21 = j20;
                                    int i56 = 0;
                                    int i57 = 0;
                                    int i58 = 0;
                                    int i59 = 0;
                                    int i60 = 0;
                                    while (true) {
                                        if (i56 >= b9) {
                                            i14 = D2;
                                            i15 = D3;
                                            str3 = str2;
                                            jArr = jArr6;
                                            jArr2 = jArr5;
                                            i16 = i59;
                                            iArr = iArr7;
                                            break;
                                        }
                                        long j22 = j21;
                                        int i61 = i59;
                                        boolean z10 = true;
                                        while (i61 == 0) {
                                            z10 = chunkIterator.a();
                                            if (!z10) {
                                                break;
                                            }
                                            int i62 = D2;
                                            long j23 = chunkIterator.d;
                                            i61 = chunkIterator.c;
                                            j22 = j23;
                                            D2 = i62;
                                            D3 = D3;
                                            b9 = b9;
                                        }
                                        int i63 = b9;
                                        i14 = D2;
                                        i15 = D3;
                                        if (!z10) {
                                            str3 = str2;
                                            Log.f(str3, "Unexpected end of chunk data");
                                            if (z3) {
                                                jArr = jArr6;
                                                iArr = iArr7;
                                                b9 = i56;
                                                jArr2 = jArr5;
                                            } else {
                                                long[] copyOf = Arrays.copyOf(jArr5, i56);
                                                iArr6 = Arrays.copyOf(iArr6, i56);
                                                jArr2 = copyOf;
                                                jArr = Arrays.copyOf(jArr6, i56);
                                                iArr = Arrays.copyOf(iArr7, i56);
                                                b9 = i56;
                                            }
                                            i16 = i61;
                                        } else {
                                            String str7 = str2;
                                            if (parsableByteArray11 != null) {
                                                while (i60 == 0 && i54 > 0) {
                                                    i60 = parsableByteArray11.D();
                                                    i57 = parsableByteArray11.m();
                                                    i54--;
                                                }
                                                i60--;
                                            }
                                            int c16 = sampleSizeBox.c();
                                            long[] jArr7 = jArr6;
                                            int[] iArr8 = iArr7;
                                            long j24 = c16;
                                            j20 += j24;
                                            if (c16 > i58) {
                                                i58 = c16;
                                            }
                                            if (z3) {
                                                j10 = j24;
                                            } else {
                                                jArr5[i56] = j22;
                                                iArr6[i56] = c16;
                                                j10 = j24;
                                                jArr7[i56] = j19 + i57;
                                                iArr8[i56] = parsableByteArray12 == null ? 1 : 0;
                                                if (i56 == i13) {
                                                    iArr8[i56] = 1;
                                                    arrayList7.add(Integer.valueOf(i56));
                                                }
                                            }
                                            if (parsableByteArray12 != null && i56 == i13 && i55 - 1 > 0) {
                                                i13 = parsableByteArray12.D() - 1;
                                            }
                                            j19 += D4;
                                            int i64 = i15 - 1;
                                            if (i64 == 0 && i14 > 0) {
                                                i64 = parsableByteArray8.D();
                                                D4 = parsableByteArray8.m();
                                                i14--;
                                            }
                                            i59 = i61 - 1;
                                            i56++;
                                            j21 = j22 + j10;
                                            jArr6 = jArr7;
                                            iArr7 = iArr8;
                                            D3 = i64;
                                            str2 = str7;
                                            D2 = i14;
                                            b9 = i63;
                                        }
                                    }
                                    long j25 = j19 + i57;
                                    if (parsableByteArray11 != null) {
                                        while (i54 > 0) {
                                            if (parsableByteArray11.D() != 0) {
                                                z6 = false;
                                                break;
                                            }
                                            parsableByteArray11.m();
                                            i54--;
                                        }
                                    }
                                    z6 = true;
                                    if (i55 != 0 || i15 != 0 || i16 != 0 || i14 != 0 || i60 != 0 || !z6) {
                                        StringBuilder sb = new StringBuilder("Inconsistent stbl box for track ");
                                        sb.append(track2.a);
                                        sb.append(": remainingSynchronizationSamples ");
                                        sb.append(i55);
                                        sb.append(", remainingSamplesAtTimestampDelta ");
                                        sb.append(i15);
                                        sb.append(", remainingSamplesInChunk ");
                                        sb.append(i16);
                                        sb.append(", remainingTimestampDeltaChanges ");
                                        sb.append(i14);
                                        sb.append(", remainingSamplesAtTimestampOffset ");
                                        sb.append(i60);
                                        sb.append(!z6 ? ", ctts invalid" : "");
                                        Log.f(str3, sb.toString());
                                    }
                                    iArr2 = iArr6;
                                    i17 = b9;
                                    j8 = j25;
                                    i18 = i58;
                                    j9 = j20;
                                }
                                long[] jArr8 = jArr2;
                                int[] iArr9 = iArr;
                                j11 = track2.f;
                                if (j11 > j2) {
                                    long J3 = Util.J(8 * j9, 1000000L, j11, RoundingMode.HALF_DOWN);
                                    if (J3 > j2 && J3 < 2147483647L) {
                                        Format.Builder a6 = format4.a();
                                        a6.i = (int) J3;
                                        Format format5 = new Format(a6);
                                        Track.Builder a7 = track2.a();
                                        a7.g = format5;
                                        track2 = new Track(a7);
                                    }
                                }
                                int i65 = track2.b;
                                long j26 = track2.c;
                                Format format6 = track2.g;
                                ImmutableLongArray immutableLongArray7 = track2.j;
                                immutableLongArray3 = track2.i;
                                RoundingMode roundingMode = RoundingMode.DOWN;
                                long J4 = Util.J(j8, 1000000L, j26, roundingMode);
                                int[] e = Ints.e(arrayList7);
                                if (immutableLongArray3 != null) {
                                    if (!z3) {
                                        Util.I(jArr, j26);
                                    }
                                    trackSampleTable2 = new TrackSampleTable(track2, jArr8, iArr2, i18, jArr, iArr9, e, z9, J4, i17);
                                } else {
                                    long[] jArr9 = jArr;
                                    int i66 = immutableLongArray3.k;
                                    if (z3) {
                                        immutableLongArray7.getClass();
                                        if (i66 == 1 && immutableLongArray3.a(0) == j2) {
                                            J2 = Util.J(j8 - immutableLongArray7.a(0), 1000000L, track2.c, roundingMode);
                                        } else {
                                            long j27 = j2;
                                            for (int i67 = 0; i67 < i66; i67++) {
                                                if (immutableLongArray7.a(i67) != -1) {
                                                    j27 = immutableLongArray3.a(i67) + j27;
                                                }
                                            }
                                            J2 = Util.J(j27, 1000000L, track2.d, RoundingMode.DOWN);
                                        }
                                        trackSampleTable2 = new TrackSampleTable(track2, jArr8, iArr2, i18, jArr9, iArr9, e, z9, J2, i17);
                                    } else {
                                        int i68 = 1;
                                        if (i66 == 1 && i65 == 1 && jArr9.length >= 2) {
                                            immutableLongArray7.getClass();
                                            long a8 = immutableLongArray7.a(0);
                                            j12 = -1;
                                            long J5 = Util.J(immutableLongArray3.a(0), track2.c, track2.d, roundingMode) + a8;
                                            int length = jArr9.length - 1;
                                            arrayList3 = arrayList7;
                                            if (jArr9[0] <= a8 && a8 < jArr9[Util.g(4, 0, length)] && jArr9[Util.g(jArr9.length + (-4), 0, length)] < J5 && J5 <= j8 + 2) {
                                                long j28 = j2;
                                                long max = Math.max(j28, j8 - J5);
                                                long J6 = Util.J(a8 - jArr9[0], format6.L, track2.c, roundingMode);
                                                long J7 = Util.J(max, format6.L, track2.c, roundingMode);
                                                if ((J6 != j28 || J7 != j28) && J6 <= 2147483647L && J7 <= 2147483647L) {
                                                    gaplessInfoHolder.a = (int) J6;
                                                    gaplessInfoHolder.b = (int) J7;
                                                    Util.I(jArr9, j26);
                                                    trackSampleTable2 = new TrackSampleTable(track2, jArr8, iArr2, i18, jArr9, iArr9, e, z9, Util.J(immutableLongArray3.a(0), 1000000L, track2.d, roundingMode), i17);
                                                }
                                            }
                                            i68 = 1;
                                        } else {
                                            arrayList3 = arrayList7;
                                            j12 = -1;
                                        }
                                        if (i66 == i68 && immutableLongArray3.a(0) == 0) {
                                            immutableLongArray7.getClass();
                                            long a9 = immutableLongArray7.a(0);
                                            for (int i69 = 0; i69 < jArr9.length; i69++) {
                                                jArr9[i69] = Util.J(jArr9[i69] - a9, 1000000L, track2.c, RoundingMode.DOWN);
                                            }
                                            trackSampleTable2 = new TrackSampleTable(track2, jArr8, iArr2, i18, jArr9, iArr9, e, z9, Util.J(j8 - a9, 1000000L, track2.c, RoundingMode.DOWN), i17);
                                        } else {
                                            long[] jArr10 = jArr8;
                                            int[] iArr10 = iArr2;
                                            int[] iArr11 = iArr9;
                                            int i70 = i17;
                                            boolean z11 = i65 == 1;
                                            int[] iArr12 = new int[i66];
                                            int[] iArr13 = new int[i66];
                                            immutableLongArray7.getClass();
                                            int i71 = 0;
                                            int i72 = 0;
                                            int i73 = 0;
                                            boolean z12 = false;
                                            while (i73 < i66) {
                                                int[] iArr14 = iArr11;
                                                int[] iArr15 = iArr13;
                                                long a10 = immutableLongArray7.a(i73);
                                                if (a10 != j12) {
                                                    i19 = i73;
                                                    boolean z13 = z12;
                                                    long J8 = Util.J(immutableLongArray3.a(i73), track2.c, track2.d, RoundingMode.DOWN) + a10;
                                                    immutableLongArray4 = immutableLongArray3;
                                                    iArr12[i19] = Util.d(jArr9, a10, true);
                                                    int a11 = Util.a(jArr9, J8, z11);
                                                    z7 = z11;
                                                    int i74 = a11 - 1;
                                                    int i75 = 0;
                                                    while (a11 < jArr9.length) {
                                                        if (jArr9[a11] >= J8) {
                                                            i75++;
                                                            if (i75 > format6.r) {
                                                                break;
                                                            }
                                                        } else {
                                                            i74 = a11;
                                                        }
                                                        a11++;
                                                    }
                                                    iArr15[i19] = i74 + 1;
                                                    int i76 = iArr12[i19];
                                                    while (true) {
                                                        i20 = iArr12[i19];
                                                        if (i20 <= 0 || (iArr14[i20] & 1) != 0) {
                                                            break;
                                                        }
                                                        iArr12[i19] = i20 - 1;
                                                    }
                                                    if (i20 == 0 && (iArr14[0] & 1) == 0) {
                                                        iArr12[i19] = i76;
                                                        while (true) {
                                                            int i77 = iArr12[i19];
                                                            if (i77 >= iArr15[i19] || (iArr14[i77] & 1) != 0) {
                                                                break;
                                                            }
                                                            iArr12[i19] = i77 + 1;
                                                        }
                                                    }
                                                    int i78 = iArr15[i19];
                                                    int i79 = iArr12[i19];
                                                    int i80 = (i78 - i79) + i71;
                                                    boolean z14 = i72 != i79;
                                                    i72 = i78;
                                                    z12 = z13 | z14;
                                                    i71 = i80;
                                                } else {
                                                    z7 = z11;
                                                    immutableLongArray4 = immutableLongArray3;
                                                    i19 = i73;
                                                }
                                                i73 = i19 + 1;
                                                iArr13 = iArr15;
                                                immutableLongArray3 = immutableLongArray4;
                                                z11 = z7;
                                                iArr11 = iArr14;
                                            }
                                            ImmutableLongArray immutableLongArray8 = immutableLongArray3;
                                            int[] iArr16 = iArr11;
                                            int[] iArr17 = iArr13;
                                            boolean z15 = z12 | (i71 != i70);
                                            long[] jArr11 = z15 ? new long[i71] : jArr10;
                                            int[] iArr18 = z15 ? new int[i71] : iArr10;
                                            int i81 = z15 ? 0 : i18;
                                            int[] iArr19 = z15 ? new int[i71] : iArr16;
                                            ArrayList arrayList8 = z15 ? new ArrayList() : arrayList3;
                                            long[] jArr12 = new long[i71];
                                            int i82 = i81;
                                            int i83 = 0;
                                            boolean z16 = false;
                                            int i84 = 0;
                                            long j29 = 0;
                                            while (i83 < i66) {
                                                long a12 = immutableLongArray7.a(i83);
                                                boolean z17 = z15;
                                                int i85 = iArr12[i83];
                                                long[] jArr13 = jArr12;
                                                int i86 = iArr17[i83];
                                                Format format7 = format6;
                                                if (z17) {
                                                    int i87 = i86 - i85;
                                                    System.arraycopy(jArr10, i85, jArr11, i84, i87);
                                                    System.arraycopy(iArr10, i85, iArr18, i84, i87);
                                                    jArr3 = jArr10;
                                                    iArr3 = iArr16;
                                                    System.arraycopy(iArr3, i85, iArr19, i84, i87);
                                                } else {
                                                    jArr3 = jArr10;
                                                    iArr3 = iArr16;
                                                }
                                                int i88 = i82;
                                                while (i85 < i86) {
                                                    int i89 = i85;
                                                    int i90 = i86;
                                                    long j30 = track2.d;
                                                    RoundingMode roundingMode2 = RoundingMode.DOWN;
                                                    long J9 = Util.J(j29, 1000000L, j30, roundingMode2);
                                                    long J10 = Util.J(jArr9[i89] - a12, 1000000L, track2.c, roundingMode2);
                                                    if (J10 < 0) {
                                                        z16 = true;
                                                    }
                                                    jArr13[i84] = J9 + J10;
                                                    if (z17 && iArr18[i84] > i88) {
                                                        i88 = iArr10[i89];
                                                    }
                                                    if (z17 && !z9 && (iArr19[i84] & 1) != 0) {
                                                        arrayList8.add(Integer.valueOf(i84));
                                                    }
                                                    i84++;
                                                    i85 = i89 + 1;
                                                    i86 = i90;
                                                }
                                                j29 = immutableLongArray8.a(i83) + j29;
                                                i83++;
                                                i82 = i88;
                                                iArr16 = iArr3;
                                                z15 = z17;
                                                format6 = format7;
                                                jArr10 = jArr3;
                                                jArr12 = jArr13;
                                            }
                                            long[] jArr14 = jArr12;
                                            Format format8 = format6;
                                            long J11 = Util.J(j29, 1000000L, track2.d, RoundingMode.DOWN);
                                            if (z16) {
                                                Format.Builder a13 = format8.a();
                                                a13.u = true;
                                                Format format9 = new Format(a13);
                                                Track.Builder a14 = track2.a();
                                                a14.g = format9;
                                                track2 = new Track(a14);
                                            }
                                            arrayList4 = arrayList2;
                                            trackSampleTable = new TrackSampleTable(track2, jArr11, iArr18, i82, jArr14, iArr19, Ints.e(arrayList8), z9, J11, jArr11.length);
                                            arrayList4.add(trackSampleTable);
                                            i21 = i + 1;
                                            arrayList6 = arrayList4;
                                            arrayList5 = arrayList;
                                            containerBox3 = containerBox;
                                        }
                                    }
                                }
                                arrayList4 = arrayList2;
                                trackSampleTable = trackSampleTable2;
                            } else {
                                parsableByteArray9 = null;
                            }
                        } else {
                            i12 = 0;
                        }
                        i13 = -1;
                        int a52 = stz2SampleSizeBox.a();
                        String str62 = format4.p;
                        if (a52 == -1) {
                        }
                        ArrayList arrayList72 = new ArrayList();
                        if (parsableByteArray9 != null) {
                        }
                        if (!z5) {
                        }
                        long[] jArr82 = jArr2;
                        int[] iArr92 = iArr;
                        j11 = track2.f;
                        if (j11 > j2) {
                        }
                        int i652 = track2.b;
                        long j262 = track2.c;
                        Format format62 = track2.g;
                        ImmutableLongArray immutableLongArray72 = track2.j;
                        immutableLongArray3 = track2.i;
                        RoundingMode roundingMode3 = RoundingMode.DOWN;
                        long J42 = Util.J(j8, 1000000L, j262, roundingMode3);
                        int[] e2 = Ints.e(arrayList72);
                        if (immutableLongArray3 != null) {
                        }
                        arrayList4 = arrayList2;
                        trackSampleTable = trackSampleTable2;
                    }
                    arrayList4.add(trackSampleTable);
                    i21 = i + 1;
                    arrayList6 = arrayList4;
                    arrayList5 = arrayList;
                    containerBox3 = containerBox;
                }
            }
            i21 = i + 1;
            arrayList6 = arrayList4;
            arrayList5 = arrayList;
            containerBox3 = containerBox;
        }
        return arrayList6;
    }

    /* JADX WARN: Code restructure failed: missing block: B:102:0x01a4, code lost:
    
        if (r12 != 1851878757) goto L98;
     */
    /* JADX WARN: Code restructure failed: missing block: B:103:0x01a6, code lost:
    
        r3 = r1.v(r14 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:105:0x01ad, code lost:
    
        if (r12 != 1684108385) goto L100;
     */
    /* JADX WARN: Code restructure failed: missing block: B:106:0x01af, code lost:
    
        r8 = r10;
        r9 = r14;
     */
    /* JADX WARN: Code restructure failed: missing block: B:107:0x01b1, code lost:
    
        r1.N(r14 - 12);
     */
    /* JADX WARN: Code restructure failed: missing block: B:110:0x01b9, code lost:
    
        if (r0 == null) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:111:0x01bb, code lost:
    
        if (r3 == null) goto L109;
     */
    /* JADX WARN: Code restructure failed: missing block: B:113:0x01be, code lost:
    
        if (r8 != (-1)) goto L107;
     */
    /* JADX WARN: Code restructure failed: missing block: B:115:0x01d7, code lost:
    
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:116:0x01d8, code lost:
    
        r1.M(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:117:0x01c1, code lost:
    
        r1.M(r8);
        r1.N(16);
     */
    /* JADX WARN: Code restructure failed: missing block: B:118:0x01d4, code lost:
    
        r8 = new androidx.media3.extractor.metadata.id3.InternalFrame(r0, r3, r1.v(r9 - 16));
     */
    /* JADX WARN: Code restructure failed: missing block: B:121:0x02a3, code lost:
    
        androidx.media3.common.util.Log.b("MetadataUtil", "Skipped unknown metadata entry: ".concat(androidx.media3.container.Mp4Box.a(r10)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:122:0x02ae, code lost:
    
        r1.M(r13);
        r8 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:124:0x01e0, code lost:
    
        r3 = 16777215 & r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:125:0x01e7, code lost:
    
        if (r3 != 6516084) goto L119;
     */
    /* JADX WARN: Code restructure failed: missing block: B:126:0x01e9, code lost:
    
        r0 = r1.m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:127:0x01f1, code lost:
    
        if (r1.m() != 1684108385) goto L118;
     */
    /* JADX WARN: Code restructure failed: missing block: B:128:0x01f3, code lost:
    
        r1.N(8);
        r0 = r1.v(r0 - 16);
        r8 = new androidx.media3.extractor.metadata.id3.CommentFrame("und", r0, r0);
     */
    /* JADX WARN: Code restructure failed: missing block: B:129:0x0208, code lost:
    
        androidx.media3.common.util.Log.f("MetadataUtil", "Failed to parse comment attribute: ".concat(androidx.media3.container.Mp4Box.a(r10)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:131:0x0219, code lost:
    
        if (r3 == 7233901) goto L160;
     */
    /* JADX WARN: Code restructure failed: missing block: B:133:0x021e, code lost:
    
        if (r3 != 7631467) goto L124;
     */
    /* JADX WARN: Code restructure failed: missing block: B:136:0x0225, code lost:
    
        if (r3 == 6516589) goto L159;
     */
    /* JADX WARN: Code restructure failed: missing block: B:138:0x022a, code lost:
    
        if (r3 != 7828084) goto L129;
     */
    /* JADX WARN: Code restructure failed: missing block: B:13:0x0044, code lost:
    
        r1.M(r7);
        r7 = r7 + r13;
        r1.N(r0);
        r6 = new java.util.ArrayList();
        r11 = r11;
     */
    /* JADX WARN: Code restructure failed: missing block: B:141:0x0231, code lost:
    
        if (r3 != 6578553) goto L132;
     */
    /* JADX WARN: Code restructure failed: missing block: B:142:0x0233, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TDRC");
     */
    /* JADX WARN: Code restructure failed: missing block: B:144:0x023d, code lost:
    
        if (r3 != 4280916) goto L135;
     */
    /* JADX WARN: Code restructure failed: missing block: B:145:0x023f, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TPE1");
     */
    /* JADX WARN: Code restructure failed: missing block: B:147:0x0249, code lost:
    
        if (r3 != 7630703) goto L138;
     */
    /* JADX WARN: Code restructure failed: missing block: B:148:0x024b, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TSSE");
     */
    /* JADX WARN: Code restructure failed: missing block: B:14:0x0050, code lost:
    
        r13 = r1.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:150:0x0255, code lost:
    
        if (r3 != 6384738) goto L141;
     */
    /* JADX WARN: Code restructure failed: missing block: B:151:0x0257, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TALB");
     */
    /* JADX WARN: Code restructure failed: missing block: B:153:0x0262, code lost:
    
        if (r3 != 7108978) goto L144;
     */
    /* JADX WARN: Code restructure failed: missing block: B:154:0x0264, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "USLT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:156:0x026f, code lost:
    
        if (r3 != 6776174) goto L147;
     */
    /* JADX WARN: Code restructure failed: missing block: B:157:0x0271, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TCON");
     */
    /* JADX WARN: Code restructure failed: missing block: B:159:0x027a, code lost:
    
        if (r3 != 6779504) goto L150;
     */
    /* JADX WARN: Code restructure failed: missing block: B:15:0x0052, code lost:
    
        if (r13 >= r7) goto L274;
     */
    /* JADX WARN: Code restructure failed: missing block: B:160:0x027c, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TIT1");
     */
    /* JADX WARN: Code restructure failed: missing block: B:162:0x0287, code lost:
    
        if (r3 != 7173742) goto L153;
     */
    /* JADX WARN: Code restructure failed: missing block: B:163:0x0289, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "MVNM");
     */
    /* JADX WARN: Code restructure failed: missing block: B:165:0x0294, code lost:
    
        if (r3 != 7173737) goto L157;
     */
    /* JADX WARN: Code restructure failed: missing block: B:166:0x0296, code lost:
    
        r0 = androidx.media3.extractor.mp4.MetadataUtil.d(r10, "MVIN", r1, true, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:167:0x029e, code lost:
    
        r1.M(r13);
        r8 = r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:168:0x02b3, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TCOM");
     */
    /* JADX WARN: Code restructure failed: missing block: B:169:0x02bb, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TIT2");
     */
    /* JADX WARN: Code restructure failed: missing block: B:16:0x0054, code lost:
    
        r10 = r1.m();
     */
    /* JADX WARN: Code restructure failed: missing block: B:171:0x0087, code lost:
    
        r0 = move-exception;
     */
    /* JADX WARN: Code restructure failed: missing block: B:172:0x02cf, code lost:
    
        r1.M(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:173:0x02d2, code lost:
    
        throw r0;
     */
    /* JADX WARN: Code restructure failed: missing block: B:177:0x02d7, code lost:
    
        if (r6.isEmpty() == false) goto L170;
     */
    /* JADX WARN: Code restructure failed: missing block: B:17:0x005e, code lost:
    
        if (r10 >= r0) goto L20;
     */
    /* JADX WARN: Code restructure failed: missing block: B:183:0x02db, code lost:
    
        r12 = new androidx.media3.common.Metadata(r6);
     */
    /* JADX WARN: Code restructure failed: missing block: B:18:0x0060, code lost:
    
        androidx.media3.common.util.Log.f("MetadataUtil", "Skipped empty metadata entry");
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x0065, code lost:
    
        r8 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x02c3, code lost:
    
        if (r8 == null) goto L276;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x02c5, code lost:
    
        r6.add(r8);
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x02c8, code lost:
    
        r0 = 8;
        r11 = 1;
        r12 = null;
     */
    /* JADX WARN: Code restructure failed: missing block: B:26:0x0069, code lost:
    
        r13 = r13 + r10;
        r10 = r1.m();
        r8 = (r10 >> 24) & 255;
     */
    /* JADX WARN: Code restructure failed: missing block: B:29:0x0076, code lost:
    
        if ((r13 - r1.b) >= r0) goto L27;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0078, code lost:
    
        androidx.media3.common.util.Log.f("MetadataUtil", "Skipped empty metadata entry: ".concat(androidx.media3.container.Mp4Box.a(r10)));
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0083, code lost:
    
        r1.M(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0091, code lost:
    
        if (r8 == 169) goto L31;
     */
    /* JADX WARN: Code restructure failed: missing block: B:35:0x0095, code lost:
    
        if (r8 != 253) goto L32;
     */
    /* JADX WARN: Code restructure failed: missing block: B:37:0x009d, code lost:
    
        if (r10 != 1735291493) goto L40;
     */
    /* JADX WARN: Code restructure failed: missing block: B:38:0x009f, code lost:
    
        r3 = androidx.media3.extractor.metadata.id3.Id3Util.a(androidx.media3.extractor.mp4.MetadataUtil.c(r1) - r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:39:0x00a8, code lost:
    
        if (r3 == null) goto L37;
     */
    /* JADX WARN: Code restructure failed: missing block: B:40:0x00aa, code lost:
    
        r8 = new androidx.media3.extractor.metadata.id3.TextInformationFrame("TCON", r12, com.google.common.collect.ImmutableList.t(r3));
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:0x00ba, code lost:
    
        r1.M(r13);
     */
    /* JADX WARN: Code restructure failed: missing block: B:42:0x00b4, code lost:
    
        androidx.media3.common.util.Log.f("MetadataUtil", "Failed to parse standard genre code");
     */
    /* JADX WARN: Code restructure failed: missing block: B:43:0x00b9, code lost:
    
        r8 = r12;
     */
    /* JADX WARN: Code restructure failed: missing block: B:45:0x00c1, code lost:
    
        if (r10 != 1684632427) goto L43;
     */
    /* JADX WARN: Code restructure failed: missing block: B:46:0x00c3, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.b(r10, r1, "TPOS");
     */
    /* JADX WARN: Code restructure failed: missing block: B:48:0x00cd, code lost:
    
        if (r10 != 1953655662) goto L46;
     */
    /* JADX WARN: Code restructure failed: missing block: B:49:0x00cf, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.b(r10, r1, "TRCK");
     */
    /* JADX WARN: Code restructure failed: missing block: B:51:0x00d9, code lost:
    
        if (r10 != 1953329263) goto L49;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00db, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.d(r10, "TBPM", r1, r11, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x00e6, code lost:
    
        if (r10 != 1668311404) goto L52;
     */
    /* JADX WARN: Code restructure failed: missing block: B:55:0x00e8, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.d(r10, "TCMP", r1, r11, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:57:0x00f2, code lost:
    
        if (r10 != 1668249202) goto L57;
     */
    /* JADX WARN: Code restructure failed: missing block: B:58:0x00f4, code lost:
    
        if (r18 == false) goto L56;
     */
    /* JADX WARN: Code restructure failed: missing block: B:60:0x00f7, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.a(r1);
     */
    /* JADX WARN: Code restructure failed: missing block: B:62:0x0100, code lost:
    
        if (r10 != 1631670868) goto L60;
     */
    /* JADX WARN: Code restructure failed: missing block: B:63:0x0102, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TPE2");
     */
    /* JADX WARN: Code restructure failed: missing block: B:65:0x010c, code lost:
    
        if (r10 != 1936682605) goto L63;
     */
    /* JADX WARN: Code restructure failed: missing block: B:66:0x010e, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TSOT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:68:0x0118, code lost:
    
        if (r10 != 1936679276) goto L66;
     */
    /* JADX WARN: Code restructure failed: missing block: B:69:0x011a, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TSOA");
     */
    /* JADX WARN: Code restructure failed: missing block: B:71:0x0124, code lost:
    
        if (r10 != 1936679282) goto L69;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x0126, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TSOP");
     */
    /* JADX WARN: Code restructure failed: missing block: B:74:0x0130, code lost:
    
        if (r10 != 1936679265) goto L72;
     */
    /* JADX WARN: Code restructure failed: missing block: B:75:0x0132, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TSO2");
     */
    /* JADX WARN: Code restructure failed: missing block: B:77:0x013c, code lost:
    
        if (r10 != 1936679791) goto L75;
     */
    /* JADX WARN: Code restructure failed: missing block: B:78:0x013e, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TSOC");
     */
    /* JADX WARN: Code restructure failed: missing block: B:80:0x0149, code lost:
    
        if (r10 != 1920233063) goto L78;
     */
    /* JADX WARN: Code restructure failed: missing block: B:81:0x014b, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.d(r10, "ITUNESADVISORY", r1, false, false);
     */
    /* JADX WARN: Code restructure failed: missing block: B:83:0x0157, code lost:
    
        if (r10 != 1885823344) goto L81;
     */
    /* JADX WARN: Code restructure failed: missing block: B:84:0x0159, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.d(r10, "ITUNESGAPLESS", r1, false, r11);
     */
    /* JADX WARN: Code restructure failed: missing block: B:86:0x0165, code lost:
    
        if (r10 != 1936683886) goto L84;
     */
    /* JADX WARN: Code restructure failed: missing block: B:87:0x0167, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TVSHOWSORT");
     */
    /* JADX WARN: Code restructure failed: missing block: B:89:0x0172, code lost:
    
        if (r10 != 1953919848) goto L87;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0174, code lost:
    
        r8 = androidx.media3.extractor.mp4.MetadataUtil.e(r10, r1, "TVSHOW");
     */
    /* JADX WARN: Code restructure failed: missing block: B:92:0x017f, code lost:
    
        if (r10 != 757935405) goto L112;
     */
    /* JADX WARN: Code restructure failed: missing block: B:93:0x0181, code lost:
    
        r0 = r12;
        r3 = r0;
        r8 = -1;
        r9 = -1;
     */
    /* JADX WARN: Code restructure failed: missing block: B:94:0x0185, code lost:
    
        r10 = r1.b;
     */
    /* JADX WARN: Code restructure failed: missing block: B:95:0x0187, code lost:
    
        if (r10 >= r13) goto L277;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x0189, code lost:
    
        r14 = r1.m();
        r12 = r1.m();
        r1.N(4);
     */
    /* JADX WARN: Code restructure failed: missing block: B:97:0x0198, code lost:
    
        if (r12 != 1835360622) goto L95;
     */
    /* JADX WARN: Code restructure failed: missing block: B:98:0x019a, code lost:
    
        r0 = r1.v(r14 - 12);
     */
    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:217:0x037e  */
    /* JADX WARN: Type inference failed for: r11v13 */
    /* JADX WARN: Type inference failed for: r11v17 */
    /* JADX WARN: Type inference failed for: r11v4, types: [int, boolean] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Metadata j(Mp4Box.LeafBox leafBox, boolean z) {
        int i;
        boolean z2;
        Metadata metadata;
        Metadata b;
        Metadata metadata2;
        Mp4LocationData mp4LocationData;
        Metadata.Entry[] entryArr;
        Metadata metadata3;
        int i2;
        ParsableByteArray parsableByteArray = leafBox.b;
        int i3 = 8;
        parsableByteArray.M(8);
        Metadata metadata4 = new Metadata(new Metadata.Entry[0]);
        while (parsableByteArray.a() >= i3) {
            int i4 = parsableByteArray.b;
            int m = parsableByteArray.m();
            int m2 = parsableByteArray.m();
            boolean z3 = true;
            String str = null;
            if (m2 == 1835365473) {
                parsableByteArray.M(i4);
                int i5 = i4 + m;
                parsableByteArray.N(i3);
                a(parsableByteArray);
                while (true) {
                    int i6 = parsableByteArray.b;
                    if (i6 >= i5) {
                        break;
                    }
                    int m3 = parsableByteArray.m();
                    if (parsableByteArray.m() == 1768715124) {
                        break;
                    }
                    parsableByteArray.M(i6 + m3);
                    i3 = 8;
                    z3 = true;
                    str = null;
                }
                Metadata metadata5 = null;
                metadata4 = metadata4.b(metadata5);
                i = 8;
            } else if (m2 == 1936553057) {
                parsableByteArray.M(i4);
                int i7 = i4 + m;
                parsableByteArray.N(12);
                while (true) {
                    int i8 = parsableByteArray.b;
                    if (i8 < i7) {
                        int m4 = parsableByteArray.m();
                        if (parsableByteArray.m() == 1935766900) {
                            if (m4 < 16) {
                                metadata3 = null;
                                i = 8;
                            } else {
                                parsableByteArray.N(4);
                                int i9 = -1;
                                int i10 = 0;
                                for (int i11 = 0; i11 < 2; i11++) {
                                    int z4 = parsableByteArray.z();
                                    int z5 = parsableByteArray.z();
                                    if (z4 == 0) {
                                        i9 = z5;
                                    } else if (z4 == 1) {
                                        i10 = z5;
                                    }
                                }
                                if (i9 == 12) {
                                    i2 = 240;
                                } else if (i9 == 13) {
                                    i2 = 120;
                                } else if (i9 != 21) {
                                    i2 = -2147483647;
                                } else {
                                    i = 8;
                                    if (parsableByteArray.a() >= 8 && parsableByteArray.b + 8 <= i7) {
                                        int m5 = parsableByteArray.m();
                                        int m6 = parsableByteArray.m();
                                        if (m5 >= 12 && m6 == 1936877170) {
                                            i2 = parsableByteArray.A();
                                            if (i2 != -2147483647) {
                                                metadata3 = new Metadata(new SmtaMetadataEntry(i10, i2));
                                            }
                                        }
                                    }
                                    i2 = -2147483647;
                                    if (i2 != -2147483647) {
                                    }
                                }
                                i = 8;
                                if (i2 != -2147483647) {
                                }
                            }
                        } else {
                            parsableByteArray.M(i8 + m4);
                        }
                    } else {
                        i = 8;
                        break;
                    }
                }
                metadata3 = null;
                metadata4 = metadata4.b(metadata3);
            } else {
                i = 8;
                if (m2 == -1451722374) {
                    short w = parsableByteArray.w();
                    parsableByteArray.N(2);
                    String x = parsableByteArray.x(w, StandardCharsets.UTF_8);
                    int max = Math.max(x.lastIndexOf(43), x.lastIndexOf(45));
                    try {
                        try {
                            mp4LocationData = new Mp4LocationData(Float.parseFloat(x.substring(0, max)), Float.parseFloat(x.substring(max, x.length() - 1)));
                            entryArr = new Metadata.Entry[1];
                            z2 = false;
                        } catch (IndexOutOfBoundsException | NumberFormatException unused) {
                            z2 = false;
                        }
                        try {
                            entryArr[0] = mp4LocationData;
                            metadata2 = new Metadata(entryArr);
                        } catch (IndexOutOfBoundsException | NumberFormatException unused2) {
                            metadata2 = null;
                            b = metadata4.b(metadata2);
                            metadata4 = b;
                            parsableByteArray.M(i4 + m);
                            i3 = i;
                        }
                    } catch (IndexOutOfBoundsException | NumberFormatException unused3) {
                        z2 = false;
                    }
                    b = metadata4.b(metadata2);
                } else {
                    z2 = false;
                    if (m2 == 1667788908) {
                        try {
                            parsableByteArray.N(5);
                            int m7 = parsableByteArray.m();
                            ArrayList arrayList = new ArrayList();
                            for (int i12 = 0; i12 < m7; i12++) {
                                long t = parsableByteArray.t() / 10000;
                                if (t < 0) {
                                    t = -9223372036854775807L;
                                }
                                String x2 = parsableByteArray.x(parsableByteArray.z(), StandardCharsets.UTF_8);
                                Chapter.Builder builder = new Chapter.Builder();
                                builder.a = t;
                                metadata = null;
                                try {
                                    builder.d = new Label(null, x2);
                                    arrayList.add(builder.a());
                                } catch (IndexOutOfBoundsException unused4) {
                                }
                            }
                            metadata = null;
                            if (!arrayList.isEmpty()) {
                                metadata = new Metadata(arrayList);
                            }
                        } catch (IndexOutOfBoundsException unused5) {
                            metadata = null;
                        }
                        b = metadata4.b(metadata);
                    } else {
                        parsableByteArray.M(i4 + m);
                        i3 = i;
                    }
                }
                metadata4 = b;
                parsableByteArray.M(i4 + m);
                i3 = i;
            }
            z2 = false;
            parsableByteArray.M(i4 + m);
            i3 = i;
        }
        return metadata4;
    }

    /* JADX WARN: Code restructure failed: missing block: B:184:0x03e4, code lost:
    
        throw androidx.media3.common.ParserException.a(null, "Unsupported VVC version");
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static void k(ParsableByteArray parsableByteArray, int i, int i2, int i3, TkhdData tkhdData, String str, DrmInitData drmInitData, StsdData stsdData, int i4) {
        String str2;
        int i5;
        int i6;
        String str3;
        int i7;
        int i8;
        int i9;
        int i10;
        int i11;
        int i12;
        DrmInitData drmInitData2;
        DolbyVisionConfig dolbyVisionConfig;
        String str4;
        String str5;
        byte[] bArr;
        boolean z;
        int i13;
        String str6;
        int i14;
        DrmInitData drmInitData3;
        int i15;
        int i16;
        NalUnitUtil.H265VpsData h265VpsData;
        String str7;
        int i17;
        int i18;
        int i19;
        boolean z2;
        boolean z3;
        boolean z4;
        int i20;
        int i21;
        boolean z5;
        boolean z6;
        ByteBuffer byteBuffer;
        ByteBuffer byteBuffer2;
        int i22;
        boolean z7;
        String str8;
        boolean z8;
        int i23;
        VexuData vexuData;
        int i24;
        boolean z9;
        boolean z10;
        String str9;
        int i25;
        EyesData eyesData;
        boolean z11;
        boolean z12;
        boolean z13;
        boolean z14;
        boolean z15;
        boolean z16;
        int i26;
        int i27;
        int i28;
        int i29;
        int i30;
        int i31;
        boolean z17;
        boolean z18;
        int i32;
        boolean z19;
        boolean z20;
        boolean z21;
        boolean z22;
        boolean z23;
        boolean z24;
        boolean z25;
        int i33 = i2;
        int i34 = i3;
        DrmInitData drmInitData4 = drmInitData;
        parsableByteArray.M(i33 + 16);
        parsableByteArray.N(16);
        int G = parsableByteArray.G();
        int G2 = parsableByteArray.G();
        parsableByteArray.N(50);
        int i35 = parsableByteArray.b;
        int i36 = i;
        if (i36 == 1701733238) {
            Pair g = g(parsableByteArray, i33, i34);
            if (g != null) {
                i36 = ((Integer) g.first).intValue();
                if (drmInitData4 == null) {
                    drmInitData4 = null;
                } else {
                    drmInitData4 = drmInitData4.a(((TrackEncryptionBox) g.second).b);
                }
                stsdData.a[i4] = (TrackEncryptionBox) g.second;
            }
            parsableByteArray.M(i35);
        }
        String str10 = "video/3gpp";
        if (i36 == 1831958048) {
            str2 = "video/mpeg";
        } else if (i36 == 1211250227) {
            str2 = "video/3gpp";
        } else {
            str2 = null;
        }
        float f = 1.0f;
        int i37 = 8;
        List list = null;
        String str11 = null;
        DolbyVisionConfig dolbyVisionConfig2 = null;
        byte[] bArr2 = null;
        int i38 = -1;
        int i39 = -1;
        int i40 = -1;
        int i41 = -1;
        int i42 = -1;
        int i43 = -1;
        int i44 = -1;
        int i45 = -1;
        ByteBuffer byteBuffer3 = null;
        int i46 = 8;
        int i47 = 8;
        BtrtData btrtData = null;
        EsdsData esdsData = null;
        NalUnitUtil.H265VpsData h265VpsData2 = null;
        boolean z26 = false;
        while (true) {
            if (i35 - i33 < i34) {
                parsableByteArray.M(i35);
                int i48 = parsableByteArray.b;
                int m = parsableByteArray.m();
                if (m == 0 && parsableByteArray.b - i33 == i34) {
                    i5 = G;
                    i6 = G2;
                    str3 = str2;
                    dolbyVisionConfig = dolbyVisionConfig2;
                    i7 = i38;
                    i8 = i43;
                    i9 = i44;
                    i10 = i45;
                    i11 = i46;
                    i12 = i47;
                    drmInitData2 = drmInitData4;
                    break;
                }
                if (m > 0) {
                    z = true;
                } else {
                    z = false;
                }
                String str12 = "childAtomSize must be positive";
                ExtractorUtil.a("childAtomSize must be positive", z);
                int m2 = parsableByteArray.m();
                if (m2 == 1635148611) {
                    if (str2 == null) {
                        z25 = true;
                    } else {
                        z25 = false;
                    }
                    ExtractorUtil.a(null, z25);
                    parsableByteArray.M(i48 + 8);
                    AvcConfig a2 = AvcConfig.a(parsableByteArray);
                    list = a2.a;
                    stsdData.c = a2.b;
                    if (!z26) {
                        f = a2.k;
                    }
                    String str13 = a2.l;
                    int i49 = a2.j;
                    int i50 = a2.g;
                    int i51 = a2.h;
                    str11 = str13;
                    int i52 = a2.i;
                    int i53 = a2.e;
                    i47 = a2.f;
                    i46 = i53;
                    drmInitData3 = drmInitData4;
                    i15 = G;
                    i16 = G2;
                    i13 = i35;
                    i17 = i36;
                    str6 = str10;
                    i14 = i51;
                    i45 = i52;
                    str7 = "video/avc";
                    i19 = i37;
                    i39 = i49;
                    i43 = i50;
                } else {
                    i13 = i35;
                    if (m2 == 1752589123) {
                        if (str2 == null) {
                            z24 = true;
                        } else {
                            z24 = false;
                        }
                        ExtractorUtil.a(null, z24);
                        parsableByteArray.M(i48 + 8);
                        HevcConfig a3 = HevcConfig.a(parsableByteArray, false, null);
                        List list2 = a3.a;
                        stsdData.c = a3.b;
                        if (!z26) {
                            f = a3.l;
                        }
                        int i54 = a3.m;
                        int i55 = a3.c;
                        String str14 = a3.n;
                        int i56 = a3.k;
                        if (i56 != -1) {
                            i38 = i56;
                        }
                        int i57 = a3.d;
                        int i58 = a3.e;
                        int i59 = a3.h;
                        int i60 = a3.i;
                        int i61 = a3.j;
                        int i62 = a3.f;
                        i47 = a3.g;
                        drmInitData3 = drmInitData4;
                        h265VpsData2 = a3.o;
                        i15 = G;
                        i16 = G2;
                        str7 = "video/hevc";
                        i17 = i36;
                        str6 = str10;
                        list = list2;
                        i14 = i60;
                        i45 = i61;
                        i46 = i62;
                        i19 = i37;
                        str11 = str14;
                        i42 = i58;
                        i41 = i57;
                        i43 = i59;
                        i39 = i54;
                        i40 = i55;
                    } else {
                        str6 = str10;
                        if (m2 == 1818785347) {
                            ExtractorUtil.a("lhvC must follow hvcC atom", "video/hevc".equals(str2));
                            NalUnitUtil.H265VpsData h265VpsData3 = h265VpsData2;
                            if (h265VpsData3 != null && h265VpsData3.a.size() >= 2) {
                                z17 = true;
                            } else {
                                z17 = false;
                            }
                            ExtractorUtil.a("must have at least two layers", z17);
                            parsableByteArray.M(i48 + 8);
                            h265VpsData3.getClass();
                            HevcConfig a4 = HevcConfig.a(parsableByteArray, true, h265VpsData3);
                            if (stsdData.c == a4.b) {
                                z18 = true;
                            } else {
                                z18 = false;
                            }
                            ExtractorUtil.a("nalUnitLengthFieldLength must be same for both hvcC and lhvC atoms", z18);
                            int i63 = a4.h;
                            int i64 = i43;
                            if (i63 != -1) {
                                if (i64 == i63) {
                                    z23 = true;
                                } else {
                                    z23 = false;
                                }
                                ExtractorUtil.a("colorSpace must be the same for both views", z23);
                            }
                            int i65 = a4.i;
                            int i66 = i44;
                            if (i65 != -1) {
                                if (i66 == i65) {
                                    z22 = true;
                                } else {
                                    z22 = false;
                                }
                                ExtractorUtil.a("colorRange must be the same for both views", z22);
                            }
                            int i67 = a4.j;
                            if (i67 != -1) {
                                i32 = i45;
                                if (i32 == i67) {
                                    z21 = true;
                                } else {
                                    z21 = false;
                                }
                                ExtractorUtil.a("colorTransfer must be the same for both views", z21);
                            } else {
                                i32 = i45;
                            }
                            int i68 = i46;
                            if (i68 == a4.f) {
                                z19 = true;
                            } else {
                                z19 = false;
                            }
                            int i69 = i32;
                            ExtractorUtil.a("bitdepthLuma must be the same for both views", z19);
                            int i70 = i47;
                            if (i70 == a4.g) {
                                z20 = true;
                            } else {
                                z20 = false;
                            }
                            ExtractorUtil.a("bitdepthChroma must be the same for both views", z20);
                            if (list != null) {
                                ImmutableList.Builder k = ImmutableList.k();
                                k.f(list);
                                k.f(a4.a);
                                list = k.i();
                            } else {
                                ExtractorUtil.a("initializationData must be already set from hvcC atom", false);
                            }
                            h265VpsData2 = h265VpsData3;
                            drmInitData3 = drmInitData4;
                            i15 = G;
                            i16 = G2;
                            str7 = "video/mv-hevc";
                            i17 = i36;
                            i14 = i66;
                            i46 = i68;
                            i45 = i69;
                            i47 = i70;
                            i19 = i37;
                            str11 = a4.n;
                            i43 = i64;
                        } else {
                            int i71 = i43;
                            i14 = i44;
                            int i72 = i45;
                            int i73 = i46;
                            int i74 = i47;
                            NalUnitUtil.H265VpsData h265VpsData4 = h265VpsData2;
                            int i75 = 4;
                            if (m2 == 1987470147) {
                                if (str2 == null) {
                                    z15 = true;
                                } else {
                                    z15 = false;
                                }
                                ExtractorUtil.a(null, z15);
                                parsableByteArray.M(i48 + 8);
                                try {
                                    if (parsableByteArray.m() != 0) {
                                        break;
                                    }
                                    int z27 = parsableByteArray.z();
                                    int i76 = (z27 >> 1) & 3;
                                    if ((z27 & 1) != 0) {
                                        z16 = true;
                                    } else {
                                        z16 = false;
                                    }
                                    int i77 = i76 + 1;
                                    String str15 = "L";
                                    if (z16) {
                                        parsableByteArray.N(1);
                                        int z28 = (parsableByteArray.z() >> 4) & 7;
                                        i27 = (parsableByteArray.z() >> 5) & 7;
                                        int z29 = parsableByteArray.z() & 63;
                                        int z30 = parsableByteArray.z();
                                        int i78 = (z30 >> 1) & 127;
                                        if ((z30 & 1) != 0) {
                                            str15 = "H";
                                        }
                                        i28 = parsableByteArray.z();
                                        parsableByteArray.N(z29);
                                        if (z28 > 1) {
                                            int z31 = parsableByteArray.z();
                                            int i79 = 1;
                                            int i80 = 0;
                                            while (true) {
                                                int i81 = z28;
                                                if (i80 >= i81 - 1) {
                                                    break;
                                                }
                                                if (((z31 >> (7 - i80)) & 1) != 0) {
                                                    parsableByteArray.N(i79);
                                                }
                                                i80++;
                                                z28 = i81;
                                                i79 = 1;
                                            }
                                        }
                                        parsableByteArray.N(parsableByteArray.z() * 4);
                                        parsableByteArray.N(6);
                                        i26 = i78;
                                    } else {
                                        i26 = 0;
                                        i27 = 0;
                                        i28 = 0;
                                    }
                                    int z32 = parsableByteArray.z();
                                    int i82 = i27;
                                    int i83 = parsableByteArray.b;
                                    drmInitData3 = drmInitData4;
                                    i15 = G;
                                    i16 = G2;
                                    int i84 = 0;
                                    int i85 = 0;
                                    while (true) {
                                        i29 = 13;
                                        if (i84 >= z32) {
                                            break;
                                        }
                                        int i86 = i84;
                                        int z33 = parsableByteArray.z() & 31;
                                        if (z33 != 13 && z33 != 12) {
                                            i31 = parsableByteArray.G();
                                        } else {
                                            i31 = 1;
                                        }
                                        int i87 = 0;
                                        while (i87 < i31) {
                                            int i88 = i31;
                                            int G3 = parsableByteArray.G();
                                            i85 = G3 + 4 + i85;
                                            parsableByteArray.N(G3);
                                            i87++;
                                            i31 = i88;
                                        }
                                        i84 = i86 + 1;
                                    }
                                    parsableByteArray.M(i83);
                                    byte[] bArr3 = new byte[i85];
                                    int i89 = 0;
                                    int i90 = 0;
                                    while (i89 < z32) {
                                        int i91 = i89;
                                        int z34 = parsableByteArray.z() & 31;
                                        if (z34 != i29 && z34 != 12) {
                                            i30 = parsableByteArray.G();
                                        } else {
                                            i30 = 1;
                                        }
                                        int i92 = 0;
                                        while (i92 < i30) {
                                            int i93 = i30;
                                            int G4 = parsableByteArray.G();
                                            System.arraycopy(NalUnitUtil.a, 0, bArr3, i90, i75);
                                            int i94 = i90 + 4;
                                            parsableByteArray.k(bArr3, i94, G4);
                                            i90 = i94 + G4;
                                            i92++;
                                            i30 = i93;
                                            z32 = z32;
                                            i75 = 4;
                                        }
                                        i89 = i91 + 1;
                                        i29 = 13;
                                        i75 = 4;
                                    }
                                    Locale locale = Locale.US;
                                    String str16 = "vvc1." + i26 + "." + str15 + i28;
                                    ImmutableList t = ImmutableList.t(bArr3);
                                    i46 = i82 + 8;
                                    stsdData.c = i77;
                                    i19 = i37;
                                    str11 = str16;
                                    h265VpsData2 = h265VpsData4;
                                    list = t;
                                    str7 = "video/vvc";
                                    i43 = i71;
                                    i17 = i36;
                                    i47 = i46;
                                    i45 = i72;
                                    i39 = 16;
                                } catch (ArrayIndexOutOfBoundsException e) {
                                    throw ParserException.a(e, "Error parsing VVC configuration");
                                }
                            } else {
                                drmInitData3 = drmInitData4;
                                i15 = G;
                                i16 = G2;
                                if (m2 == 1986361461) {
                                    parsableByteArray.M(i48 + 8);
                                    int i95 = parsableByteArray.b;
                                    EyesData eyesData2 = null;
                                    while (i95 - i48 < m) {
                                        parsableByteArray.M(i95);
                                        int m3 = parsableByteArray.m();
                                        if (m3 > 0) {
                                            z10 = true;
                                        } else {
                                            z10 = false;
                                        }
                                        ExtractorUtil.a(str12, z10);
                                        if (parsableByteArray.m() == 1702454643) {
                                            parsableByteArray.M(i95 + 8);
                                            int i96 = parsableByteArray.b;
                                            while (true) {
                                                if (i96 - i95 < m3) {
                                                    parsableByteArray.M(i96);
                                                    int m4 = parsableByteArray.m();
                                                    if (m4 > 0) {
                                                        z11 = true;
                                                    } else {
                                                        z11 = false;
                                                    }
                                                    ExtractorUtil.a(str12, z11);
                                                    if (parsableByteArray.m() == 1937011305) {
                                                        parsableByteArray.N(4);
                                                        int z35 = parsableByteArray.z();
                                                        str9 = str12;
                                                        if ((z35 & 1) == 1) {
                                                            z12 = true;
                                                        } else {
                                                            z12 = false;
                                                        }
                                                        i25 = i95;
                                                        if ((z35 & 2) == 2) {
                                                            z13 = true;
                                                        } else {
                                                            z13 = false;
                                                        }
                                                        if ((z35 & 8) == i37) {
                                                            z14 = true;
                                                        } else {
                                                            z14 = false;
                                                        }
                                                        eyesData = new EyesData(new StriData(z12, z13, z14));
                                                    } else {
                                                        i96 += m4;
                                                        i37 = 8;
                                                    }
                                                } else {
                                                    str9 = str12;
                                                    i25 = i95;
                                                    eyesData = null;
                                                    break;
                                                }
                                            }
                                            eyesData2 = eyesData;
                                        } else {
                                            str9 = str12;
                                            i25 = i95;
                                        }
                                        i95 = i25 + m3;
                                        str12 = str9;
                                        i37 = 8;
                                    }
                                    if (eyesData2 == null) {
                                        vexuData = null;
                                    } else {
                                        vexuData = new VexuData(eyesData2);
                                    }
                                    if (vexuData != null) {
                                        StriData striData = vexuData.a.a;
                                        if (h265VpsData4 != null && h265VpsData4.a.size() >= 2) {
                                            if (striData.a && striData.b) {
                                                z9 = true;
                                            } else {
                                                z9 = false;
                                            }
                                            ExtractorUtil.a("both eye views must be marked as available", z9);
                                            ExtractorUtil.a("for MV-HEVC, eye_views_reversed must be set to false", !striData.c);
                                        } else {
                                            i24 = i38;
                                            if (i24 == -1) {
                                                if (striData.c) {
                                                    i38 = 5;
                                                } else {
                                                    i38 = 4;
                                                }
                                                h265VpsData2 = h265VpsData4;
                                            }
                                            i38 = i24;
                                            h265VpsData2 = h265VpsData4;
                                        }
                                    }
                                    i24 = i38;
                                    i38 = i24;
                                    h265VpsData2 = h265VpsData4;
                                } else {
                                    int i97 = i38;
                                    if (m2 == 1685480259 || m2 == 1685485123 || m2 == 1685485379) {
                                        h265VpsData = h265VpsData4;
                                        str7 = str2;
                                        i17 = i36;
                                        i18 = i72;
                                        i19 = 8;
                                        dolbyVisionConfig2 = DolbyVisionConfig.a(parsableByteArray);
                                    } else if (m2 == 1987076931) {
                                        if (str2 == null) {
                                            z7 = true;
                                        } else {
                                            z7 = false;
                                        }
                                        ExtractorUtil.a(null, z7);
                                        if (i36 != 1987063864) {
                                            str8 = "video/x-vnd.on2.vp9";
                                        } else {
                                            str8 = "video/x-vnd.on2.vp8";
                                        }
                                        parsableByteArray.M(i48 + 12);
                                        byte z36 = (byte) parsableByteArray.z();
                                        byte z37 = (byte) parsableByteArray.z();
                                        int z38 = parsableByteArray.z();
                                        int i98 = z38 >> 4;
                                        byte b = (byte) ((z38 >> 1) & 7);
                                        if (str8.equals("video/x-vnd.on2.vp9")) {
                                            byte[] bArr4 = CodecSpecificDataUtil.a;
                                            list = ImmutableList.t(new byte[]{1, 1, z36, 2, 1, z37, 3, 1, (byte) i98, 4, 1, b});
                                        }
                                        if ((z38 & 1) != 0) {
                                            z8 = true;
                                        } else {
                                            z8 = false;
                                        }
                                        int z39 = parsableByteArray.z();
                                        int z40 = parsableByteArray.z();
                                        int f2 = ColorInfo.f(z39);
                                        if (z8) {
                                            i23 = 1;
                                        } else {
                                            i23 = 2;
                                        }
                                        i45 = ColorInfo.g(z40);
                                        str7 = str8;
                                        h265VpsData2 = h265VpsData4;
                                        i38 = i97;
                                        i46 = i98;
                                        i47 = i46;
                                        i17 = i36;
                                        i14 = i23;
                                        i19 = 8;
                                        i43 = f2;
                                    } else if (m2 == 1635135811) {
                                        int i99 = m - 8;
                                        byte[] bArr5 = new byte[i99];
                                        parsableByteArray.k(bArr5, 0, i99);
                                        list = ImmutableList.t(bArr5);
                                        Av1Config b2 = Av1Config.b(bArr5);
                                        if (b2 != null) {
                                            int i100 = b2.a;
                                            int i101 = b2.b;
                                            i22 = b2.c;
                                            int i102 = b2.d;
                                            str11 = b2.e;
                                            i46 = i100;
                                            i47 = i46;
                                            i43 = i101;
                                            i45 = i102;
                                        } else {
                                            i43 = i71;
                                            i22 = i14;
                                            i45 = i72;
                                            i46 = i73;
                                            i47 = i74;
                                        }
                                        str7 = "video/av01";
                                        h265VpsData2 = h265VpsData4;
                                        i38 = i97;
                                        i14 = i22;
                                        i17 = i36;
                                        i19 = 8;
                                    } else if (m2 == 1668050025) {
                                        if (byteBuffer3 == null) {
                                            byteBuffer2 = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                        } else {
                                            byteBuffer2 = byteBuffer3;
                                        }
                                        byteBuffer2.position(21);
                                        byteBuffer2.putShort(parsableByteArray.w());
                                        byteBuffer2.putShort(parsableByteArray.w());
                                        byteBuffer3 = byteBuffer2;
                                        h265VpsData2 = h265VpsData4;
                                        i38 = i97;
                                    } else {
                                        if (m2 == 1835295606) {
                                            if (byteBuffer3 == null) {
                                                byteBuffer = ByteBuffer.allocate(25).order(ByteOrder.LITTLE_ENDIAN);
                                            } else {
                                                byteBuffer = byteBuffer3;
                                            }
                                            short w = parsableByteArray.w();
                                            short w2 = parsableByteArray.w();
                                            short w3 = parsableByteArray.w();
                                            short w4 = parsableByteArray.w();
                                            short w5 = parsableByteArray.w();
                                            short w6 = parsableByteArray.w();
                                            h265VpsData = h265VpsData4;
                                            short w7 = parsableByteArray.w();
                                            str7 = str2;
                                            short w8 = parsableByteArray.w();
                                            long B = parsableByteArray.B();
                                            long B2 = parsableByteArray.B();
                                            i17 = i36;
                                            byteBuffer.position(1);
                                            byteBuffer.putShort(w5);
                                            byteBuffer.putShort(w6);
                                            byteBuffer.putShort(w);
                                            byteBuffer.putShort(w2);
                                            byteBuffer.putShort(w3);
                                            byteBuffer.putShort(w4);
                                            byteBuffer.putShort(w7);
                                            byteBuffer.putShort(w8);
                                            byteBuffer.putShort((short) (B / 10000));
                                            byteBuffer.putShort((short) (B2 / 10000));
                                            byteBuffer3 = byteBuffer;
                                        } else {
                                            h265VpsData = h265VpsData4;
                                            str7 = str2;
                                            i17 = i36;
                                            if (m2 == 1681012275) {
                                                if (str7 == null) {
                                                    z6 = true;
                                                } else {
                                                    z6 = false;
                                                }
                                                ExtractorUtil.a(null, z6);
                                                i43 = i71;
                                                h265VpsData2 = h265VpsData;
                                                str7 = str6;
                                                i45 = i72;
                                                i46 = i73;
                                                i47 = i74;
                                                i19 = 8;
                                                i38 = i97;
                                            } else if (m2 == 1702061171) {
                                                if (str7 == null) {
                                                    z5 = true;
                                                } else {
                                                    z5 = false;
                                                }
                                                ExtractorUtil.a(null, z5);
                                                EsdsData b3 = b(i48, parsableByteArray);
                                                String str17 = b3.a;
                                                byte[] bArr6 = b3.b;
                                                if (bArr6 != null) {
                                                    list = ImmutableList.t(bArr6);
                                                }
                                                esdsData = b3;
                                                str7 = str17;
                                            } else if (m2 == 1651798644) {
                                                parsableByteArray.M(i48 + 8);
                                                parsableByteArray.N(4);
                                                btrtData = new BtrtData(parsableByteArray.B(), parsableByteArray.B());
                                            } else {
                                                if (m2 == 1885434736) {
                                                    parsableByteArray.M(i48 + 8);
                                                    f = parsableByteArray.D() / parsableByteArray.D();
                                                    i43 = i71;
                                                    h265VpsData2 = h265VpsData;
                                                    i45 = i72;
                                                    i46 = i73;
                                                    i47 = i74;
                                                    i19 = 8;
                                                    z26 = true;
                                                } else if (m2 == 1937126244) {
                                                    int i103 = i48 + 8;
                                                    while (true) {
                                                        if (i103 - i48 < m) {
                                                            parsableByteArray.M(i103);
                                                            int m5 = parsableByteArray.m();
                                                            if (parsableByteArray.m() == 1886547818) {
                                                                bArr2 = Arrays.copyOfRange(parsableByteArray.a, i103, m5 + i103);
                                                                break;
                                                            }
                                                            i103 += m5;
                                                        } else {
                                                            bArr2 = null;
                                                            break;
                                                        }
                                                    }
                                                } else if (m2 == 1936995172) {
                                                    int z41 = parsableByteArray.z();
                                                    parsableByteArray.N(3);
                                                    if (z41 == 0) {
                                                        int z42 = parsableByteArray.z();
                                                        if (z42 != 0) {
                                                            if (z42 != 1) {
                                                                if (z42 != 2) {
                                                                    if (z42 == 3) {
                                                                        i21 = 3;
                                                                    }
                                                                } else {
                                                                    i21 = 2;
                                                                }
                                                            } else {
                                                                i21 = 1;
                                                            }
                                                        } else {
                                                            i21 = 0;
                                                        }
                                                        h265VpsData2 = h265VpsData;
                                                        i38 = i21;
                                                        i45 = i72;
                                                        i46 = i73;
                                                        i47 = i74;
                                                        i19 = 8;
                                                        i43 = i71;
                                                    }
                                                    i21 = i97;
                                                    h265VpsData2 = h265VpsData;
                                                    i38 = i21;
                                                    i45 = i72;
                                                    i46 = i73;
                                                    i47 = i74;
                                                    i19 = 8;
                                                    i43 = i71;
                                                } else if (m2 == 1634760259) {
                                                    int i104 = m - 12;
                                                    byte[] bArr7 = new byte[i104];
                                                    parsableByteArray.M(i48 + 12);
                                                    parsableByteArray.k(bArr7, 0, i104);
                                                    byte[] bArr8 = CodecSpecificDataUtil.a;
                                                    if (i104 >= 17) {
                                                        z3 = true;
                                                    } else {
                                                        z3 = false;
                                                    }
                                                    Preconditions.c(i104, "Invalid APV CSD length: %s", z3);
                                                    byte b4 = bArr7[0];
                                                    if (b4 == 1) {
                                                        z4 = true;
                                                    } else {
                                                        z4 = false;
                                                    }
                                                    Preconditions.c(b4, "Invalid APV CSD version: %s", z4);
                                                    int i105 = bArr7[5] & 255;
                                                    int i106 = bArr7[6] & 255;
                                                    int i107 = bArr7[7] & 255;
                                                    String str18 = Util.a;
                                                    Locale locale2 = Locale.US;
                                                    StringBuilder k2 = jb.k("apv1.apvf", i105, ".apvl", i106, ".apvb");
                                                    k2.append(i107);
                                                    str11 = k2.toString();
                                                    ImmutableList t2 = ImmutableList.t(bArr7);
                                                    ParsableByteArray parsableByteArray2 = new ParsableByteArray(bArr7);
                                                    ColorInfo.Builder builder = new ColorInfo.Builder();
                                                    ParsableBitArray parsableBitArray = new ParsableBitArray(i104, bArr7);
                                                    int i108 = parsableByteArray2.b;
                                                    i19 = 8;
                                                    parsableBitArray.m(i108 * 8);
                                                    int i109 = 1;
                                                    parsableBitArray.p(1);
                                                    int g2 = parsableBitArray.g(8);
                                                    int i110 = 0;
                                                    while (i110 < g2) {
                                                        parsableBitArray.p(i109);
                                                        int g3 = parsableBitArray.g(8);
                                                        for (int i111 = 0; i111 < g3; i111++) {
                                                            parsableBitArray.o(6);
                                                            boolean f3 = parsableBitArray.f();
                                                            parsableBitArray.n();
                                                            parsableBitArray.p(11);
                                                            parsableBitArray.o(4);
                                                            int g4 = parsableBitArray.g(4) + 8;
                                                            builder.e = g4;
                                                            builder.f = g4;
                                                            parsableBitArray.p(1);
                                                            if (f3) {
                                                                int g5 = parsableBitArray.g(8);
                                                                int g6 = parsableBitArray.g(8);
                                                                parsableBitArray.p(1);
                                                                boolean f4 = parsableBitArray.f();
                                                                builder.a = ColorInfo.f(g5);
                                                                if (f4) {
                                                                    i20 = 1;
                                                                } else {
                                                                    i20 = 2;
                                                                }
                                                                builder.b = i20;
                                                                builder.c = ColorInfo.g(g6);
                                                            }
                                                        }
                                                        i110++;
                                                        i109 = 1;
                                                    }
                                                    ColorInfo a5 = builder.a();
                                                    int i112 = a5.e;
                                                    int i113 = a5.f;
                                                    int i114 = a5.a;
                                                    int i115 = a5.b;
                                                    i45 = a5.c;
                                                    i46 = i112;
                                                    i47 = i113;
                                                    i43 = i114;
                                                    list = t2;
                                                    i14 = i115;
                                                    str7 = "video/apv";
                                                    h265VpsData2 = h265VpsData;
                                                } else {
                                                    i19 = 8;
                                                    if (m2 == 1668246642) {
                                                        i18 = i72;
                                                        if (i71 == -1 && i18 == -1) {
                                                            int m6 = parsableByteArray.m();
                                                            if (m6 != 1852009592 && m6 != 1852009571) {
                                                                Log.f("BoxParsers", "Unsupported color type: ".concat(Mp4Box.a(m6)));
                                                            } else {
                                                                int G5 = parsableByteArray.G();
                                                                int G6 = parsableByteArray.G();
                                                                int i116 = 2;
                                                                parsableByteArray.N(2);
                                                                if (m == 19 && (parsableByteArray.z() & 128) != 0) {
                                                                    z2 = true;
                                                                } else {
                                                                    z2 = false;
                                                                }
                                                                i43 = ColorInfo.f(G5);
                                                                if (z2) {
                                                                    i116 = 1;
                                                                }
                                                                i45 = ColorInfo.g(G6);
                                                                i14 = i116;
                                                                h265VpsData2 = h265VpsData;
                                                                i46 = i73;
                                                                i47 = i74;
                                                            }
                                                        }
                                                    } else {
                                                        i18 = i72;
                                                    }
                                                }
                                                i38 = i97;
                                            }
                                        }
                                        i43 = i71;
                                        h265VpsData2 = h265VpsData;
                                        i45 = i72;
                                        i46 = i73;
                                        i47 = i74;
                                        i19 = 8;
                                        i38 = i97;
                                    }
                                    i43 = i71;
                                    i45 = i18;
                                    h265VpsData2 = h265VpsData;
                                    i46 = i73;
                                    i47 = i74;
                                    i38 = i97;
                                }
                                i43 = i71;
                                str7 = str2;
                                i17 = i36;
                                i45 = i72;
                                i46 = i73;
                                i47 = i74;
                                i19 = 8;
                            }
                        }
                        i35 = i13 + m;
                        i33 = i2;
                        i34 = i3;
                        i37 = i19;
                        drmInitData4 = drmInitData3;
                        str10 = str6;
                        i44 = i14;
                        str2 = str7;
                        G2 = i16;
                        G = i15;
                        i36 = i17;
                    }
                }
                i35 = i13 + m;
                i33 = i2;
                i34 = i3;
                i37 = i19;
                drmInitData4 = drmInitData3;
                str10 = str6;
                i44 = i14;
                str2 = str7;
                G2 = i16;
                G = i15;
                i36 = i17;
            } else {
                i5 = G;
                i6 = G2;
                str3 = str2;
                i7 = i38;
                i8 = i43;
                i9 = i44;
                i10 = i45;
                i11 = i46;
                i12 = i47;
                drmInitData2 = drmInitData4;
                dolbyVisionConfig = dolbyVisionConfig2;
                break;
            }
        }
        if (dolbyVisionConfig != null) {
            str4 = dolbyVisionConfig.a;
            str5 = "video/dolby-vision";
        } else {
            str4 = str11;
            str5 = str3;
        }
        if (str5 == null) {
            return;
        }
        Format.Builder builder2 = new Format.Builder();
        builder2.a = Integer.toString(tkhdData.a);
        builder2.o = MimeTypes.l(str5);
        builder2.k = str4;
        builder2.v = i5;
        builder2.w = i6;
        builder2.y = i41;
        builder2.z = i42;
        builder2.D = f;
        builder2.B = tkhdData.c;
        builder2.C = tkhdData.d;
        builder2.E = bArr2;
        builder2.F = i7;
        builder2.r = list;
        builder2.q = i39;
        builder2.H = i40;
        builder2.s = drmInitData2;
        builder2.d = str;
        ColorInfo.Builder builder3 = new ColorInfo.Builder();
        builder3.a = i8;
        builder3.b = i9;
        builder3.c = i10;
        if (byteBuffer3 != null) {
            bArr = byteBuffer3.array();
        } else {
            bArr = null;
        }
        builder3.d = bArr;
        builder3.e = i11;
        builder3.f = i12;
        builder2.G = builder3.a();
        BtrtData btrtData2 = btrtData;
        if (btrtData2 != null) {
            builder2.i = Ints.d(btrtData2.a);
            builder2.j = Ints.d(btrtData2.b);
        } else {
            EsdsData esdsData2 = esdsData;
            if (esdsData2 != null) {
                builder2.i = Ints.d(esdsData2.c);
                builder2.j = Ints.d(esdsData2.d);
            }
        }
        stsdData.b = new Format(builder2);
    }
}
