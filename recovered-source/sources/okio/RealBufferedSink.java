package okio;

import defpackage.u2;
import java.nio.ByteBuffer;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class RealBufferedSink implements BufferedSink {
    public final Sink j;
    public final Buffer k;
    public boolean l;

    /* JADX WARN: Type inference failed for: r1v1, types: [okio.Buffer, java.lang.Object] */
    public RealBufferedSink(Sink sink) {
        sink.getClass();
        this.j = sink;
        this.k = new Object();
    }

    @Override // okio.BufferedSink
    public final BufferedSink C(long j) {
        if (!this.l) {
            this.k.x0(j);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink I(int i) {
        if (!this.l) {
            this.k.v0(SegmentedByteString.c(i));
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink M0(ByteString byteString) {
        byteString.getClass();
        if (!this.l) {
            this.k.Z(byteString);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    public final BufferedSink a() {
        if (!this.l) {
            Buffer buffer = this.k;
            long a = buffer.a();
            if (a > 0) {
                this.j.l0(a, buffer);
            }
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.Sink, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Sink sink = this.j;
        if (!this.l) {
            try {
                Buffer buffer = this.k;
                long j = buffer.k;
                if (j > 0) {
                    sink.l0(j, buffer);
                }
                th = null;
            } catch (Throwable th) {
                th = th;
            }
            try {
                sink.close();
            } catch (Throwable th2) {
                if (th == null) {
                    th = th2;
                }
            }
            this.l = true;
            if (th != null) {
                throw th;
            }
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink f0(String str) {
        str.getClass();
        if (!this.l) {
            this.k.E0(str);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public final void flush() {
        if (!this.l) {
            Buffer buffer = this.k;
            long j = buffer.k;
            Sink sink = this.j;
            if (j > 0) {
                sink.l0(j, buffer);
            }
            sink.flush();
            return;
        }
        u2.l("closed");
    }

    public final BufferedSink h(long j) {
        boolean z;
        if (!this.l) {
            Buffer buffer = this.k;
            if (j == 0) {
                buffer.g0(48);
            } else {
                int i = 0;
                if (j < 0) {
                    j = -j;
                    if (j < 0) {
                        buffer.E0("-9223372036854775808");
                    } else {
                        z = true;
                    }
                } else {
                    z = false;
                }
                byte[] bArr = okio.internal.Buffer.a;
                int numberOfLeadingZeros = ((64 - Long.numberOfLeadingZeros(j)) * 10) >>> 5;
                if (j > okio.internal.Buffer.b[numberOfLeadingZeros]) {
                    i = 1;
                }
                int i2 = numberOfLeadingZeros + i;
                if (z) {
                    i2++;
                }
                Segment S = buffer.S(i2);
                byte[] bArr2 = S.a;
                int i3 = S.c + i2;
                while (j != 0) {
                    i3--;
                    bArr2[i3] = okio.internal.Buffer.a[(int) (j % 10)];
                    j /= 10;
                }
                if (z) {
                    bArr2[i3 - 1] = 45;
                }
                S.c += i2;
                buffer.k += i2;
            }
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.Sink
    public final Timeout i() {
        return this.j.i();
    }

    @Override // java.nio.channels.Channel
    public final boolean isOpen() {
        return !this.l;
    }

    @Override // okio.Sink
    public final void l0(long j, Buffer buffer) {
        buffer.getClass();
        if (!this.l) {
            this.k.l0(j, buffer);
            a();
        } else {
            u2.l("closed");
        }
    }

    @Override // okio.BufferedSink
    public final BufferedSink q0(long j) {
        if (!this.l) {
            this.k.o0(j);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    public final String toString() {
        return "buffer(" + this.j + ')';
    }

    @Override // java.nio.channels.WritableByteChannel
    public final int write(ByteBuffer byteBuffer) {
        byteBuffer.getClass();
        if (!this.l) {
            int write = this.k.write(byteBuffer);
            a();
            return write;
        }
        u2.l("closed");
        return 0;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeByte(int i) {
        if (!this.l) {
            this.k.g0(i);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeInt(int i) {
        if (!this.l) {
            this.k.v0(i);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink writeShort(int i) {
        if (!this.l) {
            this.k.C0(i);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }

    @Override // okio.BufferedSink
    public final BufferedSink write(byte[] bArr) {
        bArr.getClass();
        if (!this.l) {
            this.k.X(bArr.length, bArr);
            a();
            return this;
        }
        u2.l("closed");
        return null;
    }
}
