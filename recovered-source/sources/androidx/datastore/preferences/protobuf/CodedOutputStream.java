package androidx.datastore.preferences.protobuf;

import androidx.datastore.core.UncloseableOutputStream;
import androidx.datastore.preferences.protobuf.ByteString;
import androidx.datastore.preferences.protobuf.Utf8;
import defpackage.u2;
import java.io.IOException;
import java.util.logging.Level;
import java.util.logging.Logger;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public abstract class CodedOutputStream extends ByteOutput {
    public static final Logger b = Logger.getLogger(CodedOutputStream.class.getName());
    public static final boolean c = UnsafeUtil.e;
    public CodedOutputStreamWriter a;

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static abstract class AbstractBufferedEncoder extends CodedOutputStream {
        public final byte[] d;
        public final int e;
        public int f;

        public AbstractBufferedEncoder(int i) {
            if (i >= 0) {
                byte[] bArr = new byte[Math.max(i, 20)];
                this.d = bArr;
                this.e = bArr.length;
                return;
            }
            u2.g("bufferSize must be >= 0");
            throw null;
        }

        public final void A(int i) {
            int i2 = this.f;
            int i3 = i2 + 1;
            this.f = i3;
            byte[] bArr = this.d;
            bArr[i2] = (byte) (i & 255);
            int i4 = i2 + 2;
            this.f = i4;
            bArr[i3] = (byte) ((i >> 8) & 255);
            int i5 = i2 + 3;
            this.f = i5;
            bArr[i4] = (byte) ((i >> 16) & 255);
            this.f = i2 + 4;
            bArr[i5] = (byte) ((i >> 24) & 255);
        }

        public final void B(long j) {
            int i = this.f;
            int i2 = i + 1;
            this.f = i2;
            byte[] bArr = this.d;
            bArr[i] = (byte) (j & 255);
            int i3 = i + 2;
            this.f = i3;
            bArr[i2] = (byte) ((j >> 8) & 255);
            int i4 = i + 3;
            this.f = i4;
            bArr[i3] = (byte) ((j >> 16) & 255);
            int i5 = i + 4;
            this.f = i5;
            bArr[i4] = (byte) (255 & (j >> 24));
            int i6 = i + 5;
            this.f = i6;
            bArr[i5] = (byte) (((int) (j >> 32)) & 255);
            int i7 = i + 6;
            this.f = i7;
            bArr[i6] = (byte) (((int) (j >> 40)) & 255);
            int i8 = i + 7;
            this.f = i8;
            bArr[i7] = (byte) (((int) (j >> 48)) & 255);
            this.f = i + 8;
            bArr[i8] = (byte) (((int) (j >> 56)) & 255);
        }

        public final void C(int i, int i2) {
            D((i << 3) | i2);
        }

        public final void D(int i) {
            boolean z = CodedOutputStream.c;
            byte[] bArr = this.d;
            if (z) {
                while (true) {
                    int i2 = i & (-128);
                    int i3 = this.f;
                    if (i2 == 0) {
                        this.f = i3 + 1;
                        UnsafeUtil.j(bArr, i3, (byte) i);
                        return;
                    } else {
                        this.f = i3 + 1;
                        UnsafeUtil.j(bArr, i3, (byte) ((i | 128) & 255));
                        i >>>= 7;
                    }
                }
            } else {
                while (true) {
                    int i4 = i & (-128);
                    int i5 = this.f;
                    if (i4 == 0) {
                        this.f = i5 + 1;
                        bArr[i5] = (byte) i;
                        return;
                    } else {
                        this.f = i5 + 1;
                        bArr[i5] = (byte) ((i | 128) & 255);
                        i >>>= 7;
                    }
                }
            }
        }

        public final void E(long j) {
            boolean z = CodedOutputStream.c;
            byte[] bArr = this.d;
            if (z) {
                while (true) {
                    long j2 = j & (-128);
                    int i = this.f;
                    if (j2 == 0) {
                        this.f = i + 1;
                        UnsafeUtil.j(bArr, i, (byte) j);
                        return;
                    } else {
                        this.f = i + 1;
                        UnsafeUtil.j(bArr, i, (byte) ((((int) j) | 128) & 255));
                        j >>>= 7;
                    }
                }
            } else {
                while (true) {
                    long j3 = j & (-128);
                    int i2 = this.f;
                    if (j3 == 0) {
                        this.f = i2 + 1;
                        bArr[i2] = (byte) j;
                        return;
                    } else {
                        this.f = i2 + 1;
                        bArr[i2] = (byte) ((((int) j) | 128) & 255);
                        j >>>= 7;
                    }
                }
            }
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static class OutOfSpaceException extends IOException {
        public OutOfSpaceException(IndexOutOfBoundsException indexOutOfBoundsException) {
            super("CodedOutputStream was writing to a flat byte array and ran out of space.", indexOutOfBoundsException);
        }
    }

    /* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
    /* loaded from: classes.dex */
    public static final class OutputStreamEncoder extends AbstractBufferedEncoder {
        public final UncloseableOutputStream g;

        public OutputStreamEncoder(UncloseableOutputStream uncloseableOutputStream, int i) {
            super(i);
            this.g = uncloseableOutputStream;
        }

        public final void F() {
            this.g.write(this.d, 0, this.f);
            this.f = 0;
        }

        public final void G(int i) {
            if (this.e - this.f < i) {
                F();
            }
        }

        public final void H(byte[] bArr, int i, int i2) {
            int i3 = this.f;
            int i4 = this.e;
            int i5 = i4 - i3;
            byte[] bArr2 = this.d;
            if (i5 >= i2) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f += i2;
                return;
            }
            System.arraycopy(bArr, i, bArr2, i3, i5);
            int i6 = i + i5;
            int i7 = i2 - i5;
            this.f = i4;
            F();
            if (i7 <= i4) {
                System.arraycopy(bArr, i6, bArr2, 0, i7);
                this.f = i7;
            } else {
                this.g.write(bArr, i6, i7);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.ByteOutput
        public final void a(byte[] bArr, int i, int i2) {
            H(bArr, i, i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void g(byte b) {
            if (this.f == this.e) {
                F();
            }
            int i = this.f;
            this.f = i + 1;
            this.d[i] = b;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void h(int i, boolean z) {
            G(11);
            C(i, 0);
            byte b = z ? (byte) 1 : (byte) 0;
            int i2 = this.f;
            this.f = i2 + 1;
            this.d[i2] = b;
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void i(int i, byte[] bArr) {
            x(i);
            H(bArr, 0, i);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void j(int i, ByteString byteString) {
            v(i, 2);
            k(byteString);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void k(ByteString byteString) {
            x(byteString.size());
            ByteString.LiteralByteString literalByteString = (ByteString.LiteralByteString) byteString;
            a(literalByteString.m, literalByteString.g(), literalByteString.size());
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void l(int i, int i2) {
            G(14);
            C(i, 5);
            A(i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void m(int i) {
            G(4);
            A(i);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void n(int i, long j) {
            G(18);
            C(i, 1);
            B(j);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void o(long j) {
            G(8);
            B(j);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void p(int i, int i2) {
            G(20);
            C(i, 0);
            if (i2 >= 0) {
                D(i2);
            } else {
                E(i2);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void q(int i) {
            if (i >= 0) {
                x(i);
            } else {
                z(i);
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void r(int i, MessageLite messageLite, Schema schema) {
            v(i, 2);
            x(((AbstractMessageLite) messageLite).b(schema));
            schema.f(messageLite, this.a);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void s(MessageLite messageLite) {
            x(((GeneratedMessageLite) messageLite).b(null));
            ((GeneratedMessageLite) messageLite).q(this);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void t(int i, String str) {
            v(i, 2);
            u(str);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void u(String str) {
            try {
                int length = str.length() * 3;
                int e = CodedOutputStream.e(length);
                int i = e + length;
                int i2 = this.e;
                if (i > i2) {
                    byte[] bArr = new byte[length];
                    int b = Utf8.a.b(str, bArr, 0, length);
                    x(b);
                    H(bArr, 0, b);
                    return;
                }
                if (i > i2 - this.f) {
                    F();
                }
                int e2 = CodedOutputStream.e(str.length());
                int i3 = this.f;
                byte[] bArr2 = this.d;
                try {
                    try {
                        if (e2 == e) {
                            int i4 = i3 + e2;
                            this.f = i4;
                            int b2 = Utf8.a.b(str, bArr2, i4, i2 - i4);
                            this.f = i3;
                            D((b2 - i3) - e2);
                            this.f = b2;
                        } else {
                            int a = Utf8.a(str);
                            D(a);
                            this.f = Utf8.a.b(str, bArr2, this.f, a);
                        }
                    } catch (Utf8.UnpairedSurrogateException e3) {
                        this.f = i3;
                        throw e3;
                    }
                } catch (ArrayIndexOutOfBoundsException e4) {
                    throw new OutOfSpaceException(e4);
                }
            } catch (Utf8.UnpairedSurrogateException e5) {
                CodedOutputStream.b.log(Level.WARNING, "Converting ill-formed UTF-16. Your Protocol Buffer will not round trip correctly!", (Throwable) e5);
                byte[] bytes = str.getBytes(Internal.a);
                try {
                    x(bytes.length);
                    a(bytes, 0, bytes.length);
                } catch (IndexOutOfBoundsException e6) {
                    throw new OutOfSpaceException(e6);
                }
            }
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void v(int i, int i2) {
            x((i << 3) | i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void w(int i, int i2) {
            G(20);
            C(i, 0);
            D(i2);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void x(int i) {
            G(5);
            D(i);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void y(int i, long j) {
            G(20);
            C(i, 0);
            E(j);
        }

        @Override // androidx.datastore.preferences.protobuf.CodedOutputStream
        public final void z(long j) {
            G(10);
            E(j);
        }
    }

    public static int b(int i, ByteString byteString) {
        int d = d(i);
        int size = byteString.size();
        return e(size) + size + d;
    }

    public static int c(String str) {
        int length;
        try {
            length = Utf8.a(str);
        } catch (Utf8.UnpairedSurrogateException unused) {
            length = str.getBytes(Internal.a).length;
        }
        return e(length) + length;
    }

    public static int d(int i) {
        return e(i << 3);
    }

    public static int e(int i) {
        return (352 - (Integer.numberOfLeadingZeros(i) * 9)) >>> 6;
    }

    public static int f(long j) {
        return (640 - (Long.numberOfLeadingZeros(j) * 9)) >>> 6;
    }

    public abstract void g(byte b2);

    public abstract void h(int i, boolean z);

    public abstract void i(int i, byte[] bArr);

    public abstract void j(int i, ByteString byteString);

    public abstract void k(ByteString byteString);

    public abstract void l(int i, int i2);

    public abstract void m(int i);

    public abstract void n(int i, long j);

    public abstract void o(long j);

    public abstract void p(int i, int i2);

    public abstract void q(int i);

    public abstract void r(int i, MessageLite messageLite, Schema schema);

    public abstract void s(MessageLite messageLite);

    public abstract void t(int i, String str);

    public abstract void u(String str);

    public abstract void v(int i, int i2);

    public abstract void w(int i, int i2);

    public abstract void x(int i);

    public abstract void y(int i, long j);

    public abstract void z(long j);
}
