package okio;

import defpackage.fe;
import defpackage.jb;
import defpackage.q;
import defpackage.u2;
import java.io.Closeable;
import java.io.EOFException;
import java.nio.ByteBuffer;
import java.nio.channels.ByteChannel;
import java.nio.charset.Charset;
import kotlin.collections.ArraysKt;
import kotlin.text.Charsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable, ByteChannel {
    public Segment j;
    public long k;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class UnsafeCursor implements Closeable {
        public Buffer j;
        public byte[] k;
        public int l;

        @Override // java.io.Closeable, java.lang.AutoCloseable
        public final void close() {
            if (this.j != null) {
                this.j = null;
                this.k = null;
                this.l = -1;
                return;
            }
            u2.l("not attached to a buffer");
        }
    }

    public final byte[] A(long j) {
        if (j >= 0 && j <= 2147483647L) {
            if (this.k >= j) {
                int i = (int) j;
                byte[] bArr = new byte[i];
                int i2 = 0;
                while (i2 < i) {
                    int read = read(bArr, i2, i - i2);
                    if (read != -1) {
                        i2 += read;
                    } else {
                        throw new EOFException();
                    }
                }
                return bArr;
            }
            throw new EOFException();
        }
        fe.l(q.h(j, "byteCount: "));
        return null;
    }

    @Override // okio.BufferedSource
    public final String A0() {
        return U(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink C(long j) {
        x0(j);
        return this;
    }

    public final void C0(int i) {
        Segment S = S(2);
        byte[] bArr = S.a;
        int i2 = S.c;
        bArr[i2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 1] = (byte) (i & 255);
        S.c = i2 + 2;
        this.k += 2;
    }

    @Override // okio.BufferedSource
    public final int D0() {
        return SegmentedByteString.c(readInt());
    }

    public final short E() {
        short readShort = readShort();
        return (short) (((readShort & 255) << 8) | ((65280 & readShort) >>> 8));
    }

    public final void E0(String str) {
        str.getClass();
        K0(str, 0, str.length());
    }

    @Override // okio.BufferedSink
    public final BufferedSink I(int i) {
        v0(SegmentedByteString.c(i));
        return this;
    }

    @Override // okio.BufferedSource
    public final boolean J() {
        if (this.k == 0) {
            return true;
        }
        return false;
    }

    @Override // okio.Source
    public final long J0(long j, Buffer buffer) {
        buffer.getClass();
        if (j >= 0) {
            long j2 = this.k;
            if (j2 == 0) {
                return -1L;
            }
            if (j > j2) {
                j = j2;
            }
            buffer.l0(j, this);
            return j;
        }
        fe.l(q.h(j, "byteCount < 0: "));
        return 0L;
    }

    public final void K0(String str, int i, int i2) {
        char charAt;
        char c;
        str.getClass();
        if (i >= 0) {
            if (i2 >= i) {
                if (i2 <= str.length()) {
                    while (i < i2) {
                        char charAt2 = str.charAt(i);
                        if (charAt2 < 128) {
                            Segment S = S(1);
                            byte[] bArr = S.a;
                            int i3 = S.c - i;
                            int min = Math.min(i2, 8192 - i3);
                            int i4 = i + 1;
                            bArr[i + i3] = (byte) charAt2;
                            while (true) {
                                i = i4;
                                if (i >= min || (charAt = str.charAt(i)) >= 128) {
                                    break;
                                }
                                i4 = i + 1;
                                bArr[i + i3] = (byte) charAt;
                            }
                            int i5 = S.c;
                            int i6 = (i3 + i) - i5;
                            S.c = i5 + i6;
                            this.k += i6;
                        } else {
                            if (charAt2 < 2048) {
                                Segment S2 = S(2);
                                byte[] bArr2 = S2.a;
                                int i7 = S2.c;
                                bArr2[i7] = (byte) ((charAt2 >> 6) | 192);
                                bArr2[i7 + 1] = (byte) ((charAt2 & '?') | 128);
                                S2.c = i7 + 2;
                                this.k += 2;
                            } else if (55296 <= charAt2 && charAt2 < 56320) {
                                int i8 = i + 1;
                                if (i8 < i2) {
                                    c = str.charAt(i8);
                                } else {
                                    c = 0;
                                }
                                if (56320 <= c && c < 57344) {
                                    int i9 = (((charAt2 & 1023) << 10) | (c & 1023)) + 65536;
                                    Segment S3 = S(4);
                                    byte[] bArr3 = S3.a;
                                    int i10 = S3.c;
                                    bArr3[i10] = (byte) ((i9 >> 18) | 240);
                                    bArr3[i10 + 1] = (byte) (((i9 >> 12) & 63) | 128);
                                    bArr3[i10 + 2] = (byte) (((i9 >> 6) & 63) | 128);
                                    bArr3[i10 + 3] = (byte) ((i9 & 63) | 128);
                                    S3.c = i10 + 4;
                                    this.k += 4;
                                    i += 2;
                                } else {
                                    g0(63);
                                    i = i8;
                                }
                            } else if (56320 <= charAt2 && charAt2 < 57344) {
                                g0(63);
                            } else {
                                Segment S4 = S(3);
                                byte[] bArr4 = S4.a;
                                int i11 = S4.c;
                                bArr4[i11] = (byte) ((charAt2 >> '\f') | 224);
                                bArr4[i11 + 1] = (byte) ((63 & (charAt2 >> 6)) | 128);
                                bArr4[i11 + 2] = (byte) ((charAt2 & '?') | 128);
                                S4.c = i11 + 3;
                                this.k += 3;
                            }
                            i++;
                        }
                    }
                    return;
                }
                StringBuilder j = jb.j("endIndex > string.length: ", i2, " > ");
                j.append(str.length());
                throw new IllegalArgumentException(j.toString().toString());
            }
            fe.l(q.f(i2, i, "endIndex < beginIndex: ", " < "));
            return;
        }
        fe.l(q.g(i, "beginIndex < 0: "));
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink M0(ByteString byteString) {
        Z(byteString);
        return this;
    }

    public final String O(long j, Charset charset) {
        charset.getClass();
        if (j >= 0 && j <= 2147483647L) {
            if (this.k >= j) {
                if (j == 0) {
                    return "";
                }
                Segment segment = this.j;
                segment.getClass();
                int i = segment.b;
                if (i + j > segment.c) {
                    return new String(A(j), charset);
                }
                int i2 = (int) j;
                String str = new String(segment.a, i, i2, charset);
                int i3 = segment.b + i2;
                segment.b = i3;
                this.k -= j;
                if (i3 == segment.c) {
                    this.j = segment.a();
                    SegmentPool.a(segment);
                }
                return str;
            }
            throw new EOFException();
        }
        fe.l(q.h(j, "byteCount: "));
        return null;
    }

    @Override // okio.BufferedSource
    public final long O0() {
        long j;
        if (this.k >= 8) {
            Segment segment = this.j;
            segment.getClass();
            int i = segment.b;
            int i2 = segment.c;
            if (i2 - i < 8) {
                j = ((readInt() & 4294967295L) << 32) | (4294967295L & readInt());
            } else {
                byte[] bArr = segment.a;
                int i3 = i + 7;
                long j2 = ((bArr[i] & 255) << 56) | ((bArr[i + 1] & 255) << 48) | ((bArr[i + 2] & 255) << 40) | ((bArr[i + 3] & 255) << 32) | ((bArr[i + 4] & 255) << 24) | ((bArr[i + 5] & 255) << 16) | ((bArr[i + 6] & 255) << 8);
                int i4 = i + 8;
                long j3 = j2 | (bArr[i3] & 255);
                this.k -= 8;
                if (i4 == i2) {
                    this.j = segment.a();
                    SegmentPool.a(segment);
                } else {
                    segment.b = i4;
                }
                j = j3;
            }
            return SegmentedByteString.d(j);
        }
        throw new EOFException();
    }

    public final String P() {
        return O(this.k, Charsets.a);
    }

    public final void P0(int i) {
        if (i < 128) {
            g0(i);
            return;
        }
        if (i < 2048) {
            Segment S = S(2);
            byte[] bArr = S.a;
            int i2 = S.c;
            bArr[i2] = (byte) ((i >> 6) | 192);
            bArr[i2 + 1] = (byte) ((i & 63) | 128);
            S.c = i2 + 2;
            this.k += 2;
            return;
        }
        if (55296 <= i && i < 57344) {
            g0(63);
            return;
        }
        if (i < 65536) {
            Segment S2 = S(3);
            byte[] bArr2 = S2.a;
            int i3 = S2.c;
            bArr2[i3] = (byte) ((i >> 12) | 224);
            bArr2[i3 + 1] = (byte) (((i >> 6) & 63) | 128);
            bArr2[i3 + 2] = (byte) ((i & 63) | 128);
            S2.c = i3 + 3;
            this.k += 3;
            return;
        }
        if (i <= 1114111) {
            Segment S3 = S(4);
            byte[] bArr3 = S3.a;
            int i4 = S3.c;
            bArr3[i4] = (byte) ((i >> 18) | 240);
            bArr3[i4 + 1] = (byte) (((i >> 12) & 63) | 128);
            bArr3[i4 + 2] = (byte) (((i >> 6) & 63) | 128);
            bArr3[i4 + 3] = (byte) ((i & 63) | 128);
            S3.c = i4 + 4;
            this.k += 4;
            return;
        }
        u2.g("Unexpected code point: 0x".concat(SegmentedByteString.e(i)));
    }

    public final ByteString R(int i) {
        if (i == 0) {
            return ByteString.m;
        }
        SegmentedByteString.b(this.k, 0L, i);
        Segment segment = this.j;
        int i2 = 0;
        int i3 = 0;
        int i4 = 0;
        while (i3 < i) {
            segment.getClass();
            int i5 = segment.c;
            int i6 = segment.b;
            if (i5 != i6) {
                i3 += i5 - i6;
                i4++;
                segment = segment.f;
            } else {
                throw new AssertionError("s.limit == s.pos");
            }
        }
        byte[][] bArr = new byte[i4];
        int[] iArr = new int[i4 * 2];
        Segment segment2 = this.j;
        int i7 = 0;
        while (i2 < i) {
            segment2.getClass();
            bArr[i7] = segment2.a;
            i2 += segment2.c - segment2.b;
            iArr[i7] = Math.min(i2, i);
            iArr[i7 + i4] = segment2.b;
            segment2.d = true;
            i7++;
            segment2 = segment2.f;
        }
        return new C0013SegmentedByteString(bArr, iArr);
    }

    public final Segment S(int i) {
        if (i >= 1 && i <= 8192) {
            Segment segment = this.j;
            if (segment == null) {
                Segment b = SegmentPool.b();
                this.j = b;
                b.g = b;
                b.f = b;
                return b;
            }
            Segment segment2 = segment.g;
            segment2.getClass();
            if (segment2.c + i <= 8192 && segment2.e) {
                return segment2;
            }
            Segment b2 = SegmentPool.b();
            segment2.b(b2);
            return b2;
        }
        u2.g("unexpected capacity");
        return null;
    }

    @Override // okio.BufferedSource
    public final long S0(BufferedSink bufferedSink) {
        long j = this.k;
        if (j > 0) {
            bufferedSink.l0(j, this);
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v4, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.BufferedSource
    public final String U(long j) {
        if (j >= 0) {
            long j2 = Long.MAX_VALUE;
            if (j != Long.MAX_VALUE) {
                j2 = j + 1;
            }
            long j3 = j2;
            long q = q((byte) 10, 0L, j3);
            if (q != -1) {
                return okio.internal.Buffer.b(q, this);
            }
            if (j3 < this.k && n(j3 - 1) == 13 && n(j3) == 10) {
                return okio.internal.Buffer.b(j3, this);
            }
            ?? obj = new Object();
            h(obj, 0L, Math.min(32L, this.k));
            throw new EOFException("\\n not found: limit=" + Math.min(this.k, j) + " content=" + obj.s(obj.k).f() + (char) 8230);
        }
        fe.l(q.h(j, "limit < 0: "));
        return null;
    }

    @Override // okio.BufferedSource
    public final void W0(long j) {
        if (this.k >= j) {
        } else {
            throw new EOFException();
        }
    }

    public final void X(int i, byte[] bArr) {
        bArr.getClass();
        long j = i;
        SegmentedByteString.b(bArr.length, 0L, j);
        int i2 = 0;
        while (i2 < i) {
            Segment S = S(1);
            int min = Math.min(i - i2, 8192 - S.c);
            int i3 = i2 + min;
            ArraysKt.e(S.c, i2, i3, bArr, S.a);
            S.c += min;
            i2 = i3;
        }
        this.k += j;
    }

    /* JADX WARN: Removed duplicated region for block: B:32:0x0090  */
    /* JADX WARN: Removed duplicated region for block: B:34:0x009e  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00a2 A[EDGE_INSN: B:40:0x00a2->B:37:0x00a2 BREAK  A[LOOP:0: B:4:0x000c->B:39:?], SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:41:0x009a  */
    /* JADX WARN: Type inference failed for: r15v3, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long Y0() {
        int i;
        if (this.k != 0) {
            int i2 = 0;
            boolean z = false;
            long j = 0;
            do {
                Segment segment = this.j;
                segment.getClass();
                byte[] bArr = segment.a;
                int i3 = segment.b;
                int i4 = segment.c;
                while (i3 < i4) {
                    byte b = bArr[i3];
                    if (b >= 48 && b <= 57) {
                        i = b - 48;
                    } else if (b >= 97 && b <= 102) {
                        i = b - 87;
                    } else if (b >= 65 && b <= 70) {
                        i = b - 55;
                    } else {
                        z = true;
                        if (i2 == 0) {
                            char[] cArr = okio.internal.ByteString.a;
                            throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(new String(new char[]{cArr[(b >> 4) & 15], cArr[b & 15]})));
                        }
                        if (i3 != i4) {
                            this.j = segment.a();
                            SegmentPool.a(segment);
                        } else {
                            segment.b = i3;
                        }
                        if (!z) {
                            break;
                        }
                    }
                    if (((-1152921504606846976L) & j) == 0) {
                        j = (j << 4) | i;
                        i3++;
                        i2++;
                    } else {
                        ?? obj = new Object();
                        obj.o0(j);
                        obj.g0(b);
                        throw new NumberFormatException("Number too large: ".concat(obj.P()));
                    }
                }
                if (i3 != i4) {
                }
                if (!z) {
                }
            } while (this.j != null);
            this.k -= i2;
            return j;
        }
        throw new EOFException();
    }

    public final void Z(ByteString byteString) {
        byteString.getClass();
        byteString.t(this, byteString.e());
    }

    public final long a() {
        long j = this.k;
        if (j == 0) {
            return 0L;
        }
        Segment segment = this.j;
        segment.getClass();
        Segment segment2 = segment.g;
        segment2.getClass();
        if (segment2.c < 8192 && segment2.e) {
            return j - (r2 - segment2.b);
        }
        return j;
    }

    public final long a0(Source source) {
        source.getClass();
        long j = 0;
        while (true) {
            long J0 = source.J0(8192L, this);
            if (J0 != -1) {
                j += J0;
            } else {
                return j;
            }
        }
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [okio.Buffer, java.lang.Object] */
    public final Object clone() {
        ?? obj = new Object();
        if (this.k == 0) {
            return obj;
        }
        Segment segment = this.j;
        segment.getClass();
        Segment c = segment.c();
        obj.j = c;
        c.g = c;
        c.f = c;
        for (Segment segment2 = segment.f; segment2 != segment; segment2 = segment2.f) {
            Segment segment3 = c.g;
            segment3.getClass();
            segment2.getClass();
            segment3.b(segment2.c());
        }
        obj.k = this.k;
        return obj;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Buffer)) {
            return false;
        }
        long j = this.k;
        Buffer buffer = (Buffer) obj;
        if (j != buffer.k) {
            return false;
        }
        if (j == 0) {
            return true;
        }
        Segment segment = this.j;
        segment.getClass();
        Segment segment2 = buffer.j;
        segment2.getClass();
        int i = segment.b;
        int i2 = segment2.b;
        long j2 = 0;
        while (j2 < this.k) {
            long min = Math.min(segment.c - i, segment2.c - i2);
            long j3 = 0;
            while (j3 < min) {
                int i3 = i + 1;
                int i4 = i2 + 1;
                if (segment.a[i] != segment2.a[i2]) {
                    return false;
                }
                j3++;
                i = i3;
                i2 = i4;
            }
            if (i == segment.c) {
                segment = segment.f;
                segment.getClass();
                i = segment.b;
            }
            if (i2 == segment2.c) {
                segment2 = segment2.f;
                segment2.getClass();
                i2 = segment2.b;
            }
            j2 += min;
        }
        return true;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink f0(String str) {
        E0(str);
        return this;
    }

    public final void g0(int i) {
        Segment S = S(1);
        byte[] bArr = S.a;
        int i2 = S.c;
        S.c = i2 + 1;
        bArr[i2] = (byte) i;
        this.k++;
    }

    public final void h(Buffer buffer, long j, long j2) {
        buffer.getClass();
        long j3 = j;
        SegmentedByteString.b(this.k, j3, j2);
        if (j2 != 0) {
            buffer.k += j2;
            Segment segment = this.j;
            while (true) {
                segment.getClass();
                long j4 = segment.c - segment.b;
                if (j3 < j4) {
                    break;
                }
                j3 -= j4;
                segment = segment.f;
            }
            long j5 = j2;
            while (j5 > 0) {
                segment.getClass();
                Segment c = segment.c();
                int i = c.b + ((int) j3);
                c.b = i;
                c.c = Math.min(i + ((int) j5), c.c);
                Segment segment2 = buffer.j;
                if (segment2 == null) {
                    c.g = c;
                    c.f = c;
                    buffer.j = c;
                } else {
                    Segment segment3 = segment2.g;
                    segment3.getClass();
                    segment3.b(c);
                }
                j5 -= c.c - c.b;
                segment = segment.f;
                j3 = 0;
            }
        }
    }

    public final int hashCode() {
        Segment segment = this.j;
        if (segment == null) {
            return 0;
        }
        int i = 1;
        do {
            int i2 = segment.c;
            for (int i3 = segment.b; i3 < i2; i3++) {
                i = (i * 31) + segment.a[i3];
            }
            segment = segment.f;
            segment.getClass();
        } while (segment != this.j);
        return i;
    }

    @Override // okio.Source
    public final Timeout i() {
        return Timeout.d;
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return true;
    }

    @Override // okio.Sink
    public final void l0(long j, Buffer buffer) {
        Segment segment;
        Segment b;
        int i;
        buffer.getClass();
        if (buffer != this) {
            SegmentedByteString.b(buffer.k, 0L, j);
            while (j > 0) {
                Segment segment2 = buffer.j;
                segment2.getClass();
                int i2 = segment2.c;
                Segment segment3 = buffer.j;
                segment3.getClass();
                long j2 = i2 - segment3.b;
                int i3 = 0;
                if (j < j2) {
                    Segment segment4 = this.j;
                    if (segment4 != null) {
                        segment = segment4.g;
                    } else {
                        segment = null;
                    }
                    if (segment != null && segment.e) {
                        long j3 = segment.c + j;
                        if (segment.d) {
                            i = 0;
                        } else {
                            i = segment.b;
                        }
                        if (j3 - i <= 8192) {
                            Segment segment5 = buffer.j;
                            segment5.getClass();
                            segment5.d(segment, (int) j);
                            buffer.k -= j;
                            this.k += j;
                            return;
                        }
                    }
                    Segment segment6 = buffer.j;
                    segment6.getClass();
                    int i4 = (int) j;
                    if (i4 > 0 && i4 <= segment6.c - segment6.b) {
                        if (i4 >= 1024) {
                            b = segment6.c();
                        } else {
                            b = SegmentPool.b();
                            byte[] bArr = segment6.a;
                            byte[] bArr2 = b.a;
                            int i5 = segment6.b;
                            ArraysKt.e(0, i5, i5 + i4, bArr, bArr2);
                        }
                        b.c = b.b + i4;
                        segment6.b += i4;
                        Segment segment7 = segment6.g;
                        segment7.getClass();
                        segment7.b(b);
                        buffer.j = b;
                    } else {
                        u2.g("byteCount out of range");
                        return;
                    }
                }
                Segment segment8 = buffer.j;
                segment8.getClass();
                long j4 = segment8.c - segment8.b;
                buffer.j = segment8.a();
                Segment segment9 = this.j;
                if (segment9 == null) {
                    this.j = segment8;
                    segment8.g = segment8;
                    segment8.f = segment8;
                } else {
                    Segment segment10 = segment9.g;
                    segment10.getClass();
                    segment10.b(segment8);
                    Segment segment11 = segment8.g;
                    if (segment11 != segment8) {
                        segment11.getClass();
                        if (segment11.e) {
                            int i6 = segment8.c - segment8.b;
                            Segment segment12 = segment8.g;
                            segment12.getClass();
                            int i7 = 8192 - segment12.c;
                            Segment segment13 = segment8.g;
                            segment13.getClass();
                            if (!segment13.d) {
                                Segment segment14 = segment8.g;
                                segment14.getClass();
                                i3 = segment14.b;
                            }
                            if (i6 <= i7 + i3) {
                                Segment segment15 = segment8.g;
                                segment15.getClass();
                                segment8.d(segment15, i6);
                                segment8.a();
                                SegmentPool.a(segment8);
                            }
                        }
                    } else {
                        u2.l("cannot compact");
                        return;
                    }
                }
                buffer.k -= j4;
                this.k += j4;
                j -= j4;
            }
            return;
        }
        u2.g("source == this");
    }

    public final byte n(long j) {
        SegmentedByteString.b(this.k, j, 1L);
        Segment segment = this.j;
        segment.getClass();
        long j2 = this.k;
        if (j2 - j < j) {
            while (j2 > j) {
                segment = segment.g;
                segment.getClass();
                j2 -= segment.c - segment.b;
            }
            return segment.a[(int) ((segment.b + j) - j2)];
        }
        long j3 = 0;
        while (true) {
            int i = segment.c;
            int i2 = segment.b;
            long j4 = (i - i2) + j3;
            if (j4 <= j) {
                segment = segment.f;
                segment.getClass();
                j3 = j4;
            } else {
                return segment.a[(int) ((i2 + j) - j3)];
            }
        }
    }

    public final void o0(long j) {
        if (j == 0) {
            g0(48);
            return;
        }
        long j2 = (j >>> 1) | j;
        long j3 = j2 | (j2 >>> 2);
        long j4 = j3 | (j3 >>> 4);
        long j5 = j4 | (j4 >>> 8);
        long j6 = j5 | (j5 >>> 16);
        long j7 = j6 | (j6 >>> 32);
        long j8 = j7 - ((j7 >>> 1) & 6148914691236517205L);
        long j9 = ((j8 >>> 2) & 3689348814741910323L) + (j8 & 3689348814741910323L);
        long j10 = ((j9 >>> 4) + j9) & 1085102592571150095L;
        long j11 = j10 + (j10 >>> 8);
        long j12 = j11 + (j11 >>> 16);
        int i = (int) ((((j12 & 63) + ((j12 >>> 32) & 63)) + 3) / 4);
        Segment S = S(i);
        byte[] bArr = S.a;
        int i2 = S.c;
        for (int i3 = (i2 + i) - 1; i3 >= i2; i3--) {
            bArr[i3] = okio.internal.Buffer.a[(int) (15 & j)];
            j >>>= 4;
        }
        S.c += i;
        this.k += i;
    }

    @Override // okio.BufferedSource
    public final String p(long j) {
        return O(j, Charsets.a);
    }

    public final long q(byte b, long j, long j2) {
        Segment segment;
        long j3 = 0;
        if (0 <= j && j <= j2) {
            long j4 = this.k;
            if (j2 > j4) {
                j2 = j4;
            }
            if (j != j2 && (segment = this.j) != null) {
                if (j4 - j < j) {
                    while (j4 > j) {
                        segment = segment.g;
                        segment.getClass();
                        j4 -= segment.c - segment.b;
                    }
                    while (j4 < j2) {
                        byte[] bArr = segment.a;
                        int min = (int) Math.min(segment.c, (segment.b + j2) - j4);
                        for (int i = (int) ((segment.b + j) - j4); i < min; i++) {
                            if (bArr[i] == b) {
                                return (i - segment.b) + j4;
                            }
                        }
                        j4 += segment.c - segment.b;
                        segment = segment.f;
                        segment.getClass();
                        j = j4;
                    }
                    return -1L;
                }
                while (true) {
                    long j5 = (segment.c - segment.b) + j3;
                    if (j5 > j) {
                        break;
                    }
                    segment = segment.f;
                    segment.getClass();
                    j3 = j5;
                }
                while (j3 < j2) {
                    byte[] bArr2 = segment.a;
                    int min2 = (int) Math.min(segment.c, (segment.b + j2) - j3);
                    for (int i2 = (int) ((segment.b + j) - j3); i2 < min2; i2++) {
                        if (bArr2[i2] == b) {
                            return (i2 - segment.b) + j3;
                        }
                    }
                    j3 += segment.c - segment.b;
                    segment = segment.f;
                    segment.getClass();
                    j = j3;
                }
                return -1L;
            }
            return -1L;
        }
        throw new IllegalArgumentException(("size=" + this.k + " fromIndex=" + j + " toIndex=" + j2).toString());
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink q0(long j) {
        o0(j);
        return this;
    }

    public final int read(byte[] bArr, int i, int i2) {
        SegmentedByteString.b(bArr.length, i, i2);
        Segment segment = this.j;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(i2, segment.c - segment.b);
        byte[] bArr2 = segment.a;
        int i3 = segment.b;
        ArraysKt.e(i, i3, i3 + min, bArr2, bArr);
        int i4 = segment.b + min;
        segment.b = i4;
        this.k -= min;
        if (i4 == segment.c) {
            this.j = segment.a();
            SegmentPool.a(segment);
        }
        return min;
    }

    @Override // okio.BufferedSource
    public final byte readByte() {
        if (this.k != 0) {
            Segment segment = this.j;
            segment.getClass();
            int i = segment.b;
            int i2 = segment.c;
            int i3 = i + 1;
            byte b = segment.a[i];
            this.k--;
            if (i3 == i2) {
                this.j = segment.a();
                SegmentPool.a(segment);
                return b;
            }
            segment.b = i3;
            return b;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public final int readInt() {
        if (this.k >= 4) {
            Segment segment = this.j;
            segment.getClass();
            int i = segment.b;
            int i2 = segment.c;
            if (i2 - i < 4) {
                return (readByte() & 255) | ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8);
            }
            byte[] bArr = segment.a;
            int i3 = i + 3;
            int i4 = ((bArr[i + 1] & 255) << 16) | ((bArr[i] & 255) << 24) | ((bArr[i + 2] & 255) << 8);
            int i5 = i + 4;
            int i6 = (bArr[i3] & 255) | i4;
            this.k -= 4;
            if (i5 == i2) {
                this.j = segment.a();
                SegmentPool.a(segment);
                return i6;
            }
            segment.b = i5;
            return i6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public final short readShort() {
        if (this.k >= 2) {
            Segment segment = this.j;
            segment.getClass();
            int i = segment.b;
            int i2 = segment.c;
            if (i2 - i < 2) {
                return (short) ((readByte() & 255) | ((readByte() & 255) << 8));
            }
            byte[] bArr = segment.a;
            int i3 = i + 1;
            int i4 = (bArr[i] & 255) << 8;
            int i5 = i + 2;
            int i6 = (bArr[i3] & 255) | i4;
            this.k -= 2;
            if (i5 == i2) {
                this.j = segment.a();
                SegmentPool.a(segment);
            } else {
                segment.b = i5;
            }
            return (short) i6;
        }
        throw new EOFException();
    }

    @Override // okio.BufferedSource
    public final ByteString s(long j) {
        if (j >= 0 && j <= 2147483647L) {
            if (this.k >= j) {
                if (j >= 4096) {
                    ByteString R = R((int) j);
                    skip(j);
                    return R;
                }
                return new ByteString(A(j));
            }
            throw new EOFException();
        }
        fe.l(q.h(j, "byteCount: "));
        return null;
    }

    @Override // okio.BufferedSource
    public final void skip(long j) {
        while (j > 0) {
            Segment segment = this.j;
            if (segment != null) {
                int min = (int) Math.min(j, segment.c - segment.b);
                long j2 = min;
                this.k -= j2;
                j -= j2;
                int i = segment.b + min;
                segment.b = i;
                if (i == segment.c) {
                    this.j = segment.a();
                    SegmentPool.a(segment);
                }
            } else {
                throw new EOFException();
            }
        }
    }

    @Override // okio.BufferedSource
    public final boolean t0(long j) {
        if (this.k >= j) {
            return true;
        }
        return false;
    }

    public final String toString() {
        long j = this.k;
        if (j <= 2147483647L) {
            return R((int) j).toString();
        }
        throw new IllegalStateException(("size > Int.MAX_VALUE: " + this.k).toString());
    }

    public final long v(ByteString byteString) {
        int i;
        int i2;
        byteString.getClass();
        Segment segment = this.j;
        if (segment != null) {
            long j = this.k;
            long j2 = 0;
            if (j < 0) {
                while (j > 0) {
                    segment = segment.g;
                    segment.getClass();
                    j -= segment.c - segment.b;
                }
                if (byteString.e() == 2) {
                    byte j3 = byteString.j(0);
                    byte j4 = byteString.j(1);
                    while (j < this.k) {
                        byte[] bArr = segment.a;
                        i = (int) ((segment.b + j2) - j);
                        int i3 = segment.c;
                        while (i < i3) {
                            byte b = bArr[i];
                            if (b != j3 && b != j4) {
                                i++;
                            }
                            i2 = segment.b;
                        }
                        j2 = (segment.c - segment.b) + j;
                        segment = segment.f;
                        segment.getClass();
                        j = j2;
                    }
                    return -1L;
                }
                byte[] i4 = byteString.i();
                while (j < this.k) {
                    byte[] bArr2 = segment.a;
                    i = (int) ((segment.b + j2) - j);
                    int i5 = segment.c;
                    while (i < i5) {
                        byte b2 = bArr2[i];
                        for (byte b3 : i4) {
                            if (b2 == b3) {
                                i2 = segment.b;
                            }
                        }
                        i++;
                    }
                    j2 = (segment.c - segment.b) + j;
                    segment = segment.f;
                    segment.getClass();
                    j = j2;
                }
                return -1L;
            }
            j = 0;
            while (true) {
                long j5 = (segment.c - segment.b) + j;
                if (j5 > 0) {
                    break;
                }
                segment = segment.f;
                segment.getClass();
                j = j5;
            }
            if (byteString.e() == 2) {
                byte j6 = byteString.j(0);
                byte j7 = byteString.j(1);
                while (j < this.k) {
                    byte[] bArr3 = segment.a;
                    i = (int) ((segment.b + j2) - j);
                    int i6 = segment.c;
                    while (i < i6) {
                        byte b4 = bArr3[i];
                        if (b4 != j6 && b4 != j7) {
                            i++;
                        }
                        i2 = segment.b;
                    }
                    j2 = (segment.c - segment.b) + j;
                    segment = segment.f;
                    segment.getClass();
                    j = j2;
                }
                return -1L;
            }
            byte[] i7 = byteString.i();
            while (j < this.k) {
                byte[] bArr4 = segment.a;
                i = (int) ((segment.b + j2) - j);
                int i8 = segment.c;
                while (i < i8) {
                    byte b5 = bArr4[i];
                    for (byte b6 : i7) {
                        if (b5 == b6) {
                            i2 = segment.b;
                        }
                    }
                    i++;
                }
                j2 = (segment.c - segment.b) + j;
                segment = segment.f;
                segment.getClass();
                j = j2;
            }
            return -1L;
            return (i - i2) + j;
        }
        return -1L;
    }

    public final void v0(int i) {
        Segment S = S(4);
        byte[] bArr = S.a;
        int i2 = S.c;
        bArr[i2] = (byte) ((i >>> 24) & 255);
        bArr[i2 + 1] = (byte) ((i >>> 16) & 255);
        bArr[i2 + 2] = (byte) ((i >>> 8) & 255);
        bArr[i2 + 3] = (byte) (i & 255);
        S.c = i2 + 4;
        this.k += 4;
    }

    public final boolean w(ByteString byteString) {
        long j;
        Segment segment;
        boolean z;
        long j2;
        long j3;
        long j4;
        byteString.getClass();
        int e = byteString.e();
        if (e >= 0) {
            long j5 = e;
            if (j5 <= this.k && e <= byteString.e()) {
                if (e != 0) {
                    byte[] bArr = okio.internal.Buffer.a;
                    SegmentedByteString.b(byteString.e(), 0L, j5);
                    if (e > 0) {
                        long j6 = this.k;
                        long j7 = 1;
                        if (1 > j6) {
                            j = j6;
                        } else {
                            j = 1;
                        }
                        if (0 == j || (segment = this.j) == null) {
                            j4 = -1;
                            z = false;
                        } else if (j6 < 0) {
                            while (j6 > 0) {
                                segment = segment.g;
                                segment.getClass();
                                j6 -= segment.c - segment.b;
                                j7 = j7;
                            }
                            long j8 = j7;
                            z = false;
                            byte[] i = byteString.i();
                            byte b = i[0];
                            long min = Math.min(j, (this.k - j5) + j8);
                            long j9 = 0;
                            loop1: while (j6 < min) {
                                byte[] bArr2 = segment.a;
                                j2 = j6;
                                int min2 = (int) Math.min(segment.c, (segment.b + min) - j6);
                                for (int i2 = (int) ((segment.b + j9) - j2); i2 < min2; i2++) {
                                    if (bArr2[i2] == b && okio.internal.Buffer.a(segment, i2 + 1, i, 1, e)) {
                                        j3 = i2 - segment.b;
                                        j4 = j3 + j2;
                                        break loop1;
                                    }
                                }
                                j9 = j2 + (segment.c - segment.b);
                                segment = segment.f;
                                segment.getClass();
                                j6 = j9;
                            }
                            j4 = -1;
                        } else {
                            z = false;
                            long j10 = 0;
                            while (true) {
                                long j11 = (segment.c - segment.b) + j10;
                                if (j11 > 0) {
                                    break;
                                }
                                segment = segment.f;
                                segment.getClass();
                                j10 = j11;
                            }
                            byte[] i3 = byteString.i();
                            byte b2 = i3[0];
                            long min3 = Math.min(j, (this.k - j5) + 1);
                            long j12 = 0;
                            loop4: while (j10 < min3) {
                                byte[] bArr3 = segment.a;
                                j2 = j10;
                                int min4 = (int) Math.min(segment.c, (segment.b + min3) - j10);
                                for (int i4 = (int) ((segment.b + j12) - j2); i4 < min4; i4++) {
                                    if (bArr3[i4] == b2 && okio.internal.Buffer.a(segment, i4 + 1, i3, 1, e)) {
                                        j3 = i4 - segment.b;
                                        j4 = j3 + j2;
                                        break loop1;
                                    }
                                }
                                j12 = j2 + (segment.c - segment.b);
                                segment = segment.f;
                                segment.getClass();
                                j10 = j12;
                            }
                            j4 = -1;
                        }
                        if (j4 == -1) {
                            return z;
                        }
                    } else {
                        u2.g("byteCount == 0");
                        return false;
                    }
                }
                return true;
            }
        }
        return false;
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        int remaining = byteBuffer.remaining();
        int i = remaining;
        while (i > 0) {
            Segment S = S(1);
            int min = Math.min(i, 8192 - S.c);
            byteBuffer.get(S.a, S.c, min);
            i -= min;
            S.c += min;
        }
        this.k += remaining;
        return remaining;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeByte(int i) {
        g0(i);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeInt(int i) {
        v0(i);
        return this;
    }

    @Override // okio.BufferedSink
    public final /* bridge */ /* synthetic */ BufferedSink writeShort(int i) {
        C0(i);
        return this;
    }

    public final void x0(long j) {
        long d = SegmentedByteString.d(j);
        Segment S = S(8);
        byte[] bArr = S.a;
        int i = S.c;
        bArr[i] = (byte) ((d >>> 56) & 255);
        bArr[i + 1] = (byte) ((d >>> 48) & 255);
        bArr[i + 2] = (byte) ((d >>> 40) & 255);
        bArr[i + 3] = (byte) ((d >>> 32) & 255);
        bArr[i + 4] = (byte) ((d >>> 24) & 255);
        bArr[i + 5] = (byte) ((d >>> 16) & 255);
        bArr[i + 6] = (byte) ((d >>> 8) & 255);
        bArr[i + 7] = (byte) (d & 255);
        S.c = i + 8;
        this.k += 8;
    }

    @Override // okio.BufferedSource
    public final Buffer H() {
        return this;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel, okio.Sink
    public final void close() {
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] bArr) {
        X(bArr.length, bArr);
        return this;
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        Segment segment = this.j;
        if (segment == null) {
            return -1;
        }
        int min = Math.min(byteBuffer.remaining(), segment.c - segment.b);
        byteBuffer.put(segment.a, segment.b, min);
        int i = segment.b + min;
        segment.b = i;
        this.k -= min;
        if (i == segment.c) {
            this.j = segment.a();
            SegmentPool.a(segment);
        }
        return min;
    }
}
