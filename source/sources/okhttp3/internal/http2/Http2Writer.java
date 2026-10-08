package okhttp3.internal.http2;

import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import java.io.Closeable;
import java.io.IOException;
import java.util.ArrayList;
import java.util.logging.Level;
import java.util.logging.Logger;
import kotlin.collections.ArraysKt;
import okhttp3.internal.Util;
import okhttp3.internal.http2.Hpack;
import okio.Buffer;
import okio.BufferedSink;
import okio.RealBufferedSink;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class Http2Writer implements Closeable {
    public static final Logger o = Logger.getLogger(Http2.class.getName());
    public final BufferedSink j;
    public final Buffer k;
    public int l;
    public boolean m;
    public final Hpack.Writer n;

    /* JADX WARN: Type inference failed for: r2v1, types: [okio.Buffer, java.lang.Object] */
    public Http2Writer(RealBufferedSink realBufferedSink) {
        realBufferedSink.getClass();
        this.j = realBufferedSink;
        ?? obj = new Object();
        this.k = obj;
        this.l = 16384;
        this.n = new Hpack.Writer(obj);
    }

    public final synchronized void A(int i, ErrorCode errorCode) {
        if (!this.m) {
            if (errorCode.j != -1) {
                n(i, 4, 3, 0);
                this.j.writeInt(errorCode.j);
                this.j.flush();
            } else {
                throw new IllegalArgumentException("Failed requirement.");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void E(int i, long j) {
        if (!this.m) {
            if (j != 0 && j <= 2147483647L) {
                n(i, 4, 8, 0);
                this.j.writeInt((int) j);
                this.j.flush();
            } else {
                throw new IllegalArgumentException(("windowSizeIncrement == 0 || windowSizeIncrement > 0x7fffffffL: " + j).toString());
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void a(Settings settings) {
        int i;
        try {
            settings.getClass();
            if (!this.m) {
                int i2 = this.l;
                int i3 = settings.a;
                if ((i3 & 32) != 0) {
                    i2 = settings.b[5];
                }
                this.l = i2;
                int i4 = -1;
                if ((i3 & 2) != 0) {
                    i = settings.b[1];
                } else {
                    i = -1;
                }
                if (i != -1) {
                    Hpack.Writer writer = this.n;
                    if ((i3 & 2) != 0) {
                        i4 = settings.b[1];
                    }
                    writer.getClass();
                    int min = Math.min(i4, 16384);
                    int i5 = writer.d;
                    if (i5 != min) {
                        if (min < i5) {
                            writer.b = Math.min(writer.b, min);
                        }
                        writer.c = true;
                        writer.d = min;
                        int i6 = writer.h;
                        if (min < i6) {
                            if (min == 0) {
                                Header[] headerArr = writer.e;
                                ArraysKt.m(0, headerArr.length, null, headerArr);
                                writer.f = writer.e.length - 1;
                                writer.g = 0;
                                writer.h = 0;
                            } else {
                                writer.a(i6 - min);
                            }
                        }
                    }
                }
                n(0, 0, 4, 1);
                this.j.flush();
            } else {
                throw new IOException("closed");
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.m = true;
        this.j.close();
    }

    public final synchronized void flush() {
        if (!this.m) {
            this.j.flush();
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void h(boolean z, int i, Buffer buffer, int i2) {
        if (!this.m) {
            n(i, i2, 0, z ? 1 : 0);
            if (i2 > 0) {
                BufferedSink bufferedSink = this.j;
                buffer.getClass();
                bufferedSink.l0(i2, buffer);
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final void n(int i, int i2, int i3, int i4) {
        Level level = Level.FINE;
        Logger logger = o;
        if (logger.isLoggable(level)) {
            logger.fine(Http2.a(false, i, i2, i3, i4));
        }
        if (i2 <= this.l) {
            if ((Integer.MIN_VALUE & i) == 0) {
                byte[] bArr = Util.a;
                BufferedSink bufferedSink = this.j;
                bufferedSink.getClass();
                bufferedSink.writeByte((i2 >>> 16) & 255);
                bufferedSink.writeByte((i2 >>> 8) & 255);
                bufferedSink.writeByte(i2 & 255);
                bufferedSink.writeByte(i3 & 255);
                bufferedSink.writeByte(i4 & 255);
                bufferedSink.writeInt(i & Integer.MAX_VALUE);
                return;
            }
            fe.l(q.g(i, "reserved bit set: "));
            return;
        }
        k8.h(this.l, i2, ": ", "FRAME_SIZE_ERROR length > ");
    }

    public final synchronized void q(int i, ErrorCode errorCode, byte[] bArr) {
        if (!this.m) {
            if (errorCode.j != -1) {
                n(0, bArr.length + 8, 7, 0);
                this.j.writeInt(i);
                this.j.writeInt(errorCode.j);
                if (bArr.length != 0) {
                    this.j.write(bArr);
                }
                this.j.flush();
            } else {
                throw new IllegalArgumentException("errorCode.httpCode == -1");
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void v(boolean z, int i, ArrayList arrayList) {
        int i2;
        int i3;
        if (!this.m) {
            this.n.d(arrayList);
            long j = this.k.k;
            long min = Math.min(this.l, j);
            if (j == min) {
                i2 = 4;
            } else {
                i2 = 0;
            }
            if (z) {
                i2 |= 1;
            }
            n(i, (int) min, 1, i2);
            this.j.l0(min, this.k);
            if (j > min) {
                long j2 = j - min;
                while (j2 > 0) {
                    long min2 = Math.min(this.l, j2);
                    j2 -= min2;
                    int i4 = (int) min2;
                    if (j2 == 0) {
                        i3 = 4;
                    } else {
                        i3 = 0;
                    }
                    n(i, i4, 9, i3);
                    this.j.l0(min2, this.k);
                }
            }
        } else {
            throw new IOException("closed");
        }
    }

    public final synchronized void w(int i, int i2, boolean z) {
        if (!this.m) {
            n(0, 8, 6, z ? 1 : 0);
            this.j.writeInt(i);
            this.j.writeInt(i2);
            this.j.flush();
        } else {
            throw new IOException("closed");
        }
    }
}
