package androidx.media3.common.util;

import android.app.ActivityManager;
import android.os.Build;
import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.collect.ImmutableSet;
import com.google.common.primitives.Ints;
import com.google.common.primitives.UnsignedBytes;
import defpackage.fe;
import defpackage.jb;
import defpackage.k8;
import defpackage.q;
import defpackage.u2;
import java.nio.ByteOrder;
import java.nio.charset.Charset;
import java.nio.charset.StandardCharsets;
import java.util.Arrays;
import java.util.concurrent.atomic.AtomicReference;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class ParsableByteArray {
    public static final char[] d = {'\r', '\n'};
    public static final char[] e = {'\n'};
    public static final ImmutableSet f = ImmutableSet.l(5, StandardCharsets.US_ASCII, StandardCharsets.UTF_8, StandardCharsets.UTF_16, StandardCharsets.UTF_16BE, StandardCharsets.UTF_16LE);
    public static final AtomicReference g = new AtomicReference();
    public byte[] a;
    public int b;
    public int c;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class IsRunningInTestHolder {
        public static final boolean a;

        static {
            boolean z;
            ClassLoader classLoader;
            char[] cArr = ParsableByteArray.d;
            if (Ascii.a("robolectric", Build.FINGERPRINT) || (((classLoader = ParsableByteArray.class.getClassLoader()) != null && (classLoader.getResource("androidx/test/espresso/Espresso.class") != null || classLoader.getResource("org/junit/runner/Runner.class") != null || classLoader.getResource("androidx/test/platform/app/InstrumentationRegistry.class") != null)) || ActivityManager.isRunningInTestHarness())) {
                z = true;
            } else {
                z = false;
            }
            a = z;
        }
    }

    public ParsableByteArray(int i) {
        this.a = new byte[i];
        this.c = i;
    }

    public static int b(int i, int i2, int i3, int i4) {
        byte b = (byte) i3;
        return Ints.c((byte) 0, UnsignedBytes.a(((i & 7) << 2) | ((i2 & 48) >> 4)), UnsignedBytes.a(((((byte) i2) & 15) << 4) | ((b & 60) >> 2)), UnsignedBytes.a(((b & 3) << 6) | (((byte) i4) & 63)));
    }

    public static int d(Charset charset) {
        Preconditions.g(f.contains(charset), "Unsupported charset: %s", charset);
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(StandardCharsets.US_ASCII)) {
            return 2;
        }
        return 1;
    }

    public static boolean e(byte b) {
        if ((b & 192) == 128) {
            return true;
        }
        return false;
    }

    public final int A() {
        f(4);
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.b = i + 2;
        int i4 = (bArr[i2] & 255) | i3;
        this.b = i + 4;
        return i4;
    }

    public final long B() {
        f(4);
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        this.b = i + 2;
        this.b = i + 3;
        long j = ((bArr[i] & 255) << 24) | ((bArr[r3] & 255) << 16) | ((bArr[r8] & 255) << 8);
        this.b = i + 4;
        return (bArr[r5] & 255) | j;
    }

    public final int C() {
        f(3);
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = (bArr[i] & 255) << 16;
        int i4 = i + 2;
        this.b = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        this.b = i + 3;
        return (bArr[i4] & 255) | i5;
    }

    public final int D() {
        int m = m();
        if (m >= 0) {
            return m;
        }
        u2.l(q.g(m, "Top bit not zero: "));
        return 0;
    }

    public final int E() {
        long j = 0;
        for (int i = 0; i < 9; i++) {
            if (this.b != this.c) {
                long z = z();
                j |= (127 & z) << (i * 7);
                if ((z & 128) == 0) {
                    break;
                }
            } else {
                u2.l("Attempting to read a byte over the limit.");
                return 0;
            }
        }
        return Ints.b(j);
    }

    public final long F() {
        long t = t();
        if (t >= 0) {
            return t;
        }
        u2.l(q.h(t, "Top bit not zero: "));
        return 0L;
    }

    public final int G() {
        f(2);
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.b = i + 2;
        return (bArr[i2] & 255) | i3;
    }

    public final long H() {
        int i;
        f(1);
        long j = this.a[this.b];
        int i2 = 7;
        while (true) {
            if (i2 < 0) {
                break;
            }
            if (((1 << i2) & j) != 0) {
                i2--;
            } else if (i2 < 6) {
                j &= r6 - 1;
                i = 7 - i2;
            } else if (i2 == 7) {
                i = 1;
            }
        }
        i = 0;
        if (i != 0) {
            f(i);
            for (int i3 = 1; i3 < i; i3++) {
                if ((this.a[this.b + i3] & 192) == 128) {
                    j = (j << 6) | (r4 & 63);
                } else {
                    throw new NumberFormatException(q.h(j, "Invalid UTF-8 sequence continuation byte: "));
                }
            }
            this.b += i;
            return j;
        }
        throw new NumberFormatException(q.h(j, "Invalid UTF-8 sequence first byte: "));
    }

    public final Charset I() {
        if (a() >= 3) {
            byte[] bArr = this.a;
            int i = this.b;
            if (bArr[i] == -17 && bArr[i + 1] == -69 && bArr[i + 2] == -65) {
                this.b = i + 3;
                return StandardCharsets.UTF_8;
            }
        }
        if (a() >= 2) {
            byte[] bArr2 = this.a;
            int i2 = this.b;
            byte b = bArr2[i2];
            if (b == -2 && bArr2[i2 + 1] == -1) {
                this.b = i2 + 2;
                return StandardCharsets.UTF_16BE;
            }
            if (b == -1 && bArr2[i2 + 1] == -2) {
                this.b = i2 + 2;
                return StandardCharsets.UTF_16LE;
            }
            return null;
        }
        return null;
    }

    public final void J(int i) {
        byte[] bArr = this.a;
        if (bArr.length < i) {
            bArr = new byte[i];
        }
        K(i, bArr);
    }

    public final void K(int i, byte[] bArr) {
        this.a = bArr;
        this.c = i;
        this.b = 0;
    }

    public final void L(int i) {
        boolean z;
        if (i >= 0 && i <= this.a.length) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.c = i;
    }

    public final void M(int i) {
        boolean z;
        if (i >= 0 && i <= this.c) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z);
        this.b = i;
    }

    public final void N(int i) {
        M(this.b + i);
    }

    public final int a() {
        return Math.max(this.c - this.b, 0);
    }

    public final void c(int i) {
        byte[] bArr = this.a;
        if (i > bArr.length) {
            this.a = Arrays.copyOf(bArr, i);
        }
    }

    public final void f(int i) {
        boolean z;
        Boolean bool = (Boolean) g.get();
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = IsRunningInTestHolder.a;
        }
        if (z && a() < i) {
            fe.k(a(), jb.j("bytesNeeded= ", i, ", bytesLeft="));
        }
    }

    public final char g(int i, ByteOrder byteOrder) {
        byte b;
        byte b2;
        f(2);
        ByteOrder byteOrder2 = ByteOrder.BIG_ENDIAN;
        byte[] bArr = this.a;
        int i2 = this.b;
        if (byteOrder == byteOrder2) {
            int i3 = i2 + i;
            b = bArr[i3];
            b2 = bArr[i3 + 1];
        } else {
            int i4 = i2 + i;
            b = bArr[i4 + 1];
            b2 = bArr[i4];
        }
        return (char) ((b2 & 255) | (b << 8));
    }

    public final int h(Charset charset) {
        ByteOrder byteOrder;
        int i;
        int i2;
        Preconditions.g(f.contains(charset), "Unsupported charset: %s", charset);
        if (a() >= d(charset)) {
            int i3 = 1;
            if (charset.equals(StandardCharsets.US_ASCII)) {
                byte b = this.a[this.b];
                if ((b & 128) == 0) {
                    i = b & 255;
                    return (i << 8) | i3;
                }
                return 0;
            }
            if (charset.equals(StandardCharsets.UTF_8)) {
                byte b2 = this.a[this.b];
                if ((b2 & 128) == 0) {
                    i2 = 1;
                } else if ((b2 & 224) == 192 && a() >= 2 && e(this.a[this.b + 1])) {
                    i2 = 2;
                } else if ((this.a[this.b] & 240) == 224 && a() >= 3 && e(this.a[this.b + 1]) && e(this.a[this.b + 2])) {
                    i2 = 3;
                } else if ((this.a[this.b] & 248) == 240 && a() >= 4 && e(this.a[this.b + 1]) && e(this.a[this.b + 2]) && e(this.a[this.b + 3])) {
                    i2 = 4;
                } else {
                    i2 = 0;
                }
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                byte[] bArr = this.a;
                                int i4 = this.b;
                                i = b(bArr[i4], bArr[i4 + 1], bArr[i4 + 2], bArr[i4 + 3]);
                            }
                            return 0;
                        }
                        byte[] bArr2 = this.a;
                        int i5 = this.b;
                        i = b(0, bArr2[i5] & 15, bArr2[i5 + 1], bArr2[i5 + 2]);
                    } else {
                        byte[] bArr3 = this.a;
                        int i6 = this.b;
                        i = b(0, 0, bArr3[i6], bArr3[i6 + 1]);
                    }
                } else {
                    i = this.a[this.b] & 255;
                }
                i3 = i2;
            } else {
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byteOrder = ByteOrder.LITTLE_ENDIAN;
                } else {
                    byteOrder = ByteOrder.BIG_ENDIAN;
                }
                char g2 = g(0, byteOrder);
                if (Character.isHighSurrogate(g2) && a() >= 4) {
                    i = Character.toCodePoint(g2, g(2, byteOrder));
                    i3 = 4;
                } else {
                    i = g2;
                    i3 = 2;
                }
            }
            return (i << 8) | i3;
        }
        k8.g(this.b, this.c);
        return 0;
    }

    public final int i() {
        if (a() >= 4) {
            int m = m();
            this.b -= 4;
            return m;
        }
        k8.g(this.b, this.c);
        return 0;
    }

    public final int j() {
        f(1);
        return this.a[this.b] & 255;
    }

    public final void k(byte[] bArr, int i, int i2) {
        f(i2);
        System.arraycopy(this.a, this.b, bArr, i, i2);
        this.b += i2;
    }

    public final char l(Charset charset, char[] cArr) {
        int h;
        boolean z;
        if (a() >= d(charset) && (h = h(charset)) != 0) {
            long j = h >>> 8;
            boolean z2 = true;
            if ((j >> 32) == 0) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.f(z, "out of range: %s", j);
            int i = (int) j;
            if (!Character.isSupplementaryCodePoint(i)) {
                long j2 = i;
                char c = (char) j2;
                if (c != j2) {
                    z2 = false;
                }
                Preconditions.f(z2, "Out of range: %s", j2);
                for (char c2 : cArr) {
                    if (c2 == c) {
                        this.b = Ints.b(h & 255) + this.b;
                        return c;
                    }
                }
            }
        }
        return (char) 0;
    }

    public final int m() {
        f(4);
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = (bArr[i] & 255) << 24;
        int i4 = i + 2;
        this.b = i4;
        int i5 = ((bArr[i2] & 255) << 16) | i3;
        int i6 = i + 3;
        this.b = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 8);
        this.b = i + 4;
        return (bArr[i6] & 255) | i7;
    }

    public final String n(Charset charset) {
        int i;
        Preconditions.g(f.contains(charset), "Unsupported charset: %s", charset);
        if (a() == 0) {
            return null;
        }
        Charset charset2 = StandardCharsets.US_ASCII;
        if (!charset.equals(charset2)) {
            I();
        }
        if (!charset.equals(StandardCharsets.UTF_8) && !charset.equals(charset2)) {
            if (!charset.equals(StandardCharsets.UTF_16) && !charset.equals(StandardCharsets.UTF_16LE) && !charset.equals(StandardCharsets.UTF_16BE)) {
                io.sentry.d.e(charset, "Unsupported charset: ");
                return null;
            }
            i = 2;
        } else {
            i = 1;
        }
        int i2 = this.b;
        while (true) {
            int i3 = this.c;
            if (i2 < i3 - (i - 1)) {
                if (charset.equals(StandardCharsets.UTF_8) || charset.equals(StandardCharsets.US_ASCII)) {
                    byte b = this.a[i2];
                    String str = Util.a;
                    if (b != 10) {
                        if (b == 13) {
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (charset.equals(StandardCharsets.UTF_16) || charset.equals(StandardCharsets.UTF_16BE)) {
                    byte[] bArr = this.a;
                    if (bArr[i2] == 0) {
                        byte b2 = bArr[i2 + 1];
                        String str2 = Util.a;
                        if (b2 != 10) {
                            if (b2 == 13) {
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                if (charset.equals(StandardCharsets.UTF_16LE)) {
                    byte[] bArr2 = this.a;
                    if (bArr2[i2 + 1] == 0) {
                        byte b3 = bArr2[i2];
                        String str3 = Util.a;
                        if (b3 == 10 || b3 == 13) {
                            break;
                        }
                    } else {
                        continue;
                    }
                }
                i2 += i;
            } else {
                i2 = i3;
                break;
            }
        }
        String x = x(i2 - this.b, charset);
        if (this.b != this.c && l(charset, d) == '\r') {
            l(charset, e);
        }
        return x;
    }

    public final int o() {
        f(4);
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        int i4 = i + 2;
        this.b = i4;
        int i5 = ((bArr[i2] & 255) << 8) | i3;
        int i6 = i + 3;
        this.b = i6;
        int i7 = i5 | ((bArr[i4] & 255) << 16);
        this.b = i + 4;
        return ((bArr[i6] & 255) << 24) | i7;
    }

    public final long p() {
        f(8);
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        this.b = i + 2;
        this.b = i + 3;
        long j = (bArr[i] & 255) | ((bArr[r3] & 255) << 8) | ((bArr[r8] & 255) << 16);
        this.b = i + 4;
        long j2 = j | ((bArr[r5] & 255) << 24);
        this.b = i + 5;
        long j3 = j2 | ((bArr[r8] & 255) << 32);
        this.b = i + 6;
        long j4 = j3 | ((bArr[r5] & 255) << 40);
        this.b = i + 7;
        long j5 = j4 | ((bArr[r8] & 255) << 48);
        this.b = i + 8;
        return ((bArr[r5] & 255) << 56) | j5;
    }

    public final long q() {
        f(4);
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        this.b = i + 2;
        this.b = i + 3;
        long j = (bArr[i] & 255) | ((bArr[r3] & 255) << 8) | ((bArr[r8] & 255) << 16);
        this.b = i + 4;
        return ((bArr[r5] & 255) << 24) | j;
    }

    public final int r() {
        int o = o();
        if (o >= 0) {
            return o;
        }
        u2.l(q.g(o, "Top bit not zero: "));
        return 0;
    }

    public final int s() {
        f(2);
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = bArr[i] & 255;
        this.b = i + 2;
        return ((bArr[i2] & 255) << 8) | i3;
    }

    public final long t() {
        f(8);
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        this.b = i + 2;
        this.b = i + 3;
        long j = ((bArr[i] & 255) << 56) | ((bArr[r3] & 255) << 48) | ((bArr[r8] & 255) << 40);
        this.b = i + 4;
        long j2 = j | ((bArr[r5] & 255) << 32);
        this.b = i + 5;
        long j3 = j2 | ((bArr[r8] & 255) << 24);
        this.b = i + 6;
        long j4 = j3 | ((bArr[r5] & 255) << 16);
        this.b = i + 7;
        long j5 = j4 | ((bArr[r8] & 255) << 8);
        this.b = i + 8;
        return (bArr[r5] & 255) | j5;
    }

    public final String u() {
        if (a() == 0) {
            return null;
        }
        int i = this.b;
        while (i < this.c && this.a[i] != 0) {
            i++;
        }
        byte[] bArr = this.a;
        int i2 = this.b;
        String str = Util.a;
        String str2 = new String(bArr, i2, i - i2, StandardCharsets.UTF_8);
        this.b = i;
        if (i < this.c) {
            this.b = i + 1;
        }
        return str2;
    }

    public final String v(int i) {
        boolean z;
        int i2;
        Boolean bool = (Boolean) g.get();
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = IsRunningInTestHolder.a;
        }
        if (z && a() < i) {
            StringBuilder j = jb.j("bytesNeeded= ", i, ", bytesLeft=");
            j.append(a());
            throw new StringIndexOutOfBoundsException(j.toString());
        }
        if (i == 0) {
            return "";
        }
        int i3 = this.b;
        int i4 = (i3 + i) - 1;
        if (i4 < this.c && this.a[i4] == 0) {
            i2 = i - 1;
        } else {
            i2 = i;
        }
        byte[] bArr = this.a;
        String str = Util.a;
        String str2 = new String(bArr, i3, i2, StandardCharsets.UTF_8);
        this.b += i;
        return str2;
    }

    public final short w() {
        f(2);
        byte[] bArr = this.a;
        int i = this.b;
        int i2 = i + 1;
        this.b = i2;
        int i3 = (bArr[i] & 255) << 8;
        this.b = i + 2;
        return (short) ((bArr[i2] & 255) | i3);
    }

    public final String x(int i, Charset charset) {
        boolean z;
        Boolean bool = (Boolean) g.get();
        if (bool != null) {
            z = bool.booleanValue();
        } else {
            z = IsRunningInTestHolder.a;
        }
        if (z && a() < i) {
            StringBuilder j = jb.j("bytesNeeded= ", i, ", bytesLeft=");
            j.append(a());
            throw new StringIndexOutOfBoundsException(j.toString());
        }
        String str = new String(this.a, this.b, i, charset);
        this.b += i;
        return str;
    }

    public final int y() {
        return z() | (z() << 21) | (z() << 14) | (z() << 7);
    }

    public final int z() {
        f(1);
        byte[] bArr = this.a;
        int i = this.b;
        this.b = i + 1;
        return bArr[i] & 255;
    }

    public ParsableByteArray() {
        this.a = Util.b;
    }

    public ParsableByteArray(byte[] bArr) {
        this.a = bArr;
        this.c = bArr.length;
    }

    public ParsableByteArray(int i, byte[] bArr) {
        this.a = bArr;
        this.c = i;
    }
}
