package com.google.common.io;

import com.google.common.base.Ascii;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import com.google.common.math.IntMath;
import defpackage.q;
import defpackage.u2;
import java.io.IOException;
import java.math.RoundingMode;
import java.util.Arrays;
import java.util.Objects;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class BaseEncoding {
    public static final BaseEncoding a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Base16Encoding extends StandardBaseEncoding {
        public final char[] e;

        public Base16Encoding(Alphabet alphabet) {
            super(alphabet, (Character) null);
            boolean z;
            this.e = new char[512];
            char[] cArr = alphabet.b;
            if (cArr.length == 16) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z);
            for (int i = 0; i < 256; i++) {
                char[] cArr2 = this.e;
                cArr2[i] = cArr[i >>> 4];
                cArr2[i | 256] = cArr[i & 15];
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final void b(StringBuilder sb, byte[] bArr, int i) {
            Preconditions.l(0, i, bArr.length);
            for (int i2 = 0; i2 < i; i2++) {
                int i3 = bArr[i2] & 255;
                char[] cArr = this.e;
                sb.append(cArr[i3]);
                sb.append(cArr[i3 | 256]);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public final BaseEncoding e(Alphabet alphabet, Character ch) {
            return new Base16Encoding(alphabet);
        }
    }

    static {
        new Base64Encoding("base64()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/");
        new Base64Encoding("base64Url()", "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789-_");
        new StandardBaseEncoding("base32()", "ABCDEFGHIJKLMNOPQRSTUVWXYZ234567");
        new StandardBaseEncoding("base32Hex()", "0123456789ABCDEFGHIJKLMNOPQRSTUV");
        a = new Base16Encoding(new Alphabet("base16()", "0123456789ABCDEF".toCharArray()));
    }

    public final String a(int i, byte[] bArr) {
        Preconditions.l(0, i, bArr.length);
        Alphabet alphabet = ((StandardBaseEncoding) this).b;
        int i2 = alphabet.e;
        int i3 = alphabet.f;
        RoundingMode roundingMode = RoundingMode.CEILING;
        StringBuilder sb = new StringBuilder(IntMath.b(i, i3) * i2);
        try {
            b(sb, bArr, i);
            return sb.toString();
        } catch (IOException e) {
            throw new AssertionError(e);
        }
    }

    public abstract void b(StringBuilder sb, byte[] bArr, int i);

    public abstract BaseEncoding c();

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Base64Encoding extends StandardBaseEncoding {
        public Base64Encoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()), (Character) '=');
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding, com.google.common.io.BaseEncoding
        public final void b(StringBuilder sb, byte[] bArr, int i) {
            int i2 = 0;
            Preconditions.l(0, i, bArr.length);
            for (int i3 = i; i3 >= 3; i3 -= 3) {
                int i4 = i2 + 2;
                int i5 = ((bArr[i2 + 1] & 255) << 8) | ((bArr[i2] & 255) << 16);
                i2 += 3;
                int i6 = i5 | (bArr[i4] & 255);
                Alphabet alphabet = this.b;
                char[] cArr = alphabet.b;
                char[] cArr2 = alphabet.b;
                sb.append(cArr[i6 >>> 18]);
                sb.append(cArr2[(i6 >>> 12) & 63]);
                sb.append(cArr2[(i6 >>> 6) & 63]);
                sb.append(cArr2[i6 & 63]);
            }
            if (i2 < i) {
                d(sb, bArr, i2, i - i2);
            }
        }

        @Override // com.google.common.io.BaseEncoding.StandardBaseEncoding
        public final BaseEncoding e(Alphabet alphabet, Character ch) {
            return new Base64Encoding(alphabet, ch);
        }

        public Base64Encoding(Alphabet alphabet, Character ch) {
            super(alphabet, ch);
            Preconditions.e(alphabet.b.length == 64);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class StandardBaseEncoding extends BaseEncoding {
        public final Alphabet b;
        public final Character c;
        public volatile BaseEncoding d;

        public StandardBaseEncoding(Alphabet alphabet, Character ch) {
            boolean z;
            this.b = alphabet;
            if (ch != null) {
                char charValue = ch.charValue();
                byte[] bArr = alphabet.g;
                if (charValue < bArr.length && bArr[charValue] != -1) {
                    z = false;
                    Preconditions.g(z, "Padding character %s was already in alphabet", ch);
                    this.c = ch;
                }
            }
            z = true;
            Preconditions.g(z, "Padding character %s was already in alphabet", ch);
            this.c = ch;
        }

        @Override // com.google.common.io.BaseEncoding
        public void b(StringBuilder sb, byte[] bArr, int i) {
            int i2 = 0;
            Preconditions.l(0, i, bArr.length);
            while (i2 < i) {
                Alphabet alphabet = this.b;
                d(sb, bArr, i2, Math.min(alphabet.f, i - i2));
                i2 += alphabet.f;
            }
        }

        @Override // com.google.common.io.BaseEncoding
        public final BaseEncoding c() {
            boolean z;
            boolean z2;
            BaseEncoding baseEncoding = this.d;
            if (baseEncoding == null) {
                Alphabet alphabet = this.b;
                char[] cArr = alphabet.b;
                int length = cArr.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    if (Ascii.b(cArr[i])) {
                        int length2 = cArr.length;
                        int i2 = 0;
                        while (true) {
                            if (i2 < length2) {
                                char c = cArr[i2];
                                if (c >= 'a' && c <= 'z') {
                                    z = true;
                                    break;
                                }
                                i2++;
                            } else {
                                z = false;
                                break;
                            }
                        }
                        Preconditions.m("Cannot call lowerCase() on a mixed-case alphabet", !z);
                        char[] cArr2 = new char[cArr.length];
                        for (int i3 = 0; i3 < cArr.length; i3++) {
                            char c2 = cArr[i3];
                            if (Ascii.b(c2)) {
                                c2 = (char) (c2 ^ ' ');
                            }
                            cArr2[i3] = c2;
                        }
                        Alphabet alphabet2 = new Alphabet(q.l(new StringBuilder(), alphabet.a, ".lowerCase()"), cArr2);
                        if (alphabet.h) {
                            byte[] bArr = alphabet2.g;
                            if (!alphabet2.h) {
                                byte[] copyOf = Arrays.copyOf(bArr, bArr.length);
                                for (int i4 = 65; i4 <= 90; i4++) {
                                    int i5 = i4 | 32;
                                    byte b = bArr[i4];
                                    byte b2 = bArr[i5];
                                    if (b == -1) {
                                        copyOf[i4] = b2;
                                    } else {
                                        if (b2 == -1) {
                                            z2 = true;
                                        } else {
                                            z2 = false;
                                        }
                                        char c3 = (char) i4;
                                        char c4 = (char) i5;
                                        if (z2) {
                                            copyOf[i5] = b;
                                        } else {
                                            u2.l(Strings.a("Can't ignoreCase() since '%s' and '%s' encode different values", Character.valueOf(c3), Character.valueOf(c4)));
                                            return null;
                                        }
                                    }
                                }
                                alphabet = new Alphabet(q.l(new StringBuilder(), alphabet2.a, ".ignoreCase()"), alphabet2.b, copyOf, true);
                            }
                        }
                        alphabet = alphabet2;
                    } else {
                        i++;
                    }
                }
                if (alphabet == this.b) {
                    baseEncoding = this;
                } else {
                    baseEncoding = e(alphabet, this.c);
                }
                this.d = baseEncoding;
            }
            return baseEncoding;
        }

        public final void d(StringBuilder sb, byte[] bArr, int i, int i2) {
            boolean z;
            Preconditions.l(i, i + i2, bArr.length);
            Alphabet alphabet = this.b;
            int i3 = alphabet.f;
            int i4 = alphabet.d;
            int i5 = 0;
            if (i2 <= i3) {
                z = true;
            } else {
                z = false;
            }
            Preconditions.e(z);
            long j = 0;
            for (int i6 = 0; i6 < i2; i6++) {
                j = (j | (bArr[i + i6] & 255)) << 8;
            }
            int i7 = ((i2 + 1) * 8) - i4;
            while (i5 < i2 * 8) {
                sb.append(alphabet.b[((int) (j >>> (i7 - i5))) & alphabet.c]);
                i5 += i4;
            }
            Character ch = this.c;
            if (ch != null) {
                while (i5 < alphabet.f * 8) {
                    sb.append(ch.charValue());
                    i5 += i4;
                }
            }
        }

        public BaseEncoding e(Alphabet alphabet, Character ch) {
            return new StandardBaseEncoding(alphabet, ch);
        }

        public final boolean equals(Object obj) {
            if (obj instanceof StandardBaseEncoding) {
                StandardBaseEncoding standardBaseEncoding = (StandardBaseEncoding) obj;
                if (this.b.equals(standardBaseEncoding.b) && Objects.equals(this.c, standardBaseEncoding.c)) {
                    return true;
                }
            }
            return false;
        }

        public final int hashCode() {
            return Objects.hashCode(this.c) ^ this.b.hashCode();
        }

        public final String toString() {
            StringBuilder sb = new StringBuilder("BaseEncoding.");
            Alphabet alphabet = this.b;
            sb.append(alphabet);
            if (8 % alphabet.d != 0) {
                Character ch = this.c;
                if (ch == null) {
                    sb.append(".omitPadding()");
                } else {
                    sb.append(".withPadChar('");
                    sb.append(ch);
                    sb.append("')");
                }
            }
            return sb.toString();
        }

        public StandardBaseEncoding(String str, String str2) {
            this(new Alphabet(str, str2.toCharArray()), (Character) '=');
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class Alphabet {
        public final String a;
        public final char[] b;
        public final int c;
        public final int d;
        public final int e;
        public final int f;
        public final byte[] g;
        public final boolean h;

        public Alphabet(String str, char[] cArr, byte[] bArr, boolean z) {
            this.a = str;
            cArr.getClass();
            this.b = cArr;
            try {
                int length = cArr.length;
                RoundingMode roundingMode = RoundingMode.UNNECESSARY;
                int c = IntMath.c(length);
                this.d = c;
                int numberOfTrailingZeros = Integer.numberOfTrailingZeros(c);
                int i = 1 << (3 - numberOfTrailingZeros);
                this.e = i;
                this.f = c >> numberOfTrailingZeros;
                this.c = cArr.length - 1;
                this.g = bArr;
                boolean[] zArr = new boolean[i];
                for (int i2 = 0; i2 < this.f; i2++) {
                    int i3 = this.d;
                    RoundingMode roundingMode2 = RoundingMode.CEILING;
                    zArr[IntMath.b(i2 * 8, i3)] = true;
                }
                this.h = z;
            } catch (ArithmeticException e) {
                throw new IllegalArgumentException("Illegal alphabet length " + cArr.length, e);
            }
        }

        public final boolean equals(Object obj) {
            if (obj instanceof Alphabet) {
                Alphabet alphabet = (Alphabet) obj;
                if (this.h == alphabet.h && Arrays.equals(this.b, alphabet.b)) {
                    return true;
                }
                return false;
            }
            return false;
        }

        public final int hashCode() {
            int i;
            int hashCode = Arrays.hashCode(this.b);
            if (this.h) {
                i = 1231;
            } else {
                i = 1237;
            }
            return hashCode + i;
        }

        public final String toString() {
            return this.a;
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public Alphabet(String str, char[] cArr) {
            this(str, cArr, r1, false);
            byte[] bArr = new byte[128];
            Arrays.fill(bArr, (byte) -1);
            for (int i = 0; i < cArr.length; i++) {
                char c = cArr[i];
                if (c < 128) {
                    if (bArr[c] == -1) {
                        bArr[c] = (byte) i;
                    } else {
                        u2.g(Strings.a("Duplicate character: %s", Character.valueOf(c)));
                        throw null;
                    }
                } else {
                    u2.g(Strings.a("Non-ASCII character: %s", Character.valueOf(c)));
                    throw null;
                }
            }
        }
    }
}
