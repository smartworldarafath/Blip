package okio;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.io.EOFException;
import java.nio.ByteBuffer;
import kotlin.text.Charsets;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealBufferedSource implements BufferedSource {
    public final Source j;
    public final Buffer k;
    public boolean l;

    /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
    public RealBufferedSource(Source source) {
        source.getClass();
        this.j = source;
        this.k = new Object();
    }

    @Override // okio.BufferedSource
    public final String A0() {
        return U(Long.MAX_VALUE);
    }

    @Override // okio.BufferedSource
    public final int D0() {
        W0(4L);
        return this.k.D0();
    }

    @Override // okio.BufferedSource
    public final Buffer H() {
        return this.k;
    }

    @Override // okio.BufferedSource
    public final boolean J() {
        if (!this.l) {
            Buffer buffer = this.k;
            if (!buffer.J() || this.j.J0(8192L, buffer) != -1) {
                return false;
            }
            return true;
        }
        u2.l("closed");
        return false;
    }

    @Override // okio.Source
    public final long J0(long j, Buffer buffer) {
        buffer.getClass();
        if (j >= 0) {
            if (!this.l) {
                Buffer buffer2 = this.k;
                if (buffer2.k == 0) {
                    if (j == 0) {
                        return 0L;
                    }
                    if (this.j.J0(8192L, buffer2) == -1) {
                        return -1L;
                    }
                }
                return buffer2.J0(Math.min(j, buffer2.k), buffer);
            }
            u2.l("closed");
            return 0L;
        }
        fe.l(q.h(j, "byteCount < 0: "));
        return 0L;
    }

    @Override // okio.BufferedSource
    public final long O0() {
        W0(8L);
        return this.k.O0();
    }

    @Override // okio.BufferedSource
    public final long S0(BufferedSink bufferedSink) {
        Buffer buffer;
        long j = 0;
        while (true) {
            Source source = this.j;
            buffer = this.k;
            if (source.J0(8192L, buffer) == -1) {
                break;
            }
            long a = buffer.a();
            if (a > 0) {
                j += a;
                bufferedSink.l0(a, buffer);
            }
        }
        long j2 = buffer.k;
        if (j2 > 0) {
            long j3 = j + j2;
            bufferedSink.l0(j2, buffer);
            return j3;
        }
        return j;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r13v0, types: [okio.Buffer, java.lang.Object] */
    @Override // okio.BufferedSource
    public final String U(long j) {
        long j2;
        if (j >= 0) {
            if (j == Long.MAX_VALUE) {
                j2 = Long.MAX_VALUE;
            } else {
                j2 = j + 1;
            }
            long a = a((byte) 10, 0L, j2);
            Buffer buffer = this.k;
            if (a != -1) {
                return okio.internal.Buffer.b(a, buffer);
            }
            if (j2 < Long.MAX_VALUE && t0(j2) && buffer.n(j2 - 1) == 13 && t0(j2 + 1) && buffer.n(j2) == 10) {
                return okio.internal.Buffer.b(j2, buffer);
            }
            ?? obj = new Object();
            buffer.h(obj, 0L, Math.min(32L, buffer.k));
            throw new EOFException("\\n not found: limit=" + Math.min(buffer.k, j) + " content=" + obj.s(obj.k).f() + (char) 8230);
        }
        fe.l(q.h(j, "limit < 0: "));
        return null;
    }

    @Override // okio.BufferedSource
    public final void W0(long j) {
        if (t0(j)) {
        } else {
            throw new EOFException();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x0031, code lost:
    
        if (r0 == 0) goto L21;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x0034, code lost:
    
        kotlin.text.CharsKt.b(16);
        r0 = java.lang.Integer.toString(r2, 16);
        r0.getClass();
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x004b, code lost:
    
        throw new java.lang.NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x".concat(r0));
     */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long Y0() {
        Buffer buffer;
        W0(1L);
        int i = 0;
        while (true) {
            int i2 = i + 1;
            boolean t0 = t0(i2);
            buffer = this.k;
            if (!t0) {
                break;
            }
            byte n = buffer.n(i);
            if ((n < 48 || n > 57) && ((n < 97 || n > 102) && (n < 65 || n > 70))) {
                break;
            }
            i = i2;
        }
        return buffer.Y0();
    }

    public final long a(byte b, long j, long j2) {
        if (!this.l) {
            if (0 <= j2) {
                long j3 = 0;
                while (j3 < j2) {
                    Buffer buffer = this.k;
                    byte b2 = b;
                    long j4 = j2;
                    long q = buffer.q(b2, j3, j4);
                    if (q != -1) {
                        return q;
                    }
                    long j5 = buffer.k;
                    if (j5 >= j4 || this.j.J0(8192L, buffer) == -1) {
                        break;
                    }
                    j3 = Math.max(j3, j5);
                    b = b2;
                    j2 = j4;
                }
                return -1L;
            }
            fe.l(q.h(j2, "fromIndex=0 toIndex="));
            return 0L;
        }
        u2.l("closed");
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable, java.nio.channels.Channel
    public final void close() {
        if (!this.l) {
            this.l = true;
            this.j.close();
            Buffer buffer = this.k;
            buffer.skip(buffer.k);
        }
    }

    public final short h() {
        W0(2L);
        return this.k.E();
    }

    @Override // okio.Source
    public final Timeout i() {
        return this.j.i();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.l;
    }

    @Override // okio.BufferedSource
    public final String p(long j) {
        W0(j);
        return this.k.O(j, Charsets.a);
    }

    @Override // java.nio.channels.ReadableByteChannel
    public final int read(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        Buffer buffer = this.k;
        if (buffer.k == 0 && this.j.J0(8192L, buffer) == -1) {
            return -1;
        }
        return buffer.read(byteBuffer);
    }

    @Override // okio.BufferedSource
    public final byte readByte() {
        W0(1L);
        return this.k.readByte();
    }

    @Override // okio.BufferedSource
    public final int readInt() {
        W0(4L);
        return this.k.readInt();
    }

    @Override // okio.BufferedSource
    public final short readShort() {
        W0(2L);
        return this.k.readShort();
    }

    @Override // okio.BufferedSource
    public final ByteString s(long j) {
        W0(j);
        return this.k.s(j);
    }

    @Override // okio.BufferedSource
    public final void skip(long j) {
        if (!this.l) {
            while (j > 0) {
                Buffer buffer = this.k;
                if (buffer.k == 0 && this.j.J0(8192L, buffer) == -1) {
                    throw new EOFException();
                }
                long min = Math.min(j, buffer.k);
                buffer.skip(min);
                j -= min;
            }
            return;
        }
        u2.l("closed");
    }

    @Override // okio.BufferedSource
    public final boolean t0(long j) {
        Buffer buffer;
        if (j >= 0) {
            if (this.l) {
                u2.l("closed");
                return false;
            }
            do {
                buffer = this.k;
                if (buffer.k >= j) {
                    return true;
                }
            } while (this.j.J0(8192L, buffer) != -1);
            return false;
        }
        fe.l(q.h(j, "byteCount < 0: "));
        return false;
    }

    public final String toString() {
        return "buffer(" + this.j + ')';
    }
}
