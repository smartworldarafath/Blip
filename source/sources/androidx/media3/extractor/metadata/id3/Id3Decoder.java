package androidx.media3.extractor.metadata.id3;

import androidx.media3.common.Metadata;
import androidx.media3.common.MimeTypes;
import androidx.media3.common.util.Log;
import androidx.media3.common.util.ParsableBitArray;
import androidx.media3.common.util.ParsableByteArray;
import androidx.media3.common.util.Util;
import androidx.media3.extractor.metadata.MetadataInputBuffer;
import androidx.media3.extractor.metadata.SimpleMetadataDecoder;
import com.google.common.base.Ascii;
import com.google.common.collect.ImmutableList;
import defpackage.k8;
import defpackage.q;
import java.nio.ByteBuffer;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Locale;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Id3Decoder extends SimpleMetadataDecoder {
    public static final k8 b = new k8(9);
    public static final k8 c = new k8(10);
    public final FramePredicate a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public interface FramePredicate {
        boolean b(int i, int i2, int i3, int i4, int i5);
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Id3Header {
        public final int a;
        public final boolean b;
        public final int c;

        public Id3Header(int i, int i2, boolean z) {
            this.a = i;
            this.b = z;
            this.c = i2;
        }
    }

    public Id3Decoder(FramePredicate framePredicate) {
        this.a = framePredicate;
    }

    public static ApicFrame d(ParsableByteArray parsableByteArray, int i, int i2) {
        int v;
        String str;
        byte[] copyOfRange;
        int z = parsableByteArray.z();
        Charset s = s(z);
        int i3 = i - 1;
        byte[] bArr = new byte[i3];
        parsableByteArray.k(bArr, 0, i3);
        if (i2 == 2) {
            str = "image/" + Ascii.c(new String(bArr, 0, 3, StandardCharsets.ISO_8859_1));
            if ("image/jpg".equals(str)) {
                str = "image/jpeg";
            }
            v = 2;
        } else {
            v = v(0, bArr);
            String c2 = Ascii.c(new String(bArr, 0, v, StandardCharsets.ISO_8859_1));
            if (c2.indexOf(47) == -1) {
                str = "image/".concat(c2);
            } else {
                str = c2;
            }
        }
        int i4 = bArr[v + 1] & 255;
        int i5 = v + 2;
        int u = u(bArr, i5, z);
        String str2 = new String(bArr, i5, u - i5, s);
        int r = r(z) + u;
        if (i3 <= r) {
            copyOfRange = Util.b;
        } else {
            copyOfRange = Arrays.copyOfRange(bArr, r, i3);
        }
        return new ApicFrame(str, str2, i4, copyOfRange);
    }

    public static ChapterFrame e(ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, FramePredicate framePredicate) {
        long j;
        int i4 = parsableByteArray.b;
        int v = v(i4, parsableByteArray.a);
        String str = new String(parsableByteArray.a, i4, v - i4, StandardCharsets.ISO_8859_1);
        parsableByteArray.M(v + 1);
        int m = parsableByteArray.m();
        int m2 = parsableByteArray.m();
        if (m > m2) {
            return null;
        }
        long B = parsableByteArray.B();
        if (B == 4294967295L) {
            B = -1;
        }
        long B2 = parsableByteArray.B();
        if (B2 == 4294967295L) {
            j = -1;
        } else {
            j = B2;
        }
        ArrayList arrayList = new ArrayList();
        int i5 = i4 + i;
        while (parsableByteArray.b < i5) {
            Id3Frame h = h(i2, parsableByteArray, z, i3, framePredicate);
            if (h != null) {
                arrayList.add(h);
            }
        }
        return new ChapterFrame(str, m, m2, B, j, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static ChapterTocFrame f(ParsableByteArray parsableByteArray, int i, int i2, boolean z, int i3, FramePredicate framePredicate) {
        boolean z2;
        boolean z3;
        int i4 = parsableByteArray.b;
        int v = v(i4, parsableByteArray.a);
        String str = new String(parsableByteArray.a, i4, v - i4, StandardCharsets.ISO_8859_1);
        parsableByteArray.M(v + 1);
        int z4 = parsableByteArray.z();
        if ((z4 & 2) != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if ((z4 & 1) != 0) {
            z3 = true;
        } else {
            z3 = false;
        }
        int z5 = parsableByteArray.z();
        String[] strArr = new String[z5];
        for (int i5 = 0; i5 < z5; i5++) {
            int i6 = parsableByteArray.b;
            int v2 = v(i6, parsableByteArray.a);
            strArr[i5] = new String(parsableByteArray.a, i6, v2 - i6, StandardCharsets.ISO_8859_1);
            parsableByteArray.M(v2 + 1);
        }
        ArrayList arrayList = new ArrayList();
        int i7 = i4 + i;
        while (parsableByteArray.b < i7) {
            Id3Frame h = h(i2, parsableByteArray, z, i3, framePredicate);
            if (h != null) {
                arrayList.add(h);
            }
        }
        return new ChapterTocFrame(str, z2, z3, strArr, (Id3Frame[]) arrayList.toArray(new Id3Frame[0]));
    }

    public static CommentFrame g(int i, ParsableByteArray parsableByteArray) {
        if (i < 4) {
            return null;
        }
        int z = parsableByteArray.z();
        Charset s = s(z);
        byte[] bArr = new byte[3];
        parsableByteArray.k(bArr, 0, 3);
        String str = new String(bArr, 0, 3);
        int i2 = i - 4;
        byte[] bArr2 = new byte[i2];
        parsableByteArray.k(bArr2, 0, i2);
        int u = u(bArr2, 0, z);
        String str2 = new String(bArr2, 0, u, s);
        int r = r(z) + u;
        return new CommentFrame(str, str2, l(bArr2, r, u(bArr2, r, z), s));
    }

    /* JADX WARN: Code restructure failed: missing block: B:156:0x01b2, code lost:
    
        if (r5 == 67) goto L142;
     */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Removed duplicated region for block: B:63:0x0251  */
    /* JADX WARN: Type inference failed for: r12v1 */
    /* JADX WARN: Type inference failed for: r12v2, types: [androidx.media3.extractor.metadata.id3.Id3Frame] */
    /* JADX WARN: Type inference failed for: r12v4 */
    /* JADX WARN: Type inference failed for: r1v1 */
    /* JADX WARN: Type inference failed for: r1v13 */
    /* JADX WARN: Type inference failed for: r1v14 */
    /* JADX WARN: Type inference failed for: r1v16 */
    /* JADX WARN: Type inference failed for: r1v17 */
    /* JADX WARN: Type inference failed for: r1v18 */
    /* JADX WARN: Type inference failed for: r1v19 */
    /* JADX WARN: Type inference failed for: r1v2, types: [int] */
    /* JADX WARN: Type inference failed for: r1v21 */
    /* JADX WARN: Type inference failed for: r1v26 */
    /* JADX WARN: Type inference failed for: r1v27 */
    /* JADX WARN: Type inference failed for: r1v28, types: [androidx.media3.common.util.ParsableByteArray] */
    /* JADX WARN: Type inference failed for: r1v29 */
    /* JADX WARN: Type inference failed for: r1v31 */
    /* JADX WARN: Type inference failed for: r1v35 */
    /* JADX WARN: Type inference failed for: r1v36 */
    /* JADX WARN: Type inference failed for: r1v37 */
    /* JADX WARN: Type inference failed for: r1v4 */
    /* JADX WARN: Type inference failed for: r1v5 */
    /* JADX WARN: Type inference failed for: r1v7 */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static Id3Frame h(int i, ParsableByteArray parsableByteArray, boolean z, int i2, FramePredicate framePredicate) {
        int i3;
        int C;
        int i4;
        int i5;
        ?? r1;
        boolean z2;
        boolean z3;
        boolean z4;
        boolean z5;
        boolean z6;
        boolean z7;
        boolean z8;
        int i6;
        int i7;
        int i8;
        ParsableByteArray parsableByteArray2;
        Throwable th;
        ParsableByteArray parsableByteArray3;
        ?? r12;
        ParsableByteArray parsableByteArray4;
        Id3Frame binaryFrame;
        boolean z9;
        boolean z10;
        int i9 = i;
        int z11 = parsableByteArray.z();
        int z12 = parsableByteArray.z();
        int z13 = parsableByteArray.z();
        if (i9 >= 3) {
            i3 = parsableByteArray.z();
        } else {
            i3 = 0;
        }
        if (i9 == 4) {
            C = parsableByteArray.D();
            if (!z) {
                C = (((C >> 24) & 255) << 21) | (C & 255) | (((C >> 8) & 255) << 7) | (((C >> 16) & 255) << 14);
            }
        } else if (i9 == 3) {
            C = parsableByteArray.D();
        } else {
            C = parsableByteArray.C();
        }
        int i10 = C;
        if (i9 >= 3) {
            i4 = parsableByteArray.G();
        } else {
            i4 = 0;
        }
        if (z11 == 0 && z12 == 0 && z13 == 0 && i3 == 0 && i10 == 0 && i4 == 0) {
            parsableByteArray.M(parsableByteArray.c);
            return null;
        }
        int i11 = parsableByteArray.b + i10;
        if (i11 > parsableByteArray.c) {
            Log.f("Id3Decoder", "Frame size exceeds remaining tag data");
            parsableByteArray.M(parsableByteArray.c);
            return null;
        }
        if (framePredicate != null) {
            boolean b2 = framePredicate.b(i9, z11, z12, z13, i3);
            i9 = i9;
            r1 = z11;
            i5 = z12;
            if (!b2) {
                parsableByteArray.M(i11);
                return null;
            }
        } else {
            i5 = z12;
            r1 = z11;
        }
        if (i9 == 3) {
            if ((i4 & 128) != 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            if ((i4 & 64) != 0) {
                z9 = true;
            } else {
                z9 = false;
            }
            if ((i4 & 32) != 0) {
                z10 = true;
            } else {
                z10 = false;
            }
            z5 = z9;
            z6 = false;
            z4 = z10;
            z3 = z2;
        } else if (i9 == 4) {
            if ((i4 & 64) != 0) {
                z7 = true;
            } else {
                z7 = false;
            }
            if ((i4 & 8) != 0) {
                z8 = true;
            } else {
                z8 = false;
            }
            if ((i4 & 4) != 0) {
                z5 = true;
            } else {
                z5 = false;
            }
            if ((i4 & 2) != 0) {
                z6 = true;
            } else {
                z6 = false;
            }
            if ((i4 & 1) != 0) {
                z3 = true;
            } else {
                z3 = false;
            }
            boolean z14 = z8;
            z4 = z7;
            z2 = z14;
        } else {
            z2 = false;
            z3 = false;
            z4 = false;
            z5 = false;
            z6 = false;
        }
        if (!z2 && !z5) {
            if (z4) {
                i10--;
                parsableByteArray.N(1);
            }
            if (z3) {
                i10 -= 4;
                parsableByteArray.N(4);
            }
            if (z6) {
                i10 = w(i10, parsableByteArray);
            }
            try {
                try {
                } catch (Throwable th2) {
                    th = th2;
                    parsableByteArray3 = parsableByteArray;
                }
            } catch (Exception e) {
                e = e;
                int i12 = i10;
                i10 = i5;
                i5 = i12;
                i6 = r1;
                i7 = z13;
                i8 = i3;
                parsableByteArray2 = parsableByteArray;
                th = null;
                parsableByteArray2.M(i11);
                r12 = th;
                if (r12 == 0) {
                }
                return r12;
            } catch (OutOfMemoryError e2) {
                e = e2;
                int i122 = i10;
                i10 = i5;
                i5 = i122;
                i6 = r1;
                i7 = z13;
                i8 = i3;
                parsableByteArray2 = parsableByteArray;
                th = null;
                parsableByteArray2.M(i11);
                r12 = th;
                if (r12 == 0) {
                }
                return r12;
            }
            if (r1 == 84 && i5 == 88 && z13 == 88 && (i9 == 2 || i3 == 88)) {
                binaryFrame = o(i10, parsableByteArray);
            } else if (r1 == 84) {
                binaryFrame = m(i10, parsableByteArray, t(i9, r1, i5, z13, i3));
            } else if (r1 == 87 && i5 == 88 && z13 == 88 && (i9 == 2 || i3 == 88)) {
                binaryFrame = q(i10, parsableByteArray);
            } else if (r1 == 87) {
                binaryFrame = p(i10, parsableByteArray, t(i9, r1, i5, z13, i3));
            } else if (r1 == 80 && i5 == 82 && z13 == 73 && i3 == 86) {
                binaryFrame = k(i10, parsableByteArray);
            } else {
                th = null;
                try {
                } catch (Exception e3) {
                    e = e3;
                    int i13 = i10;
                    i10 = i5;
                    i5 = i13;
                    i6 = r1;
                    i7 = z13;
                    i8 = i3;
                    parsableByteArray2 = parsableByteArray;
                    parsableByteArray2.M(i11);
                    r12 = th;
                    if (r12 == 0) {
                    }
                    return r12;
                } catch (OutOfMemoryError e4) {
                    e = e4;
                    int i132 = i10;
                    i10 = i5;
                    i5 = i132;
                    i6 = r1;
                    i7 = z13;
                    i8 = i3;
                    parsableByteArray2 = parsableByteArray;
                    parsableByteArray2.M(i11);
                    r12 = th;
                    if (r12 == 0) {
                    }
                    return r12;
                }
                if (r1 == 71 && i5 == 69 && z13 == 79 && (i3 == 66 || i9 == 2)) {
                    binaryFrame = i(i10, parsableByteArray);
                } else if (i9 == 2) {
                    if (r1 == 80 && i5 == 73 && z13 == 67) {
                        binaryFrame = d(parsableByteArray, i10, i9);
                    }
                    if (r1 != 67 && i5 == 79 && z13 == 77 && (i3 == 77 || i9 == 2)) {
                        binaryFrame = g(i10, parsableByteArray);
                    } else {
                        if (r1 != 67 && i5 == 72 && z13 == 65 && i3 == 80) {
                            int i14 = i10;
                            i10 = i5;
                            i5 = i14;
                            i6 = r1;
                            i7 = z13;
                            i8 = i3;
                            try {
                                binaryFrame = e(parsableByteArray, i5, i9, z, i2, framePredicate);
                                i9 = i;
                                r1 = parsableByteArray;
                            } catch (Exception e5) {
                                e = e5;
                                i9 = i;
                                parsableByteArray2 = parsableByteArray;
                                parsableByteArray2.M(i11);
                                r12 = th;
                                if (r12 == 0) {
                                }
                                return r12;
                            } catch (OutOfMemoryError e6) {
                                e = e6;
                                i9 = i;
                                parsableByteArray2 = parsableByteArray;
                                parsableByteArray2.M(i11);
                                r12 = th;
                                if (r12 == 0) {
                                }
                                return r12;
                            } catch (Throwable th3) {
                                th = th3;
                                parsableByteArray3 = parsableByteArray;
                                parsableByteArray3.M(i11);
                                throw th;
                            }
                        } else {
                            int i15 = i10;
                            i10 = i5;
                            i5 = i15;
                            i6 = r1;
                            i7 = z13;
                            i8 = i3;
                            try {
                                if (i6 != 67 && i10 == 84 && i7 == 79 && i8 == 67) {
                                    i9 = i;
                                    ParsableByteArray parsableByteArray5 = parsableByteArray;
                                    binaryFrame = f(parsableByteArray5, i5, i9, z, i2, framePredicate);
                                    r1 = parsableByteArray5;
                                } else {
                                    i9 = i;
                                    parsableByteArray4 = parsableByteArray;
                                    if (i6 != 77 && i10 == 76 && i7 == 76 && i8 == 84) {
                                        binaryFrame = j(i5, parsableByteArray4);
                                        r1 = parsableByteArray4;
                                    } else {
                                        String t = t(i9, i6, i10, i7, i8);
                                        byte[] bArr = new byte[i5];
                                        parsableByteArray4.k(bArr, 0, i5);
                                        binaryFrame = new BinaryFrame(t, bArr);
                                        r1 = parsableByteArray4;
                                    }
                                }
                            } catch (Exception e7) {
                                e = e7;
                                parsableByteArray2 = r1;
                                parsableByteArray2.M(i11);
                                r12 = th;
                                if (r12 == 0) {
                                }
                                return r12;
                            } catch (OutOfMemoryError e8) {
                                e = e8;
                                parsableByteArray2 = r1;
                                parsableByteArray2.M(i11);
                                r12 = th;
                                if (r12 == 0) {
                                }
                                return r12;
                            } catch (Throwable th4) {
                                th = th4;
                                parsableByteArray3 = r1;
                                parsableByteArray3.M(i11);
                                throw th;
                            }
                        }
                        r1.M(i11);
                        r12 = binaryFrame;
                        e = th;
                        if (r12 == 0) {
                            Log.g("Id3Decoder", "Failed to decode frame: id=" + t(i9, i6, i10, i7, i8) + ", frameSize=" + i5, e);
                        }
                        return r12;
                    }
                } else {
                    if (r1 == 65) {
                        if (i5 == 80) {
                            if (z13 == 73) {
                            }
                        }
                    }
                    if (r1 != 67) {
                    }
                    if (r1 != 67) {
                    }
                    int i152 = i10;
                    i10 = i5;
                    i5 = i152;
                    i6 = r1;
                    i7 = z13;
                    i8 = i3;
                    if (i6 != 67) {
                    }
                    i9 = i;
                    parsableByteArray4 = parsableByteArray;
                    if (i6 != 77) {
                    }
                    String t2 = t(i9, i6, i10, i7, i8);
                    byte[] bArr2 = new byte[i5];
                    parsableByteArray4.k(bArr2, 0, i5);
                    binaryFrame = new BinaryFrame(t2, bArr2);
                    r1 = parsableByteArray4;
                    r1.M(i11);
                    r12 = binaryFrame;
                    e = th;
                    if (r12 == 0) {
                    }
                    return r12;
                }
                int i16 = i10;
                i10 = i5;
                i5 = i16;
                i6 = r1;
                i7 = z13;
                i8 = i3;
                r1 = parsableByteArray;
                r1.M(i11);
                r12 = binaryFrame;
                e = th;
                if (r12 == 0) {
                }
                return r12;
            }
            int i17 = i10;
            i10 = i5;
            i5 = i17;
            i6 = r1;
            i7 = z13;
            i8 = i3;
            r1 = parsableByteArray;
            th = null;
            r1.M(i11);
            r12 = binaryFrame;
            e = th;
            if (r12 == 0) {
            }
            return r12;
        }
        Log.f("Id3Decoder", "Skipping unsupported compressed or encrypted frame");
        parsableByteArray.M(i11);
        return null;
    }

    public static GeobFrame i(int i, ParsableByteArray parsableByteArray) {
        byte[] copyOfRange;
        int z = parsableByteArray.z();
        Charset s = s(z);
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.k(bArr, 0, i2);
        int v = v(0, bArr);
        String l = MimeTypes.l(new String(bArr, 0, v, StandardCharsets.ISO_8859_1));
        int i3 = v + 1;
        int u = u(bArr, i3, z);
        String l2 = l(bArr, i3, u, s);
        int r = r(z) + u;
        int u2 = u(bArr, r, z);
        String l3 = l(bArr, r, u2, s);
        int r2 = r(z) + u2;
        if (i2 <= r2) {
            copyOfRange = Util.b;
        } else {
            copyOfRange = Arrays.copyOfRange(bArr, r2, i2);
        }
        return new GeobFrame(l, l2, l3, copyOfRange);
    }

    public static MlltFrame j(int i, ParsableByteArray parsableByteArray) {
        int G = parsableByteArray.G();
        int C = parsableByteArray.C();
        int C2 = parsableByteArray.C();
        int z = parsableByteArray.z();
        int z2 = parsableByteArray.z();
        ParsableBitArray parsableBitArray = new ParsableBitArray();
        parsableBitArray.l(parsableByteArray);
        int i2 = ((i - 10) * 8) / (z + z2);
        int[] iArr = new int[i2];
        int[] iArr2 = new int[i2];
        for (int i3 = 0; i3 < i2; i3++) {
            int g = parsableBitArray.g(z);
            int g2 = parsableBitArray.g(z2);
            iArr[i3] = g;
            iArr2[i3] = g2;
        }
        return new MlltFrame(G, C, C2, iArr, iArr2);
    }

    public static PrivFrame k(int i, ParsableByteArray parsableByteArray) {
        byte[] copyOfRange;
        byte[] bArr = new byte[i];
        parsableByteArray.k(bArr, 0, i);
        int v = v(0, bArr);
        String str = new String(bArr, 0, v, StandardCharsets.ISO_8859_1);
        int i2 = v + 1;
        if (i <= i2) {
            copyOfRange = Util.b;
        } else {
            copyOfRange = Arrays.copyOfRange(bArr, i2, i);
        }
        return new PrivFrame(str, copyOfRange);
    }

    public static String l(byte[] bArr, int i, int i2, Charset charset) {
        if (i2 > i && i2 <= bArr.length) {
            return new String(bArr, i, i2 - i, charset);
        }
        return "";
    }

    public static TextInformationFrame m(int i, ParsableByteArray parsableByteArray, String str) {
        if (i < 1) {
            return null;
        }
        int z = parsableByteArray.z();
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.k(bArr, 0, i2);
        return new TextInformationFrame(str, null, n(bArr, z, 0));
    }

    public static ImmutableList n(byte[] bArr, int i, int i2) {
        if (i2 >= bArr.length) {
            return ImmutableList.t("");
        }
        ImmutableList.Builder k = ImmutableList.k();
        int u = u(bArr, i2, i);
        while (i2 < u) {
            k.d(new String(bArr, i2, u - i2, s(i)));
            i2 = r(i) + u;
            u = u(bArr, i2, i);
        }
        ImmutableList i3 = k.i();
        if (i3.isEmpty()) {
            return ImmutableList.t("");
        }
        return i3;
    }

    public static TextInformationFrame o(int i, ParsableByteArray parsableByteArray) {
        if (i < 1) {
            return null;
        }
        int z = parsableByteArray.z();
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.k(bArr, 0, i2);
        int u = u(bArr, 0, z);
        return new TextInformationFrame("TXXX", new String(bArr, 0, u, s(z)), n(bArr, z, r(z) + u));
    }

    public static UrlLinkFrame p(int i, ParsableByteArray parsableByteArray, String str) {
        byte[] bArr = new byte[i];
        parsableByteArray.k(bArr, 0, i);
        return new UrlLinkFrame(str, null, new String(bArr, 0, v(0, bArr), StandardCharsets.ISO_8859_1));
    }

    public static UrlLinkFrame q(int i, ParsableByteArray parsableByteArray) {
        if (i < 1) {
            return null;
        }
        int z = parsableByteArray.z();
        int i2 = i - 1;
        byte[] bArr = new byte[i2];
        parsableByteArray.k(bArr, 0, i2);
        int u = u(bArr, 0, z);
        String str = new String(bArr, 0, u, s(z));
        int r = r(z) + u;
        return new UrlLinkFrame("WXXX", str, l(bArr, r, v(r, bArr), StandardCharsets.ISO_8859_1));
    }

    public static int r(int i) {
        if (i != 0 && i != 3) {
            return 2;
        }
        return 1;
    }

    public static Charset s(int i) {
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    return StandardCharsets.ISO_8859_1;
                }
                return StandardCharsets.UTF_8;
            }
            return StandardCharsets.UTF_16BE;
        }
        return StandardCharsets.UTF_16;
    }

    public static String t(int i, int i2, int i3, int i4, int i5) {
        if (i == 2) {
            return String.format(Locale.US, "%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4));
        }
        return String.format(Locale.US, "%c%c%c%c", Integer.valueOf(i2), Integer.valueOf(i3), Integer.valueOf(i4), Integer.valueOf(i5));
    }

    public static int u(byte[] bArr, int i, int i2) {
        int v = v(i, bArr);
        if (i2 != 0 && i2 != 3) {
            while (v < bArr.length - 1) {
                if ((v - i) % 2 == 0 && bArr[v + 1] == 0) {
                    return v;
                }
                v = v(v + 1, bArr);
            }
            return bArr.length;
        }
        return v;
    }

    public static int v(int i, byte[] bArr) {
        while (i < bArr.length) {
            if (bArr[i] == 0) {
                return i;
            }
            i++;
        }
        return bArr.length;
    }

    public static int w(int i, ParsableByteArray parsableByteArray) {
        byte[] bArr = parsableByteArray.a;
        int i2 = parsableByteArray.b;
        int i3 = i2;
        while (true) {
            int i4 = i3 + 1;
            if (i4 < i2 + i) {
                if ((bArr[i3] & 255) == 255 && bArr[i4] == 0) {
                    System.arraycopy(bArr, i3 + 2, bArr, i4, (i - (i3 - i2)) - 2);
                    i--;
                }
                i3 = i4;
            } else {
                return i;
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:31:0x0077, code lost:
    
        if ((r10 & 1) != 0) goto L45;
     */
    /* JADX WARN: Code restructure failed: missing block: B:32:0x007a, code lost:
    
        r4 = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:54:0x0087, code lost:
    
        if ((r10 & 128) != 0) goto L45;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static boolean x(ParsableByteArray parsableByteArray, int i, int i2, boolean z) {
        int C;
        long C2;
        int i3;
        int i4;
        int i5 = parsableByteArray.b;
        while (true) {
            try {
                boolean z2 = true;
                if (parsableByteArray.a() >= i2) {
                    if (i >= 3) {
                        C = parsableByteArray.m();
                        C2 = parsableByteArray.B();
                        i3 = parsableByteArray.G();
                    } else {
                        C = parsableByteArray.C();
                        C2 = parsableByteArray.C();
                        i3 = 0;
                    }
                    if (C == 0 && C2 == 0 && i3 == 0) {
                        parsableByteArray.M(i5);
                        return true;
                    }
                    if (i == 4 && !z) {
                        if ((8421504 & C2) != 0) {
                            parsableByteArray.M(i5);
                            return false;
                        }
                        C2 = (((C2 >> 24) & 255) << 21) | (C2 & 255) | (((C2 >> 8) & 255) << 7) | (((C2 >> 16) & 255) << 14);
                    }
                    if (i == 4) {
                        if ((i3 & 64) != 0) {
                            i4 = 1;
                        } else {
                            i4 = 0;
                        }
                    } else {
                        if (i == 3) {
                            if ((i3 & 32) != 0) {
                                i4 = 1;
                            } else {
                                i4 = 0;
                            }
                        } else {
                            i4 = 0;
                            z2 = false;
                        }
                        if (z2) {
                            i4 += 4;
                        }
                        if (C2 < i4) {
                            parsableByteArray.M(i5);
                            return false;
                        }
                        if (parsableByteArray.a() < C2) {
                            parsableByteArray.M(i5);
                            return false;
                        }
                        parsableByteArray.N((int) C2);
                    }
                } else {
                    parsableByteArray.M(i5);
                    return true;
                }
            } catch (Throwable th) {
                parsableByteArray.M(i5);
                throw th;
            }
        }
    }

    @Override // androidx.media3.extractor.metadata.SimpleMetadataDecoder
    public final Metadata b(MetadataInputBuffer metadataInputBuffer, ByteBuffer byteBuffer) {
        return c(byteBuffer.limit(), byteBuffer.array());
    }

    /* JADX WARN: Removed duplicated region for block: B:6:0x009b A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:8:0x009c  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final Metadata c(int i, byte[] bArr) {
        boolean z;
        Id3Header id3Header;
        ArrayList arrayList = new ArrayList();
        ParsableByteArray parsableByteArray = new ParsableByteArray(i, bArr);
        boolean z2 = false;
        int i2 = 10;
        if (parsableByteArray.a() < 10) {
            Log.f("Id3Decoder", "Data too short to be an ID3 tag");
        } else {
            int C = parsableByteArray.C();
            if (C != 4801587) {
                Log.f("Id3Decoder", "Unexpected first three bytes of ID3 tag header: 0x".concat(String.format("%06X", Integer.valueOf(C))));
            } else {
                int z3 = parsableByteArray.z();
                parsableByteArray.N(1);
                int z4 = parsableByteArray.z();
                int y = parsableByteArray.y();
                if (z3 == 2) {
                    if ((z4 & 64) != 0) {
                        Log.f("Id3Decoder", "Skipped ID3 tag with majorVersion=2 and undefined compression scheme");
                    }
                    if (z3 >= 4 && (z4 & 128) != 0) {
                        z = true;
                    } else {
                        z = false;
                    }
                    id3Header = new Id3Header(z3, y, z);
                } else {
                    if (z3 == 3) {
                        if ((z4 & 64) != 0) {
                            int m = parsableByteArray.m();
                            parsableByteArray.N(m);
                            y -= m + 4;
                        }
                    } else if (z3 == 4) {
                        if ((z4 & 64) != 0) {
                            int y2 = parsableByteArray.y();
                            parsableByteArray.N(y2 - 4);
                            y -= y2;
                        }
                        if ((z4 & 16) != 0) {
                            y -= 10;
                        }
                    } else {
                        q.x("Skipped ID3 tag with unsupported majorVersion=", z3, "Id3Decoder");
                    }
                    if (z3 >= 4) {
                    }
                    z = false;
                    id3Header = new Id3Header(z3, y, z);
                }
                if (id3Header != null) {
                    return null;
                }
                int i3 = id3Header.a;
                int i4 = parsableByteArray.b;
                if (i3 == 2) {
                    i2 = 6;
                }
                int i5 = id3Header.c;
                if (id3Header.b) {
                    i5 = w(i5, parsableByteArray);
                }
                parsableByteArray.L(i4 + i5);
                if (!x(parsableByteArray, i3, i2, false)) {
                    if (i3 == 4 && x(parsableByteArray, 4, i2, true)) {
                        z2 = true;
                    } else {
                        q.x("Failed to validate ID3 tag with majorVersion=", i3, "Id3Decoder");
                        return null;
                    }
                }
                while (parsableByteArray.a() >= i2) {
                    Id3Frame h = h(i3, parsableByteArray, z2, i2, this.a);
                    if (h != null) {
                        arrayList.add(h);
                    }
                }
                return new Metadata(arrayList);
            }
        }
        id3Header = null;
        if (id3Header != null) {
        }
    }
}
