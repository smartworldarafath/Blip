package androidx.datastore.preferences.protobuf;

import androidx.datastore.preferences.protobuf.ByteString;
import defpackage.jb;
import defpackage.u2;
import java.io.FileInputStream;
import java.io.IOException;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CodedInputStream {
    public int a;
    public CodedInputStreamReader b;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class ArrayDecoder extends CodedInputStream {
        public final byte[] c;
        public int d;
        public int e;
        public int f;
        public final int g;
        public int h;
        public int i = Integer.MAX_VALUE;

        public ArrayDecoder(byte[] bArr, int i, int i2, boolean z) {
            this.c = bArr;
            this.d = i2 + i;
            this.f = i;
            this.g = i;
        }

        public final long A() {
            int i = this.f;
            if (this.d - i >= 8) {
                this.f = i + 8;
                byte[] bArr = this.c;
                return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
            }
            throw InvalidProtocolBufferException.e();
        }

        public final int B() {
            int i;
            int i2 = this.f;
            int i3 = this.d;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.c;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.f = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i2 + 2;
                    int i6 = (bArr[i4] << 7) ^ b;
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i2 + 3;
                        int i8 = (bArr[i5] << 14) ^ i6;
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            int i9 = i2 + 4;
                            int i10 = i8 ^ (bArr[i7] << 21);
                            if (i10 < 0) {
                                i = (-2080896) ^ i10;
                            } else {
                                i7 = i2 + 5;
                                byte b2 = bArr[i9];
                                int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                                if (b2 < 0) {
                                    i9 = i2 + 6;
                                    if (bArr[i7] < 0) {
                                        i7 = i2 + 7;
                                        if (bArr[i9] < 0) {
                                            i9 = i2 + 8;
                                            if (bArr[i7] < 0) {
                                                i7 = i2 + 9;
                                                if (bArr[i9] < 0) {
                                                    int i12 = i2 + 10;
                                                    if (bArr[i7] >= 0) {
                                                        i5 = i12;
                                                        i = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i = i11;
                                }
                                i = i11;
                            }
                            i5 = i9;
                        }
                        i5 = i7;
                    }
                    this.f = i5;
                    return i;
                }
            }
            return (int) D();
        }

        public final long C() {
            long j;
            long j2;
            long j3;
            long j4;
            int i = this.f;
            int i2 = this.d;
            if (i2 != i) {
                int i3 = i + 1;
                byte[] bArr = this.c;
                byte b = bArr[i];
                if (b >= 0) {
                    this.f = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ (-128);
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << 14) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << 21);
                            if (i9 < 0) {
                                j4 = (-2080896) ^ i9;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (bArr[i8] << 28);
                                if (j6 >= 0) {
                                    j3 = 266354560;
                                } else {
                                    i8 = i + 6;
                                    long j7 = j6 ^ (bArr[i4] << 35);
                                    if (j7 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (bArr[i8] << 42);
                                        if (j6 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            i8 = i + 8;
                                            j7 = j6 ^ (bArr[i4] << 49);
                                            if (j7 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                long j8 = (j7 ^ (bArr[i8] << 56)) ^ 71499008037633920L;
                                                if (j8 < 0) {
                                                    int i10 = i + 10;
                                                    if (bArr[i4] >= 0) {
                                                        i4 = i10;
                                                    }
                                                }
                                                j = j8;
                                            }
                                        }
                                    }
                                    j4 = j2 ^ j7;
                                }
                                j = j3 ^ j6;
                            }
                            i4 = i8;
                            j = j4;
                        }
                    }
                    this.f = i4;
                    return j;
                }
            }
            return D();
        }

        public final long D() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                int i2 = this.f;
                if (i2 != this.d) {
                    this.f = i2 + 1;
                    j |= (r3 & Byte.MAX_VALUE) << i;
                    if ((this.c[i2] & 128) == 0) {
                        return j;
                    }
                } else {
                    throw InvalidProtocolBufferException.e();
                }
            }
            throw InvalidProtocolBufferException.c();
        }

        public final void E() {
            int i = this.d + this.e;
            this.d = i;
            int i2 = i - this.g;
            int i3 = this.i;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.e = i4;
                this.d = i - i4;
                return;
            }
            this.e = 0;
        }

        public final void F(int i) {
            if (i >= 0) {
                int i2 = this.d;
                int i3 = this.f;
                if (i <= i2 - i3) {
                    this.f = i3 + i;
                    return;
                }
            }
            if (i < 0) {
                throw InvalidProtocolBufferException.d();
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void a(int i) {
            if (this.h == i) {
            } else {
                throw new IOException("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int b() {
            return this.f - this.g;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean c() {
            if (this.f == this.d) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void d(int i) {
            this.i = i;
            E();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int e(int i) {
            if (i >= 0) {
                int b = i + b();
                if (b >= 0) {
                    int i2 = this.i;
                    if (b <= i2) {
                        this.i = b;
                        E();
                        return i2;
                    }
                    throw InvalidProtocolBufferException.e();
                }
                throw new IOException("Failed to parse the message.");
            }
            throw InvalidProtocolBufferException.d();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean f() {
            if (C() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final ByteString g() {
            byte[] bArr;
            int B = B();
            byte[] bArr2 = this.c;
            if (B > 0) {
                int i = this.d;
                int i2 = this.f;
                if (B <= i - i2) {
                    ByteString d = ByteString.d(bArr2, i2, B);
                    this.f += B;
                    return d;
                }
            }
            if (B == 0) {
                return ByteString.k;
            }
            if (B > 0) {
                int i3 = this.d;
                int i4 = this.f;
                if (B <= i3 - i4) {
                    int i5 = B + i4;
                    this.f = i5;
                    bArr = Arrays.copyOfRange(bArr2, i4, i5);
                    ByteString byteString = ByteString.k;
                    return new ByteString.LiteralByteString(bArr);
                }
            }
            if (B <= 0) {
                if (B == 0) {
                    bArr = Internal.b;
                    ByteString byteString2 = ByteString.k;
                    return new ByteString.LiteralByteString(bArr);
                }
                throw InvalidProtocolBufferException.d();
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final double h() {
            return Double.longBitsToDouble(A());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int i() {
            return B();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int j() {
            return z();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long k() {
            return A();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final float l() {
            return Float.intBitsToFloat(z());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int m() {
            return B();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long n() {
            return C();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int o() {
            return z();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long p() {
            return A();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int q() {
            int B = B();
            return (-(B & 1)) ^ (B >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long r() {
            long C = C();
            return (-(C & 1)) ^ (C >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String s() {
            int B = B();
            if (B > 0) {
                int i = this.d;
                int i2 = this.f;
                if (B <= i - i2) {
                    String str = new String(this.c, i2, B, Internal.a);
                    this.f += B;
                    return str;
                }
            }
            if (B == 0) {
                return "";
            }
            if (B < 0) {
                throw InvalidProtocolBufferException.d();
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String t() {
            int B = B();
            if (B > 0) {
                int i = this.d;
                int i2 = this.f;
                if (B <= i - i2) {
                    String a = Utf8.a.a(this.c, i2, B);
                    this.f += B;
                    return a;
                }
            }
            if (B == 0) {
                return "";
            }
            if (B <= 0) {
                throw InvalidProtocolBufferException.d();
            }
            throw InvalidProtocolBufferException.e();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int u() {
            if (c()) {
                this.h = 0;
                return 0;
            }
            int B = B();
            this.h = B;
            if ((B >>> 3) != 0) {
                return B;
            }
            throw new IOException("Protocol message contained an invalid tag (zero).");
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int v() {
            return B();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long w() {
            return C();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean x(int i) {
            int i2 = i & 7;
            int i3 = 0;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                return false;
                            }
                            if (i2 == 5) {
                                F(4);
                                return true;
                            }
                            throw InvalidProtocolBufferException.b();
                        }
                        y();
                        a(((i >>> 3) << 3) | 4);
                        return true;
                    }
                    F(B());
                    return true;
                }
                F(8);
                return true;
            }
            int i4 = this.d - this.f;
            byte[] bArr = this.c;
            if (i4 >= 10) {
                while (i3 < 10) {
                    int i5 = this.f;
                    this.f = i5 + 1;
                    if (bArr[i5] < 0) {
                        i3++;
                    }
                }
                throw InvalidProtocolBufferException.c();
            }
            while (i3 < 10) {
                int i6 = this.f;
                if (i6 != this.d) {
                    this.f = i6 + 1;
                    if (bArr[i6] < 0) {
                        i3++;
                    }
                } else {
                    throw InvalidProtocolBufferException.e();
                }
            }
            throw InvalidProtocolBufferException.c();
            return true;
        }

        public final int z() {
            int i = this.f;
            if (this.d - i >= 4) {
                this.f = i + 4;
                byte[] bArr = this.c;
                return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
            }
            throw InvalidProtocolBufferException.e();
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class StreamDecoder extends CodedInputStream {
        public final FileInputStream c;
        public final byte[] d;
        public int e;
        public int f;
        public int g;
        public int h;
        public int i;
        public int j = Integer.MAX_VALUE;

        public StreamDecoder(FileInputStream fileInputStream) {
            Charset charset = Internal.a;
            this.c = fileInputStream;
            this.d = new byte[4096];
            this.e = 0;
            this.g = 0;
            this.i = 0;
        }

        public final byte[] A(int i) {
            if (i == 0) {
                return Internal.b;
            }
            if (i >= 0) {
                int i2 = this.i;
                int i3 = this.g;
                int i4 = i2 + i3 + i;
                if (i4 - Integer.MAX_VALUE <= 0) {
                    int i5 = this.j;
                    if (i4 <= i5) {
                        int i6 = this.e - i3;
                        int i7 = i - i6;
                        FileInputStream fileInputStream = this.c;
                        if (i7 >= 4096) {
                            try {
                                if (i7 > fileInputStream.available()) {
                                    return null;
                                }
                            } catch (InvalidProtocolBufferException e) {
                                e.j = true;
                                throw e;
                            }
                        }
                        byte[] bArr = new byte[i];
                        System.arraycopy(this.d, this.g, bArr, 0, i6);
                        this.i += this.e;
                        this.g = 0;
                        this.e = 0;
                        while (i6 < i) {
                            try {
                                int read = fileInputStream.read(bArr, i6, i - i6);
                                if (read != -1) {
                                    this.i += read;
                                    i6 += read;
                                } else {
                                    throw InvalidProtocolBufferException.e();
                                }
                            } catch (InvalidProtocolBufferException e2) {
                                e2.j = true;
                                throw e2;
                            }
                        }
                        return bArr;
                    }
                    J((i5 - i2) - i3);
                    throw InvalidProtocolBufferException.e();
                }
                throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
            }
            throw InvalidProtocolBufferException.d();
        }

        public final ArrayList B(int i) {
            ArrayList arrayList = new ArrayList();
            while (i > 0) {
                int min = Math.min(i, 4096);
                byte[] bArr = new byte[min];
                int i2 = 0;
                while (i2 < min) {
                    int read = this.c.read(bArr, i2, min - i2);
                    if (read != -1) {
                        this.i += read;
                        i2 += read;
                    } else {
                        throw InvalidProtocolBufferException.e();
                    }
                }
                i -= min;
                arrayList.add(bArr);
            }
            return arrayList;
        }

        public final int C() {
            int i = this.g;
            if (this.e - i < 4) {
                I(4);
                i = this.g;
            }
            this.g = i + 4;
            byte[] bArr = this.d;
            return ((bArr[i + 3] & 255) << 24) | (bArr[i] & 255) | ((bArr[i + 1] & 255) << 8) | ((bArr[i + 2] & 255) << 16);
        }

        public final long D() {
            int i = this.g;
            if (this.e - i < 8) {
                I(8);
                i = this.g;
            }
            this.g = i + 8;
            byte[] bArr = this.d;
            return ((bArr[i + 1] & 255) << 8) | (bArr[i] & 255) | ((bArr[i + 2] & 255) << 16) | ((bArr[i + 3] & 255) << 24) | ((bArr[i + 4] & 255) << 32) | ((bArr[i + 5] & 255) << 40) | ((bArr[i + 6] & 255) << 48) | ((bArr[i + 7] & 255) << 56);
        }

        public final int E() {
            int i;
            int i2 = this.g;
            int i3 = this.e;
            if (i3 != i2) {
                int i4 = i2 + 1;
                byte[] bArr = this.d;
                byte b = bArr[i2];
                if (b >= 0) {
                    this.g = i4;
                    return b;
                }
                if (i3 - i4 >= 9) {
                    int i5 = i2 + 2;
                    int i6 = (bArr[i4] << 7) ^ b;
                    if (i6 < 0) {
                        i = i6 ^ (-128);
                    } else {
                        int i7 = i2 + 3;
                        int i8 = (bArr[i5] << 14) ^ i6;
                        if (i8 >= 0) {
                            i = i8 ^ 16256;
                        } else {
                            int i9 = i2 + 4;
                            int i10 = i8 ^ (bArr[i7] << 21);
                            if (i10 < 0) {
                                i = (-2080896) ^ i10;
                            } else {
                                i7 = i2 + 5;
                                byte b2 = bArr[i9];
                                int i11 = (i10 ^ (b2 << 28)) ^ 266354560;
                                if (b2 < 0) {
                                    i9 = i2 + 6;
                                    if (bArr[i7] < 0) {
                                        i7 = i2 + 7;
                                        if (bArr[i9] < 0) {
                                            i9 = i2 + 8;
                                            if (bArr[i7] < 0) {
                                                i7 = i2 + 9;
                                                if (bArr[i9] < 0) {
                                                    int i12 = i2 + 10;
                                                    if (bArr[i7] >= 0) {
                                                        i5 = i12;
                                                        i = i11;
                                                    }
                                                }
                                            }
                                        }
                                    }
                                    i = i11;
                                }
                                i = i11;
                            }
                            i5 = i9;
                        }
                        i5 = i7;
                    }
                    this.g = i5;
                    return i;
                }
            }
            return (int) G();
        }

        public final long F() {
            long j;
            long j2;
            long j3;
            long j4;
            int i = this.g;
            int i2 = this.e;
            if (i2 != i) {
                int i3 = i + 1;
                byte[] bArr = this.d;
                byte b = bArr[i];
                if (b >= 0) {
                    this.g = i3;
                    return b;
                }
                if (i2 - i3 >= 9) {
                    int i4 = i + 2;
                    int i5 = (bArr[i3] << 7) ^ b;
                    if (i5 < 0) {
                        j = i5 ^ (-128);
                    } else {
                        int i6 = i + 3;
                        int i7 = (bArr[i4] << 14) ^ i5;
                        if (i7 >= 0) {
                            j = i7 ^ 16256;
                            i4 = i6;
                        } else {
                            int i8 = i + 4;
                            int i9 = i7 ^ (bArr[i6] << 21);
                            if (i9 < 0) {
                                j4 = (-2080896) ^ i9;
                            } else {
                                long j5 = i9;
                                i4 = i + 5;
                                long j6 = j5 ^ (bArr[i8] << 28);
                                if (j6 >= 0) {
                                    j3 = 266354560;
                                } else {
                                    i8 = i + 6;
                                    long j7 = j6 ^ (bArr[i4] << 35);
                                    if (j7 < 0) {
                                        j2 = -34093383808L;
                                    } else {
                                        i4 = i + 7;
                                        j6 = j7 ^ (bArr[i8] << 42);
                                        if (j6 >= 0) {
                                            j3 = 4363953127296L;
                                        } else {
                                            i8 = i + 8;
                                            j7 = j6 ^ (bArr[i4] << 49);
                                            if (j7 < 0) {
                                                j2 = -558586000294016L;
                                            } else {
                                                i4 = i + 9;
                                                long j8 = (j7 ^ (bArr[i8] << 56)) ^ 71499008037633920L;
                                                if (j8 < 0) {
                                                    int i10 = i + 10;
                                                    if (bArr[i4] >= 0) {
                                                        i4 = i10;
                                                    }
                                                }
                                                j = j8;
                                            }
                                        }
                                    }
                                    j4 = j2 ^ j7;
                                }
                                j = j3 ^ j6;
                            }
                            i4 = i8;
                            j = j4;
                        }
                    }
                    this.g = i4;
                    return j;
                }
            }
            return G();
        }

        public final long G() {
            long j = 0;
            for (int i = 0; i < 64; i += 7) {
                if (this.g == this.e) {
                    I(1);
                }
                int i2 = this.g;
                this.g = i2 + 1;
                j |= (r3 & Byte.MAX_VALUE) << i;
                if ((this.d[i2] & 128) == 0) {
                    return j;
                }
            }
            throw InvalidProtocolBufferException.c();
        }

        public final void H() {
            int i = this.e + this.f;
            this.e = i;
            int i2 = this.i + i;
            int i3 = this.j;
            if (i2 > i3) {
                int i4 = i2 - i3;
                this.f = i4;
                this.e = i - i4;
                return;
            }
            this.f = 0;
        }

        public final void I(int i) {
            if (!K(i)) {
                if (i > (Integer.MAX_VALUE - this.i) - this.g) {
                    throw new IOException("Protocol message was too large.  May be malicious.  Use CodedInputStream.setSizeLimit() to increase the size limit.");
                }
                throw InvalidProtocolBufferException.e();
            }
        }

        public final void J(int i) {
            int i2 = this.e;
            int i3 = this.g;
            int i4 = i2 - i3;
            if (i <= i4 && i >= 0) {
                this.g = i3 + i;
                return;
            }
            FileInputStream fileInputStream = this.c;
            if (i >= 0) {
                int i5 = this.i;
                int i6 = i5 + i3;
                int i7 = i6 + i;
                int i8 = this.j;
                if (i7 <= i8) {
                    this.i = i6;
                    this.e = 0;
                    this.g = 0;
                    while (i4 < i) {
                        long j = i - i4;
                        try {
                            try {
                                long skip = fileInputStream.skip(j);
                                if (skip >= 0 && skip <= j) {
                                    if (skip == 0) {
                                        break;
                                    } else {
                                        i4 += (int) skip;
                                    }
                                } else {
                                    throw new IllegalStateException(fileInputStream.getClass() + "#skip returned invalid result: " + skip + "\nThe InputStream implementation is buggy.");
                                }
                            } catch (InvalidProtocolBufferException e) {
                                e.j = true;
                                throw e;
                            }
                        } catch (Throwable th) {
                            this.i += i4;
                            H();
                            throw th;
                        }
                    }
                    this.i += i4;
                    H();
                    if (i4 < i) {
                        int i9 = this.e;
                        int i10 = i9 - this.g;
                        this.g = i9;
                        I(1);
                        while (true) {
                            int i11 = i - i10;
                            int i12 = this.e;
                            if (i11 > i12) {
                                i10 += i12;
                                this.g = i12;
                                I(1);
                            } else {
                                this.g = i11;
                                return;
                            }
                        }
                    }
                } else {
                    J((i8 - i5) - i3);
                    throw InvalidProtocolBufferException.e();
                }
            } else {
                throw InvalidProtocolBufferException.d();
            }
        }

        public final boolean K(int i) {
            FileInputStream fileInputStream = this.c;
            int i2 = this.g;
            int i3 = i2 + i;
            int i4 = this.e;
            if (i3 > i4) {
                int i5 = this.i;
                if (i <= (Integer.MAX_VALUE - i5) - i2 && i5 + i2 + i <= this.j) {
                    byte[] bArr = this.d;
                    if (i2 > 0) {
                        if (i4 > i2) {
                            System.arraycopy(bArr, i2, bArr, 0, i4 - i2);
                        }
                        this.i += i2;
                        this.e -= i2;
                        this.g = 0;
                    }
                    int i6 = this.e;
                    try {
                        int read = fileInputStream.read(bArr, i6, Math.min(bArr.length - i6, (Integer.MAX_VALUE - this.i) - i6));
                        if (read != 0 && read >= -1 && read <= bArr.length) {
                            if (read > 0) {
                                this.e += read;
                                H();
                                if (this.e >= i) {
                                    return true;
                                }
                                return K(i);
                            }
                        } else {
                            throw new IllegalStateException(fileInputStream.getClass() + "#read(byte[]) returned invalid result: " + read + "\nThe InputStream implementation is buggy.");
                        }
                    } catch (InvalidProtocolBufferException e) {
                        e.j = true;
                        throw e;
                    }
                }
                return false;
            }
            u2.l(jb.d("refillBuffer() called when ", i, " bytes were already available in buffer"));
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void a(int i) {
            if (this.h == i) {
            } else {
                throw new IOException("Protocol message end-group tag did not match expected tag.");
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int b() {
            return this.i + this.g;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean c() {
            if (this.g == this.e && !K(1)) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final void d(int i) {
            this.j = i;
            H();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int e(int i) {
            if (i >= 0) {
                int i2 = this.i + this.g + i;
                if (i2 >= 0) {
                    int i3 = this.j;
                    if (i2 <= i3) {
                        this.j = i2;
                        H();
                        return i3;
                    }
                    throw InvalidProtocolBufferException.e();
                }
                throw new IOException("Failed to parse the message.");
            }
            throw InvalidProtocolBufferException.d();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean f() {
            if (F() != 0) {
                return true;
            }
            return false;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final ByteString g() {
            int E = E();
            int i = this.e;
            int i2 = this.g;
            int i3 = i - i2;
            byte[] bArr = this.d;
            if (E <= i3 && E > 0) {
                ByteString d = ByteString.d(bArr, i2, E);
                this.g += E;
                return d;
            }
            if (E == 0) {
                return ByteString.k;
            }
            if (E >= 0) {
                byte[] A = A(E);
                if (A != null) {
                    return ByteString.d(A, 0, A.length);
                }
                int i4 = this.g;
                int i5 = this.e;
                int i6 = i5 - i4;
                this.i += i5;
                this.g = 0;
                this.e = 0;
                ArrayList B = B(E - i6);
                byte[] bArr2 = new byte[E];
                System.arraycopy(bArr, i4, bArr2, 0, i6);
                Iterator it = B.iterator();
                while (it.hasNext()) {
                    byte[] bArr3 = (byte[]) it.next();
                    System.arraycopy(bArr3, 0, bArr2, i6, bArr3.length);
                    i6 += bArr3.length;
                }
                ByteString byteString = ByteString.k;
                return new ByteString.LiteralByteString(bArr2);
            }
            throw InvalidProtocolBufferException.d();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final double h() {
            return Double.longBitsToDouble(D());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int i() {
            return E();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int j() {
            return C();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long k() {
            return D();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final float l() {
            return Float.intBitsToFloat(C());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int m() {
            return E();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long n() {
            return F();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int o() {
            return C();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long p() {
            return D();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int q() {
            int E = E();
            return (-(E & 1)) ^ (E >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long r() {
            long F = F();
            return (-(F & 1)) ^ (F >>> 1);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String s() {
            int E = E();
            byte[] bArr = this.d;
            if (E > 0) {
                int i = this.e;
                int i2 = this.g;
                if (E <= i - i2) {
                    String str = new String(bArr, i2, E, Internal.a);
                    this.g += E;
                    return str;
                }
            }
            if (E == 0) {
                return "";
            }
            if (E >= 0) {
                if (E <= this.e) {
                    I(E);
                    String str2 = new String(bArr, this.g, E, Internal.a);
                    this.g += E;
                    return str2;
                }
                return new String(z(E), Internal.a);
            }
            throw InvalidProtocolBufferException.d();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final String t() {
            int E = E();
            int i = this.g;
            int i2 = this.e;
            int i3 = i2 - i;
            byte[] bArr = this.d;
            if (E <= i3 && E > 0) {
                this.g = i + E;
            } else {
                if (E == 0) {
                    return "";
                }
                if (E >= 0) {
                    i = 0;
                    if (E <= i2) {
                        I(E);
                        this.g = E;
                    } else {
                        bArr = z(E);
                    }
                } else {
                    throw InvalidProtocolBufferException.d();
                }
            }
            return Utf8.a.a(bArr, i, E);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int u() {
            if (c()) {
                this.h = 0;
                return 0;
            }
            int E = E();
            this.h = E;
            if ((E >>> 3) != 0) {
                return E;
            }
            throw new IOException("Protocol message contained an invalid tag (zero).");
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final int v() {
            return E();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final long w() {
            return F();
        }

        @Override // androidx.datastore.preferences.protobuf.CodedInputStream
        public final boolean x(int i) {
            int i2 = i & 7;
            int i3 = 0;
            if (i2 != 0) {
                if (i2 != 1) {
                    if (i2 != 2) {
                        if (i2 != 3) {
                            if (i2 == 4) {
                                return false;
                            }
                            if (i2 == 5) {
                                J(4);
                                return true;
                            }
                            throw InvalidProtocolBufferException.b();
                        }
                        y();
                        a(((i >>> 3) << 3) | 4);
                        return true;
                    }
                    J(E());
                    return true;
                }
                J(8);
                return true;
            }
            int i4 = this.e - this.g;
            byte[] bArr = this.d;
            if (i4 >= 10) {
                while (i3 < 10) {
                    int i5 = this.g;
                    this.g = i5 + 1;
                    if (bArr[i5] < 0) {
                        i3++;
                    }
                }
                throw InvalidProtocolBufferException.c();
            }
            while (i3 < 10) {
                if (this.g == this.e) {
                    I(1);
                }
                int i6 = this.g;
                this.g = i6 + 1;
                if (bArr[i6] < 0) {
                    i3++;
                }
            }
            throw InvalidProtocolBufferException.c();
            return true;
        }

        public final byte[] z(int i) {
            byte[] A = A(i);
            if (A != null) {
                return A;
            }
            int i2 = this.g;
            int i3 = this.e;
            int i4 = i3 - i2;
            this.i += i3;
            this.g = 0;
            this.e = 0;
            ArrayList B = B(i - i4);
            byte[] bArr = new byte[i];
            System.arraycopy(this.d, i2, bArr, 0, i4);
            Iterator it = B.iterator();
            while (it.hasNext()) {
                byte[] bArr2 = (byte[]) it.next();
                System.arraycopy(bArr2, 0, bArr, i4, bArr2.length);
                i4 += bArr2.length;
            }
            return bArr;
        }
    }

    public abstract void a(int i);

    public abstract int b();

    public abstract boolean c();

    public abstract void d(int i);

    public abstract int e(int i);

    public abstract boolean f();

    public abstract ByteString g();

    public abstract double h();

    public abstract int i();

    public abstract int j();

    public abstract long k();

    public abstract float l();

    public abstract int m();

    public abstract long n();

    public abstract int o();

    public abstract long p();

    public abstract int q();

    public abstract long r();

    public abstract String s();

    public abstract String t();

    public abstract int u();

    public abstract int v();

    public abstract long w();

    public abstract boolean x(int i);

    public final void y() {
        int u;
        do {
            u = u();
            if (u != 0) {
                int i = this.a;
                if (i < 100) {
                    this.a = i + 1;
                    this.a--;
                } else {
                    throw new IOException("Protocol message had too many levels of nesting.  May be malicious.  Use setRecursionLimit() to increase the recursion depth limit.");
                }
            } else {
                return;
            }
        } while (x(u));
    }
}
