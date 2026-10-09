package okio;

import defpackage.fe;
import defpackage.k8;
import defpackage.q;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.CRC32;
import java.util.zip.Inflater;
import kotlin.text.StringsKt;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class GzipSource implements Source {
    public byte j;
    public final RealBufferedSource k;
    public final Inflater l;
    public final InflaterSource m;
    public final CRC32 n;

    public GzipSource(Source source) {
        source.getClass();
        RealBufferedSource realBufferedSource = new RealBufferedSource(source);
        this.k = realBufferedSource;
        Inflater inflater = new Inflater(true);
        this.l = inflater;
        this.m = new InflaterSource(realBufferedSource, inflater);
        this.n = new CRC32();
    }

    public static void a(String str, int i, int i2) {
        if (i2 == i) {
            return;
        }
        throw new IOException(str + ": actual 0x" + StringsKt.y(8, SegmentedByteString.e(i2)) + " != expected 0x" + StringsKt.y(8, SegmentedByteString.e(i)));
    }

    @Override // okio.Source
    public final long J0(long j, Buffer buffer) {
        boolean z;
        GzipSource gzipSource = this;
        buffer.getClass();
        if (j >= 0) {
            if (j == 0) {
                return 0L;
            }
            byte b = gzipSource.j;
            CRC32 crc32 = gzipSource.n;
            RealBufferedSource realBufferedSource = gzipSource.k;
            if (b == 0) {
                realBufferedSource.W0(10L);
                Buffer buffer2 = realBufferedSource.k;
                byte n = buffer2.n(3L);
                if (((n >> 1) & 1) == 1) {
                    z = true;
                } else {
                    z = false;
                }
                if (z) {
                    gzipSource.h(buffer2, 0L, 10L);
                }
                a("ID1ID2", 8075, realBufferedSource.readShort());
                realBufferedSource.skip(8L);
                if (((n >> 2) & 1) == 1) {
                    realBufferedSource.W0(2L);
                    if (z) {
                        h(buffer2, 0L, 2L);
                    }
                    long E = buffer2.E() & 65535;
                    realBufferedSource.W0(E);
                    if (z) {
                        h(buffer2, 0L, E);
                    }
                    realBufferedSource.skip(E);
                }
                if (((n >> 3) & 1) == 1) {
                    long a = realBufferedSource.a((byte) 0, 0L, Long.MAX_VALUE);
                    if (a != -1) {
                        if (z) {
                            h(buffer2, 0L, a + 1);
                        }
                        realBufferedSource.skip(a + 1);
                    } else {
                        throw new EOFException();
                    }
                }
                if (((n >> 4) & 1) == 1) {
                    long a2 = realBufferedSource.a((byte) 0, 0L, Long.MAX_VALUE);
                    if (a2 != -1) {
                        if (z) {
                            gzipSource = this;
                            gzipSource.h(buffer2, 0L, a2 + 1);
                        } else {
                            gzipSource = this;
                        }
                        realBufferedSource.skip(a2 + 1);
                    } else {
                        throw new EOFException();
                    }
                } else {
                    gzipSource = this;
                }
                if (z) {
                    a("FHCRC", realBufferedSource.h(), (short) crc32.getValue());
                    crc32.reset();
                }
                gzipSource.j = (byte) 1;
            }
            if (gzipSource.j == 1) {
                long j2 = buffer.k;
                long J0 = gzipSource.m.J0(j, buffer);
                if (J0 != -1) {
                    gzipSource.h(buffer, j2, J0);
                    return J0;
                }
                gzipSource.j = (byte) 2;
            }
            if (gzipSource.j == 2) {
                a("CRC", realBufferedSource.D0(), (int) crc32.getValue());
                a("ISIZE", realBufferedSource.D0(), (int) gzipSource.l.getBytesWritten());
                gzipSource.j = (byte) 3;
                if (!realBufferedSource.J()) {
                    k8.j("gzip finished without exhausting source");
                    return 0L;
                }
            }
            return -1L;
        }
        fe.l(q.h(j, "byteCount < 0: "));
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.m.close();
    }

    public final void h(Buffer buffer, long j, long j2) {
        Segment segment = buffer.j;
        segment.getClass();
        while (true) {
            int i = segment.c;
            int i2 = segment.b;
            if (j < i - i2) {
                break;
            }
            j -= i - i2;
            segment = segment.f;
            segment.getClass();
        }
        while (j2 > 0) {
            int min = (int) Math.min(segment.c - r6, j2);
            this.n.update(segment.a, (int) (segment.b + j), min);
            j2 -= min;
            segment = segment.f;
            segment.getClass();
            j = 0;
        }
    }

    @Override // okio.Source
    public final Timeout i() {
        return this.k.j.i();
    }
}
