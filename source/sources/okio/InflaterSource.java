package okio;

import defpackage.fe;
import defpackage.q;
import defpackage.u2;
import java.io.EOFException;
import java.io.IOException;
import java.util.zip.DataFormatException;
import java.util.zip.Inflater;

/* compiled from: r8-map-id-cdf62a648f83040a9355098cd099c620d8047327d76546f1ea987c21705da9f3 */
/* loaded from: classes.dex */
public final class InflaterSource implements Source {
    public final RealBufferedSource j;
    public final Inflater k;
    public int l;
    public boolean m;

    public InflaterSource(RealBufferedSource realBufferedSource, Inflater inflater) {
        this.j = realBufferedSource;
        this.k = inflater;
    }

    /* JADX WARN: Removed duplicated region for block: B:11:0x0083  */
    /* JADX WARN: Removed duplicated region for block: B:26:0x0082 A[SYNTHETIC] */
    @Override // okio.Source
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final long J0(long j, Buffer buffer) {
        long j2;
        buffer.getClass();
        while (j >= 0) {
            if (!this.m) {
                RealBufferedSource realBufferedSource = this.j;
                Inflater inflater = this.k;
                if (j != 0) {
                    try {
                        Segment S = buffer.S(1);
                        int min = (int) Math.min(j, 8192 - S.c);
                        if (inflater.needsInput() && !realBufferedSource.J()) {
                            Segment segment = realBufferedSource.k.j;
                            segment.getClass();
                            int i = segment.c;
                            int i2 = segment.b;
                            int i3 = i - i2;
                            this.l = i3;
                            inflater.setInput(segment.a, i2, i3);
                        }
                        int inflate = inflater.inflate(S.a, S.c, min);
                        int i4 = this.l;
                        if (i4 != 0) {
                            int remaining = i4 - inflater.getRemaining();
                            this.l -= remaining;
                            realBufferedSource.skip(remaining);
                        }
                        if (inflate > 0) {
                            S.c += inflate;
                            j2 = inflate;
                            buffer.k += j2;
                            if (j2 <= 0) {
                                return j2;
                            }
                            if (!inflater.finished() && !inflater.needsDictionary()) {
                                if (realBufferedSource.J()) {
                                    throw new EOFException("source exhausted prematurely");
                                }
                            } else {
                                return -1L;
                            }
                        } else if (S.b == S.c) {
                            buffer.j = S.a();
                            SegmentPool.a(S);
                        }
                    } catch (DataFormatException e) {
                        throw new IOException(e);
                    }
                }
                j2 = 0;
                if (j2 <= 0) {
                }
            } else {
                u2.l("closed");
                return 0L;
            }
        }
        fe.l(q.h(j, "byteCount < 0: "));
        return 0L;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        if (this.m) {
            return;
        }
        this.k.end();
        this.m = true;
        this.j.close();
    }

    @Override // okio.Source
    public final Timeout i() {
        return this.j.j.i();
    }
}
